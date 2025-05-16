include('../key-value-store.ax').

tff(read_over_remove,conjecture,
    ! [A: $array($int,$int),I: $int,J: $int] :
      ( ( I != J )
     => ( get(remove(A,I),J) = get(A,J) ) ) ).
