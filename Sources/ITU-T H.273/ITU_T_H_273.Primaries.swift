extension ITU_T_H_273 {
    /// ColourPrimaries, H.273 table 2.
    public enum Primaries: UInt8, Sendable, Hashable, CaseIterable {
        /// Rec. ITU-R BT.709, also the primaries of IEC 61966-2-1 sRGB.
        case bt709 = 1
        case unspecified = 2
        /// Rec. ITU-R BT.470 System M.
        case bt470M = 4
        /// Rec. ITU-R BT.470 System B, G and BT.601 625-line.
        case bt470BG = 5
        /// Rec. ITU-R BT.601 525-line and SMPTE ST 170.
        case bt601 = 6
        case smpte240 = 7
        /// Generic film, illuminant C.
        case film = 8
        /// Rec. ITU-R BT.2020 and BT.2100.
        case bt2020 = 9
        /// SMPTE ST 428-1, CIE 1931 XYZ.
        case xyz = 10
        /// SMPTE RP 431-2, DCI-P3.
        case dciP3 = 11
        /// SMPTE EG 432-1, Display P3.
        case displayP3 = 12
        /// EBU Tech. 3213-E.
        case ebu3213 = 22
    }
}

extension ITU_T_H_273.Primaries {
    /// The value H.273 writes for this ColourPrimaries.
    public var code: UInt8 { self.rawValue }
}
