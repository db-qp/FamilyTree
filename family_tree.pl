/* Database for family tree. It consists of facts and rules. */
/* A portion of the family tree has been implemented for you */
/* Facts */
male(kam).
male(rob).
male(jeb).
male(tio).
male(dom).
male(dag).
male(zev).
male(gio).
female(pam).
female(kat).
female(fey).
female(liz).
female(ana).
female(syd).
female(may).
female(sue).
father_of(kam, rob). /* kam is the father of rob */
father_of(kam, syd). /* kam is the father of syd */
father_of(jeb, tio).
father_of(jeb, pam).
father_of(rob, dom).
father_of(rob, kat).
father_of(tio, dag).
father_of(tio, fey).
father_of(zev, liz).
father_of(zev, gio).
mother_of(ana, rob). /* ana is the mother of rob */
mother_of(ana, syd). /* ana is the mother of syd */
mother_of(may, tio).
mother_of(may, pam).
mother_of(sue, dom).
mother_of(sue, kat).
mother_of(syd, dag).
mother_of(syd, fey).
mother_of(pam, liz).
mother_of(pam, gio).
/* Rules */

/* Question 1.0 */

is_male(X) :-
male(X);
father_of(X, _).

/* Question 2.0 */

is_female(X) :-
female(X);
mother_of(X, _).

/* Question 3.0 */

parent_of(X,Y) :-
father_of(X,Y);
mother_of(X,Y).

/* Question 4.0 */

sibling_of(X,Y) :-
father_of(Z,X),
mother_of(Z,X),
father_of(Z,Y),
mother_of(Z,Y).

/* Question 5.0 */

grandmother_of(X,Z) :-
mother_of(X,Y),
father_of(Y,Z);
mother_of(Y,Z).

grandfather_of(X,Z) :-
father_of(X,Y),
father_of(Y,Z);
mother_of(Y,Z).

/* Question 6.0 */

descendent_of(X,Y) :-
grandfather_of(Y,X);
grandmother_of(Y,X);
parent_of(Y,X).