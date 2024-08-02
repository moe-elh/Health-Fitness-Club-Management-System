# Health-Fitness-Club-Management-System


## Members
| Student name  | ID number |
| ------------- | ------------- |
| Osamah ALQahtaini | 101179283  |
| Mohamad ELhreich  | 101212579  |
|  Naya ALmoudareys  | 101173126 | 


## Table of Contents 
- [Files](#Files) 
- [ER diagram file](#ER) 
- [Conversion Database Structures file](#ConversionDatabaseStructures)
- [Normalization](#Normalization)
- [Database diagram final output](#Database_diagram_finalOutput) 
- [DDL.sql](#DDL)
- [queirs.sql](#queirs) 



## <a name = "Files" ></a>Files
This file contains:





1.  ConversionDatabaseStructures.jpg
2.  ER_diagram.jpg
3.  ormalization.pdf
4.  Database_diagram_finalOutput.jpg
5.  DDL.sql
6.  Sql.sql
7.  README.txt



## <a name = "ER diagram file" ></a>ER
In ER_diagram file:
In this file we have created the entity relationship diagram for our database, explains the relationship 
among the tables:

The relationship between the entities:

MEMBER_REGISTRATION and MEMBER_PROFILE: total/total because they depend on each other if the member register, 
the member must have an account and it’s 1:1 because each registered member must have 1 profile.

MEMBER_PROFILE and FITNESSGOAL: MEMBER_PROFILE to FITNESSGOAL is partial because members can have a profile 
without setting FITNESSGOAL, but FITNESSGOAL to MEMBER_PROFILE is total because members can’t set FITNESSGOAL 
without having a profile. And it’s 1:1 each member can set 1 FITNESSGOAL and each FITNESSGOAL can be in 1 
MEMBER_PROFILE.

MEMBER_PROFILE and HEALTH_METRICS: MEMBER_PROFILE to HEALTH_METRICS is partial because members can have a 
profile without setting HEALTH_METRICS, but HEALTH_METRICS to MEMBER_PROFILE is total because members can’t 
set HEALTH_METRICS without having a profile. And it’s 1:1 each member can set 1 HEALTH_METRICS and each 
HEALTH_METRICS can be in 1 MEMBER_PROFILE.


MEMBER_PROFILE and DASHBOARD: total/total because the depend on each other if the member wants DASHBOARD, 
then the member must have a profile and it’s 1:1 because each registered member must have 1 profile.

DASHBOARD and FITNESS_ACHIEVEMENT: DASHBOARD to FITNESS_ACHIEVEMENT is partial because members can have a 
DASHBOARD without setting FITNESS_ACHIEVEMENT, but FITNESS_ACHIEVEMENT to DASHBOARD is total because members 
can’t set FITNESS_ACHIEVEMENT without having a DASHBOARD. And it’s 1:1 each member can set 1 
FITNESS_ACHIEVEMENT and each FITNESS_ACHIEVEMENT can be in 1 DASHBOARD.

DASHBOARD and EXERCISE_ROUTINE: DASHBOARD to EXERCISE_ROUTINE is partial because members can have a DASHBOARD 
without setting EXERCISE_ROUTINE, but EXERCISE_ROUTINE to DASHBOARD is total because members can’t set 
EXERCISE_ROUTINE without having a DASHBOARD. And it’s 1:1 each member can set 1 EXERCISE_ROUTINE and each 
EXERCISE_ROUTINE can be in 1 DASHBOARD.

DASHBOARD and HEALTH_STATS: DASHBOARD to HEALTH_STATS is partial because members can have a DASHBOARD without 
setting HEALTH_STATS, but HEALTH_STATS to DASHBOARD is total because members can’t set HEALTH_STATS without 
having a DASHBOARD. And it’s 1:1 each member can set 1 HEALTH_STATS and each HEALTH_STATS can be in 1 
DASHBOARD.

DASHBOARD and BOOKED_EVENTS: DASHBOARD to BOOKED_EVENTS is total because a member can’t register in an event 
without having a DASHBOARD, and BOOKED_EVENTS to DASHBOARD is partial because members can skip registering in 
an event and still have a DASBOARD. It’s many:many because members can register in many events and many 
events can have many members.

DASHBOARD and SESSIONS: DASHBOARD to SESSIONS is total because a member can’t register in a session without 
having a DASHBOARD, and SESSIONS to DASHBOARD is total because members can’t register in a SESSION without 
having a DASBOARD. It’s many:many because members can register in many sessions and many sessions can have 
many members.

DASHBOARD and notes: DASHBOARD to notes is partial because members can have a DASHBOARD without having notes, 
and notes to DAHSBOARD is total because members can’t have notes without having a dashboard. It’s 1:many 
because each member can have many notes, but each note is assigned to one member.

Notes to trainer is total/total because each trainer must write notes and each note must be written by a 
trainer. It’s many:many because each note can be written by several trainers and each trainer can write 
several notes.

Trainer to personal training session: trainer to personal training session is total because personal training 
session can’t be existed without trainers and personal training session to trainers is partial because 
trainers can exist without personal training session. Its 1:many because trainers can have many personal 
training sessions, but each personal training session must have 1 trainer.

SESSIONS and personal training session: sessions to personal training session s partial because because 
personal training session can exist without any member registered in them, personal training session to 
sessions is total because members can’t register in session without having it in personal training session.  
Its many:many because members can have many sessions and sessions can have many personal training sessions.

BOOKED_EVENTS and EVENT: BOOKED_EVENTS to events is partial because events can exist without being booked but 
events to BOOKED_EVENTS is total you can’t book event without having it in events, it’s many:many because 
many events can be booked and there are many events can exist in booked. 

Events and ADMINISTRATION: it’s total/partial because events can’t exist without ADMINISTRATION, but 
ADMINISTRATION can exist without events. It’s many:many because many ADMINISTRATION can control many events 
and many events can be controlled by many ADMINISTRATION

ADMINISTRATION and MANAGE_ROOMS: is total/partial because MANAGE_ROOMS can’t exist without ADMINISTRATION and 
ADMINISTRATION can exist without MANAGE_ROOMS. It’s many to many because many MANAGE_ROOMS can be managed by 
many ADMINISTRATIONs and many ADMINISTRATIONS can control many MANAGE_ROOMS.

ADMINISTRATION and MONITOR_GYM: is total/partial because MONITOR_GYM can’t exist without ADMINISTRATION and 
ADMINISTRATION can exist without MONITOR_GYM. It’s many:many because many MONITOR_GYM can be managed by many 
ADMINISTRATIONs and many ADMINISTRATIONS can control many MONITOR_GYM.

ADMINISTRATION and LOYALITY_PROGRAM: total/partial because ADMINISTRATION can exist without LOYALITY_PROGRAML 
and LOYALITY_PROGRAML can’t exist without ADMINISTRATION. It’s 1:many because ADMINISTRATORS control many 
LOYALITY_PROGRAML and LOYALITY_PROGRAML controlled by one ADMINISTRATORS.

ADMINISTRATION and BILLINGS: total/partial because ADMINISTRATION can exist without BILLINGS and BILLINGS 
can’t exist without ADMINISTRATION. It’s 1:many because ADMINISTRATORS control many BILLINGS and BILLINGS 
controlled by one ADMINISTRATORS.

REDEMPTION and LOYALITY_PROGRAM: total/partial because REDEMPTION can’t exist without LOYALITY_PROGRAM and 
LOYALITY_PROGRAM can exist without REDEMPTION. It’s 1:1 because each REDEMPTION has one LOYALITY_PROGRAM and 
each LOYALITY_PROGRAM has 1 redeem to the member.

DASHBOARD and BILLINGS: total/partial because DASHBOARD can exist without BILLINGS but BILLINGS can’t exist 
without DASHBOARD. It’s 1:many because each Billing is assigned to 1 member “DASHBOARD” and members can have 
many BILLINGs for register, renewal and booking. 

DASHBOARD and REDEMPTION: partial /partial because REDEMPTION can exist without DASHBOARD and DASHBOARD can 
exist without REDEMPTION. It’s many:many because members can have many points to redeem and redeem can have 
many members. 



## <a name = "Conversion Database Structures file" ></a>ConversionDatabaseStructures
In ConversionDatabaseStructures file:
    In Conversion the database diagram, at first, we had to revise our ER model and the attributes of each 
entity. We started by creating a table for each entity and list all of the attributes. After that we had to 
connect those table to show their connection.



## <a name = "Normalization file" ></a>Normalization
In Normalization file:
    At the start, we were creating the tables and populating them with attributes. We had to check if any of 
our variables are multi values or a composite value. After that was done, we were able to confirm that we 
were at 1NF. Our next step was to check if all the attributes will be defined with our primary key and only 
with it. Once that was done, we were able to confirm that we are in 2nf and if we weren’t we had to 
decomposition the data to get it into 2NF. Finally, we had to check if there were transitive dependency. We 
did that by listing our attributes and seeing if there is any dependency between them , and if there was, we 
decomposed it by creating a new table  thus it became 3NF.



## <a name = "Database diagram final output file" ></a>Database_diagram_finalOutput
In Database_diagram_finalOutput file:
    When it came to the Database Diagram after the Normalization, we had to check what tables were created 
while we did the normalization to add them to our data base diagram. After that we had to add those tables 
with  their attributes and connect them to present the relationship that’s between the new tables and the 
original tables that we had.



## <a name = "DDL" ></a>DDL
In DDL file:
    at the beginning, we had to understand the requirement and identify the tables , attributes with their 
data types and the relationship between them. Then we broke down the requirements into sections to clearly 
identify the tables that are required. In order to create the table correctly, we had to identify the 
relationship among them in order to place them in the right order. 
    In this file you can see that we have created 20 tables for the whole Health and Fitness Club database 
system. From registering the members to assign trainers to manage the gym through the administration.



## <a name = "queirs" ></a>queirs.sql
In queirs file:
    In this file we have made queries “insert, select, and update” to sign up members and let them enjoy the 
gyms features also assign trainers and admins in the gym and we gave them their values, then we selected 
values and updated some to test the tables and the database system, also, to show you our system and how it 
works.
