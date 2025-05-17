include('../axioms/key-value-store.ax').

tff(contains_equality,conjecture,
    ! [A: $array($int,list),B: $array($int,list)] :
      ( ! [V: $int] :
          ( contains(A,V)
        <=> contains(B,V) )
     <= ( A = B ) ) ).
