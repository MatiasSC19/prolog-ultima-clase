tiempo(presente).
tiempo(pasado).
tiempo(futuro).

persona(primera).
persona(segunda).
persona(tercera).

numero(singular).
numero(plural).

ser(presente,primera,singular,"am").
ser(presente,segunda,singular,"are").
ser(presente,tercera,singular,"is").
ser(presente,primera,plural,"are").
ser(presente,segunda,plural,"are").
ser(presente,tercera,plural,"are").

ser(pasado,primera,singular,"was").
ser(pasado,segunda,singular,"were").
ser(pasado,tercera,singular,"was").
ser(pasado,primera,plural,"were").
ser(pasado,segunda,plural,"were").
ser(pasado,tercera,plural,"were").

ser(futuro,primera,singular,"will be").
ser(futuro,segunda,singular,"will be").
ser(futuro,tercera,singular,"will be").
ser(futuro,primera,plural,"will be").
ser(futuro,segunda,plural,"will be").
ser(futuro,tercera,plural,"will be").

jugar(presente,primera,singular,"play").
jugar(presente,segunda,singular,"play").
jugar(presente,tercera,singular,"plays").
jugar(presente,primera,plural,"play").
jugar(presente,segunda,plural,"play").
jugar(presente,tercera,plural,"play").

jugar(pasado,primera,singular,"played").
jugar(pasado,segunda,singular,"played").
jugar(pasado,tercera,singular,"played").
jugar(pasado,primera,plural,"played").
jugar(pasado,segunda,plural,"played").
jugar(pasado,tercera,plural,"played").

jugar(futuro,primera,singular,"will play").
jugar(futuro,segunda,singular,"will play").
jugar(futuro,tercera,singular,"will play").
jugar(futuro,primera,plural,"will play").
jugar(futuro,segunda,plural,"will play").
jugar(futuro,tercera,plural,"will play").

conjugar_verbo(Verbo,Tiempo,Persona,Numero,Conjugacion):-
    tiempo(Tiempo),
    persona(Persona),
    numero(Numero),
    (   
    Verbo="to be"-> ser(Tiempo,Persona,Numero,R),
        Conjugacion=R	;
    Verbo="play"-> jugar(Tiempo,Persona,Numero,R),
        Conjugacion=R	;
    Conjugacion=Verbo
    ).


