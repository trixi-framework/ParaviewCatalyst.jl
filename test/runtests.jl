using Test

@time @testset verbose=true showtiming=true "ParaViewCatalyst.jl tests" begin
    include("test_catalyst_jll.jl")
end
