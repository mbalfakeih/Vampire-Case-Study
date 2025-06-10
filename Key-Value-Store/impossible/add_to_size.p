include('axioms/instance.ax').

%-- Conjectures involving size cannot be proven due to its inductive definition (I think????)
tff(a,type,
    a: $i ).

tff(add_to_size,conjecture,
    size(put(kvs,1,a)) = 1 ).
