// Bug Description:
// Can be detected by upbeat-r&upbeat.
// ToffoliSimulator serve NaN as a valid value.

namespace NISLNameSpace {
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;


    @EntryPoint()
    operation main() : Unit {
        use q = Qubit();
        Ry(NaN(), q);
        DumpMachine();
        Reset(q);
    }
}