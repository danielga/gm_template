# {MODULE NAME HERE}

{DESCRIPTION ABOUT MODULE HERE}  

## Compiling

The only supported compilation platform for this project on Windows is **Visual Studio 2017** on **release** mode {**TODO**: REMOVE THIS PART IF NOT APPLICABLE}. However, it's possible it'll work with *Visual Studio 2015* and *Visual Studio 2019* because of the unified runtime.  
On Linux, everything should work fine as is, on **release** mode {**TODO**: REMOVE THIS PART IF NOT APPLICABLE}.  
For Mac OSX, any **Xcode (using the GCC compiler)** version *MIGHT* work as long as the **Mac OSX 10.7 SDK** is used, on **release** mode {**TODO**: REMOVE THIS PART IF NOT APPLICABLE}.  
These restrictions are not random; they exist because of ABI compatibility reasons.  
If stuff starts erroring or fails to work, be sure to check the correct line endings (\n and such) are present in the files for each OS.  

## Requirements

This project requires [garrysmod_common][1], a framework to facilitate the creation of compilations files (Visual Studio, make, XCode, etc). Simply set the environment variable '**GARRYSMOD\_COMMON**' or the premake option '**gmcommon**' to the path of your local copy of [garrysmod_common][1].  

We also use [SourceSDK2013][2], so set the environment variable '**SOURCE_SDK**' or the premake option '**sourcesdk**' to the path of your local copy of [SourceSDK2013][2]. The previous links to [SourceSDK2013][2] point to my own fork of VALVe's repo and for good reason: Garry's Mod has lots of backwards incompatible changes to interfaces and it's much smaller, being perfect for automated build systems like Travis-CI (which is used for this project).  

  [1]: https://github.com/danielga/garrysmod_common
  [2]: https://github.com/danielga/sourcesdk-minimal

## Garry's Mod native modules template (you should remove this section)

This is a template repository for Garry's Mod native modules.  
Parts to be replaced:  

- First heading (`{MODULE NAME HERE}`), content below it (`{DESCRIPTION ABOUT MODULE HERE}`) and remove release mode comments, if not applicable (`{TODO: REMOVE THIS PART IF NOT APPLICABLE}`) on this README

- Header of the license (`{MODULE NAME HERE}`) and description (`{DESCRIPTION ABOUT MODULE HERE}`) on the license

- Either remove or change `.appveyor.yml` and `.travis.yml` (`{MODULE NAME HERE}` and `{ENCRYPTED API KEY ...}`)

- Change `premake5.lua` (`{MODULE NAME HERE}` and what needs to be included)

- Change `source/main.cpp` (`{MODULE NAME HERE}`)
