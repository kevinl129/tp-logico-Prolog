viveEnLaMansion(tiaAgatha).
viveEnLaMansion(mayordomo).
viveEnLaMansion(charles).

 %   odia()

odia(tiaAgatha,Persona):-
    viveEnLaMansion(Persona),
     Persona \= mayordomo.

odia(charles,Persona):-
    viveEnLaMansion(Persona),
    not(odia(tiaAgatha,Persona)).

odia(mayordomo,Persona):-
    odia(tiaAgatha,Persona).

esMasRicoQueAgatha(Persona):-
    not(odia(mayordomo,Persona)),
    viveEnLaMansion(Persona).

quienMataAAgatha(Asesino):-
    odia(Asesino,tiaAgatha),
    not(esMasRicoQueAgatha(Asesino)).
/*
1)a)

?- esMasRicoQueAgatha(charles).
false.

?- esMasRicoQueAgatha(tiaAgatha).
false.

?- esMasRicoQueAgatha(mayordomo).
true.

--------EL ASESINO ES:-----------
?- quienMataAAgatha(Asesino).
Asesino = tiaAgatha 

2)

////Si existe alguien que odie a milhouse.
?- odia(Persona, milehouse).
false.

////A quién odia charles.
?- odia(charles,Persona).
Persona = mayordomo ;
false.

////El nombre de quien odia a tía Ágatha.
?- odia(Persona,tiaAgatha).
Persona = tiaAgatha ;
Persona = mayordomo.

////Todos los odiadores y sus odiados.
?- odia(Persona, OtraPersona).
Persona = OtraPersona, OtraPersona = tiaAgatha ;
Persona = tiaAgatha,
OtraPersona = charles ;
Persona = charles,
OtraPersona = mayordomo ;
Persona = mayordomo,
OtraPersona = tiaAgatha ;
Persona = mayordomo,
OtraPersona = charles.

////Si es cierto que el mayordomo odia a alguien.

?- odia(mayordomo, _).
true ;
true.

?- odia(mayordomo,Persona).
Persona = tiaAgatha ;
Persona = charles.
*/
