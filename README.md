# ParaViewCatalyst.jl

<!-- [![Docs-stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://trixi-framework.github.io/ParaViewCatalyst.jl/stable) -->
[![Docs-dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://trixi-framework.github.io/ParaViewCatalyst.jl/dev)
[![Slack](https://img.shields.io/badge/chat-slack-e01e5a)](https://join.slack.com/t/trixi-framework/shared_invite/zt-sgkc6ppw-6OXJqZAD5SPjBYqLd8MU~g)
<!-- [![Build Status](https://github.com/trixi-framework/ParaViewCatalyst.jl/actions/workflows/ci.yml/badge.svg)](https://github.com/trixi-framework/ParaViewCatalyst.jl/actions?query=workflow%3ACI) -->
<!-- [![Codecov](https://codecov.io/gh/trixi-framework/ParaViewCatalyst.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/trixi-framework/ParaViewCatalyst.jl) -->
<!-- [![Coveralls](https://coveralls.io/repos/github/trixi-framework/ParaViewCatalyst.jl/badge.svg?branch=main)](https://coveralls.io/github/trixi-framework/ParaViewCatalyst.jl?branch=main) -->
[![License: MIT](https://img.shields.io/badge/License-MIT-success.svg)](https://opensource.org/licenses/MIT)

**ParaViewCatalyst.jl** provides a Julia interface to
[Catalyst](https://docs.paraview.org/en/latest/Catalyst/index.html),
used for in-situ visualization of simulation data.  
The Catalyst library for Julia is provided automatically as a precompiled binary by Catalyst\_jll.jl
at
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
Alternatively, when using ParaViewCatalyst.jl from your own application, you can use the keyword argument `libpath` of the function `catalyst_initialize`.

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
To use ParaViewCatalyst.jl from your code, you only need `catalyst_initialize()`,
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
ParaViewCatalyst.jl is used by [Trixi.jl](https://github.com/trixi-framework/Trixi.jl).


## Authors
ParaViewCatalyst.jl was initiated by Jake Bolewski ([@jakebolewski](https://github.com/jakebolewski))
at https://github.com/CliMA and is now maintained by
[Benedict Geihe](https://www.mi.uni-koeln.de/NumSim/dr-benedict-geihe/) (University of Cologne,
Germany).


## License
ParaViewCatalyst.jl is licensed under the MIT license (see [LICENSE.md](LICENSE.md)).  Since
ParaViewCatalyst.jl is an open-source project, we are very happy to accept contributions from the
community. Note that we strive to be a friendly, inclusive open-source community and ask all members
of our community to treat each other decently. To get in touch with the developers,
[join us on Slack](https://join.slack.com/t/trixi-framework/shared_invite/zt-sgkc6ppw-6OXJqZAD5SPjBYqLd8MU~g)
or
[create an issue](https://github.com/trixi-framework/ParaViewCatalyst.jl/issues/new).
