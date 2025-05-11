%-- The key-value store will be represented as an array
%-- With keys being nonnegative integers, and values being integers
%-- Null is represented as -1
tff(kvs, type, kvs: $array($int,$int)).

%-- We define the get operation in terms of the select   
%-- operation of arrays. See "The Vampire and The FOOL" 2016

tff(get, type, get: ($array($int, $int) * $int) > $int).
tff(get_definition, axiom,
    ![X:$int]:
      get(kvs, X) = $ite($greatereq(X,0), $select(kvs, X), $uminus(1))).

%-- Similarly, we define the put operation in terms
%-- of the store operation of arrays. See "The Vampire and The FOOL" 2016

tff(put, type, put: ($array($int, $int) * $int * $int) > $array($int, $int)).
tff(put_definition, axiom,
    ![X:$int, Y:$int]:
      put(kvs, X, Y) = $ite($greatereq(X,0), $store(kvs, X, Y), kvs)).

tff(basic_test, conjecture,
    ![X:$int, Y:$int]:
       ($greatereq(X,0)) => ($select($store(kvs, X, Y), X) = Y)).
