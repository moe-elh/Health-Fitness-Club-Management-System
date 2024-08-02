
-----------------------------------------INSERT QUERIES-----------------------------------------
INSERT INTO MEMBER_REGISTRATION (username, email, passwords, first_name, last_name, gender, date_of_birth)
VALUES
  ('moe1', 'moe@carleton.com', 'password1', 'Moe', 'El', 'Male', '1990-01-01'),
  ('naya2', 'naya@carleton.com', 'password2', 'Naya', 'Mod', 'Female', '1985-05-15'),
  ('osama3', 'osama@carleton.com', 'password3', 'Osama', 'Olq', 'Male', '1985-05-15');
--select * from MEMBER_REGISTRATION;

INSERT INTO MEMBER_PROFILE (address, contact, username)
VALUES 
  ('123 Main St', '123-456-7890', 'moe1'),
  ('456 Oak Ave', '987-654-3210', 'naya2'),
  ('789 Bank St', '123-674-7890', 'osama3');
--select * from MEMBER_PROFILE;

  
INSERT INTO FITNESSGOAL (Fitness_goal, weight_goal, muscle, fat, member_id)
VALUES
  ('Gain Muscle', 180, 140, 30, 1),
  ('Get Toned', 140, 120, 20, 2),
  ('Gain Strenght', 200, 160, 40, 3);
--select * from FITNESSGOAL;

INSERT INTO HEALTH_METRICS (med, weight, height, member_id)
VALUES
  ('anti biotics', 140, 178, 1),
  ('heartburn meds', 120,166 , 2),
  ('cough syrup', 140, 175, 3);
--select * from HEALTH_METRICS;

INSERT INTO DASHBOARD (loyaltypoints, member_id) 
VALUES 
	(1000, 1),
	(605, 2),
	(500, 3);
--select * from DASHBOARD;

INSERT INTO FITNESS_ACHIEVEMENT (weight_achieved, muscle_achieved, fat_achieved, fitness_goal_achieved, dashboardID) 
VALUES 
	(150, 7, 10,'bigger arm muscle', 1),
	(132, 5, 10,'toned up', 2),
	(176, 6, 10,'went up 1 plate on pr', 3);
--select * from FITNESS_ACHIEVEMENT;

INSERT INTO EXERCISE_ROUTINE (EDate, exerciseType, dashboardID) 
VALUES 
	('2023-12-09', 'PULL', 1),
	('2023-12-09', 'LEGS', 2),
	('2023-12-09', 'PUSH', 3);
--select * from EXERCISE_ROUTINE;

INSERT INTO HEALTH_STATS (health_Stat, current_weight, current_height, dashboardID)
VALUES 
	('NORMAL', 150, 178.5, 1),
	('UNDERWEIGHT', 120, 167, 2),
	('OBESE', 160, 176, 3);
--select * from HEALTH_STATS;


INSERT INTO TRAINER (first_name, last_name, gender) 
VALUES
	('Zaher', 'Kabob', 'Male'),
	('Badr', 'Mango', 'Male'),
	('Kristy', 'Jesus', 'Female');
	('Layla', 'Sayah', 'Female');
--select * from TRAINER;

INSERT INTO PERSONAL_TRAINING_SESSIONS (trainer_id, amount, cost_per_sessions, duration, number_sessions)
VALUES
	(1, 50, 10, '1 week', 5),
	(2, 150, 50, '3 days', 3),
	(3, 200, 10, '1 month', 20),
	(4, 300, 50, '1 week', 6);
--select * from PERSONAL_TRAINING_SESSIONS

INSERT INTO SESSIONS (status, club_name, sTime, sDate, duration, sLocation, TRAINING_SESSION_ID,dashboardID) 
VALUES
	('scheduled','Lansdown Gym', '10:00:00', CURRENT_DATE, '2 hours', '192 Lansdown Road', 1,1),
	('cancelled','Queens Gym', '09:00:00', '2023-12-09', '45 minutes','20 Queens Way', 2,2),
	('rescheduled','Rideau Gym', '22:00:00', '2023-12-12', '4 hours', '55 Rideau Street', 3,3),
	('scheduled','Rideau Gym', '20:00:00', '2023-12-13', '60 minutes', '55 Rideau Street', 4,2);
--select * from SESSIONS;
	
INSERT INTO NOTES (note, training_date, trainer_id, dashboardID) 
VALUES 
	('form is good needs more help with sets', '2023-10-07', 2, 1);
--select * from NOTES


INSERT INTO ADMINISTRATION (email, first_name, last_name, department, phone) 
VALUES 
	('admin1@meowers.kw', 'John', 'Smith', 'Management department', '613-111-1111'),
	('admin2@meowers.kw', 'Yusuf', 'Jamal', 'Service department', '613-222-2222'),
	('admin3@meowers.kw', 'Joseph', 'Anderson', 'Finance department', '613-333-3333');
