include('key-value-store.ax').

tff(basic_conj,conjecture,
    ! [A: $array($int,$int),B: $array($int,$int),I: $int,E: $int,F: $int] :
      ( ( ( E != F )
        & ( A = B )
        & $greatereq(E,0)
        & $greatereq(F,0) )
     => ( put(A,I,E) != put(B,I,F) ) ) ).

