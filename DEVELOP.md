# Developer documentation

## Generating the API
The API is generated automatically from Catalyst_jll.jl using Clang.Generators.
Go to the subfolder `deps` and execute
```shell
julia --project=. -e "using Pkg; Pkg.instantiate()"
julia --project=. generator.jl
```

## Releasing a new version