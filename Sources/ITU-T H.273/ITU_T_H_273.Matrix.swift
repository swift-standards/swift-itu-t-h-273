extension ITU_T_H_273 {
    /// MatrixCoefficients, H.273 table 4.
    public enum Matrix: UInt8, Sendable, Hashable, CaseIterable {
        /// No matrix: the samples are G, B and R, as in IEC 61966-2-1 sRGB pictures.
        case identity = 0
        /// Rec. ITU-R BT.709.
        case bt709 = 1
        case unspecified = 2
        /// United States FCC Title 47.
        case fcc = 4
        /// Rec. ITU-R BT.470 System B, G and BT.601 625-line.
        case bt470BG = 5
        /// Rec. ITU-R BT.601 525-line and SMPTE ST 170.
        case bt601 = 6
        case smpte240 = 7
        case yCgCo = 8
        /// Rec. ITU-R BT.2020, non-constant luminance.
        case bt2020 = 9
        /// Rec. ITU-R BT.2020, constant luminance.
        case bt2020Constant = 10
        /// SMPTE ST 2085, Y′D′zD′x.
        case st2085 = 11
        /// Chromaticity-derived, non-constant luminance.
        case chromaticity = 12
        /// Chromaticity-derived, constant luminance.
        case chromaticityConstant = 13
        /// Rec. ITU-R BT.2100, ICtCp.
        case iCtCp = 14
    }
}

extension ITU_T_H_273.Matrix {
    /// The value H.273 writes for this MatrixCoefficients.
    public var code: UInt8 { self.rawValue }
}
