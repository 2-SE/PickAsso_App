# 2.SE! - Pick'Asso App Project
The app's goal is to centralize and reinforce the communication of a high school administration and associations.


# Pick-Asso (Flutter - Dart)


## Présentation du Problème et du Projet :
### Le Problème :
Nous avons remarqué des problèmes de communication au sein d'écoles du supérieur. Ainsi, nous avons eu l'idée de développer une application mobile et web pour y remédier.

Ces problèmes de communications se retrouvent également au sein des différentes associations des écoles. De part la décentralisation des informations, les étudiants se retrouvent à devoir circuler entre les groupes Facebook, les Instagrams, les Discords et groupes Microsoft-Teams.

De plus, l'impossibilité via ses réseaux d'obtenir un calendrier clair des différents événements à venir proposés.
### Le Projet :
Pick-Asso est une application permettant à l'administration et aux responsables des associations étudiantes (président et pôle communication des associations) d'un même campus ou d'une école de pouvoir faire leurs messages de communication et programmer des événements.

Le but de cette application est donc rendre les messages de l'administration plus vivants (avec data analysis également) et de centraliser tous les messages des différentes associations et d'avoir un calendrier clair des événements à venir. Cette application permet également de pouvoir se renseigner sur la composition des membre d'une association, filtrer les messages en fonction du sujet évoqué, d'obtenir son emploi du temps et bien plus encore.

-------------------------------------

