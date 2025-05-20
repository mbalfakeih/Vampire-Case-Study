include('../axioms/key-value-store.ax').

%--This is easily proven once the axiom get_key in lists.ax is established
tff(get_key,conjecture,
    ! [A: $array($int,list),K: $int] :
      (  ($greatereq(K,0)) => ( get(A,K) != nil )
     => ( get_left(head(get(A,K))) = K ) ) ).
