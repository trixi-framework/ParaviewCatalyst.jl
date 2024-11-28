using Test

@time @testset verbose=true showtiming=true "ParaViewCatalyst.jl tests" begin
    include("test_interface.jl")
end
