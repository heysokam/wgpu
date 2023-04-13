#:________________________________________________________
#  wgpu-nim  |  Copyright (C) Ivan Mar (sOkam!)  |  MIT  |
#:________________________________________________________

include ./api/compile
import ./api/types as wgpuTypes ; export wgpuTypes
import ./api/procs as wgpuProcs ; export wgpuProcs

template vaddr *(val :auto) :untyped=
  ## Returns the `addr` of anything, through a temp val.
  ## Useful when the objects have not been created yet.
  let temp = val; temp.unsafeAddr

