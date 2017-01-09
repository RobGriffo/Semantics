/************************************/
/****************2016****************/
/************************************/


/***************JANUARY**************/

noah([],[],[]).
noah([H1|T1],[H2|T2],[H1,H2|T3]):-
	noah(T1,T2,T3).

/***************AUGUST***************/

tr([[],[]],[]).

tr([[H1|T1],[H2|T2]],[[H1,H2]|Tail]):-
	tr([T1,T2],Tail).

tr([[H1,H2,H3]|Tail],[[H1|T1],[H2|T2],[H3|T3]]):-
	tr([T1,T2,T3],Tail).