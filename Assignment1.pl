male(ayan).
male(kabir).
male(lakshya).
male(aarav).
male(jay).
male(gian).
male(gopi).
male(deep).
male(vihaan).
male(parv).
male(nirav).

female(saloni).
female(shanaya).
female(prisha).
female(sahana).
female(tara).
female(naksha).
female(navya).
female(zara).
female(viti).
female(tanvi).

spouse(ayan, saloni).
spouse(kabir, shanaya).
spouse(lakshya, prisha).
spouse(aarav, sahana).
spouse(jay, tara).
spouse(naksha, gian).
spouse(navya, gopi).
spouse(vihaan, zara).
spouse(tanvi, nirav).
spouse(saloni, ayan).
spouse(shanaya, kabir).
spouse(prisha, lakshya).
spouse(sahana, aarav).
spouse(tara, jay).
spouse(gian, naksha).
spouse(gopi, navya).
spouse(zara, vihaan).
spouse(nirav, tanvi).

parent(ayan, shanaya).
parent(ayan, prisha).
parent(ayan, aarav).
parent(saloni, shanaya).
parent(saloni, prisha).
parent(saloni, aarav).
parent(kabir, jay).
parent(kabir, naksha).
parent(shanaya, jay).
parent(shanaya, naksha).
parent(lakshya, navya).
parent(prisha, navya).
parent(aarav, deep).
parent(sahana, deep).
parent(jay, vihaan).
parent(jay, parv).
parent(tara, vihaan).
parent(tara, parv).
parent(naksha, viti).
parent(gian, vitti).
parent(navya, tanvi).
parent(gopi, tanvi).

child(X, Y) :- parent(Y, X).

relation(Y) :- 
    parent(X, Y), male(X), write(X), write(' father'), nl;
    parent(X, Y), female(X), write(X), write(' mother'), nl;
    spouse(X, Y), male(X), write(X), write(' husband'), nl;
    spouse(X, Y), female(X), write(X), write(' wife'), nl;
    parent(Y, X), male(X), write(X), write(' son'), nl;
    parent(Y, X), female(X), write(X), write(' daughter'), nl;
    parent(X, Y), parent(Z, X), male(Z), write(Z), write(' grand father'), nl;
    parent(X, Y), parent(Z, X), female(Z), write(Z), write(' grand mother'), nl;
    parent(X, Y), parent(X, Z), male(Z), not(Y = Z), write(Z), write(' brother'), nl;
    parent(X, Y), parent(X, Z), female(Z), not(Y = Z), write(Z), write(' sister'), nl;
    parent(X, Y), parent(Z, X), parent(A, B), parent(Z, A), not(X = A), not(B = Y), write(B), write(' first cousin'), nl;
    parent(X, Y), parent(Z, X), parent(W, Z), parent(A, D), parent(B, A), parent(W, B), not(Y = D), not(X = A), not(Z = B), write(D), write(' second cousin'), nl;
    parent(X, Y), parent(W, X), parent(W, Z), male(Z), not(X = Z), write(Z), write(' uncle'), nl;
    parent(X, Y), parent(W, X), parent(W, Z), female(Z), not(X = Z), write(Z), write(' aunt'), nl;
    parent(X, Y), parent(W, X), parent(W, Z), male(Z), not(X = Z), spouse(Z, S), write(S), write(' aunt'), nl;
    parent(X, Y), parent(W, X), parent(W, Z), female(Z), not(X = Z), spouse(Z, S), write(S), write(' uncle'), nl;
    spouse(X, Y), parent(W, X), parent(W, Z), male(Z), not(X = Z), write(Z), write(' brother-in law'), nl;
    spouse(X, Y), parent(W, X), parent(W, Z), female(Z), not(X = Z), write(Z), write(' sister-in law'), nl;
    parent(X, Y), parent(Z, X), parent(W, Z), parent(W, S), male(S), not(S = Z), write(S), write(' grand uncle'), nl;
    parent(X, Y), parent(Z, X), parent(W, Z), parent(W, S), female(S), not(S = Z), write(S), write(' grand aunt'), nl.