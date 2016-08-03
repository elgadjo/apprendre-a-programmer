
Algorigrammes (partie 5)
==============================

Super ! Quelle motivation ! Alors, cette fois on passe aux choses sérieuses !

As-tu as remarqué que nos algorigrammes prennent _beaucoup_ d'espace à dessiner ?  Juste avec deux ou trois conditions, ça devient déjà le bazar à lire et à écrire ! On va donc organiser... et simplifier tout ça.

Sous-programmes, fonctions et procédures
--------------------

### La métaphore de la recette (encore)

Il y a quelques pages, nous avions défini un programme comme un ensemble d'ingrédients et d'étapes nécessaires pour réaliser un objectif. Un peu comme une recette de cuisine finalement. 

Avec cette définition, nous pouvons dire qu'__un sous-programme est une deuxième recette__ de cuisine, __mentionnée dans la première__ recette et __dont le résultat est utilisé__ par la première recette.


#### Exemple 7.1. Le gratin et la béchamel

Voyons les deux recettes suivantes : d'abord la béchamel...

~~~
Recette de la béchamel
======================

Ingrédients (pour 4 personnes) : 40 g de beurre,
   40 g de farine,  1/2 L de lait,  1 pincée de
   muscade râpée, sel, poivre.

Préparation :

1. Dans une casserole sur feu vif, faites fondre
   le beurre jusqu'à ce qu'il soit mousseux. 
2. Versez d'un coup la farine et mélangez vivement
   avec une spatule en bois, jusqu'à ce que le
   mélange soit homogène et commence à dorer
   légèrement. 
3. Versez alors le lait et fouettez pour détruire
   les éventuels grumeaux. Baissez le feu et
   continuez de mélanger en continu jusqu'à ce que
   la béchamel épaississe. 
4. Salez, poivrez, ajoutez la noix de muscade.
   Mélangez puis retirez du feu.
~~~

En supposant toutes les actions correctement menées, on peut dire que cette recette __produit un résultat__ : la béchamel (sans blague !)
et ce résultat __dépend uniquement des ingrédients de départ__.

C'est ok jusque là ? On continue avec l'autre recette :

~~~
Recette du gratin dauphinois
============================

Ingrédients (pour 4 personnes) :  1 kg de pommes
   de terre, 60 g de beurre, 40 g de farine, 150 g de
   fromage râpé, 1/2 L de lait, 1 pincée de muscade
   râpée, sel, poivre.

1. Lavez et pelez les pommes de terre. Plongez-les
   dans un grand volume d'eau froide et portez à
   ébullition. Cuisez 15 à 20 min.
2. Pendant ce temps, réalisez la béchamel.
3. Préchauffez votre four à 200°C (th.6-7).
   Lorsqu'elles sont cuites, égouttez les pommes
   de terre et coupez les en rondelles d'environ 5
   mm d'épaisseur. Répartissez-les dans le plat en
   salant et poivrant régulièrement. Versez dessus
   la béchamel et lissez-la de façon à ce 
   qu'elle se répartisse partout. 
4 Parsemez le fromage râpé, et enfournez pour
   20 min. Servez bien chaud, décoré de brins de
   persil et accompagné d'une grosse salade verte.
~~~

La recette du gratin est plus intéressante que la précédente. 
On peut y noter que :

* Cette recette produit un résultat : la gratin dauphinois. Ce résultat 
  intègre de la béchamel.
* On a supposé connu l'action ``réaliser la béchamel`` à l'étape n°2
* Cette recette dépend des ingrédients de départ
* Cette recette dépend également de 
  __la transformation d'une partie des ingrédients par la recette de la béchamel__

### Recettes et première approximation

Si nous étions entrain de cuisiner en suivant minutieusement un livre de recettes, au moment de l'instruction ``réaliser la béchamel`` nous aurions tourné
quelques pages de notre livre pour aller à la recette ̀``Béchamel``. 

