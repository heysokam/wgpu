# Building wgpu
_wgpu-native is compiled into a static library, using its cargo+make+cmake buildsystem._
_So we need both Nim and Rust installed in the system._

_Note: The goal is just to install the required development tools._  
_Skip to step 5 if you already have installed git, clang, make, cmake, nim and rust._  

## Install mac developer tools
We need `clang`, `git`, `make` and `cmake`, so install them if they are not already
1. `xcode-select --install`
_Not required to do it through xcode-select. xcode is not used by this project._  

## Install Nim and Rust, using brew
Install brew:
```zsh
# Instructions from:  https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Then do:
2. Install nim: `brew install nim`
3. Install rust: `brew install rust`

## Alternative: Install Nim and Rust, using their dev instructions:
2.1. Install `choosenim`:  https://github.com/dom96/choosenim/releases  
2.2. Open a terminal and run `choosenim install stable`  
3. Follow the instructions at: https://www.rust-lang.org/tools/install  
_Note: the apps need to be accesible witout absolute variables, so this depends on these installers doing that for you (don't know if they do or not)._  

## Download the code
4. `git clone --recurse-submodules https://github.com/heysokam/wgpu`  
_Note: The repository needs to be cloned with recurse-submodules, or it won't work._  

## Optional
Check that everything needed is accesible without having to call their full paths:  
```
nimble -v
nim -v
cargo -v
git -v
make -v
cmake -v
```

## Build the app
5. `cd wgpu`
6. `nimble hello`  (or any other example)

To list the other available examples:
`nimble tasks`

