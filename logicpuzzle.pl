select([A|As],S):- select(A,S,S1),select(As,S1).
select([],_). 
 
next_to(A,B,C):- left_of(A,B,C) ; left_of(B,A,C).
left_of(A,B,C):- append(_,[A,B|_],C).
right_of(A,B,C):- left_of(B,A,C).
 
logicpuzzle(Houses):-
      Houses =    [ house(_,norwegian,_,_,_), _,  house(_,_,_,milk,_), _, _], 
      select( [ house(red,englishman,_,_,_),  house(_,spanishman,dog,_,_),
                house(_,ukrainian,_,tea,_),        house(_,japanese,_,_,parliaments) ], Houses),
      select( [ house(_,_,snails,_,winston),  house(yellow,_,_,_,kools),
                house(_,_,_,orangejuice,luckystrike) ],                         Houses), 
      right_of(  house(green,_,_,coffee,_),    house(ivory,_,_,_,_),         Houses),
      next_to(  house(_,_,_,_,kools),       house(_,_,horse,_,_),         Houses),
      next_to(  house(_,_,_,_,chesterfields),         house(_,_,fox, _,_),         Houses),
      next_to(  house(_,norwegian,_,_,_),     house(blue,_,_,_,_),          Houses).