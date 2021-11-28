create table dbo.[test_patients](
	[id] [int] identity(1,1) not null,
	[firstname] [varchar](50) not null,
	[lastname] [varchar](50) not null,
	[address] [varchar](50) not null,
	[city] [varchar](50) not null,
	PRIMARY KEY(id)
);
create table dbo.test_medical_trajectory
(
	id int identity(1,1) not null,
	test_patients_id int not null FOREIGN KEY REFERENCES test_patients(id),
	PRIMARY KEY(id)
);
create table [dbo].[test_treatment_categories](
	[id] [int] not null,
	[name] [varchar](256) not null,
	[rank] smallint not null,
	PRIMARY KEY(id)
);
create table [dbo].[test_treatment_subcategories](
	[id] [int] not null,
	[name] [varchar](256) not null,
	fk_test_treatment_category_id int not null FOREIGN KEY REFERENCES test_treatment_categories(id),
	[rank] smallint not null,
	PRIMARY KEY(id)
);
create table dbo.test_activities(
	id int identity(1,1) not null,
	name varchar(256) not null,
	price float not null,
	fk_test_treatment_subcategories_id int not null FOREIGN KEY REFERENCES test_treatment_subcategories(id),
	PRIMARY KEY(id)
);
create table dbo.test_trajectory_detail(
	fk_test_medical_trajectory_id int not null FOREIGN KEY REFERENCES test_medical_trajectory(id),
	fk_activity_id int not null FOREIGN KEY REFERENCES test_activities(id),
	date_performed date not null
);
