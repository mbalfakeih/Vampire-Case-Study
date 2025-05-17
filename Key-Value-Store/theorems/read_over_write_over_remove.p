include('../axioms/key-value-store.ax').

tff(read_over_write_over_remove,conjecture,
    ! [A: $array($int,list),K: $int,V: $int] : ( get(put(remove(A,K),K,V),K) = cons(pair_cons(K,V),nil) ) ).
