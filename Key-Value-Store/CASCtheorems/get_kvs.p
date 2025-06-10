include('axioms/instance.ax').

% Basic conjecture on a concrete instance
tff(a,type,
    a: $i ).

tff(get_kvs,conjecture,
    get(put(kvs,1,a),1) = cons(pair_cons(1,a),nil) ).
