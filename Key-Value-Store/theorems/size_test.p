include('../axioms/instance.ax').

%-- Going higher than this is not possible due to vampires limits with induction 
tff(size_test,conjecture,
    size_up_to_index(kvs,4) = 0 ).
