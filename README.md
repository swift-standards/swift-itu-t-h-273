# swift-itu-t-h-273

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

Swift implementation of ITU-T H.273, the coding-independent code points that identify a video signal's colour.

## Overview

The colour primaries, transfer characteristics, matrix coefficients and range flag of H.273's tables, and `Signal`, the four together. Pictures rendered in sRGB and encoded through the BT.709 matrix are 1-13-1 at limited range, not BT.709's 1-1-1.

```swift
import ITU_T_H_273

let tag = ITU_T_H_273.Signal.sRGB.carried(by: .bt709)
tag.codes  // "1-13-1"
```

## Installation

```swift
dependencies: [
    .package(url: "https://github.com/swift-standards/swift-itu-t-h-273.git", branch: "main")
]
```

```swift
.target(
    name: "App",
    dependencies: [
        .product(name: "ITU-T H 273", package: "swift-itu-t-h-273")
    ]
)
```

## License

This package is licensed under the Apache License 2.0. See [LICENSE.md](LICENSE.md) for details.
