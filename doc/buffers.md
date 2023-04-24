# Deinterleaved Attribute Buffer
If you have a bunch of arrays, one for each attribute, the simplest approach would be using the offset field of `wgpuQueueWriteBuffer`  
Process would be:
- Calculate the size of all your arrays, and add them up, to get the buffer size.
- Create a buffer of that size
- Upload each chunk at a different offset

Stride is the distance between vertices
in the deinterleaved case you would have PPPPPPP packed, so stride would just be `sizeof vec3`

- How do you tell it how to find the NNNN block?
normally, i would use the offset field on the vertex attribute, but there's a fun wrinkle in the wgpu spec
It says the offset has to be less than the stride (guessing this is an attempt to not go OOB)
so the way to do this is to have multiple "vertex buffers", each with a single attribute in the input layout,
and then bind them all to the same GPUBuffer but at different offsets :/ what a silly spec line

