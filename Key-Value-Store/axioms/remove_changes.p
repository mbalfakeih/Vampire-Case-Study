include('../key-value-store.ax').

tff(remove_changes,conjecture,
    ! [A: $array($int,$int),I: $int] : (($greatereq(get(A,I),0)) => remove(A,I) != A ) ).
