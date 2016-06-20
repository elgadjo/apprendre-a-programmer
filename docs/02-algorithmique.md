Généralités (suite)
===================

Tu es toujours là ? Toujours motivée ? Trop bien ! Reprenons ! 


Un travail à vocation universelle
---------------------------------

Tu as vu dans le chapitre précédent que la programmation est l'art de mêler l'algorithmique à un ou plusieurs langages

L'algorithmique est juste une question de méthode (beaucoup) et de logique (un peu). Par conséquent, elle est _indépendante des langages_ de programmation et _indépendante des machines_ qui exécuteront le programme final. En revanche, le langage de programmation, lui, est lié au coté physique et matériel de la machine car il doit être compris et exécuté par cette dernière.

On a l'habitude de distinguer deux types de langages : 

* les __langages bas niveau__ (ex: Assembleur, C ...) : ils permettent la manipulation des aspects matériels de la machine sur laquelle le programme est exécuté. Ce sont des langages terriblement terre à terre, qui nécessitent un micro-management de chaque chose : mémoire, périphériques, registre processeur, interruptions, réseau, etc. C'est à la fois fastidieux, mais c'est terriblement précis et puissant.
* les __langages de haut niveau__ (ex: Python, Javascript ...) : ils masquent le coté technique au profit d'une vision plus abstraite qui leur permettra plus facilement de manipuler des fichiers, des composants graphiques, des données, etc. Ces langages font confiance au système pour la gestion de la mémoire et du reste. Ils vont s'occuper essentiellement des aspects métiers.

Haut et bas niveau n'ont pas de connotation péjorative et n'ont évidemment rien à voir avec les compétences techniques nécessaires à les programmer ! Il s'agit simplement d'une question d'efficacité sur un domaine particulier... et la facilité à gérer contraintes qui vont avec. On pourra toujours faire des choses de bas niveau avec un langage de haut niveau, ou des choses de haut niveau avec un langage de bas niveau. C'est juste _beaucoup_ moins pratique.

En général, les langages bas niveau seront des langages compilés &mdash; car dépendants d'une machine spécifique &mdash; et les langages de haut niveau seront des langages interprétés. 


Problèmes fondamentaux en algorithmique
---------------------------------------

Programmer, c'est comme résoudre un casse tête. C'est un peu un défi qui nécessite d'inventer une solution face à un problème ou une situation donnée. Reste à le faire bien. Lorsqu'on programme, à un moment ou un autre, on se posera des questions sur la __calculabilité__, la __complexité__ ou la __correction__ de l'algorithme que l'on est en train de concevoir.

La __calculabilité__ est la capacité à calculer un résultat ou une solution : Pour une tâche donnée, existe-t-il un algorithme qui la résolve ? Existe-t-il des tâches pour lesquelles il n'existe aucun algorithme ? Comment savoir si l'on est dans l'un ou l'autre des cas ?

La __complexité__ est lie le nombre d'opérations exécutées par l'algorithme à la taille ou la quantité des données qu'il manipule. C'est donc une question de performance et d'optimisation : en combien de temps un algorithme va-t-il atteindre le résultat prévu ? De quel espace (mémoire) a-t-il besoin pour faire son travail ? 

Lorsqu'on parle de complexité, on utilise la notation __O(...)__ pour parler des différence de complexité d'un algorithme. Voici les principaux cas :

* __O(1)__ : l'algorithme en temps constant. Il prends toujour le même temps quel que soit la taille ou la quantité de données qu'il manipule. C'est excellent !

* __O(N)__ : l'algorithme en temps linéaire (c'est bof). Il prends un temps proportionnel à la quantité de données manipulées. C'est moyen.

* __O(log N)__ : l'algorithme est en temps logarithmique (c'est bien), il prends moins de temps. C'est très bien.

* __O(N*N*..)__ : l'algorithme est en temps polynomial. Il prends un temps qui est le carré, le cube ou autre polynôme de la quantité de données manipulées. C'est pas terrible.

* __O(exp(N))__ : l'algorithme est en temps exponentiel. C'est pire que tout : il y a de fortes chances que l'on n'obtienne pas les résultats dans un temps raisonnable (temps alloué au projet, vie humaine, âge de l'univers, etc.) ;-)



Enfin la __correction__ c'est pouvoir prouver qu'un algorithme répondre bien au besoin pour lequel il a été conçu... et c'est loin d'être évident.


À suivre ?
----------

Jusque là j'ai posé un peu le contexte : c'était un peu de culture générale et du vocabulaire. Normalement on n'abordera plus ces sujets, à moins que tu en aie envie.

Si ça te botte toujours, au prochain chapitre on plongera dans les algorigrammes et on commencera à dessiner nos idées.

- Est-ce que ça va jusque là ? 
- En terme de volume, est ce que c'est trop long ? Trop court ?
- Est-ce que tu as des questions ou des trucs que tu as envie de dire ? :-P

Si tu veux la suite, envoie-moi un e-mail avec le texte __"JE VEUX LA SUITE !"__ :-)



!!! note
    __Programmer peut entraîner de graves troubles comportementaux.__
    En cas d'apparition des symptômes suivants : impossibilité de résister aux défis, envie de dialoguer avec son écran, veillée tardive, recherches compulsives sur StackOverflow, réflexion nocturne sur un bug et apparition d'une solution au matin, dire à quelqu'un qu'on arrive et arriver 1h après, essayer d'automatiser la moindre tâche... alors il est trop tard, tu es foutue ;-)

