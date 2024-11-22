# ParaviewCatalyst.jl
ParaviewCatalyst.jl provides a Julia interface to Catalyst, used for in-situ
visualization of simulation data.  
The Catalyst library for Julia is provided by Catalyst_jll.jl at
[JuliaBinaryWrappers](https://github.com/JuliaBinaryWrappers/Catalyst_jll.jl/blob/main/src/Catalyst_jll.jl)
and [Yggdrasil](https://github.com/JuliaPackaging/Yggdrasil/tree/master/C/Catalyst).


## Getting started

### Prerequisites
Although the [Catalyst API](https://catalyst-in-situ.readthedocs.io) is not restricted to
ParaView, this package is geared towards the 
[ParaView implementation](https://docs.paraview.org/en/latest/Catalyst) of the Catalyst API.
As such ParaView needs to be present on the machine you run your simulation on. In
particular, a version is required that ships the Catalyst implementation as a library. On
Linux you should look for `libcatalyst-paraview.so`.  
Its path has to be set as an environment variable, e.g. by
```bash
export CATALYST_IMPLEMENTATION_PATHS=<path_to_libcatalyst-paraview.so>
```
Alternatively, when using ParaviewCatalyst.jl from your own application, you can use the keyword argument `libpath` of the function `catalyst_initialize`.

### Testing

#### Catalyst implementation
Go to the `examples` folder and start julia using
```shell
julia --project=.
```
In package mode do
```julia
(examples) pkg> dev ..
(examples) pkg> instantiate
```
then
```julia
julia> include("test_init.jl")
``` 
You should see some information about the Catalyst implementation. In particular, you 
should see `implementation: "paraview"`.  
More verbose output can be enabled by setting the
environment variable `CATALYST_DEBUG=1`.

#### Paraview
Launch ParaView. From the main menu, select "Catalyst", then "Connect", and accept the
default port. Select "Catalyst" again and then "Pause Simulation". Now launch Julia as done
before, and execute
```julia
julia> include("test_execute.jl")
``` 
In ParaView click on the symbol in front of "Input", then click on the symbol in front of
"Extract: input". You should now see a square. In the properties tab under "Coloring",
select "testdata". Now select "Catalyst" from the main menu and "Continue". The square
should change its color every two seconds.

### Using the interface
To use ParaviewCatalyst.jl from your code, you only need `catalyst_initialize()`,
`catalyst_execute(node)`, and `catalyst_finalize()`. All information is passed
through Conduit nodes, which are required to adhere to the
[Blueprint](https://docs.paraview.org/en/latest/Catalyst/blueprints.html).

A user-defined ParaView pipeline script can be passed to `catalyst_initialize` using the
keyword argument `catalyst_pipeline`. By default src/catalyst_pipeline.py is used. This
script activates live visualization. The data can also be viewed on a remote machine. In
this case `options.CatalystLiveURL` has to be adjusted to point to the remote machine.
Once a pipeline in ParaView has been set up, it can be exported as a script by selecting
"File" from the main menu and then "Save Catalyst State".


## Examples
ParaviewCatalyst.jl is used by [Trixi.jl](https://github.com/trixi-framework/Trixi.jl).

## Authors
ParaviewCatalyst.jl was initiated by Jake Bolewski (@jakebolewski) at https://github.com/CliMA/
and is now maintained at https://github.com/trixi-framework.


## License
ParaviewCatalyst.jl is licensed under the MIT license (see [LICENSE.md](LICENSE.md)).
