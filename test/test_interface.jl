module TestInterface

using Test
using ParaViewCatalyst

@testset verbose=true showtiming=true "Initialization" begin
    @test_throws AssertionError("\n        set CATALYST_IMPLEMENTATION_PATHS environment variable to the path of your catalyst library\n        or use the libpath parameter of catalyst_initialize") catalyst_initialize()
end
end
