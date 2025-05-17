include('../axioms/key-value-store.ax').

tff(put_replacement,conjecture,
    ! [A: $array($int,list),K: $int,V: $int,W: $int] : ( put(put(A,K,V),K,W) = put(A,K,W) ) ).
