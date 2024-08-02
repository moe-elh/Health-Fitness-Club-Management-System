CREATE TABLE MEMBER_REGISTRATION(
	username varchar(255) primary key,
	email TEXT,
	passwords VARCHAR(225),
	first_name VARCHAR(225),
	last_name VARCHAR(225),
	gender VARCHAR(225),
	date_of_birth VARCHAR(225)
);


CREATE TABLE MEMBER_PROFILE(
	member_id SERIAL PRIMARY KEY,
	address TEXT,
	contact TEXT,
	username varchar(255),
	foreign key(username)references MEMBER_REGISTRATION(username) 
);


CREATE TABLE FITNESSGOAL(
	Fitness_goal_id  SERIAL PRIMARY KEY ,
	Fitness_goal varchar(225),
	weight_goal int,
	muscle int,
	fat int,
	member_id int,
	foreign key(member_id)references MEMBER_PROFILE(member_id) 

);

CREATE TABLE HEALTH_METRICS(
	healthID SERIAL PRIMARY KEY,
	med text,
	weight int,
	height int,
	member_id int,
	foreign key(member_id)references MEMBER_PROFILE(member_id) 

);

CREATE TABLE DASHBOARD( 
	dashboardID SERIAL PRIMARY KEY,
	loyaltypoints int,
	member_id int,
	foreign key(member_id)references MEMBER_PROFILE(member_id) 
);

CREATE TABLE FITNESS_ACHIEVEMENT(
	fitnessID SERIAL PRIMARY KEY,
	weight_achieved int,
	muscle_achieved int,
	fat_achieved int,
	fitness_goal_achieved varchar(225),
	dashboardID int,
	foreign key(dashboardID)references DASHBOARD(dashboardID) 
);

CREATE TABLE EXERCISE_ROUTINE(
	routineid SERIAL PRIMARY KEY,
	EDate DATE,
	exerciseType varchar(225),
	dashboardID int,
	foreign key(dashboardID)references DASHBOARD(dashboardID) 

);


CREATE TABLE HEALTH_STATS( 
	health_Stat_id  SERIAL PRIMARY KEY,
	health_Stat varchar(225),
	current_weight int,
	current_height int,
	dashboardID int,
	foreign key(dashboardID)references DASHBOARD(dashboardID) 
);

CREATE TABLE TRAINER(
	trainer_id SERIAL PRIMARY KEY,
	first_name varchar(225),
	last_name varchar(225),
	gender varchar(225)
);

CREATE TABLE PERSONAL_TRAINING_SESSIONS(  
	TRAINING_SESSION_ID SERIAL PRIMARY KEY,
	trainer_id int,
	amount int,
	cost_per_sessions int,
	duration text,
	number_sessions int,
	foreign key(trainer_id)references TRAINER(trainer_id) 
);

CREATE TABLE SESSIONS(
	SESSION_id SERIAL PRIMARY KEY,
	status varchar(225),
	club_name varchar(225),
	sTime TIME,
	sDate date,
	duration text,
	sLocation text,
	TRAINING_SESSION_ID int,
	dashboardID int,
	foreign key(TRAINING_SESSION_ID)references PERSONAL_TRAINING_SESSIONS(TRAINING_SESSION_ID),
	foreign key(dashboardID)references DASHBOARD(dashboardID) 
);

CREATE TABLE NOTES( 
	noteID SERIAL PRIMARY KEY,
	note text,
	training_date date,
	trainer_id int,
	dashboardID int,
	foreign key(trainer_id)references TRAINER(trainer_id),
	foreign key(dashboardID)references DASHBOARD(dashboardID) 
);

CREATE TABLE ADMINISTRATION(
	ADMIN_ID SERIAL PRIMARY KEY,
	email text,
	first_name varchar(225),
	last_name varchar(225),
	department varchar(225),
	phone text
);

CREATE TABLE EVENTS( 
	event_id SERIAL PRIMARY KEY,
	type_of_event varchar(225),
	instructor varchar(225),
	status text,
	amount int,
	dashboardID int,
	foreign key(ADMIN_ID)references ADMINISTRATION(ADMIN_ID)
);

CREATE TABLE BOOKED_EVENTS(
	booking_id SERIAL PRIMARY KEY,
	club_name varchar(225),
	BEDate DATE,
	BETime TIME,
	BELocation varchar(225),
	event_id int,
	foreign key(event_id)references EVENTS(event_id),
	foreign key(dashboardID)references DASHBOARD(dashboardID) 
);

CREATE TABLE LOYALITY_PROGRAM(
	programID SERIAL PRIMARY KEY, 
	points int, 
	reward_type TEXT,
	admin_id int,
	foreign key(admin_id)references Administration(admin_id)
);

CREATE TABLE REDEMPTION(
	redemptionID SERIAL PRIMARY KEY, 
	points_used int, 
	reward_status text,
	date_reward DATE,
	programID int,
	member_id int,
	foreign key(dashboardID)references DASHBOARD(dashboardID),
	foreign key(programID)references LOYALITY_PROGRAM(programID)
);


CREATE TABLE BILLINGS( 
	transactionID SERIAL PRIMARY KEY,
	points_earned int,
	transaction_date DATE,
	amount int,
	transaction_Type TEXT,
	ADMIN_ID int,
	member_id int,
	foreign key(ADMIN_ID)references ADMINISTRATION(ADMIN_ID),
	foreign key(dashboardID)references DASHBOARD(dashboardID)
);

CREATE TABLE MANAGE_ROOMS(
 	roomNumber SERIAL PRIMARY KEY,
	room_status varchar(225),
	capacity int,
	last_cleaned DATE,
	room_repair TEXT,
	ADMIN_ID int,
	foreign key(ADMIN_ID)references ADMINISTRATION(ADMIN_ID) 
);

CREATE TABLE MONITOR_GYM(
	equipmentID SERIAL PRIMARY KEY,
	last_serviced DATE,
	repairs_requried TEXT,
	maintaince_status VARCHAR,
	ADMIN_ID int,
	foreign key(ADMIN_ID)references ADMINISTRATION(ADMIN_ID) 
);
