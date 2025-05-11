%-- The key-value store will be represented as an array
%-- With keys being nonnegative integers, and values being integers
%-- Null is represented as -1
tff(get, type, get: ($array($int,$int) * $int) > $int).
tff(put, type, put: ($array($int,$int) * $int * $int) > $array($int,$int)).

%-- Heavily inspired from "The Vampire and the FOOL" 2016
%-- TODO: Make these only work for nonnegative integers
tff(read_over_write_one, axiom,
    ![A:$array($int,$int), V:$int, I:$int, J:$int]:
     (I = J) => get(put(A,I,V), J) = V).

tff(read_over_write_two, axiom,
    ![A:$array($int,$int), V:$int, I:$int, J:$int]:
     (I != J) => get(put(A,I,V), J) = get(A,J)).

tff(extensionality, axiom,
    ![A:$array($int,$int), B:$array($int,$int), I:$int]:
     get(A,I) = get(B,I) => A = B).

tff(basic_conj, conjecture,
    ![A:$array($int,$int), V:$int, I:$int]: 
      get(put(A,I,V), I) = V).   


