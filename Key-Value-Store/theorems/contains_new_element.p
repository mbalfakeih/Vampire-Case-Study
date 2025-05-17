include('../axioms/key-value-store.ax').

tff(contains_new_element,conjecture,
    ! [A: $array($int,list),K: $int,V: $int] : contains(put(A,K,V),V) ).
