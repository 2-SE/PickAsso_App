# 2.SE! - Pick'Asso App Project
The app's goal is to centralize and reinforce the communication of a high school administration and associations.

<!--
A few resources to get you started if this is your first Flutter project:
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
For help getting started with Flutter development, view the [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.
-->



-------------------------------------



## Presentation of our Finding and the Project:

### Our Finding :
During our schooling in higher education (college), we noticed a few things that could be improved. 

  • Firstly, we can notice that there are many means of communication set up and this on really different communication networks without the messages being very well structured. Although, message senders can't see if their messages are (or aren't) visualized.

  • Furthermore, there are a lot of website used. The goal/objective of that was originally to have a specific website for each type of content and therefore to structure well everything that is useful to all students. But, the thing is, that we just messed it up because there is too many websites.

  • ((Parler du calendrier !!))

  • ((Asso/Prof/Etudiants))

### The Project :
To overcome these problems, we had the idea to develop an mobile application (and later maybe a website) to centralized every current applications of higher education (college).
Pick-Asso has the objective to :
   - give a better way to send a message to their students with a nice feed, 
   - see if the message is read (data-analysis), 
   - make a real calendar of all the events that have taken place and will take place in the establishment (meeting with professionals, open days of the establishment, conferences, etc), 
   - have our own calendar for all classes we have (as weel for the calendar of others students/promotions of our school), 
   - have a schedule of free classrooms (with every specification of each classrooms like the number of places, if the classroom have a video projector, ect), 
   - and more...



-------------------------------------



## Table of Contents :
#### 1. [Specifications & Requirements](#specification-and-requirements)
#### 2. [Current Status of the Project](#current-status-project)
#### 3. [Features](#features)
#### 4. [Developer Team](#dev-team)



-------------------------------------



<a name="specification-and-requirements"></a>
## Specifications & Requirements :

### Most Important Specifications & Requirements of the Project :
- Mobile App (iOS and Android) and Web Services
- Specfic logins for Administration, Professors and Students (and Associations) ➟ Means that Administration, Professors and Students have different rights and access to different view and features
- Have access to different calendar's topic : all classes/promotions of a college, of all free classrooms, of the event on the campus
- Have different types of calendar views : day-to-day view, week-to-week view, month-to-month view, other...
- Possibility to receive a notification when there is a change in his schedule
- Possibility to modify our own schedule
- Possibility of modifying informations from our own student account
- ...