--select * from ADMINISTRATION;

INSERT INTO LOYALITY_PROGRAM(points, reward_type, admin_id)
VALUES 
	(1000, 'free month', 3),
	(200, 'free merchandise', 3),
	(100, 'free event', 3);
--select * from LOYALITY_PROGRAM;


INSERT INTO REDEMPTION (points_used, reward_status, date_reward,programID,member_id) 
VALUES 
	(1000, 'Not Used', '2023-12-08', 1,1),
	(200, 'Used', '2023-11-15', 2,3),
	(100, 'Used', '2023-09-08', 3,2);
--select * from REDEMPTION;


INSERT INTO BILLINGS (points_earned, transaction_date, amount, transaction_Type, ADMIN_ID, member_id) 
VALUES 
	(250, '2023-10-10', 50, 'membership payment', 3, 1),
	(500, '2023-10-15', 100, 'personal training payment', 3, 1),
	(250, '2023-09-10', 50, 'membership payment', 3, 1),
	(100, '2023-09-05', 20, 'event payment', 3, 2),
	(200, '2023-09-07', 40, 'membership payment', 3, 3),
	(200, '2023-12-07', 40, 'membership payment', 3, 3);

--select * from BILLINGS;


INSERT INTO MANAGE_ROOMS (room_status, capacity, last_cleaned, room_repair, ADMIN_ID) 
VALUES 
	('booked', 200, '2023-12-08', 'no repairs needed', 1),
	('available', 50, '2023-12-08', 'door handle loose', 1),
	('available', 500, CURRENT_DATE, 'no repairs needed', 1);
	
--select * from MANAGE_ROOMS;


INSERT INTO MONITOR_GYM (last_serviced, repairs_requried, maintaince_status, ADMIN_ID) 
VALUES 
	('2023-07-05', 'no repairs needed', 'cleaned', 2),
	('2022-01-25', 'bolt needs to be tightened', 'cleaned', 2);
--select * from MONITOR_GYM;

---------------------------------------------DONE POPULATING DATABASE----------------------------------------------------





-----------------------MEMBER RESCHEDULING OF TRAINING SESSION------------------------------
Update SESSIONS SET status = 'rescheduled'
where status = 'scheduled' AND dashboardid = 2 AND sdate = '2023-12-13';
		--usually dashboardid is enough, however if member has more then 1 session booked we can
		-- filter by the date also, if they have more then 1 session on same day we can add more details
----------------------------------------------------------------------------------------------------




---------------MEMBER USES THEIR REWARD----------------
UPDATE REDEMPTION SET reward_status = 'Used'
WHERE redemptionid = 1;
--------------------------------------------------------



---------------------ADMINISTRATION WANT TO HOST ANNUAL GYM EVENT--------------------------
-- DETAILS: NEED A GOOD SERVICED ROOM THAT CAN HOLD A TOTAL OF 200+ MEMBERS

select roomnumber from MANAGE_ROOMS where room_status = 'available' AND capacity > 200 
AND last_cleaned = CURRENT_DATE AND room_repair = 'no repairs needed';

update MANAGE_ROOMS 
SET room_status ='booked'
WHERE roomnumber = 3;
--------------------------------------------------------------------------------------------



----------admin gets all members who have not yet paid this months membership----------
select username from member_profile where username NOT IN
( select username from billings 
join member_profile 
on billings.member_id = Member_profile.member_id 
where transaction_type = 'membership payment' AND 
((CURRENT_DATE - transaction_date) < 30) );
----------------------------------------------------------------------------------------



--------------------------member 3 redeems reward for free merchandise--------------------------------------
update DASHBOARD SET loyaltypoints = loyaltypoints- (select points from LOYALITY_PROGRAM where programid =2)
where member_id =3;

INSERT INTO REDEMPTION (points_used, reward_status, date_reward,programID,member_id) 
VALUES (200, 'Not Used', CURRENT_DATE, 2,3);
------------------------------------------------------------------------------------------------------------


---------------------------trainer writes notes after session-----------------------------
INSERT INTO NOTES (note, training_date, trainer_id, dashboardID) 
VALUES ('good with basics, will need a meal prep for high protein',CURRENT_DATE , 1, 1);

delete from SESSIONS where session_id = 1;
------------------------------------------------------------------------------------------



--member 1 weight increased by 10 pounts, he updates it in profile health
update HEALTH_METRICS set weight = weight+10 where member_id =1;

update FITNESS_ACHIEVEMENT set 
weight_achieved = weight_achieved+10,
muscle_achieved = muscle_achieved+5,
fat_achieved = fat_achieved +5
where dashboardID =1;

update HEALTH_STATS set current_weight = current_weight+10;
--------------------------------------------------------------------------