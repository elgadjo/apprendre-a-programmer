
Algorigrammes (partie 4 - fin)
==============================

Oh ! J'étais impatient de les recevoir ces feuilles crayonnées ! J'ai cru qu'elles n'arriveraient jamais. J'ai même cru que le facteur avait décidé de changer de vie après avoir participé à un évènement sur le gaspillage... ou qu'il avait recyclé tout le papier avant de le porter à destination !

Bravo, c'était très bien !
J'ai tout de meme quelques commentaires. Eh oui mademoiselle... c'est le jeu !

Commençons donc par expliquer comment analyser un énoncé dans le cas général, puis appliquer cela à nos quelques exercices. Enfin nous aborderons tranquiloutement la fin du chapitre _« Algorigrammes »_ .


Démarche générale pour analyser un énoncé
--------------------------------

Lorsque l'on est sur le point d'écrire un programme il y a un méthode toute simple pour nous aider à trouver comment l'écrire. Il s'agit de répondre à une courte série de questions qui vont nous aider à le décomposer, étape par étape.

### De quoi a-t-on besoin comme variables ? 

C'est très facile, il suffit de repérer les différents _concepts_ évoqués dans l'énoncé. Chacun de ces concepts peut donner lieu a une variable.

__Exemple 1 :__ « Faire un programme qui compte de 1 à 10. »

* Variables : ``compteur``.

__Exemple 2 :__ « Demander un nom et un mot de passe à l'utilisateur, si le nom est XXX et que le mot de passe est YYY, alors il passe, sinon il ne passe pas. »

* Variables : ``nom``, ``mot_de_passe``, ``utilisateur``, ``passe``.

Dans ce dernier exemple, on remarque que : 

* ``utilisateur`` représente un acteur, pas une donnée à manipuler. Donc on ne l'utilisera pas comme variable.

* ``passe`` représente une décision, il faudra donc utiliser un test conditionel. Pour améliorer la lisibilité des programme, on stocke parfois la valeur de cette décision (vrai/faux) dans une variable avant de l'utiliser dans le test conditionel. Cela permet notamme de "construire" la prise de décision petit à petit si celle-ci dépend de nombreux paramètres.


### A quele valeur ces variables sont-elles initialisées ?

A ton avis, qu'est ce qui se passe si l'on ne met jamais rien dans une variable ? Quel est son contenu : vide ? indéfini ? 

En fait la mémoire est un composant electronique (donc éléctrique). À l'allumage du matériel elle contient... absolument rien d'intéressant ! Elle contient des états electriques résiduels dû aux aux variations de tension. Si on lisait les cases de la mémoire, les valeurs que l'on obtiendrait seraient totalement aléatoires !

En cours de fonctionnement, lorsqu'un programme déclare avoir 
besoin de mémoire pour ses variables, le systeme lui "donne" des cases. Soit ce sont des cases jamais utilisées depuis l'allumage, soit des cases qui ont été libérées (... ♫ délivrées.. ♪) par 
d'autres programmes.

