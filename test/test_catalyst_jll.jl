module TestCatalyst_jll

using Test
using ParaViewCatalyst
using ParaViewCatalyst.API

# Manually override the usual initialization and
# - do not provide search paths
# - request the stub implementation
# This test should then pick up the catalyst library shipped with Catalyst_jll
@testset verbose=true showtiming=true "Check stub" begin
    ConduitNode() do node
	    node["catalyst_load/implementation"] = "stub"
        catalyst_initialize(node)
    end
    ConduitNode() do node
        status = API.catalyst_about(node)
        @test status === API.catalyst_status_ok
        @test node["catalyst/implementation"] == "stub"
        Conduit.node_print(node, detailed=false)
    end
    catalyst_finalize()
end
end
