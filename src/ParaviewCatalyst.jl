module ParaviewCatalyst

import Catalyst_jll

export Conduit,
       ConduitNode,
       catalyst_initialize,
       catalyst_about,
       catalyst_execute,
       catalyst_results,
       catalyst_replay,
       catalyst_finalize

include("api.jl")
include("conduit.jl")

import .Conduit: Conduit, ConduitNode

struct CatalystError <: Exception
   msg::String
   status::API.catalyst_status
end

function error_status(status::API.catalyst_status)
    if status === API.catalyst_status_error_no_implementation
	    throw(CatalystError("catalyst no implementation set", status))
    elseif status === API.catalyst_status_error_already_loaded
	    throw(CatalystError("catalyst implementation already loaded", status))
    elseif status === API.catalyst_status_error_not_found
	    throw(CatalystError("catalyst load implementation not found", status))
    elseif status === API.catalyst_status_error_not_catalyst
	    throw(CatalystError("catalyst load implementation path not a catalyst implementation", status))
    elseif status === API.catalyst_status_error_incomplete
	    throw(CatalystError("catalyst incomplete settings", status))
    elseif status === API.catalyst_status_error_unsupported_version
	    throw(CatalystError("catalyst implementation is an unsupported version", status))
    else
	    throw(CatalystError("unknown catalyst error", status))
    end
end

baremodule Defaults

const PARAVIEW_CATALYST_PATHS = [
    "/home/jake/Paraview/build/lib/catalyst",
    "/home/jake/ParaView-5.10.0-MPI-Linux-Python3.9-x86_64/lib/catalyst",
]
end

function catalyst_io_pipeline!(node::ConduitNode; filename="", channel="input")
	node["catalyst/pipelines/output/type"] = "io"
	node["catalyst/pipelines/output/channel"] = channel
	node["catalyst/pipelines/output/filename"] = filename
    return node
end

function catalyst_initialize(node::ConduitNode)
	status = API.catalyst_initialize(node)
	if status != API.catalyst_status_ok
	    error_status(status)
    end
    return
end

function catalyst_initialize(;libpath=nothing, catalyst_pipeline=nothing)
    @assert libpath !== nothing || haskey(ENV, "PARAVIEW_CATALYST_PATH") "please set the PARAVIEW_CATALYST_PATH Environment Variable to the path to your catalyst library (for example /home/USER_NAME/Paraview/ParaView-5.13.0-MPI-Linux-Python3.10-x86_64/lib/catalyst) or call the catalyst_initialize function with the path as a parameter libpath"
    ConduitNode() do node
	    node["catalyst_load/implementation"] = "paraview"
	    node["catalyst_load/search_paths/paraview"] = libpath === nothing ? ENV["PARAVIEW_CATALYST_PATH"] : libpath
	    node["catalyst/scripts/catalyst_pipeline/filename"] = catalyst_pipeline === nothing ? joinpath(@__DIR__, "catalyst_pipeline.py") : catalyst_pipeline
        catalyst_initialize(node)
    end
    return
end

function catalyst_about()
    ConduitNode() do node
    	status = API.catalyst_about(node)
	    if status != API.catalyst_status_ok
	        error_status(status)
	    end
	    Conduit.node_print(node, detailed=false)
    end
    return
end

function catalyst_execute(node::ConduitNode)
    status = API.catalyst_execute(node)
    if status != API.catalyst_status_ok
        error_status(status)
    end
    return node
end

global CATALYST_TIME_INTERNAL = 0

function catalyst_execute_example(;debuginfo = false)
    global CATALYST_TIME_INTERNAL
    ConduitNode() do node
        node["catalyst/state/timestep"] = CATALYST_TIME_INTERNAL
        node["catalyst/state/time"] = CATALYST_TIME_INTERNAL
        CATALYST_TIME_INTERNAL += 1
        node["catalyst/channels/input/type"] = "mesh"

        node["catalyst/channels/input/data/coordsets/coords/type"] = "explicit"
        node["catalyst/channels/input/data/coordsets/coords/values/x"] = [0 0 0 0 1 1 1 1 1 1 1 1 2 2 2 2]
        node["catalyst/channels/input/data/coordsets/coords/values/y"] = [0 0 1 1 0 0 1 1 1 1 2 2 1 1 2 2]
        node["catalyst/channels/input/data/coordsets/coords/values/z"] = [0 1 0 1 0 1 0 1 1 2 1 2 1 2 1 2]

        node["catalyst/channels/input/data/topologies/mesh/type"] = "unstructured"
        node["catalyst/channels/input/data/topologies/mesh/coordset"] = "coords"
        node["catalyst/channels/input/data/topologies/mesh/elements/shape"] = "hex"


        node["catalyst/channels/input/data/fields/velocity/association"] = "vertex"
        node["catalyst/channels/input/data/fields/velocity/topology"] = "mesh"
        node["catalyst/channels/input/data/fields/velocity/volume_dependent"] = "false"
        node["catalyst/channels/input/data/fields/velocity/values/x"] = [sin(CATALYST_TIME_INTERNAL) for i in 1:16]
        node["catalyst/channels/input/data/fields/velocity/values/y"] = [sin(CATALYST_TIME_INTERNAL) for i in 1:16]
        node["catalyst/channels/input/data/fields/velocity/values/z"] = [sin(CATALYST_TIME_INTERNAL) for i in 1:16]
        # num_x = 2
        # num_y = 2
        # num_z = 2
        # connectivity_h = [[
        #     i * num_y * num_z + j * num_z + k 
        #  (i + 1) * num_y * num_z + j * num_z + k 
        #   (i + 1) * num_y * num_z + (j + 1) * num_z + k 
        #   i * num_y * num_z + (j + 1) * num_z + k 
        #   i * num_y * num_z + j * num_z + k + 1 
        #   (i + 1) * num_y * num_z + j * num_z + k + 1 
        #   (i + 1) * num_y * num_z + (j + 1) * num_z + k + 1 
        #   i * num_y * num_z + (j + 1) * num_z + k + 1
        #   ] for i in 0:num_x - 2 for j in 0:num_y - 2 for k in 0:num_z - 2]
        # connectivity = [connectivity_h[i][j] for i in 1: (num_x - 1) * (num_y - 1) * (num_z - 1) for j in 1:8]
        connectivity = [0 1 3 2 4 5 7 6 8 9 11 10 12 13 15 14]
        node["catalyst/channels/input/data/topologies/mesh/elements/connectivity"] = connectivity

        # Conduit.node_info(node) do info_node
        #    Conduit.node_print(info_node, detailed = true)
        # end
        catalyst_execute(node)
    end
    return
end

function catalyst_results(node::ConduitNode)
    status = API.catalyst_results(node)
    if status != API.catalyst_status_ok
        error_status(status)
    end
    return node
end
function catalyst_results()
    ConduitNode() do node
        catalyst_results(node)
	    Conduit.node_print(node)
    end
end

#TODO: implement when we have a RW API
function catalyst_replay end

function catalyst_finalize(node::ConduitNode)
    status = API.catalyst_finalize(node)
    if status != API.catalyst_status_ok
        error_status(status)
    end
    return node
end
function catalyst_finalize()
    ConduitNode() do node
        catalyst_finalize(node)
	    Conduit.node_print(node, detailed=false)
    end
end

end # module
