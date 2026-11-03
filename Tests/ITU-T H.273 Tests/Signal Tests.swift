import ITU_T_H_273
import Testing

@Suite struct `Signal Tests` {
    @Test func `sRGB pictures carried by the BT.709 matrix are 1-13-1 at limited range, not BT.709's 1-1-1`() {
        let carried = ITU_T_H_273.Signal.sRGB.carried(by: .bt709)
        #expect(carried.codes == "1-13-1")
        #expect(carried.range == .limited)
        #expect(carried != .bt709)
        #expect(ITU_T_H_273.Signal.bt709.codes == "1-1-1")
    }

    @Test func `sRGB pictures themselves are 1-13-0 at full range`() {
        #expect(ITU_T_H_273.Signal.sRGB.codes == "1-13-0")
        #expect(ITU_T_H_273.Signal.sRGB.range == .full)
    }

    @Test func `code points are the values of H.273's tables`() {
        #expect(ITU_T_H_273.Primaries.allCases.map(\.rawValue) == [1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 22])
        #expect(ITU_T_H_273.Transfer.allCases.map(\.rawValue) == Array(1...18).filter { $0 != 3 })
        #expect(ITU_T_H_273.Matrix.allCases.map(\.rawValue) == Array(0...14).filter { $0 != 3 })
        #expect(ITU_T_H_273.Transfer(rawValue: 3) == nil)
        #expect(ITU_T_H_273.Primaries.displayP3.rawValue == 12)
        #expect(ITU_T_H_273.Transfer.pq.rawValue == 16 && ITU_T_H_273.Transfer.hlg.rawValue == 18)
    }
}
