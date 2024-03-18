#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
# @deps std
from std/strutils import startsWith, endsWith, toUpperAscii, replace
from std/os import parentDir, `/`
# @deps external
import futhark
# @deps generator
from ./cfg import nil


#_____________________________
proc rename (n, k :string; p :string= "") :string=
  result = n
  # Start Rename
  for entry in cfg.stripPrefix:
    if result.startsWith( entry ) : result = result[entry.len .. ^1]
  for entry in cfg.replaceStart:
    if result.startsWith( entry[0] ) : result = entry[1] & result[entry[0].len .. ^1]
  for entry in cfg.stripStart:
    if result.startsWith( entry ) : result = result[entry.len .. ^1]
  # General Rename
  for entry in cfg.replaceList:
    result = result.replace( entry[0], entry[1] )
  # End Rename
  for entry in cfg.stripEnd:
    if result.endsWith( entry ) :
      if entry == "_t": result[0] = result[0].toUpperAscii()
      result = result[0..^entry.len+1]
      if result in cfg.addT: result = result&"T"


#_____________________________
# Find the headers, and generate the wrapper
const rootDir = currentSourcePath().parentDir()/".."
const srcDir  = rootDir/"src"
const wgpuDir = srcDir/"wgpu"/"C"/"wgpu-native"/"ffi"
importc:
  renameCallback rename
  outputPath currentSourcePath.parentDir/"result.nim"
  path wgpuDir
  "wgpu.h"
  "webgpu-headers"/"webgpu.h"


##[
# Notes: outputPath

# Futhark has an outputPath argument which can be added to the importc block.
# This path is where the completed bindings will be stored,
# and also where Futhark will look for existing bindings to avoid rebuilding them.

# You will need to use -d:futharkRebuild to update the file when you make changes in the importc block if the outputPath set to a file.

# If you set outputPath to a folder:
  # Futhark will store the files with the appended hash in this folder
  # instead of in the nimcache folder and caching will work as usual.

  # By using this feature you will be able to set a path local to your project
  # and check the generated Futhark file into your version control system.

  # But that is only half the job,
  # because to be aware of the cache file Futhark still needs to be installed.

  # The recommended way to get around this is to do a when defined(useFuthark) switch
  # to check whether the user wants to use Futhark directly or to use the shipped wrapper.

  # It is recommended to use the exact name useFuthark,
  # this way the user can turn on Futhark for the entire project (in case you have imported another library which also uses Futhark).

  # If you want to give the user the option to switch on Futhark for only your project
  # it is recommended to use an additional switch with useFutharkFor<project name>
]##

