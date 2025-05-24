#:_______________________________________________________
#  wgpu  |  Copyright (C) Ivan Mar (sOkam!)  |  LGPLv3  |
#:_______________________________________________________
## @fileoverview General Purpose Helpers
#:________________________________________|

template vaddr *(val :auto) :untyped=
  ## @descr
  ##  Returns the `addr` of anything, through a temp val.
  ##  Useful when the objects have not been created yet.
  let temp = val; temp.unsafeAddr

