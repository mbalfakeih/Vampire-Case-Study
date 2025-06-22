include('../axioms/key-value-store.ax').

tff(contains_new_element,lemma,
    ! [A: $array($int,list),K: $int,V: $i] : contains(put(A,K,V),V) ).

% Necessary condition for uniqueness
tff(uniqueness_necessary,conjecture,
    ! [A: $array($int,list),K: $int,V: $i,W: $i] :
      ( ( $greatereq(K,0)
        & ~ contains(A,V)
        & ( V != W ) )
     => ( contains(put(A,K,V),V)
        & ~ contains(put(put(A,K,V),K,W),V) ) ) ).
