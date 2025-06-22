include('../axioms/key-value-store.ax').

tff(get_result,conjecture,
    ! [A: $array($int,list),K: $int] :
      ( ( $greatereq(K,0)
       => ( get(A,K) = null ) )
      | ? [P: pair] : ( get(A,K) = P ) ) ).
