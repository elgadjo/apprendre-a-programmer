Apprendre à coder
-----------------

Alors donc tu veux apprendre à programmer ?

Dans « programmer » il est important de distinguer deux aspects : 
l'ALGORITHMIQUE et les LANGAGES de programmation. 

L'ALGORITHMIQUE est un peu l'équivalent de la logique pour formuler des idées là ou les LANGAGES se basent chacun sur une syntaxe et une grammaire permettant de les véhiculer et se faire comprendre. 

Évidemment, on ne peut pas formuler d'idées sans mots, et utiliser des mots sans idées ne fonctionne pas très bien non plus...

Pour re-situer dans le contexte : l'objectif de l'informatique, c'est obtenir de la machine qu'elle effectue un travail à notre place (pour le meilleur et pour le pire...).

Le problème : comment lui expliquer comment elle doit s'y prendre ? Comment lui dire ? Comment lui apprendre ? Comment s'assurer qu'elle fait ce travail ? Et si on y arrive... fera-t-elle ce travail aussi bien que nous ? Mieux que nous ?

Bref. Dans ce qui suit, je vais donc te faire une introduction à la programmation en plusieurs étapes : 
- d'abord nous ferons des dessins, 
- ensuite nous en utilisant le langage parlé, en français, pour décrire nos idées,
- ensuite nous utiliserons JavaScript pour communiquer ces idées à l'ordinateur.

Pourquoi Javascript ? Parce que : 
- c'est un langage que l'on retrouve partout : front-end web, applications mobiles traitements métier sur les serveurs et depuis peu dans l'embarqué !
- c'est un langage à la mode : il y a de la demande pour du web et des app mobiles, les gens paient pour ça, la technologie évolue et se bonnifie,
- c'est un langage facile à apprendre !


Algori...quoi ?
---------------

Algorithmes. Algorithmique. Algorithmie.

Sans le savoir tu en as déjà utilisé :
 
- des briques de LEGO(tm) pour faire une caserne de pompiers
- des planches et des vis pour monter une étagère BILLY(c) IKEA(tm)
- des ingrédients pour faire un gateau

Dans tout ces cas là, tu as suivi un plan, un guide de montage, une recette. Tu étais dans une posture d'éxecution, qui t'a permis de "suivre" le travail imaginé par quelqu'un d'autre afin de le reproduire.

Cependant, ceux qui ont conçu cette caserne de pompier, cette étagère BILLY(c) IKEA(tm), ce gateau... comment ont-il procédé ? Quelle était la démarche qui leur a permis, tout d'abord d'inventer un objet répondant à leur besoin, ensuite de décomposer leur idée, et enfin d'expliquer les étapes nécessaire à sa réalisation ?

Au départ on avait des composants ou des ingrédients éparses,  ils ont été assemblés dans un certain ordre et d'une certaine façon, afin d'obtenir un résultat souhaité. 

Cette démarche de résolution de problèmes et cette méthodologie pour les décomposer en étapes simples, c'est ce qu'en informatique on appele l'algorithmique. Evidemment ça peut s'appliquer à bien d'autres sujets !


Une question d'écriture et de représentations
---------------------------------------------

Puisque dans un algorithme on trouve simplement des étapes et des actions, il peut avoir plusieurs représentations  : 

- un __algorigramme__ : un diagramme d'étapes successives représenté avec des rectangles, des bulles, des losanges et des fleches, 
- du __pseudo-code__ : une écriture en quasi-français désambigué
- du __code source__ : une explication dans un langage informatique non-ambigü permettant à l'ordinateur de le transformer en quelque chose qu'il comprends.
- du __byte-code__ : suite d'instructions binaires pour un logiciel interprête
- du __code machine__ : suite d'instructions binaires envoyées au processeur et à la mémoire.

L'algorigramme et le pseudo-code sont là essentiellement pour des besoins éducatifs, mais il existe d'autres formes de diagrammes qui sont "normalisés" et permettent également de représenter des programmes. On parlera alors de représentation UML, Merise, SDL, etc. Ces différents langages graphiques  permettent d'avoir une description et d'organiser un projet informatique entre plusieurs intervenants de métiers différents et leur permettre de communiquer.

