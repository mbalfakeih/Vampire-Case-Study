include('key-value-store.ax').

tff(read_over_write_over_remove,conjecture,
    ! [A: $array($int,$int),I: $int,V: $int] :
      ( $greatereq(V,0)
     => ( get(put(remove(A,I),I,V),I) = V ) ) ).
