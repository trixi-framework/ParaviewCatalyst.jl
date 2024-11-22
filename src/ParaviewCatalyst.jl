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
    @assert libpath !== nothing || haskey(ENV, "PARAVIEW_CATALYST_PATH")
        "please set the PARAVIEW_CATALYST_PATH environment variable to the path of your catalyst library or use the libpath parameter of catalyst_initialize"
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