## Table des Matières :
1. [Cahier des Charges](#cahier-des-charges)
2. [Etat actuel du projet](#etat-du-projet)
3. [Fonctionnalités](#fonctionnalites)
4. [Equipe de Développeurs](#team)

-------------------------------------

<a name="cahier-des-charges"></a>
## Cahier des Charges :
### Le cahier des charges au début du projet était le suivant :
- Application Mobile (iOS et Android) et Web
- Création d'un super-user (administration de l'école) qui aurait "tous les droits" (ou presque)
- Création et connexion de comptes étudiants (*et déconnexion*)
- Possibilité de voir toutes les informations importantes de l'école ainsi que les personnes à contacter en fonction des besoins.
- Possibilité de faire une demande auprès de l'école pour la création d'une association (et possibilité de rajouter d'autres contributeurs à l'association - Président, Vice, Trésorier, etc...)
- Avoir un listing des différentes associations de notre école
- Avoir un fil d'actualités (*affichage des différents posts des association dans l'ordre "du plus récent au plus ancien"*) avec la possibilité de filtrer "Message de l'école",  "Messages de toutes les associations" et "Message de mes associations favorites" mais aussi par "tag".
- Possibilité de mettre des associations en tant que "Favorites"
- Possibilité de publication dans le fil d'actualités (*publier des posts au nom de son association en remplissant différents champs*) régit par un système de "tags" permettant de catégorisé le message envoyé - les posts peuvent être des simples messages de communication, des évènements, des sondages (ou autre).
- Création d'un calendrier des différents évèments à venir (*sous forme de liste chronologique*)
- La possibilité en tant qu'étudiant de montrer sa participation à un évenement ainsi que de voir la liste des participant à cet événement
- Notifications et rappels (en fonctions du choix de l'utilisateur)
- Espace commentaire et réaction (*type Like Facebook*)
### Evolution du cahier des charges :
- Pouvoir voir les informations d'une association (*Nom, Sigle, Logo/Image de l'association, Description de l'association, Constitution de son Bureau*)
- Pouvoir modifier les information d'une association et pouvoir la supprimer 
- Possibilité de modification et suppression d'un compte étudiant
- Possibilité de modifier un message précédemment envoyé (*Titre, Message, Logo/Image, Type de message (évènement/communication), Date et Heure d'évènement*)
- Possibilité de supprimer un message précédemment envoyé
- Pouvoir filtrer les posts d'une seule association
- Possibilité de regarder un seul et unique message
- Possibilité de voir les évènements passés dans le calendrier (*switch entre évènements passés et futurs*)

-------------------------------------

<a name="etat-du-projet"></a>
## État actuel du projet :
Le projet débute un nouveau cycle. Nous avons déjà mis en place ce projet sous différents langage (Kotlin et Swift par exemple), mais nous le recommançons afin de rajouter de nouvelles fonctionnalités : principalement pour rajouter la possibilité de voir notre application sur un navigateur web et de pouvoir faire des data-analyses de chacun des messages (nombre d'impressions, nombres de participants à un événement, possibilité de faire des sondages, etc...).
-------------------------------------

<a name="fonctionnalites"></a>
## Fonctionnalités :
1. [Fonctionnalités Générales](#general)
2. [Fonctionnalités d'un Compte Association](#compte-asso)
3. [Fonctionnalités d'un Compte Étudiant](#compte-etudiant)
4. [Fonctionnalités Autres](#autres)
<a name="general"></a>
### 1.  Fonctionnalités Générales
*Fonctionnalités possibles que l'on soit connecté en tant qu'étudiant ou en compte association*
- Possibilité de voir le Fil d'Actualité des associations (état : Fonctionnalité terminée)
- Possibilité de voir uniquement le Fil d'Actualité d'une seule association (état : Fonctionnalité terminée)
- Possibilité de voir la liste des participants à un évènement (état : Fonctionnalité terminée)
- Possibilité d'acceder au calendrier des évènements à venir (état : Fonctionnalité terminée)
- Possibilité de voir les évènements passés (état : Fonctionnalité terminée)
- Possibilité de voir la liste des association de son école (état : Fonctionnalité terminée)
- Possibilité de voir les informations d'une association (état : Fonctionnalité terminée)
- Possibilité de se déconnecter du compte sur lequel on est, que ce soit un compte d'étudiant ou d'association (état : Fonctionnalité terminée)
<a name="compte-asso"></a>
### 2.  Fonctionnalités d'un Compte Association
- Création d'un Compte d'Association (état : Fonctionnalité terminée)
- Possibilité de modifier les information de son association (état : Fontionnalité terminée)
- Possibilité de supprimer sa propre association (état : Fontionnalité terminée cependant )
- Publication de message dans le Fil d'Actualité (état : Fonctionnalité terminée)
- Publication d'évènement dans le Fil d'Actualité (état : Fonctionnalité terminée)
- Possibilité de modifier un message précédemment envoyé (état : Fonctionnalité terminée)
- Possibliité de supprimer un message précédemment envoyé (état : Fonctionnalité terminée)
<a name="compte-etudiant"></a>
### 3.  Fonctionnalités d'un Compte Étudiant
- Création d'un Compte Étudiant (état : Fonctionnalité terminée)
- Possibilité de modifier les informations de son compte étudiant (état : Fonctionnalité terminée)
- Possibilité de supprimer son compte étudiant (état : Fonctionnalité terminée)
- Possibilité de mettre des associations en favorites (état : Fonctionnalité terminée)
- Possibilité de voir le Fil d'Actualité des association favorites (état : Fonctionnalité terminée)
- Possibilité de se déclarer participant à un évènement (état : Fonctionnalité terminée en partie - Erreur car la liste des participants reste marquée comme nulle alros quelle n'est pas sensée l'être - code mis en commentaire dans le fichier MainHomeActivity.kt - la checkbox est initialisée en fonction de si l'utilisateur participe à l'évènement ou pas (erreur exceptionnelle lorsque l'on lance l'activité en étant déjà participant et qu'on retire notre participation à l'évènemment))
<a name="autres"></a>
### 4.  Fonctionnalités Autres
- Notifications (état : Fonctionnalité commencée mais pas finie - Notification lors d'un nouveau message avec le titre de ce dernier mais affiche aussi une notification lors de l'affichage de la MainHomeActivity.kt, de plus lorsque nous cliquons sur la notification, cela nous renvoie pas sur le message en question)
- Espace commentaire et Like (état : Fonctionnalité non-commencée - fonctionnalité de priorité faible, volonté de faire d'autres fonctionnalités sortant de notre cahier des charges initial car jugées comme plus intéressantes pour les utilisateurs)

-------------------------------------

<a name="team"></a>
## Équipe de Développeurs :
Étudiants de l'ESME Sudria :
  - M. BONANSEA Hugo
  - M. CHARDON Maxime
  - M. LECOMTE Quentin
  - M. LEPLAT Julien
  - M. LONGEFAY-GUINAND Mael
  - M. BAZIRE Antoine (Stagiaire)

-------------------------------------

## License
***© COPYRIGHT 2022 - Tous Droits Réservés à 2.SE! Corp***  
*All Rights Reserved*



<!--
A few resources to get you started if this is your first Flutter project:
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
For help getting started with Flutter development, view the [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.
-->
