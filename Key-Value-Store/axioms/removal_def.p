include('../key-value-store.ax').

tff(removal_def,conjecture,
    ! [A: $array($int,$int),I: $int] : ( get(remove(A,I),I) = $uminus(1) ) ).