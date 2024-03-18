#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
const stripPrefix * = [
  "wgpu",
  "WGPU"
  ] # << stripPrefix = [ ... ]
const stripStart  * = [
  "",
  ] # << stripStart = [ ... ]
const replaceStart * = [
  ("",""),
  ] # << replaceStart = [ ... ]
const replaceList * = [
  ("",""),
  ] # << replaceEnd = [ ... ]
const replaceEnd * = [
  ("",""),
  ] # << replaceEnd = [ ... ]
const stripEnd * = [
  "",
  ]
const addT *:seq[string]= @[]

