include('../key-value-store.ax').

tff(contains_def_three,conjecture,
    ! [A: $array($int,$int),B: $array($int,$int)] :
      ( ! [V: $int] :
          ( contains(A,V)
        <=> contains(B,V) )
     => ( A = B ) ) ).
