include('../axioms/key-value-store.ax').

tff(extensionality_the_other_way,conjecture,
    ! [A: $array($int,list),B: $array($int,list)] :
      ( ! [K: $int] : ( get(A,K) = get(B,K) )
     <= ( A = B ) ) ).
