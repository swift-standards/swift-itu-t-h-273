extension ITU_T_H_273 {
    /// A video signal type: the four code points together.
    public struct Signal: Sendable, Hashable {
        public var primaries: Primaries
        public var transfer: Transfer
        public var matrix: Matrix
        public var range: Range

        public init(primaries: Primaries, transfer: Transfer, matrix: Matrix, range: Range) {
            self.primaries = primaries
            self.transfer = transfer
            self.matrix = matrix
            self.range = range
        }
    }
}

extension ITU_T_H_273.Signal {
    /// Rec. ITU-R BT.709 video, 1-1-1 at limited range.
    public static let bt709 = Self(primaries: .bt709, transfer: .bt709, matrix: .bt709, range: .limited)

    /// IEC 61966-2-1 sRGB pictures, stored as R′G′B′: 1-13-0 at full range.
    public static let sRGB = Self(primaries: .bt709, transfer: .sRGB, matrix: .identity, range: .full)

    /// The same pictures carried as Y′CbCr through `matrix` at `range`, keeping primaries and transfer.
    ///
    /// Pictures rendered in sRGB and encoded with the BT.709 matrix are `sRGB.carried(by: .bt709)`:
    /// 1-13-1 at limited range. Tagging them BT.709's 1-1-1 tells a player to decode them with a
    /// different transfer function than they were made with.
    public func carried(by matrix: ITU_T_H_273.Matrix, at range: ITU_T_H_273.Range = .limited) -> Self {
        Self(primaries: primaries, transfer: transfer, matrix: matrix, range: range)
    }

    /// The code points as H.273 writes them, primaries-transfer-matrix: "1-13-1".
    public var codes: String { "\(primaries.code)-\(transfer.code)-\(matrix.code)" }
}
