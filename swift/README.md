# Swift Demos

## Overview

This directory contains Swift sample programs for various Ice components. These
examples are provided to get you started on using a particular Ice feature or
coding technique.

Most of the subdirectories here correspond directly to Ice components, such as
[Glacier2](./Glacier2), [IceStorm](./IceStorm), and so on. We've also included the
following additional subdirectories:

- [Manual](./Manual) contains complete examples for some of the code snippets
in the [Ice manual][1].

- [iOS/Chat](./iOS/Chat) contains an iOS client for the ZeroC [Chat Demo][2].

Refer to the [C++11 demos](../cpp11) for more examples that use the Ice services
(Glacier2, IceGrid, IceStorm).

## Building and running the Demos

### Build Requirements

In order to build the Ice for Swift sample programs, you need:
 * XCode
 * Slice for Swift and Slice for C++ Slice compilers
 * [Carthage][3]

### Install required dependencies using Carthage:

```
carthage update
```

This command will build the `Ice` and `PromiseKit` frameworks required by the sample
programs and install them in `Carthage/Build/` directory.

To use the Slice for Swift and Slice for C++ Slice compilers from the source distribution
you must set `ICE_HOME` environment variable before running `carthage update`.

### Building the demos using XCode

Open project file `demos.xcodeproj` to build the sample programs.

The demos are configured to use the `Ice` and `PromiseKit` frameworks from Carthage
builds and the Slice for Swift compiler from the binary distribution, to build the sample
programs using the Slice for Swift compiler from a source distribution you must set `ICE_HOME`
environment variable before starting XCode.

### Running the Demos

For most demos, you can simply run `client` and `server` in separate Command
Prompt windows.  Refer to the README.md file in each demo directory for the
exact usage instructions.

Some demos require Ice services such as IceGrid and IceStorm that are not
included in the Ice for Swift distribution. To run these demos, the simplest
is to first install the Ice Homebrew packages. Please refer to
[Using the macOS Binary Distributions][4] for additional information.


[1]: https://doc.zeroc.com/display/Ice37/Ice+Manual
[2]: https://zeroc.com/chat/index.html
[3]: https://github.com/Carthage/Carthage
[4]: https://doc.zeroc.com/display/Rel/Using+the+macOS+Binary+Distribution+for+Ice+3.7.2
