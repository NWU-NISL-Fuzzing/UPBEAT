// can be detected by upbeat

namespace NISLNameSpace {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;


    @EntryPoint()
    operation main() : Unit {
        use control = Qubit();
        use target = Qubit();
        H(control);
        CNOT(control, target);
        DumpRegister((), [target]);
        Reset(target);
        Reset(control);
    }
}