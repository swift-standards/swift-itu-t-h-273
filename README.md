# swift-itu-t-h-273

Use this package when you need to read or write the H.273 code points that tell a decoder how to turn coded video samples back into colour: primaries, transfer characteristics, matrix coefficients and the full range flag. Start from `ITU_T_H_273.Signal`, which holds all four. The package only names a signal type. If you need the BT.709 colour values and Y′CbCr arithmetic themselves, use swift-itu-r-bt-709.

## Laws

- Raw values are the values of H.273's tables. Reserved values, such as 3 in each table, have no case, so `init(rawValue:)` returns nil for them.
- `ITU_T_H_273.Signal.codes` writes primaries, transfer and matrix in that order, joined by hyphens, as in `1-13-1`. It leaves out the range flag.
- `ITU_T_H_273.Signal.sRGB` is sRGB pictures stored as R′G′B′: 1-13-0 at full range. `ITU_T_H_273.Signal.bt709` is 1-1-1 at limited range.
- `ITU_T_H_273.Signal.carried(by:at:)` keeps the primaries and transfer and replaces the matrix and range. So sRGB pictures encoded with the BT.709 matrix are 1-13-1 at limited range, which is not equal to `ITU_T_H_273.Signal.bt709`.
