namespace Kata {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    

    @EntryPoint()
    operation BellStateChange1 () : Unit{
        using(qs = Qubit[3]){
            H(qs[0]);
            CNOT(qs[0], qs[1]);
            Z(qs[0]);
            Reset(qs[0]);
            Reset(qs[1]);
        }
    }
}

