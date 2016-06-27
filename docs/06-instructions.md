
Algorigrammes (partie 4 - fin)
==============================

Yes ! Maintenant que _Game Of Thrones_ hiberne à nouveau pour passer l'hiver on va pouvoir abordorder tranquiloutement la suite _« d'Apprendre à programmer »_.

Tout d'abord bravo pour ce que tu m'as envoyé.
Déja parce que ...
Ensuite par ce que ...

Commencons par voir les solutions à ces exercices...


Solution des exercices précédents
---------------------------------

### Solution 5.a : Login, mot de passe et accès...

Quelques questions à se poser :

* __De quoi va t-on avoir besoin comme variables ?__ Une pour stocker le nom (``nom``), et une autre pour stocker le mot de passe (``motdepasse``).
* __Comment sont-elles initialisées ?__ Au clavier.
* __Est-ce que certaines parties doivent être répétées ?__ Non.
* __Si oui, lesquelles ?__ Toujours non ;)
* __Est-ce qu'il y a des choix à faire quelque part ?__ Oui, selon ce que contient ``motdepasse``.
* __Si oui, de quoi dépendent ces choix ?__

Ici, l'ordre des autres instructions est quasiment donné par l'énoncé.

Démarche générale pour analyser un énoncé
--------------------------------

Lorsque l'on est face à un énoncé ou un problème, il y a un méthode toute
simple pour nous aider à trouver comment écrire un programme. Il s'agit de
répondre à une courte série de questions :

### De quoi va t-on avoir besoin comme variables ? 

### Cteomment ces variables sont-elles initialisées ?

Eh bien, si l'on ne met rien dans une variable, son contenu est... vide ?
indéfini ? Pas si sûr... 

En fait dans un ordinateur la mémoire est un composant electrique, donc
à l'allumage du matériel elle contient... absolument rien d'intéressant ! 
Son contenu est essentiellement du bruit, c'est à dire des états 
electriques résiduels dû aux aux variations de tension. Les valeurs que l'on pourrait
y lire seraient totalement aléatoires !

En cours de fonctionnement, lorsqu'un programme déclare avoir 
besoin de mémoire pour ses variables, le systeme lui "donne" des cases.
Ces cases sont soit des cases jamais utilisées depuis l'allumage, soit 
des cases qui ont été libérées (délivrées) par 

des En effet cela dépend du langage de programmation.
Dans un ordinateur, lorsqu'on demande de la mémoire, celle ci n'est _jamais_ vide.
Elle contient des valeurs, soit données par un autre programme, avant ce que celui-ci 
ne décide de libérer la case (c'est à dire de la rendre au système).

Par
conséquent on ne peut pas l'utiliser pour _lire_ des données !  C'est pour cela
qu'il est important, une fois que l'on connait les variables dont on a besoin,
de prévoir quelle valeur on va mettre dedans tout au début du programme. C'est
ce qu'on appelle l'initialisation.

* __Est-ce que certaines parties doivent être répétées ?__ 
* __Si oui, lesquelles ?__
* __Est-ce qu'il y a des choix à faire quelque part ?__ 
* __Si oui, de quoi dépendent ces choix ?__


  * repérer les concepts => en faire des variables
  * les initialiser d'abord (idéalement)


* démarche pour structurer un programme
  * est-ce que ça boucle ? 
  * si oui, qu'est ce qui est répété ?
  * sinon est-ce qu'il y a une variation sur la base de qqchose
  * sinon pas de prise de tete

* pour le 06: On remarquera que les algorigrammes nécessitent énormément de place sur le papier, même pour des programmes simples !