Une case libérée n'est pas "vidée" de son contenu... pour des questions de rapidité. Elle contient donc encore la derniere valeur qu'un programme y a mise (et c'est très pratique pour le _hacking_). 

Pour palier à ce danger, certains langages initialisent la case à une valeur prédéfinie (``undefined`` en Javascript, ``nil`` en Ruby, etc.)

!!! warning "Ce qu'il faut retenir" 
    Lorsqu'on demande de la mémoire au système, la case obtenue n'est _jamais_ vide. On ne peut pas l'utiliser pour _lire_ des données ! Il est donc essentiel, une fois que l'on connait les variables dont on a besoin, de __prévoir quelle valeur on va mettre dedans__ tout au début du programme. C'est ce qu'on appelle __l'initialisation__.

### Est-ce que certaines parties dépendent d'un choix ?

Si c'est le cas, c'est qu'il y a une test conditionnel ! On s'intéresse successivement aux différentes parties qui le composent : le __corps__, la __condition__ (pour la bifurcation), __avant__ la boucle, __apres__ la boucle.

### Est-ce que certaines parties doivent être répétées ?

Si c'est le cas, c'est qu'il y a une boucle ! 
On s'intéresse successivement aux différentes parties qui composent la boucle : 
le __corps__, la __condition d'arrêt__, __avant__ la boucle, __apres__ la boucle.

* _Qu'est ce qui doit etre répété ?_ ce seront les condition du corps de la boucle.

* _Quand est-ce que ma boucle s'arrête ?_ Ce sera la condition d'arret.
Celle ci peut nécessiter des variables, et donc des initialisations !

... Et pour chacune de ses parties on réapplique la série de questions depuis le début !





Solution des exercices précédents
---------------------------------

### Solution 5.a : Login, mot de passe et accès...

* __De quoi va t-on avoir besoin comme variables ?__ Une pour stocker le nom (``nom``), et une autre pour stocker le mot de passe (``motdepasse``).
* __Comment sont-elles initialisées ?__ Au clavier.
* __Est-ce que certaines parties doivent être répétées ?__ Non.
* __Est-ce qu'il y a des choix à faire quelque part ?__ Oui, selon ce que contient ``motdepasse``.

Ici, l'ordre des autres instructions est quasiment donné par l'énoncé.

Ce qui nous donne : 

    VAR nom
    VAR motdepasse
    affiche("Votre nom ?")
    nom <- lire()
    affiche("Votre mot de passe? ")
    motdepasse <- lire()
    SI nom = "..." ALORS 
      SI mot de passe = "..." ALORS
        afficheiche("Accès correct")
      SINON
        affiche("Accès incorrect")
      FINSI

    SINON
      affiche("Accès incorrect")
    FINSI

C'est bien, ça fait le job correctement, mais on peut simplifier. Dans le chapitre FIXME, on parlait des expressions booléennes. On va les utiliser pou rassembler les deux conditions en une seule. 

On va donc écrire :

    VAR nom
    VAR motdepasse
    affiche("Votre nom ?")
    nom <- lire()
    affiche("Votre mot de passe? ")
    motdepasse <- lire()
    SI nom = "..." ET mot de passe = "..." ALORS
      affiche("Accès correct")
    SINON 
      affiche("Accès incorrect")
    FINSI


Commentaires sur ta solution : 

* __C'est très bien !__ Rien à redire au niveau de la logique : c'est une variante de la version non simplifiée. Ça fonctionne. 
* __Il manque des guillemets autour du texte__ qui est envoyé vers l'écran (ex: "Quel est ton nom ?" en haut,  "MDP ?" à mi-hauteur, "Accès refusé" à gauche, etc.). Sans les guillemets on croit que ce sont des variables !

C'est intéressant que tu aie mis les instructions pour la demande du mot de passe dans la branche à droite (après le test du nom). Et ça fait gagner du temps si le nom n'est pas bon, pas besoin de demander une information inutile.

Mais que se passerait-il si ton programme programme était utilisé situation réelle face à une personne non-autorisée ?

* Cette personne pourrait essayer différents noms... et selon que "mot de passe ?" apparait ou non, cela lui donnerait un indice sur l'existance (ou non) de cet utilisateur dans le systeme. 
* Une fois un utilisateur valide trouvé, il lui suffit de d'entrer toujours ce meme nom et d'essayer différents mots de passe jusqu'à rentrer !

En termes de sécurité, on préfèrera donc demander toutes les informations d'un coup afin de ne pas laisser fuiter d'indices !

### Solution 5.b : Age, l'année d'après

Dessine un programme qui demande à l'utilisateur de taper son age et le stocke dans la variable age. Calcule l'age qu'il aura l'année prochaine et stocke le résultat dans la variable age (la même). Ensuite affiche-lui le message "L'année prochaine, tu auras XX ans" (avec XX remplacé par son âge prochain).

### Solution 5.c : Compter de deux en deux

Sur la base de l'exemple 5.3, dessiner un algorigramme qui compte de 0 à 10, de deux en deux (et qui affiche donc 0..2..4..6..8..10).

### Solution 5.d : Boite de nuit limitée à 300 places

Sans dessiner l'algorigramme, comment ferais-tu pour adapter le videur de base (exemple 5.1) afin qu'il ne laisse entrer que 300 visiteurs dans la boite de nuit ? Que faudrait-il ajouter ?


Encore quelques instructions
----------------------------

Sous-... procédures / fonctions.


À suivre ?
----------

La prochaine fois, encore quelques exercices. 

On remarquera que les algorigrammes nécessitent énormément de place sur le papier, même pour des programmes simples !
Et on commencera à voir du vrai code...


Si le coeur t'en dis, j'attends impatiemment ton e-mail avec :

* une __photo de tes exercices__ (à la main sur papier),
* un __petit message qui m'incite à écrire la suite__ :-)
