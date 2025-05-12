include('key-value-store.ax').

tff(basic_conj,conjecture,
    ! [A: $array($int,$int),I: $int,E: $int,F: $int] :
      ( ( ( E != F )
        & $greatereq(E,0)
        & $greatereq(F,0) )
     => ( put(A,I,E) != put(A,I,F) ) ) ).

