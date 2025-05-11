%-- The key-value put will be represented as an array
%-- With keys being nonnegative integers, and values being integers
%-- Null is represented as -1
%-- Heavy inspiration from examples/array.smt2 from https://bitbucket.org/peba123/smttotptp/src/master/
%-- Axioms for the key-value store are heavily inspired from "The Vampire and the FOOL" 2016

tff(get, type, get: ($array($int,$int) * $int) > $int).
tff(put, type, put: ($array($int,$int) * $int * $int) > $array($int,$int)).

%---∀ a:Array[Int, Int] i:Int e:Int ((a[i] ← e)[i] = e)
tff(read_over_write_one, axiom,
( ! [A:$array($int,$int), I:$int, E:$int] :
(get(put(A, I, E), I) = E))).

%---∀ a:Array[Int, Int] i:Int j:Int e:Int ((i ≠ j) ⇒ ((a[i] ← e)[j] = a[j]))
tff(read_over_write_two, axiom,
  ( ! [A:$array($int,$int), I:$int, J:$int, E:$int] :
    ((I != J) => (get(put(A, I, E), J) = get(A, J))))).

%---∀ a:Array[Int, Int] b:Array[Int, Int] (∀ i:Int (a[i] = b[i]) ⇒ (a = b))
   tff(extensionality, axiom,
   (![A:$array($int,$int), B:$array($int,$int)] :
   ((![I:$int]:
   (get(A, I) = get(B, I))) => (A = B)))).

tff(basic_conj, conjecture,
    (![A:$array($int,$int), B:$array($int,$int), I:$int, E:$int, F:$int] :
    ((E != F & A = B) => (put(A,I,E) != put(B,I,F))))).
