include('../axioms/key-value-store.ax').

tff(get_result,conjecture,
    ! [A: $array($int,list),K: $int] :
      ( ( $greatereq(K,0)
       => ( get(A,K) = nil ) )
      | ? [P: pair] : ( get(A,K) = cons(P,nil) ) ) ).
