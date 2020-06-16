namespace BasicGatesKata {
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation StateFlip() : Unit {
        let divider = "--------------------------------------------------------------------------------------------------";
        using(q = Qubit()) {
            Message("Qubit in state |𝜓⟩ = 𝛼|0⟩ + 𝛽|1⟩");
            DumpMachine();
            Message(divider); 

            X(q);
            Message("Qubit in state 𝛼|1⟩ + 𝛽|0⟩");
            DumpMachine();
            Reset(q);
        }
    }


    operation BasisChange() : Unit {
        let divider = "--------------------------------------------------------------------------------------------------";
        using(q = Qubit()) {
            Message("Qubit in state |𝜓⟩ = 𝛼|0⟩ + 𝛽|1⟩");
            DumpMachine();
            Message(divider);

            H(q);
            Message("Qubit now in superposition");
            DumpMachine();
            Reset(q);
        }
    }
}