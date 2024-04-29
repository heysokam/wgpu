#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
# @fileoverview
#  confy Buildsystem for generating an updated version of the bindings with Futhark.
#  @note This file is completely unnecessary to use the bindings with your application.
#_______________________________________________________________________________________|
# @deps std
from std/strformat import `&`
# @deps ndk
import confy

info "Generating the wgpu-native bindings ..."

#_______________________________________
# Configure the Generator Buildsystem
confy.cfg.nim.systemBin = off
let genDir  = cfg.rootDir/"gen"
let genFile = genDir/"result.nim"
let srcDir  = cfg.srcDir
let trgFile = build.srcDir/"wgpu"/"api.nim"

#_______________________________________
# Install Opir if it doesn't exist
import confy/builder/nim as cc
let opir = getEnv("HOME").Path/".local"/"bin"/"opir"
if not fileExists(opir):
  info &"Opir does not exist at {opir.parentDir()}"
  info "Installing Futhark and Opir ..."
  withDir libDir/"futhark": sh &"{cc.getRealNimble()} install"
  ln getEnv("HOME").Path/".nimble"/"bin"/"opir", opir
  info "Done installing Futhark and Opir."

#_______________________________________
# Update the Headers to the latest wgpu-trunk commit
info "Updating the wgpu-native submodule ..."
withDir cfg.srcDir/"wgpu"/"C"/"wgpu-native": sh "git pull --recurse-submodules origin trunk"

#_______________________________________
# Build the generator
info "Generating the wgpu-native bindings with Futhark ..."
cfg.srcDir = genDir
build Program.new(
  src  = cfg.srcDir/"generator.nim",
  deps = Dependencies.new(
    submodule( "futhark",      "https://github.com/PMunch/futhark"      ),
    submodule( "libclang-nim", "https://github.com/PMunch/libclang-nim" ),
    submodule( "termstyle",    "https://github.com/PMunch/termstyle"    ),
    submodule( "macroutils",   "https://github.com/PMunch/macroutils"   ),
    submodule( "nimbleutils",  "https://github.com/PMunch/nimbleutils"  ),
    ), # << Dependencies.new( ... )
  args = "--maxLoopIterationsVM:1_000_000_000 -d:futharkRebuild -d:nodeclguards -d:UnsafeToplevelName_TODO:on -d:UnsafeProcNames:on",
  ) # << Program.new( ... )
info "Done generating the wgpu-native bindings with Futhark."

#_______________________________________
# Move the generated output
cfg.srcDir = build.srcDir
info &"Outputting the resulting bindings into:  {trgFile}"
cp genFile, trgFile
info "Done generating the wgpu-native bindings."

