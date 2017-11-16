%Definitions for isElementInList(El, List)
isElementInList(El,List):- ([El|_] = List);([_|T] = List,isElementInList(El,T)).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], L, L) .
mergeLists([H|T], L1, [H|L2]) :- mergeLists(T, L1, L2).
%Definitions for reverseList(List, ReversedList)
reverseHelper([],L,L).
reverseHelper([H|T],L1,L2):- reverseHelper(T,L1,[H|L2]).
reverseList(List,ReversedList):- reverseHelper(List,ReversedList,[]).
%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, List, NewList):- mergeLists(List,[El],NewList).
