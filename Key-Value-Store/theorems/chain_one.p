include('../axioms/key-value-store.ax').

tff(chain_one,conjecture,
    ! [A: $array($int,list),K: $int] :
      ( ( $greatereq(K,0)
       => ( get_chain(A,K) = nil ) )
     => ( get(A,K) = nil ) ) ).
