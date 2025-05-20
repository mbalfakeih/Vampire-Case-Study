include('axioms/instance.ax').

% Basic conjecture on a concrete instance
tff(get_kvs,conjecture,
    get(put(kvs,1,2),1) = cons(pair_cons(1,2),nil) ).
