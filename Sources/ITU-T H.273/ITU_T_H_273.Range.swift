extension ITU_T_H_273 {
    /// VideoFullRangeFlag, H.273 clause 8.3.
    public enum Range: UInt8, Sendable, Hashable, CaseIterable {
        /// Luma from 16 to 235 and chroma from 16 to 240, scaled by the bit depth.
        case limited = 0
        /// Every code value is used.
        case full = 1
    }
}

extension ITU_T_H_273.Range {
    /// The value H.273 writes for this VideoFullRangeFlag.
    public var code: UInt8 { self.rawValue }
}
