
# Généralités

## Quelques définitions

Bon, donc tu veux _vraiment_ apprendre à programmer ?

Dans « programmer » il est important de distinguer deux aspects : 
__l'algorithmique__ et les __langages__ de programmation. 

__L'algorithmique__ est un peu l'équivalent de la logique pour formuler des idées là ou les __langages__ se basent chacun sur une syntaxe et une grammaire permettant de les véhiculer et se faire comprendre. 
Évidemment, on ne peut pas formuler d'idées sans mots, et utiliser des mots sans idées ne fonctionne pas très bien non plus...

Ressituons tout ça dans le contexte : l'objectif de l'informatique, c'est obtenir de la machine qu'elle effectue un travail à notre place (pour le meilleur et pour le pire...). Mais alors, comment lui expliquer comment elle doit s'y prendre ? Comment lui dire ? Comment lui apprendre ? Comment s'assurer qu'elle fait ce travail ? Et si on y arrive... Fera-t-elle ce travail aussi bien que nous ? Mieux que nous ?

Bref. Dans ce qui suit, je vais donc te faire une introduction à la programmation en plusieurs étapes : 

- d'abord nous ferons des dessins, 
- ensuite nous utiliserons une forme de français minimaliste pour décrire nos idées,
- ensuite nous utiliserons Javascript pour communiquer ces idées à l'ordinateur.

Pourquoi Javascript ? Parce que : 

- c'est un langage que l'on retrouve partout : front-end web, applications mobiles traitements métier sur les serveurs et depuis peu dans l'embarqué !
- c'est un langage à la mode : il y a de la demande pour du web et des applications mobiles, les gens paient pour ça, la technologie évolue et se bonifie,
- c'est un langage facile à apprendre !


## Algori...quoi ?

Algorithmes. Algorithmique. Algorithmie. Attention, il n'y a pas de i-grec car ça vient de l'arabe : du nom du mathématicien Al-Khwârizmî (الخوارزمي) !

Sans le savoir tu en as déjà utilisés :
 
- des briques de LEGO&trade; pour faire une caserne de pompiers
- des planches et des vis pour monter une étagère BILLY&copy; IKEA&trade;
- des ingrédients pour faire un gâteau

Dans tous ces cas là, tu as suivi un plan, un guide de montage, une recette. Tu étais dans une posture d'exécution, qui t'a permis de "suivre" le travail imaginé par quelqu'un d'autre afin de le reproduire.

Cependant, ceux qui ont conçu cette caserne de pompier, cette étagère BILLY&copy; IKEA&trade;, ce gâteau... comment ont-ils procédé ? Quelle était la démarche qui leur a permis, tout d'abord _d'inventer_ un objet répondant à leur besoin, ensuite de _décomposer_ leur idée, et enfin _d'expliquer_ les étapes nécessaires à sa réalisation ?

Au départ on avait des composants ou des ingrédients éparses,  ils ont été assemblés dans un certain ordre et d'une certaine façon, afin d'obtenir un résultat souhaité. Cette démarche de résolution de problèmes et cette méthodologie pour les décomposer en étapes simples, c'est ce qu'en informatique on appelle l'algorithmique. Évidemment ça peut s'appliquer à bien d'autres sujets !

> Le lapin Blanc mit ses lunettes. <br/>
> &mdash; « S'il plait à votre majesté, demanda-t-il, par où dois-je commencer? » <br/>
> &mdash; « Commencez par le commencement, dit d'un ton emprunt de gravité, le Roi. » <br/>
> <em>Lewis Carroll, Les aventures d'Alice au pays des merveilles</em>


## Une question d'écriture et de représentations

Puisque dans un algorithme on trouve simplement des étapes et des actions, il peut avoir plusieurs représentations  : 

- un __algorigramme__ : un diagramme d'étapes successives représenté avec des rectangles, des bulles, des losanges et des flèches, 
- du __pseudo-code__ : une écriture en quasi-français désambiguïsé
- du __code source__ : une explication dans un langage informatique non-ambigü permettant à l'ordinateur de le transformer en quelque chose qu'il comprends.
- du __byte-code__ : suite d'instructions binaires pour un logiciel interprète
- du __code machine__ : suite d'instructions binaires envoyées au processeur et à la mémoire.

