/// ITU-T H.273: coding-independent code points for video signal type identification.
///
/// The code points say how a decoder turns coded samples back into colour: which primaries,
/// which transfer function, which matrix from R′G′B′ to Y′CbCr, and whether the samples use
/// the full or the limited range. Containers carry them as is, for example in an ISO BMFF
/// `colr` box of type `nclx`.
public enum ITU_T_H_273 {}
