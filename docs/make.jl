using Documenter

# Get ParaViewCatalyst.jl root directory
paraviewcatalyst_root_dir = dirname(@__DIR__)

# Fix for https://github.com/trixi-framework/Trixi.jl/issues/668
if (get(ENV, "CI", nothing) != "true") && (get(ENV, "PARAVIEWCATALYST_DOC_DEFAULT_ENVIRONMENT", nothing) != "true")
    push!(LOAD_PATH, paraviewcatalyst_root_dir)
end

using ParaViewCatalyst 

# Define module-wide setups such that the respective modules are available in doctests
DocMeta.setdocmeta!(ParaViewCatalyst, :DocTestSetup, :(using ParaViewCatalyst); recursive=true)

# Copy some files from the top level directory to the docs and modify them
# as necessary
open(joinpath(@__DIR__, "src", "index.md"), "w") do io
    # Point to source file
    println(io, """
    ```@meta
    EditURL = "https://github.com/trixi-framework/ParaViewCatalyst.jl/blob/main/README.md"
    ```
    """)
    # Write the modified contents
    for line in eachline(joinpath(paraviewcatalyst_root_dir, "README.md"))
        line = replace(line, "## License" => "## [License](@id doc-license)")
        line = replace(line, "[LICENSE.md](LICENSE.md)" => "[License](@ref)")
        println(io, line)
    end
end

open(joinpath(@__DIR__, "src", "license.md"), "w") do io
    # Point to source file
    println(io, """
    ```@meta
    EditURL = "https://github.com/trixi-framework/ParaViewCatalyst.jl/blob/main/LICENSE.md"
    ```
    """)
    # Write the modified contents
    println(io, "# License")
    println(io, "")
    for line in eachline(joinpath(paraviewcatalyst_root_dir, "LICENSE.md"))
        println(io, "> ", line)
    end
end

# Make documentation
makedocs(
    # Specify modules for which docstrings should be shown
    modules = [ParaViewCatalyst],
    # Set sitename to Trixi.jl
    sitename="ParaViewCatalyst.jl",
    # Provide additional formatting options
    format = Documenter.HTML(
        # Disable pretty URLs during manual testing
        prettyurls = get(ENV, "CI", nothing) == "true",
        # Set canonical URL to GitHub pages URL
        canonical = "https://trixi-framework.github.io/ParaViewCatalyst.jl/stable"
    ),
    # Explicitly specify documentation structure
    pages = [
        "Home" => "index.md",
        "API reference" => "reference.md",
        "License" => "license.md"
    ],
)


deploydocs(;
    repo = "github.com/trixi-framework/ParaViewCatalyst.jl",
    devbranch = "main",
    push_preview = true
)
