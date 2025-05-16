include('../key-value-store.ax').

tff(read_over_write_one,conjecture,
    ! [A: $array($int,$int),K: $int,V: $int] :
      ( $greatereq(V,0)
     => ( get(put(A,K,V),K) = V ) ) ).
