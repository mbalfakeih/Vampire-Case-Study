include('../axioms/key-value-store.ax').

%-- This seems to be an issue with the fact that the hash uses
%-- the remainder function, see remainder_test in this folder
tff(chain_two,conjecture,
    ! [A: $array($int,list),K: $int,X: $int] :
      ( ( $greatereq(K,0)
        & $less(K,n)
        & $greatereq(X,0) )
     => ( get_chain(A,$sum(K,$product(X,n))) = get_chain(A,K) ) ) ).
