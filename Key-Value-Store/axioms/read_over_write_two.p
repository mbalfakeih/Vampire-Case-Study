include('../key-value-store.ax').

tff(read_over_write_two,conjecture,
    ! [A: $array($int,$int),I: $int,J: $int,E: $int] :
      ( ( ( I != J )
        & $greatereq(E,0) )
     => ( get(put(A,I,E),J) = get(A,J) ) ) ).

