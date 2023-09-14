#:____________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  :
#:____________________________________________________
requires "confy"
when defined(nimble) : include confy/nims
else                 : include ../confy/src/confy/nims
confy()
