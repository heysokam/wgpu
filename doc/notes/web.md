# Emscripten
Emscripten with Nim Build setup:
https://github.com/treeform/nim_emscripten_tutorial

# Discussion about WASM, WASI and Emscripten for Nim
k: My game engine uses wasm (for non-web and web usecase) for it's cross-engine game "cartridges".
   See here: https://github.com/notnullgames/null0 Emscripten is pretty simple,
   if you setup a config (like this: https://github.com/notnullgames/null0/blob/main/src/carts/config.nims)
   but it can sometimes be a bit more complicated, if you don't actually want the wasm-runtime-side
   (it's very JS focused, so gets stupid, sometimes, when you are using a native wasm runtime)
   Using clang/llvm, you don't actually need emscripten at all, though,
   and for a lot things it can be much easier, and the wasm it poroduces is way smaller/lighter.
   You can read more about this here: https://schellcode.github.io/webassembly-without-emscripten and here: https://surma.dev/things/c-to-webassembly/
   and for a nim-focused path: https://github.com/yglukhov/wasmrt
   I think overall emscripten is easier to get started with,
   but I just have to accept a ton of bloat and converting things around in the native host.
   I plan to move to a non-emscripten system for the carts, at some point.
   Emscripten is good for just automating the web host-side and connecting "native looking" code to it, though,
   so it probly depends on how you want to use it.
   If you want to go the emscripten route, or not, I found these wasm3 bindings (native-side host for wasm) helpful: https://github.com/beef331/wasm3
   even though it's more about running wasm on native (not in browser) they have some nice wasm-side macros for exposing things,
   and it's pretty easy to get started. Here is an example: https://github.com/beef331/wasm3/blob/master/wasmsources/maths.nim

b: Sokam wants to compile to wasm. Which means using treeform's example project as a base
b: the exporter only helps if you use wasm if you use clang or nlvm you do not need it
k: I tweaked it a little for my purpose (emscripten path): https://github.com/notnullgames/null0/blob/main/src/carts/null0.nim#L5-L22
b: I have been meaning in documenting using clang to emit WASM with Nim
b: It's now that i think you can just do {.exportc, dynlib.}
b: I do not recall if I tried

s: i might go with emscripten just to avoid having to write js (seems to be that that article explains how to do so manually)

k: I played with non-emscripten stuff a bit, and it's much simpler (no emscritpen pragmas needed, or special config)
k: I think spiritually I am in the second camp, but I am working on the actual functionality of the engine right now,
   so I put off playing with it. technically the same code should basically run in either with a little work
   but if you already have a working native thing, emscripten can make it much easier

b: it's not like emcc is that bad to get. So even if your work requires it as a build dependency, it's not a big deal
   Given that you probably will need WASI anyway, it's like the only good path

k: Here is a contrast: in normal rust wasm stuff, you just set the target to wasm, and it works, with very little deps in the host.
   In "normal c" stuff, generally they tell you to target emscripten, and it adds a huge amount of layers.
   Nim can do either form fine (so can C, really.)
   Emscritpen can do things like emulate GLFW/SDL, so if you have a working native nim GLFW/SDL program, for example,
   it will be way easier to make it work in emscripten.
   you can also expose the same glfw functions to the runtime on the web yourself,
   but you will priobly end up writing more js than you want to 🙂

k: for my thing, wasm is just a cross-platfrom and performant container that hooks into some functions in the host 
   (the actual engine, which is on web or native nim) so for me, I always end up having to pull out emscritpen things
   but I think for most things, enmscripen will get you started way faster
s: how does nim do the rust-like version? by compiling with clang?
k: yep. it's very barebones, just "expose this fucntion, and expect this function"
   so for my purposes its probly much better, since I don;t expose a whole fake GL canvas or whatever, just a handful of simple functions
   whereas emscritpen makes all that stuff for you.
   so it's like "oh you are usign SDL2, here is that whole thing implemented in js, go ahead and use it"

b: I think you can technically do barebones with emscripten aswell
k: yeh, for sure
k: it needs some flags, and I still found some weirdness with it (you have to expose memory functiosn exactly tyhe same, etc). but very doable.
k: the generated js actually helped me get it working (I ported a few little things to C/nim at one point)
s: could the required js code be written in nim in some way?
k: nim can compile to js, so yes, I think so
   but I am not familiar at allk: that would be sick.
   wasm3 (as you know) has WASI and so do most native runtimes. there are some options for web too, like this https://github.com/bjorn3/browser_wasi_shim so emscripten isn't really required at all, if you just need WASI, but everything else probly will need that (glfw, etc)b: Sure but it's easier to just use emscripten and not have to shim everything 😄

k: https://wasi.dev/ it's just a general interface. it simulates a proper OS, afaik
b: WASI simulates a proper OS afaik. So you can do things like open a file, which stores in the browser local storage
s: oh, you cannot open files with emscrpten? :think:
b: You can with emscripten + wasi. But this isnt on the host machine. It's in the browser environment
   Based on your environment you implement specific procedures
k: emscritpen implements it's own thing. simialr to wasi, I guess
k: wasi implements "open a file pointer" "write to a file pointer" "get time of day" "give me a random number",
   and lower-level system-things like that. someone has to implement it in browser,
   because those things are not built in to wasm, so in the case of wasi-shim or emscripten it's roughly the same idea.
   basically you expose a function that has the right name/signature.
   emscritpen automatically generates the host (browser) part.b: It's the libc of wasm really
   emscripten made their own libc thing. and so did wasi
   wasi is like "you are makign a deal with me to expose the functions I want"
   and emsripten is more like "I will just make the js host for you"
   so for some things not doing that is simpler, like I can expose my own "gimme a random number" function, or follow the WASI standard
   but for regular things, emscripten is probly a better choice

