include('key-value-store.ax').

tff(contains_new_element,conjecture,
    ![A: $array($int,$int), I: $int, V: $int] :
    ((get(A,I) != V) => (![J:$int]: (contains(put(A,J,V),V)) )) ).