### Possibles Evolutions of the Specifications & Requirements :
- Possibility of connection to accounts with different rights: Administration Account, Teacher Account and Student Account (& Association Account)
- Have the possibility to see all the information of his school (members of the administration, list and addresses of all the campuses, useful contacts and use cases, etc.)
- Have a news feed (*display of the various posts from the administration and associations in the order "from the most recent to the oldest"*) with the possibility of filtering "Message from the school", "Messages from all the associations" and "Message from my favorite associations" but also by "Tags" affiliated with each of the messages.
- Ability to watch a single message
- Possibility of publication in the news feed (*publish posts on behalf of your association by filling in different fields*) governed by a system of "tags" allowing the message sent to be categorized - posts can be simple communication messages , events, surveys (or other to be defined).
- Have a list of the different student associations of our school/campus
- To be able to see the information of an association (*Name, Acronym, Logo/Image of the association, Description of the association, Constitution of its Office*)
- Possibility to put associations as "Favorites"
- To be able, as a member of the office of an association, to modify the information of an association and to be able to delete it
- Possibility of making a request to the school for the creation of an association (and possibility of adding other contributors to the association: President, Vice-President, Treasurer, etc.)
- Possibility, as a member of the office of an association, to modify a message previously sent (*Title, Message, Logo/Image, Type of message (event/communication), Date and Time of event*) or to to delete
- The possibility as a student to show his participation in an event (limited places or not)
- The possibility as a member of the office of an association to see the list of participants in this event created and published by this same association
- Notifications and reminders (depending on the user's choice)
- Comment and reaction space (*type Like Facebook* - WARNING about the GDPR standard (European standard))

<!--
- Possibilité de connection a des comptes ayant des droits différents : Compte d'Aministration, Compte de Professeur et Compte d'Étudiants (& Compte d'Association)
- Avoir la possibilité de voir toutes les informations de son école (membres de l'administration, liste et adresses de tous les campus, contacts utiles et cas d'utilisation, etc)
- Avoir un fil d'actualités (*affichage des différents posts de l'administration et des associations dans l'ordre "du plus récent au plus ancien"*) avec la possibilité de filtrer "Message de l'école",  "Messages de toutes les associations" et "Message de mes associations favorites" mais aussi par "Tags" affiliés à chacun des messages.
- Possibilité de regarder un seul et unique message
- Possibilité de publication dans le fil d'actualités (*publier des posts au nom de son association en remplissant différents champs*) régit par un système de "tags" permettant de catégorisé le message envoyé - les posts peuvent être des simples messages de communication, des évènements, des sondages (ou autre à definir).
- Avoir un listing des différentes associations étudiantes de notre école/campus
- Pouvoir voir les informations d'une association (*Nom, Sigle, Logo/Image de l'association, Description de l'association, Constitution de son Bureau*)
- Possibilité de mettre des associations en tant que "Favorites"
- Pouvoir, en tant que membre du bureau d'une association, modifier les informations d'une association et pouvoir la supprimer
- Possibilité de faire une demande auprès de l'école pour la création d'une association (et possibilité de rajouter d'autres contributeurs à l'association : Président, Vice-Président, Trésorier, etc)
- Possibilité, en tant que membre du bureau d'une association, de modifier un message précédemment envoyé (*Titre, Message, Logo/Image, Type de message (évènement/communication), Date et Heure d'évènement*) ou de le supprimer
- La possibilité en tant qu'étudiant de montrer sa participation à un événement (places limités ou non) 
- La possibilité en tant que membre du bureau d'une association de voir la liste des participant à cet événement créé et publié par cette même association
- Notifications et rappels (en fonctions du choix de l'utilisateur)
- Espace commentaire et réaction (*type Like Facebook* - WARNING à propos de la norme RGPD (norme Européenne))
-->



-------------------------------------



<a name="current-status-project"></a>
## Current Status of the Project :
The project begins a new cycle. 
We have already set up this project in different languages (Kotlin and Swift for example), but we begin it again in order to add new functionalities: mainly to add the possibility of seeing our application on a web browser, to be able to make some data- analysis of each message (number of impressions, number of participants in an event, possibility of conducting surveys, etc.) and to be able to make marks/grading management for professors (some others features are comming with these too).



-------------------------------------



<a name="features"></a>
## Features :
###### 1. [Features for the First Release](#features-1st-release)
###### 2. [Other Features for Later](#other-features)



<a name="features-1st-release"></a>
### Features for the 1st Release :
- Sign-in / Sign-up (login) / Sign-out (logout) with educationnal email
- Create a "set new password" view (with an email send when pressed)
- Create a student account (choose its year-of-promotion, specialization, campus, etc...)
- Create a view for modify every informations given when the account was created
- Students have access to their own class-schedule
- Students have access to the class-schedule of the other promotions in the same campus as there are
- Students have access to the free classroom schedule
- Receive a notification if there is a change in the schedule
- Create a deadline (linked maybe with others student if the deadline is common to the whole groupe)
- Create a navigation drawer
- Create a "Contact Us" view (before and after the connexion on the application)



<a name="other-features"></a>
### Other Features for Later :
#### The priority of each of its features is marked in brackets ().
...



-------------------------------------



<a name="dev-team"></a>
## Developer Team :
  - [![Linkedin Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/hugo-bonansea-a284ba18a/) ← M. BONANSEA Hugo,
  - [![Linkedin Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/maxime-chardon-4b9846183/) ← M. CHARDON Maxime,
  - [![Linkedin Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/quentin-lecomte-542234162/) ← M. LECOMTE Quentin,
  - [![Linkedin Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/julien-leplat/) ← M. LEPLAT Julien,
  - [![Linkedin Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mael-longefay-guinand/) ← M. LONGEFAY-GUINAND Mael,
  - [![Linkedin Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/antoine-bazire-2b7454233/) ← M. BAZIRE Antoine (Trainee : 2022 June-September)



-------------------------------------
-------------------------------------



## License
***© COPYRIGHT 2022 - All Rights Reserved - 2.SE! Corp***  
