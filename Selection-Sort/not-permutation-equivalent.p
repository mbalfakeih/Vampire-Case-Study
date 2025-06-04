include('selection-sort.ax').

tff(permutation_equivalence,conjecture,
  ! [X : $int, Xs : list] : filter_eq(X,Xs) != filter_eq(X,selection_sort(Xs))).
