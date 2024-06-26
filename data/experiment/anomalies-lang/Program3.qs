// Bug Description:
// Can be detected by upbeat-r&upbeat.
// QuantumSimulator throws an OverflowException exception.

namespace NISLNameSpace {
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Intrinsic;

    
    @EntryPoint()
    operation main() : Unit {
        let a = 2^32;
        let _ = SequenceI(0, a);
    }
}