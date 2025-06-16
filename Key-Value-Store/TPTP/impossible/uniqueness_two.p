include('../axioms/key-value-store.ax').

tff(key_uniqueness_two,conjecture,
    ! [A: $array($int,list),K: $int,V: $i,W: $i] : ( size(put(A,K,V)) = size(put(put(A,K,V),K,W)) ) ).
