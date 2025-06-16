include('../axioms/key-value-store.ax').

tff(put_check,conjecture,
    ! [A: $array($int,list),B: $array($int,list),K: $int,V: $i] :
      ( ( put(A,K,V) = B )
     => ! [X: $int] :
          ( ( get(A,X) != nil )
         => ( ( ( X != K )
             => ( get(A,X) = get(B,X) ) )
            & ( ( X = K )
             => ( get(B,X) = cons(pair_cons(K,V),nil) ) ) ) ) ) ).
