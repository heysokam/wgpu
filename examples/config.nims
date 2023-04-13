switch("path", "$projectDir/../src")  # add our dependency without installing it

#_____________________
# General options
--mm:orc
--nimcache:"bin/nimcache"
--passC:"-m64"
--passC:"-march=native"
switch("d", "wgpu")

#_____________________
# Default option to run when noOpt
#   Condition cannot be eval at compile time, so it needs to list all options possible
#   Broken from this file. Doesn't make the other checks valid after this definition. 
#   Not usable for noOpt
# when not defined(release) and not defined(debug):

#______________________
# Release mode 
# (default from nim.cfg, in lack of other options)
when not defined(debug): 
  --passC:"-O3"
#______________________
# Debug mode
elif defined(debug):
  --undef:release
  --stacktrace:on
  # --debugger:native
  --passC:"-Og"    # Optimize for debugging
  --passC:"-g3"    # Debugging information level
  --passC:"-ggdb"  # Compile wigh gdb debug information specifically

#_____________________
# Verbose: Combined multi-option
when defined(verbose):
  --listCmd
  --verbosity:3
  # --verbose   #TODO: how to pass this to nimble without --verbose ? possible?
else:
  --passC:"-w"

#______________________
# Buildsystem debugging options
when defined(dbgNimble):
  --forceBuild
  --verbosity:3
  --passC:"-Wall"
  --passC:"-Wextra"
  --passC:"-pedantic"
  # --passC:"-Werror" # Usually not viable to activate

