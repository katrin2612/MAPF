


processed(A,R) :- ordered(O,A), shelved(S,A), isRobot(R), position(S,C,0),
                  position(R,C,horizon).
processed(A)   :- processed(A,R).

%:- ordered(O,A), not processed(A).


#maximize{ 1@2,R : processed(A,R) ; 0@2,0}. % Try to maximize the number of agent that reach a goal ('; 0@2,0' makes the program not searching for all the path if no optimization exist)
%#minimize{ S@1,R  : processed(A,R) ; 0@1,0}.
