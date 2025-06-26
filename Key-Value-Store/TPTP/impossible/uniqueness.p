include('../axioms/key-value-store.ax').

tff(key_uniqueness_two,axiom,
    ! [A: $array($int,list),K: $int,V: $i,W: $i] : ( size(put(A,K,V)) = size(put(put(A,K,V),K,W)) ) ).


tff(key_uniqueness,conjecture,
    ! [A: $array($int,list),P: pair,Q: pair] :
      ( ( ( P != Q )
        & P != null
        & Q != null
        & ? [K: $int] : ( get(A,K) = P )
        & ? [L: $int] : ( get(A,L) = Q ) )
     => ( get_left(P) != get_left(Q) ) ) ).
