// Bug Description:
// Can be detected by upbeat-b&upbeat.
// QuantumSimulator throws an ExecutionFailException exception.

namespace NISLNameSpace {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;

    @EntryPoint()
    operation main() : Unit {
        let a = 2^63;
        let _ = BitSizeI(a);
    }
}