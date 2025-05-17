include('../axioms/key-value-store.ax').

tff(put_diff_values,conjecture,
    ! [A: $array($int,list),K: $int,V: $int,W: $int] :
      ( ( V != W )
     => ( put(A,K,V) != put(A,K,W) ) ) ).
