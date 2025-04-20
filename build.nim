#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
# @IMPORTANT
#  This file is COMPLETELY UNNECESSARY to use the bindings with your application.
#_________________________________________________________________________________
# @fileoverview
#  confy Buildsystem for generating an updated version of the bindings with Futhark.
#_______________________________________________________________________________________|
# @deps std
from std/strformat import `&`
# @deps ndk
import confy

info "Generating the wgpu-native bindings ..."

#_______________________________________
# Configure the Generator Buildsystem
let genDir  = cfg.dirs.root/"gen"
let genFile = genDir/"result.nim"
let srcDir  = cfg.dirs.src
let trgFile = build.srcDir/"wgpu"/"api.nim"

#_______________________________________
# Install Opir if it doesn't exist
let opir = getEnv("HOME")/".local"/"bin"/"opir"
if not fileExists(opir):
  info &"Opir does not exist at {opir.parentDir()}"
  info "Installing Futhark and Opir ..."
  withDir cfg.dirs.lib/"futhark": sh &"{cfg.nimble.bin} install"
  ln getEnv("HOME")/".nimble"/"bin"/"opir", opir
  info "Done installing Futhark and Opir."

#_______________________________________
# Update the Headers to the latest wgpu-trunk commit
info "Updating the wgpu-native submodule ..."
withDir cfg.dirs.src/"wgpu"/"C"/"wgpu-native": sh "git pull --recurse-submodules origin trunk"

#_______________________________________
# Build the generator
info "Generating the wgpu-native bindings with Futhark ..."
cfg.dirs.src = genDir
build Program.new(
  entry = "generator.nim",
  deps  = Dependencies.new(
    Dependency.new( "futhark",      "https://github.com/PMunch/futhark"      ),
    Dependency.new( "libclang-nim", "https://github.com/PMunch/libclang-nim" ),
    Dependency.new( "termstyle",    "https://github.com/PMunch/termstyle"    ),
    Dependency.new( "macroutils",   "https://github.com/PMunch/macroutils"   ),
    Dependency.new( "nimbleutils",  "https://github.com/PMunch/nimbleutils"  ),
    ), #:: Dependencies.new( ... )
  args = @["--maxLoopIterationsVM:1_000_000_000", "-d:futharkRebuild", "-d:nodeclguards", "-d:UnsafeToplevelName_TODO:on", "-d:UnsafeProcNames:on"],
  cfg  = cfg,
  ) #:: Program.new( ... )
info "Done generating the wgpu-native bindings with Futhark."

#_______________________________________
# Move the generated output
cfg.dirs.src = build.srcDir
info &"Outputting the resulting bindings into:  {trgFile}"
cp genFile, trgFile
info "Done generating the wgpu-native bindings."