__L'algorigramme__ et le __pseudo-code__ sont là essentiellement pour des besoins éducatifs, mais il existe d'autres formes de diagrammes qui sont "normalisés" et permettent également de représenter des programmes. On parlera alors de représentation UML, Merise, SDL, etc. Ces différents langages graphiques  permettent d'avoir une description et d'organiser un projet informatique entre plusieurs intervenants de métiers différents et leur permettre de communiquer.

Le __code machine__ (ou binaire exécutable) c'est ce que la machine comprend "en vrai": c'est la suite d'opérations que le processeur doit faire, et les différents états de la mémoire à lui faire manipuler.  
Ce code machine est spécifique à un modèle de processeur donné. Il est donc incompatible avec un autre modèle de processeur !

Assez vite on se rend compte que c'est assez ingrat d'écrire un programme de cette façon là ! C'est pourtant comme cela qu'il faut écrire le premier programme sur un processeur donné, afin qu'il s'allume et serve à quelque chose. 

Pour éviter d'avoir à faire cela pour tout le reste des programmes, on a inventé les __compilateurs__ : c'est-à-dire des outils capables de prendre un autre programme, écrit dans un langage de programmation par un humain, et de les transcrire automatiquement en code machine, pour obtenir des binaires exécutables sans avoir à les écrire soi-même en code machine. On a donc dû fabriquer un compilateur par langage de programmation... Et par type de machine.

Il faut savoir que lorsqu'on a du code machine entre les mains, c'est très compliqué (voire impossible) de revenir au code source de départ... C'est comme essayer de retrouver les ingrédients et le dosage précis d'un plat rien qu'en le goûtant ! Il faut être expert goûteur, expert cuisinier... Et là encore, c'est dur ! Cette propriété du code machine est évidemment une aubaine pour les gens qui veulent diffuser leur programme sans montrer son fonctionnement.

Malgré cela, il y a un hic ! L'auteur (ou l'éditeur) doivent compiler leur code source en binaire exécutable pour chaque nouvelle plate-forme matérielle qui voit le jour, sous peine de voir leur programme être incompatible chez les usagers des nouvelles plates-formes ! Et ça nécessite donc beaucoup de travail (et donc des coûts) !

Là encore, des petits malins se sont dit qu'il était peut-être plus pratique d'avoir un "interprète" ou __interpréteur__, c'est-à-dire un programme binaire spécifique à chaque machine, capable de lire du code source et de le transformer au fur et à mesure en instructions pour le processeur. Ainsi, plus besoin de compilation, et le programme est compatible avec toutes les machines où se trouve un interpréteur pour le langage dans lequel il est écrit !

Malheureusement, il y a deux soucis avec les interpréteurs : transcrire "à la volée" du code source, cela nécessite du temps... Par conséquent un interprète sera donc toujours plus lent qu'un programme binaire exécutable. En plus, pour utiliser un programme avec un interpréteur il faut diffuser le code source du programme ! Autant ça ne gène pas les adeptes du partage, autant les gens voulant garder secrets leurs algorithmes n'ont pas trouvé cela génial...

C'est là qu'est apparu le __byte-code__. Le byte-code, c'est du code machine pour une machine "virtuelle", c'est-à-dire une machine qui n'existe pas. Son code machine hypothétique serait minimaliste et transposable facilement sur n'importe quel processeur, avec moins d'efforts que pour un langage de programmation. L'idée est ici de compiler quand le code source en du byte-code, et d'avoir un interpréteur de byte-code sur chaque plate-forme.

Avec cette technique, on obtient une vitesse de fonctionnement raisonnable, une compatibilité avec toutes les machines qui possèdent un interpréteur byte-code et aucune façon de remonter au code source de départ ! C'est la stratégie utilisée par Java ou .NET . 

Bref. Lorsque l'on programme, on écrit donc en général du __code source__, dans un langage de programmation. Mais rien n'empêche de faire un diagramme pour se fixer les idées ! Ça arrive même aux meilleurs professionnels après plusieurs décennies de pratique.

> « Je crains bien de ne pouvoir m'expliquer moi-même... car je ne suis pas moi-même, vous comprenez. » <br/>
> <em>Lewis Carroll, Les aventures d'Alice au pays des merveilles</em>


## Conclusion

Wow. Ça c'était l'introduction ! Aller, il nous reste encore deux ou trois éléments de contexte à poser et puis on démarre pour de vrai !

