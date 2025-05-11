%-- The key-value store will be represented as an array
%-- With keys being nonnegative integers, and values being integers
%-- Null is represented as -1
%-- This is no longer using FOOL logic, which I dont like, but oh well
%-- but, I should be able to switch it back??? nothing here relies on its non-existence
tff('KVS', type, 'KVS[Int,Int]': $tType).

tff(get, type, 'get': ('KVS[Int,Int]' * $int) > $int).
tff(put, type, 'put': ('KVS[Int,Int]' * $int * $int) > 'KVS[Int,Int]').
%-- tff(kvs, type, kvs: 'KVS[Int,Int]').


%-- Heavily inspired from "The Vampire and the FOOL" 2016
%-- TODO: Make these only work for nonnegative integers
tff(read_over_write_one, axiom,
    ![A:'KVS[Int,Int]', V:$int, I:$int, J:$int]:
     (I = J) => 'get'('put'(A,I,V), J) = V).

tff(read_over_write_two, axiom,
    ![A:'KVS[Int,Int]', V:$int, I:$int, J:$int]:
     (I != J) => 'get'('put'(A,I,V), J) = 'get'(A,J)).

tff(extensionality, axiom,
    ![A:'KVS[Int,Int]', B:'KVS[Int,Int]', I:$int]:
     'get'(A,I) = 'get'(B,I) => A = B).

tff(basic_conj, conjecture,
    ![A:'KVS[Int,Int]', V:$int, I:$int]: 
      'get'('put'(A,I,V), I) = V).   


