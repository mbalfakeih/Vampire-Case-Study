include('../axioms/key-value-store.ax').

tff(key_uniqueness,conjecture,
    ! [A: $array($int,list),P: pair,Q: pair] :
      ( ( ( P != Q )
        & ? [K: $int] : ( get(A,K) = cons(P,nil) )
        & ? [L: $int] : ( get(A,L) = cons(Q,nil) ) )
     => ( get_left(P) != get_left(Q) ) ) ).