À partir de là nous aurions suivi les ingrédients et les instructions de cette nouvelle page comme s'il s'agissait de notre recette principale.

On peut en déduire que : 

* __"Recette de la Béchamel" est un sous-programme__ du programme 
    principal "Gratin" 
* __Il suffit de fournir les bons ingrédients__ à la recette de la béchamel (types & quantités) pour réaliser une béchamel
* __Elle peut être utilisée indépendamment__ de la recette du du gratin, pour réaliser d'autres recettes (ex: pour faire des [aubergines façon "papoutsakia"](http://www.fashioncooking.fr/2012/06/melitzanes-papoutsakia-aubergines-farcies-grecques/)) ! 

#### Exemple 7.2. L'algorigramme romantique

Dans un algorigramme, __un instruction rectangulaire avec deux barres de chaque coté représente l'utilisation d'un sous-programme__ :

1. À l'arrivée dans une instruction _double-barrée_, on "saute" dans le sous-programme concerné
2. .. on suit les flèches et on exécute ce qui doit etre exécuté
3. ...jusqu'à terminer le sous-programme
4. ...ce qui nous amène à l'instruction que l'on avait quittée dans le programme principal !

![x](algorigrammes/exemple-sous-programme.png)

### Vocabulaire et définitions

Dans le monde du développement, il finalement est assez rare de parler de sous-programmes,
on parlera plutôt de __fonctions__ ou de __procédures__. Même s'il est fréquent de confondre les deux.

* __Une fonction fabrique un résultat__ qui sera utilisée par le programme  principal
* __Une procédure ne produit pas de résultat mais réalise des actions__ à effet de bord (ex: afficher une fenêtre, envoyer des données sur le réseau, etc.)

Dans ces deux types de sous-programmes, il faut distinguer deux moments importants : leur __déclaration__ et leur __appel__ .

* __La déclaration__ ou la __définition__ d'un programme, c'est quand on écrit &mdash; ou qu'on dessine &mdash; les instructions qui le composent.

* __L'appel__ , c'est lorsqu'on fait référence à un programme existant à partir d'un autre, pour l'utiliser.

On ne peut _appeller_ un sous-programme que s'il a été préalablement défini  &mdash; évidemment !

### Utilisation et fonctionnement

Que se passe-t-il lorsqu'un programme appelle une sous-programme ? En fait il y a 3 étapes : 

* __Passage de paramètres :__ certaines données du programme principal sont transférées au sous-programme (ex: dans notre recette principale, on utilise une partie des ingrédients pour la sous-recette)
* __Réalisation des étapes__ (c'est la préparation de la sous-recette)
* __La valeur de retour :__ lorsque la préparation est terminée on peut se 


FIXME: * Passage par valeur (on copie la valeur de la variable ... dans la variable y)
FIXME: * Passage par référence (on fait pointer la valeur 


!!! note: 
    FIXME: eprendre l'exemple du videur avec 300 visites, avec l'appel à une fonction

### Exemple 7.2. Le videur sexiste avec maximum 300 visiteurs


> Il venait de se passer tant de choses bizarres, qu'elle en arrivait à penser que fort peu de choses étaient vraiment impossibles <br>
> <em>Lewis Caroll, Alice au pays des merveilles</em>



Des algorigrammes au pseudo-code
---------------------------------------------------

DEBUT FIN => BEGIN .. END

INSTRUCTIONS => INSTRUCTIONS

IF THEN 

WHILE

TANTQUE


À suivre ?
----------

La prochaine fois, on reprends le cours ! Et on remarquera que les algorigrammes nécessitent énormément de place sur le papier (même pour des programmes simples), on va commencer à voir du vrai code...  

Alors...

* Ça te plait toujours ?
* Tu veux écrire du __vrai code__ ?

Si oui, envoie un e-mail et __demande la suiiiiiiiite__ :-)

