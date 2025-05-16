include('../key-value-store.ax').

tff(contains_def_one,conjecture,
    ! [A: $array($int,$int),V: $int] :
      ( contains(A,V)
    <=> ? [I: $int] : ( get(A,I) = V ) ) ).
