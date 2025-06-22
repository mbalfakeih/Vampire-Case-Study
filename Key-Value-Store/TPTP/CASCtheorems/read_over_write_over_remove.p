include('../axioms/key-value-store.ax').

tff(read_over_write_over_remove,conjecture,
    ! [A: $array($int,list),K: $int,V: $i] : ( get(put(remove(A,K),K,V),K) = pair_cons(K,V) ) ).
