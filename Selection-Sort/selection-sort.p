include('sortedness-and-permutations.ax').

tff(selection_sort,type,
    selection_sort: list > list ).

tff(selection_sort_nil,axiom,
    selection_sort(nil) = nil ).

tff(selection_sort_list,axiom,
    ! [X: $int,L: list] : ( selection_sort(cons(X,L)) = cons(get_min(cons(X,L)),selection_sort(remove(cons(X,L),get_min(cons(X,L))))) ) ).

%tff(test_conj,conjecture,
%    selection_sort(cons(2,cons(1,nil))) = cons(1,cons(2,nil)) ).

tff(test_conj,conjecture,
    ! [L: list] : sorted(selection_sort(L)) ).
