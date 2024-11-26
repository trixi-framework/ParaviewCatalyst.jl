using ParaViewCatalyst

catalyst_initialize()

for t in 1:10
    ConduitNode() do node
        node["catalyst/state/timestep"] = t
        node["catalyst/state/time"] = 0.1 * t
        node["catalyst/channels/input/type"] = "mesh"

        mesh_node = ConduitNode()
        mesh_node["coordsets/coords/type"] = "explicit"
        mesh_node["topologies/mesh/type"] = "unstructured"
        mesh_node["topologies/mesh/coordset"] = "coords"
        mesh_node["topologies/mesh/elements/shape"] = "hex"

        mesh_node["coordsets/coords/values/x"] = [1 1 1 1 2 2 2 2]
        mesh_node["coordsets/coords/values/y"] = [1 1 2 2 1 1 2 2]
        mesh_node["coordsets/coords/values/z"] = [1 2 1 2 1 2 1 2] 

        mesh_node["topologies/mesh/type"] = "unstructured"
        mesh_node["topologies/mesh/coordset"] = "coords"
        mesh_node["topologies/mesh/elements/shape"] = "hex"
        mesh_node["topologies/mesh/elements/connectivity"] = [0 1 3 2 4 5 7 6]

        mesh_node["fields/pressure/association"] = "element"
        mesh_node["fields/pressure/topology"] = "mesh"
        mesh_node["fields/pressure/volume_dependent"] = "false"
        mesh_node["fields/pressure/values"] = rand(1)

        node["catalyst/channels/input/data"] = mesh_node
        
        Conduit.node_info(node) do info_node
            Conduit.node_print(info_node)
        end
        
        catalyst_execute(node)
    end
    sleep(2)
end

catalyst_finalize()
