%-- The key-value store will be represented as an array
%-- With keys and values both being integers
%-- NOTE: keys and values could be changed to be the sort of individuals
tff(kvs, type, kvs: $array($int,$int)).

%-- We define the get operation in terms of the select   
%-- operation of arrays. See "The Vampire and The FOOL" 2016

tff(get, type, get: ($array($int, $int) * $int) > $int).
tff(get_definition, axiom,
    ![X:$int]:
      get(kvs, X) = $select(kvs, X)).

%-- Similarly, we define the put operation in terms
%-- of the store operation of arrays. See "The Vampire and The FOOL" 2016

tff(put, type, put: ($array($int, $int) * $int * $int) > $array($int, $int)).
tff(put_definition, axiom,
    ![X:$int, Y:$int]:
      put(kvs, X, Y) = $store(kvs, X, Y)).

tff(basic_test, conjecture,
    ![X:$int, Y:$int]:
       get(put(kvs, X, Y), X) = Y).
