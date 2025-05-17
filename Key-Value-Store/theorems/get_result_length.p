include('../axioms/key-value-store.ax').

%--This is easily proven once the axiom get_result in lists.ax is established
tff(get_result_length,conjecture,
    ! [A: $array($int,list),K: $int] :
      ( ( length_l(get(A,K)) = 0 )
      | ( length_l(get(A,K)) = 1 ) ) ).
