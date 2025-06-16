include('../axioms/key-value-store.ax').

tff(put_replacement,conjecture,
    ! [A: $array($int,list),K: $int,V: $i,W: $i] :
      ( $greatereq(K,0)
     => ( put(put(A,K,V),K,W) = put(A,K,W) ) ) ).
