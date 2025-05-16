include('../key-value-store.ax').

tff(contains_def_two,conjecture,
    ! [A: $array($int,$int),I: $int,V: $int] : contains(put(A,I,V),V) ).
