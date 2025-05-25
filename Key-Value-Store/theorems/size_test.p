include('../axioms/instance.ax').

%-- Vampire is able to prove this, but not that size(kvs) = 0?
tff(size_test,conjecture,
    size_up_to_index(kvs,9) = 0 ).
