// Bug Description:
// Can be detected by upbeat.
// QuantumSimulator throws an ExecutionFailException exception.

namespace NISLNameSpace {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;

    @EntryPoint()
    operation main() : Unit {
        let _ = BitSizeI(2^63);
    }
}
