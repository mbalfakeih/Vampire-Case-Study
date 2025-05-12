include('key-value-store.ax').

%--Iff two arrays contain all the same elements, then they must be the same
tff(contains_test,conjecture,
    ! [A: $array($int,$int),B: $array($int,$int)] :
      ( ! [V: $int] :
          ( contains(A,V)
        <=> contains(B,V) )
    <=> ( A = B ) ) ).
