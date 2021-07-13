----------------------------------
----- GRUPA
----------------------------------

-------------GRUPA TATRY I PODTATRZE--------------------------------------
INSERT INTO Grupa (nazwa)
VALUES ('TATRY I PODTATRZE');
GO


-------------PASMO TATRY WYSOKIE--------------------------------

INSERT INTO Pasmo(nazwa, id_grupa)
VALUES ('Tatry Wysokie',IDENT_CURRENT('Grupa'));
GO

------------- PUNKTY


INSERT INTO Punkt (nazwa)
VALUES ('Dolina Filipka'); ---6/3

INSERT INTO Punkt (nazwa)
VALUES ('Wierch Poro�ca (1036 m)'); ---6/4
INSERT INTO Punkt (nazwa)
VALUES ('Palenica Bia�cza�ska'); ---4/2
INSERT INTO Punkt (nazwa)
VALUES ('Polana pod Wo�oszynem (1245 � 1320 m)'); ---3/3

INSERT INTO Punkt (nazwa)
VALUES ('Rusinowa Polana (1170 � 1300 m)'); ---- CEL


-----------------------------TWORZENIE ODCINK�W z celem Rusinowa Polana (1170 � 1300 m)

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 3,3,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 4,2,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 6,4,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-4 , IDENT_CURRENT('Punkt'), 6,3,IDENT_CURRENT('Pasmo'),1);





----------------- �ysa Polana ------------------------------------



INSERT INTO Punkt (nazwa)
VALUES ('Palenica Bia�cza�ska'); ---1/1
INSERT INTO Punkt (nazwa)
VALUES ('Wierch Poro�ca (1036 m)'); ---3/4

INSERT INTO Punkt (nazwa)
VALUES ('�ysa Polana'); ---- CEL


INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 3,4,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 1,1,IDENT_CURRENT('Pasmo'),1);


----------------------------------------------- G�sia Szyja (1489 m)---------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Rusinowa Polana (1170 � 1300 m)'); ---4/1
INSERT INTO Punkt (nazwa)
VALUES ('R�wie� Waksmundzka'); ---2/1


INSERT INTO Punkt (nazwa)
VALUES ('G�sia Szyja (1489 m)'); ---- CEL



INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 2,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 4,1,IDENT_CURRENT('Pasmo'),1);




--------------------------------- R�wie� Waksmundzka---------------------------------

INSERT INTO Punkt (nazwa)
VALUES ('Psia Trawka'); ---5/3
INSERT INTO Punkt (nazwa)
VALUES ('Polana pod Wo�oszynem (1245 � 1320 m)'); ---4/2
INSERT INTO Punkt (nazwa)
VALUES ('Czerwony Staw w Dolinie Pa�szczycy (1654 m)'); ---4/6
INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK na Hali G�sienicowej (1500 m)'); ---7/8





INSERT INTO Punkt (nazwa)
VALUES ('R�wie� Waksmundzka'); ---- CEL


INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 7,8,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 4,6,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 4,2,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-4 , IDENT_CURRENT('Punkt'), 5,3,IDENT_CURRENT('Pasmo'),1);



---------------------- Psia Trawka-------------------------------

INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK na Hali G�sienicowej (1500 m)'); ---4/7
INSERT INTO Punkt (nazwa)
VALUES ('Brzezin (T.03)'); ---5/3


INSERT INTO Punkt (nazwa)
VALUES ('Psia Trawka'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 5,3,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 4,7,IDENT_CURRENT('Pasmo'),1);



----------------------  Wodogrzmoty Mickiewicza-------------------------------

INSERT INTO Punkt (nazwa)
VALUES ('Palenica Bia�cza�ska'); ---4/3
INSERT INTO Punkt (nazwa)
VALUES ('Polana pod Wo�oszynem (1245 � 1320 m)'); ---2/4
INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK w Roztoce'); ---2/1

