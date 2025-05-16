include('../key-value-store.ax').

tff(extensionality,conjecture,
    ! [A: $array($int,$int),B: $array($int,$int)] :
      ( ! [I: $int] : ( get(A,I) = get(B,I) )
     => ( A = B ) ) ).