Le code machine (ou binaire executable) c'est ce que la machine comprends "en vrai", c'est la suite d'opérations que le processeur doit faire, et les différents états de la mémoire à lui faire manipuler. Ce code machine est spécifique à un modèle de processeur donné (et incompatible avec un autre modèle de processeur). C'est pourtant de cette façon là qu'il faut écrire le premier programme sur un processeur donné, afin qu'il s'allume et serve à quelque chose.

Même si c'est encore possible (et qu'on l'a beaucoup fait par le passé), c'est assez ingrat d'écrire un programme de cette façon !

Assez rapidement, face au code machine, on s'est rendu compte qu'il était plus pratique d'écrire des programmes appelés des compilateurs : c'est à dire des outils capables de prendre un programme écrit dans un langage de programmation (écrit par un humain) et de le transcrire automatiquement en code machine, pour obtenir un binaire exécutable sans l'écrire soi-même en code machine. On a donc fabriqué un compilateur par langage de programmation et par type de machine.

Il faut savoir que lorsqu'on a du code machine entre les mains, c'est très compliqué (voire impossible) de revenir au code source de départ... c'est comme essayer de retrouver les ingrédients et le dosage précis d'un plat rien qu'en le goutant ! Il faut être expert gouteur, expert cuisinier... et là encore, c'est dur ! Cette propriété du code machine est évidemment une aubaine pour les gens qui veulent diffuser leur programme sans montrer son fonctionnement.

Malgré cela, il y a un hic ! L'auteur (ou l'éditeur) doivent compiler leur code source en binaire exécutable pour chaque nouvelle plate-forme matérielle qui voit le jour, sous peine de voit leur programme être incompatible chez les usagers des nouvelles plates-formes ! Et ça nécessite donc beaucoup de travail (et donc des coûts) !

Là encore, des petits malins se sont dit qu'il était peut-être plus pratique d'avoir un "interprête" (ou interpréteur), c'est à dire un programme binaire spécifique à chaque machine, capable de lire du code source et de le transformer au fur et en instructionss pour le processeur. Ainsi, plus besoin de compilation, et le programme est compatible avec toutes les machines où se trouve un interpréteur pour le langage dans lequel il est écrit ! 

Malheureusement, il y a deux soucis avec les intérpréteurs : transcrire "à la volée" du code source, cela nécessite du temps... Par conséquent un interpréte sera donc toujours plus lent qu'un programme binaire exécutable. En plus, pour utiliser un programme avec un interprêteur il faut diffuser le code source du programme ! Autant ça ne gène pas les adeptes du partage, autant les gens voulant garder secrets leurs algorithmes n'ont pas trouvé cela génial...

C'est là qu'est apparu le byte-code. Le byte-code, c'est du code machine pour une machine "virtuelle", c'est à dire une machine qui n'existe pas mais dont le code machine hypothétique serait minimaliste et transposable facilement sur n'importe quel processeur, avec moins d'efforts que pour un langage de programmation. L'idée est ici de compiler quand le code source en du byte-code, et d'avoir un interpréteur de byte-code sur chaque plate-forme. 

Avec cette technique, on obtient une vitesse de fonctionnement raisonnable, une compatibilité avec toutes les machines qui possèdent un interpréteur bytecode et aucune façon de remonter au code source de départ ! C'est la stratégie utilisée par Java ou .NET . 

Bref. Lorsque l'on programme, on écrit donc en général du code source, dans un langage de programmation. Mais rien n'empeche de faire un diagramme pour se fixer les idées ! Ça arrive même aux meilleurs professionels après plusieurs décénies de pratique.


A suivre ?
----------

Avant de continuer, j'ai besoin d'en savoir plus sur toi ! Déjà parce que je suis curieux (eh oui!) et parce que ça me permettra d'adapter sur-mesure la suite du cours :
- pourquoi est-ce que la technologie t'intéresse ? 
- comment est-ce que tu imagines le fait de coder ? 
- qu'est ce que tu imagines que cela peut t'apporter ?

Bref. Si tu veux la suite, réponds "JE VEUX LA SUITE !" à cet email :-)