INSERT INTO Punkt (nazwa)
VALUES ('Wodogrzmoty Mickiewicza'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 2,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 2,4,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 4,3,IDENT_CURRENT('Pasmo'),1);


  
----------------------  Schronisko PTTK nad Morskim Okiem (1410 m)-------------------------------

INSERT INTO Punkt (nazwa)
VALUES ('Wodogrzmoty Mickiewicza'); ---8/5
INSERT INTO Punkt (nazwa)
VALUES ('Wok� Morskiego Oka'); ---2/2


INSERT INTO Punkt (nazwa)
VALUES ('Psia Trawka'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 5,3,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 4,7,IDENT_CURRENT('Pasmo'),1);



----------------------   Czarny Staw nad Morskim Okiem (1583 m) -------------------------------

INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK nad Morskim Okiem (1410 m)'); ---4/2
INSERT INTO Punkt (nazwa)
VALUES ('Rysy (2499 m)'); ---4/13
INSERT INTO Punkt (nazwa)
VALUES ('Mi�guszowiecka Prze��cz pod Ch�opkiem (2307 m)'); ---3/10

INSERT INTO Punkt (nazwa)
VALUES ('Czarny Staw nad Morskim Okiem (1583 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 3,10,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 4,13,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 4,2,IDENT_CURRENT('Pasmo'),1);




----------------------  Dolina za Mnichem (1785 � 2100 m)-------------------------------

INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK nad Morskim Okiem (1410 m)'); ---6/2
INSERT INTO Punkt (nazwa)
VALUES ('Wrota Cha�ubi�skiego (2022 m)'); ---1/3


INSERT INTO Punkt (nazwa)
VALUES ('Dolina za Mnichem (1785 � 2100 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 1,3,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 6,2,IDENT_CURRENT('Pasmo'),1);




----------------------   Szpiglasowa Prze��cz (2110 m) -------------------------------

INSERT INTO Punkt (nazwa)
VALUES ('Szpiglasowy Wierch (2172 m)'); ---1/1
INSERT INTO Punkt (nazwa)
VALUES ('tablica S. Bronikowskiego (1740m)'); ---8/3
INSERT INTO Punkt (nazwa)
VALUES ('Dolina za Mnichem (1785 � 2100 m)'); ---4/1

INSERT INTO Punkt (nazwa)
VALUES ('Szpiglasowa Prze��cz (2110 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 4,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 8,3,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 1,1,IDENT_CURRENT('Pasmo'),1);


----------------------   Schronisko PTTK w Dolinie Pi�ciu Staw�w Polskich (1671 m) -------------------------------

INSERT INTO Punkt (nazwa)
VALUES ('Siklawa'); ---1/1
INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK nad Morskim Okiem (1410 m)'); ---9/5
INSERT INTO Punkt (nazwa)
VALUES ('Szlak Zielonego'); ---3/1

INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK w Dolinie Pi�ciu Staw�w Polskich (1671 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 3,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 9,5,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 1,1,IDENT_CURRENT('Pasmo'),1);



----------------------  Siklawa-------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('tablica S. Bronikowskiego (1740m)'); ---1/1
INSERT INTO Punkt (nazwa)
VALUES ('Wodogrzmoty Mickiewicza'); ---11/5


INSERT INTO Punkt (nazwa)
VALUES ('Siklawa'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 11,5,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 1,1,IDENT_CURRENT('Pasmo'),1);


----------------------  Kozi Wierch-------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Siklawa'); ---8/2
INSERT INTO Punkt (nazwa)
VALUES ('Kozia Prze��cz (2137 m)'); ---3/0


INSERT INTO Punkt (nazwa)
VALUES ('Kozi Wierch (2291 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 3,0,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 8,2,IDENT_CURRENT('Pasmo'),1);



----------------------    Kozia Prze��cz (2137 m) -------------------------------

INSERT INTO Punkt (nazwa)
VALUES ('tablica S. Bronikowskiego (1740m)'); ---6/2
INSERT INTO Punkt (nazwa)
VALUES ('Kozia Dolinka'); ---3/1
INSERT INTO Punkt (nazwa)
VALUES ('Prze��cz Zawrat (2159 m)'); ---3/0

INSERT INTO Punkt (nazwa)
VALUES ('Kozia Prze��cz (2137 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 3,0,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 3,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 6,2,IDENT_CURRENT('Pasmo'),1);




----------------------  Prze��cz Zawrat (2159 m)-------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Czarny Staw G�sienicowy (1624 m)'); ---8/3
INSERT INTO Punkt (nazwa)
VALUES ('tablica S. Bronikowskiego (1740m)'); ---7/3


INSERT INTO Punkt (nazwa)
VALUES ('Prze��cz Zawrat (2159 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 7,3,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 8,3,IDENT_CURRENT('Pasmo'),1);


----------------------  �winica (2301 m)-------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Prze��cz Zawrat (2159 m)'); ---4/3
INSERT INTO Punkt (nazwa)
VALUES ('�winicka Prze��cz (2050 m)'); ---4/1


INSERT INTO Punkt (nazwa)
VALUES ('�winica (2301 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 4,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 4,3,IDENT_CURRENT('Pasmo'),1);


----------------------  �winicka Prze��cz (2050 m)-------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Prze��cz Liliowa (1952 m)'); ---3/2
INSERT INTO Punkt (nazwa)
VALUES ('Zielony Staw G�sienicowy (1672 m)'); ---5/1


INSERT INTO Punkt (nazwa)
VALUES ('�winicka Prze��cz (2050 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 5,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 3,2,IDENT_CURRENT('Pasmo'),1);


----------------------  Kozia Dolinka-------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Czarny Staw G�sienicowy (1624 m)'); ---4/2
INSERT INTO Punkt (nazwa)
VALUES ('�leb Kulczy�skiego przez Zadni Granat'); ---2/0


INSERT INTO Punkt (nazwa)
VALUES ('Kozia Dolinka'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 2,0,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 4,2,IDENT_CURRENT('Pasmo'),1);


----------------------  �leb Kulczy�skiego  -------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Kozi Wierch (2291 m)'); ---1/0
INSERT INTO Punkt (nazwa)
VALUES ('Kozia Dolinka'); ---4/1


INSERT INTO Punkt (nazwa)
VALUES ('�leb Kulczy�skiego'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 4,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 1,0,IDENT_CURRENT('Pasmo'),1);


----------------------  Skrajny Granat (2225 m)  -------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Kozia Dolinka przez Zadni Granat'); ---6/0
INSERT INTO Punkt (nazwa)
VALUES ('�leb Kulczy�skiego'); ---2/0
INSERT INTO Punkt (nazwa)
VALUES ('Czarny Staw G�sienicowy (1624 m)'); ---8/2

INSERT INTO Punkt (nazwa)
VALUES ('Skrajny Granat (2225 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 8,2,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 2,0,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 6,0,IDENT_CURRENT('Pasmo'),1);




----------------------  Prze��cz Krzy�ne (2114 m)  -------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK w Dolinie Pi�ciu Staw�w Polskich (1671 m)'); ---9/4
INSERT INTO Punkt (nazwa)
VALUES ('Czerwony Staw w Dolinie Pa�szczycy (1654 m)'); ---8/3
INSERT INTO Punkt (nazwa)
VALUES ('Skrajny Granat (2225 m)'); ---6/0

INSERT INTO Punkt (nazwa)
VALUES ('Prze��cz Krzy�ne (2114 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 6,0,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 8,3,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 9,4,IDENT_CURRENT('Pasmo'),1);


----------------------  Prze��cz Krab (1853 m)  -------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Ko�cielec (2156 m)'); ---1/4
INSERT INTO Punkt (nazwa)
VALUES ('Zielony Staw G�sienicowy (1672 m)'); ---3/1
INSERT INTO Punkt (nazwa)
VALUES ('Czarny Staw G�sienicowy (1624 m)'); ---3/1

INSERT INTO Punkt (nazwa)
VALUES ('Prze��cz Krab (1853 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 3,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 3,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 1,4,IDENT_CURRENT('Pasmo'),1);



----------------------  Dwoi�niak  -------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Prze��cz Liliowa (1952 m)'); ---2/5
INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK na Hali G�sienicowej (1500 m)'); ---2/1
INSERT INTO Punkt (nazwa)
VALUES ('Zielony Staw G�sienicowy (1672 m)'); ---1/3

INSERT INTO Punkt (nazwa)
VALUES ('Dwoi�niak'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 1,3,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 2,1,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-3 , IDENT_CURRENT('Punkt'), 2,5,IDENT_CURRENT('Pasmo'),1);


----------------------  Schronisko PTTK na Hali G�sienicowej (1500 m)  -------------------------------
INSERT INTO Punkt (nazwa)
VALUES ('Czarny Staw G�sienicowy (1624 m)'); ---2/3
INSERT INTO Punkt (nazwa)
VALUES ('Czerwony Staw w Dolinie Pa�szczycy (1654 m)'); ---4/6


INSERT INTO Punkt (nazwa)
VALUES ('Schronisko PTTK na Hali G�sienicowej (1500 m)'); ---- CEL
 

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-1 , IDENT_CURRENT('Punkt'), 4,6,IDENT_CURRENT('Pasmo'),1);

INSERT INTO Odcinek (id_punkt_poczatkowy, id_punkt_koncowy, punkty_od, punkty_do, id_pasmo, otwarty)
VALUES ( IDENT_CURRENT('Punkt')-2 , IDENT_CURRENT('Punkt'), 2,3,IDENT_CURRENT('Pasmo'),1);



----------------- TO ROBI PORZ�DEK Z DUPLIKATAMI, odpali� po kolei, bo na raz si� wysypie !!!!!!!!!!!!!!!!!! ----------

update Odcinek
set id_punkt_poczatkowy = final_id
from
  Odcinek
join
  Punkt 
on Punkt.id_punkt = Odcinek.id_punkt_poczatkowy
join
(
  select 
    nazwa,
    min (id_punkt) as final_id
  from Punkt
  group by nazwa
) min_ids
on min_ids.nazwa = Punkt.nazwa


update Odcinek
set id_punkt_koncowy = final_id
from
  Odcinek
join
  Punkt 
on Punkt.id_punkt = Odcinek.id_punkt_koncowy
join
(
  select 
    nazwa,
    min (id_punkt) as final_id
  from Punkt
  group by nazwa
) min_ids
on min_ids.nazwa = Punkt.nazwa

--deletes redundant ids from the Doubles table


delete 
from Punkt
where id_punkt not in
(
  select 
    min(id_punkt) as final_id
  from Punkt
  group by nazwa
)



SELECT * FROM Punkt
ORDER BY nazwa ASC;

SELECT o.id_punkt_poczatkowy, pp.nazwa, o.punkty_od, '>>>>>' , o.punkty_do, pk.nazwa, o.id_punkt_koncowy  FROM Odcinek AS o 
INNER JOIN Punkt AS pk ON pk.id_punkt = o.id_punkt_koncowy
INNER JOIN Punkt AS pp ON pp.id_punkt = o.id_punkt_poczatkowy
ORDER BY pk.nazwa;


SELECT pp.nazwa, o.punkty_od, '>>>>>' , o.punkty_do, pk.nazwa  FROM Odcinek AS o 
INNER JOIN Punkt AS pk ON pk.id_punkt = o.id_punkt_koncowy
INNER JOIN Punkt AS pp ON pp.id_punkt = o.id_punkt_poczatkowy
WHERE o.id_punkt_poczatkowy = 49 OR o.id_punkt_koncowy = 49
ORDER BY pk.nazwa;

-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

INSERT INTO dbo.grupa
([nazwa])
VALUES ('Tatry S�owackie');
GO

INSERT INTO dbo.grupa
([nazwa])
VALUES ('Beskidy Zachodnie');
GO

INSERT INTO dbo.grupa
([nazwa])
VALUES ('Beskidy wschodnie');
GO

INSERT INTO dbo.grupa
([nazwa])
VALUES ('G�ry �wi�tokrzyskie');
GO

INSERT INTO dbo.grupa
([nazwa])
VALUES ('Sudety');
GO

----------------------------------
----- PASMO
----------------------------------

----- Tatry i Podtatrze
--INSERT INTO dbo.pasmo
--(nazwa, id_grupa)
--VALUES ('Tatry Wysokie', 1);
--GO
----- Tatry i Podtatrze - TATRY WYSOKIE
/*INSERT INTO dbo.punkt
(nazwa)
VALUES ('Rusinowa Polana', 1);
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('�ysa Polana', 1);
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('G�sia Szyja', 1);
GO */

INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('Tatry Zachodnie', 1);
GO
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('Podtatrze', 1);
GO

----- Tatry S�owackie
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('Zapadne Tatry', 2);
GO
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('Vysoke Tatry', 2);
GO

----- Beskidy Zachodnie
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('Beskid �l�ski', 3);
GO
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('Beskid �ywiecki', 3);
GO

----- Beskidy Wschodnie
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('Pog�rze Ci�kowickie', 4);
GO
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('Beskid Niski cz�� zachodnia', 4);
GO

----- G�ry �wi�tokrzyskie
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('G�ry �wi�tokrzyskie', 5);
GO
----- Sudety
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('G�ry Izerskie', 6);
GO
INSERT INTO dbo.pasmo
(nazwa, id_grupa)
VALUES ('Karkonosze', 6);
GO

----------------------------------
----- PUNKT
----------------------------------

----- Tatry i Podtatrze - TATRY ZACHODNIE
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Polana Bia�y Potok');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Polana Huciska');
GO

----- Tatry i Podtatrze - PODTATRZE
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Palenica Ko�cieliska');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Butorowy Wierch');
GO

----- Tatry S�owackie - ZAPADNE TATRY
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Sivy Vrch');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Jalovska Dolina Ustie');
GO

----- Tatry S�owackie - VYSOKE TATRY
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Tatranska Magistrala');
GO

----- Beskidy Zachodnie - BESKID �L�SKI
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Dzi�giel�w-Zamek');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Jasieniowa');
GO

----- Beskidy Zachodnie - BESKID �YWIECKI
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Rachowiec');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('O�na');
GO

----- Beskidy Wschodnie - PODG�RZE CIʯKOWICKIE
INSERT INTO dbo.punkt
(nazwa)
VALUES ('G�ra �w. Marcina');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('S�ona G�ra');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Trzemska G�ra');
GO

----- Beskidy Wschodnie - BESKIG NISKI CZʌ� ZACHODNIA
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Margo� Wy�na');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Tokarnia');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Czerszla');
GO

----- G�ry �wi�tokrzyskie - G�RY �WI�TOKRZYSKIE
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Guzdek');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Sowia G�ra');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Kamieniarska G�ra');
GO

----- Sudety - G�RY IZERSKIE
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Smrek');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Czerniawska Kopa');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('��cznik');
GO
----- Sudety - KARKONOSZE
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Szrenica');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Prze��cz Mokra');
GO
INSERT INTO dbo.punkt
(nazwa)
VALUES ('Wysoki Most');
GO



-----------------------------S�ownik odznak-------------------------------------------

INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('W g�ry - br�zowa', 15);

INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('W g�ry - srebrna', 30);

INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('W g�ry - z�ota', 45);

INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('Popularna', 60);


INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('Ma�a - br�zowa', 120);

INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('Ma�a - srebrna', 360);

INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('Ma�a - z�ota', 720);


INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('Du�a - br�zowa', 0);

INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('Du�a - srebrna', 100);

INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('Du�a - z�ota', 150);


INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('Za wytrwa�o�� - ma�a', 0);

INSERT INTO dbo.odznaka
(nazwa, punkty)
VALUES ('Za wytrwa�o�� - du�a', 0);