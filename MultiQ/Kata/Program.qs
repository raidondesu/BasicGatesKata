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

    operation BellStateChange2 () : Unit{
        using(qs = Qubit[2]){
            H(qs[0]);
            CNOT(qs[0], qs[1]);
            X(qs[1]);
            Reset(qs[0]);
            Reset(qs[1]);
        }
    }

    operation BellStateChange3 () : Unit{
        using(qs = Qubit[2]){
            H(qs[0]);
            CNOT(qs[0], qs[1]);
            X(qs[1]);
            Z(qs[0]);
            Reset(qs[0]);
            Reset(qs[1]);
        }
    }

    operation TwoQubitGate1 () : Unit{
        using(qs = Qubit[2]){
            X(qs[1]);
            I(qs[0]);
            Reset(qs[0]);
            Reset(qs[1]);
        }
    }

    operation TwoQubitGate2 () : Unit{
        using(qs = Qubit[2]){
            H(qs[0]);
            Z(qs[1]);
            Reset(qs[0]);
            Reset(qs[1]);
        }
    }

    operation TwoQubitGate3 () : Unit{
        using(qs = Qubit[2]){
            SWAP(qs[0], qs[1]);
            Reset(qs[0]);
            Reset(qs[1]);
        }
    }


}

