amor(romeu, julieta).
amor(julieta, romeu) :- loves(romeu, julieta).

% facts

homem(roberto).
homem(romeu).
homem(edgar).
homem(marcio).
homem(rodrigo).

mulher(julieta).
mulher(alice).
mulher(maria).
mulher(marta).
mulher(marcia).

feliz(roberto).
feliz(alice).

com_roberto(alice).

danca(alice) :- feliz(alice), com_roberto(alice).

correr(X) :- feliz(X).
is_dancando(X) :- danca(X), format('Se ~w está feliz e com o Roberto, ele dança ~n', X).

% Parent Facts

pai_mae(edgar, julieta).
pai_mae(maria, julieta).

pai_mae(edgar, marcio).
pai_mae(maria, marcio).

pai_mae(rodrigo, romeu).
pai_mae(marcia, romeu).

pai_mae(marcio, roberto).
pai_mae(marta, roberto).

pai_mae(marcio, rose).
pai_mae(marta, rose).

netos(X) :- pai_mae(X, Y), pai_mae(Y, Z),
    write('O neto de '), write(X), write(' é '), write(Z), nl.

ano_escolar(5) :- write('Pré').
ano_escolar(Ano) :-
    AnoEscolar is Ano -5,
    format("~wo Ano", AnoEscolar).

cliente(thomas, wayne, 20.556).
cliente(marta, wayne, 200.60).

get_divida_cliente(PNome, UNome) :-
    cliente(PNome, UNome, Divida),
    write(PNome), tab(1),
    format('~w nos deve R$~2f ~n', [UNome, Divida]).

vertical(line(point(X, Y), point(X, Y2))).
horizontal(line(point(X, Y), point(X2, Y))).

par(X) :-
  Y is X//2, X =:= 2 * Y.

impar(X) :-
  Y is mod(X, 2), (Y = 1).

