extension ITU_T_H_273 {
    /// TransferCharacteristics, H.273 table 3.
    public enum Transfer: UInt8, Sendable, Hashable, CaseIterable {
        /// Rec. ITU-R BT.709.
        case bt709 = 1
        case unspecified = 2
        /// Assumed display gamma 2.2.
        case gamma22 = 4
        /// Assumed display gamma 2.8.
        case gamma28 = 5
        /// Rec. ITU-R BT.601 and SMPTE ST 170.
        case bt601 = 6
        case smpte240 = 7
        case linear = 8
        /// Logarithmic, 100:1 range.
        case log100 = 9
        /// Logarithmic, 100 × √10 : 1 range.
        case log316 = 10
        /// IEC 61966-2-4, xvYCC.
        case xvYCC = 11
        /// Rec. ITU-R BT.1361 extended colour gamut.
        case bt1361 = 12
        /// IEC 61966-2-1, the sRGB transfer function.
        case sRGB = 13
        /// Rec. ITU-R BT.2020, 10-bit.
        case bt2020Ten = 14
        /// Rec. ITU-R BT.2020, 12-bit.
        case bt2020Twelve = 15
        /// SMPTE ST 2084, perceptual quantization.
        case pq = 16
        /// SMPTE ST 428-1.
        case st428 = 17
        /// ARIB STD-B67, hybrid log-gamma.
        case hlg = 18
    }
}

extension ITU_T_H_273.Transfer {
    /// The value H.273 writes for this TransferCharacteristics.
    public var code: UInt8 { self.rawValue }
}
