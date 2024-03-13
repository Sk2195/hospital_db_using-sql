USE Hospital

/* Creating a database */
CREATE DATABASE [Hospital]

GO
CREATE TABLE [dbo].[admissions](
	[patient_id] [int] NOT NULL,
	[admission_date] [date] NULL,
	[discharge_date] [date] NULL,
	[diagnosis] [nvarchar](50) NULL,
	[attending_doctor_id] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[doctors](
	[doctor_id] [int] NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[specialty] [nvarchar](50) NULL,
 CONSTRAINT [PK_doctors] PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[patients](
	[patient_id] [int] NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[gender] [char](1) NULL,
	[birth_date] [date] NULL,
	[city] [nvarchar](50) NULL,
	[province_id] [char](2) NULL,
	[allergies] [nvarchar](50) NULL,
	[height] [int] NULL,
	[weight] [int] NULL,
 CONSTRAINT [PK_patients] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[province_names](
	[province_id] [char](2) NOT NULL,
	[province_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_province_names] PRIMARY KEY CLUSTERED 
(
	[province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (1, CAST(N'2018-11-06' AS Date), CAST(N'2018-11-08' AS Date), N'Ovarian Dermoid-Cyct', 21)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (1, CAST(N'2018-09-20' AS Date), CAST(N'2018-09-20' AS Date), N'Ineffective Breathin Pattern R/T Fluid Accumulatio', 24)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (3, CAST(N'2019-01-24' AS Date), CAST(N'2019-01-29' AS Date), N'Cardiac Arrest', 2)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (3, CAST(N'2018-10-21' AS Date), CAST(N'2018-10-27' AS Date), N'Congestive Heart Failure', 8)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (6, CAST(N'2018-06-13' AS Date), CAST(N'2018-06-15' AS Date), N'Asthma Exacerbation', 3)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (6, CAST(N'2018-11-08' AS Date), CAST(N'2018-11-09' AS Date), N'Uterine Fibroid', 22)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (7, CAST(N'2018-06-24' AS Date), CAST(N'2018-07-03' AS Date), N'Cancer', 8)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (8, CAST(N'2018-09-18' AS Date), CAST(N'2018-09-21' AS Date), N'Amigima', 6)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (9, CAST(N'2019-03-02' AS Date), CAST(N'2019-03-09' AS Date), N'Osteoarthritis', 8)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (9, CAST(N'2018-12-31' AS Date), CAST(N'2018-12-31' AS Date), N'Ruptured Appendicitis', 19)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (10, CAST(N'2018-12-30' AS Date), CAST(N'2019-01-05' AS Date), N'Zenkers Diverticulitis', 14)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (10, CAST(N'2019-02-27' AS Date), CAST(N'2019-02-27' AS Date), N'Lower Quadrant Pain', 27)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (11, CAST(N'2018-12-14' AS Date), CAST(N'2018-12-16' AS Date), N'Prostatectomy', 15)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (12, CAST(N'2019-04-27' AS Date), CAST(N'2019-05-04' AS Date), N'Cerebral Aneurysm Rupture', 21)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (13, CAST(N'2019-04-28' AS Date), CAST(N'2019-05-01' AS Date), N'Renal Failure', 1)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (15, CAST(N'2018-10-01' AS Date), CAST(N'2018-10-05' AS Date), N'Hiatal Hernia', 5)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (16, CAST(N'2019-01-10' AS Date), CAST(N'2019-01-14' AS Date), N'Pyloric Obstruction', 6)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (16, CAST(N'2019-04-04' AS Date), CAST(N'2019-04-13' AS Date), N'Schizophrenic Disorder', 12)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (17, CAST(N'2019-03-04' AS Date), CAST(N'2019-03-04' AS Date), N'Diabetes Mellitus', 9)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (17, CAST(N'2018-12-12' AS Date), CAST(N'2018-12-14' AS Date), N'Fractured Femur', 2)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (18, CAST(N'2018-07-02' AS Date), CAST(N'2018-07-05' AS Date), N'Spinal Infection', 3)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (18, CAST(N'2019-04-25' AS Date), CAST(N'2019-05-04' AS Date), N'40 Weeks Pregnant', 10)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (20, CAST(N'2019-01-30' AS Date), CAST(N'2019-02-04' AS Date), N'Essential Hypertension', 15)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (21, CAST(N'2018-06-07' AS Date), CAST(N'2018-06-10' AS Date), N'Exploratory, Orthoscopic - Knee', 12)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (21, CAST(N'2018-11-19' AS Date), CAST(N'2018-11-27' AS Date), N'Emphysema', 12)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (22, CAST(N'2018-07-17' AS Date), CAST(N'2018-07-20' AS Date), N'Pregnancy', 8)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (22, CAST(N'2018-11-04' AS Date), CAST(N'2018-11-07' AS Date), N'Congestive Heart Failure', 13)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (23, CAST(N'2019-04-07' AS Date), CAST(N'2019-04-15' AS Date), N'Ca. Of Blatter', 26)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (23, CAST(N'2019-01-18' AS Date), CAST(N'2019-01-22' AS Date), N'Enlarged Bunion On Left Primary Metaarsal', 4)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (24, CAST(N'2019-03-18' AS Date), CAST(N'2019-03-22' AS Date), N'Bipolar Affective Disorder', 21)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (24, CAST(N'2019-05-04' AS Date), CAST(N'2019-05-10' AS Date), N'Anterior MI', 1)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (27, CAST(N'2018-09-10' AS Date), CAST(N'2018-09-12' AS Date), N'Amigima', 12)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (28, CAST(N'2019-03-30' AS Date), CAST(N'2019-03-30' AS Date), N'Cancer Of The Stomach', 26)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (29, CAST(N'2019-01-12' AS Date), CAST(N'2019-01-14' AS Date), N'Anterior MI', 4)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (31, CAST(N'2018-09-26' AS Date), CAST(N'2018-09-26' AS Date), N'Cardiovascular Disease', 19)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (32, CAST(N'2019-05-18' AS Date), CAST(N'2019-05-23' AS Date), N'Stroke (CVA)', 22)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (32, CAST(N'2018-10-02' AS Date), CAST(N'2018-10-11' AS Date), N'Stomache Pain', 12)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (33, CAST(N'2019-05-31' AS Date), CAST(N'2019-06-01' AS Date), N'Myocardial Infarction', 14)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (34, CAST(N'2018-12-06' AS Date), CAST(N'2018-12-07' AS Date), N'Bladder Tomour', 11)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (34, CAST(N'2018-12-24' AS Date), CAST(N'2018-12-26' AS Date), N'Fracture Right Distal Radius (Colles Fracture)', 17)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (35, CAST(N'2018-11-29' AS Date), CAST(N'2018-12-02' AS Date), N'Myocardial Infarction', 7)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (35, CAST(N'2019-06-05' AS Date), CAST(N'1971-01-05' AS Date), N'Possible Renal Calculi', 8)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (36, CAST(N'2019-05-08' AS Date), CAST(N'2019-05-12' AS Date), N'Lung Cancer (Rt. Lung)', 20)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (37, CAST(N'2019-03-09' AS Date), CAST(N'2019-03-18' AS Date), N'Basal Skull Fracture', 27)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (37, CAST(N'2018-11-08' AS Date), CAST(N'2018-11-10' AS Date), N'Rt. Nephrectomy', 3)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (38, CAST(N'2018-11-25' AS Date), CAST(N'2018-11-27' AS Date), N'Chronic Obstructive Pulmonary Disease', 6)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (39, CAST(N'2019-03-13' AS Date), CAST(N'2019-03-22' AS Date), N'Fibroids', 12)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (39, CAST(N'2019-01-17' AS Date), CAST(N'2019-01-18' AS Date), N'Peptic Ulcer', 12)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (40, CAST(N'2018-12-03' AS Date), CAST(N'2018-12-04' AS Date), N'Appendicitis', 13)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (40, CAST(N'2018-09-04' AS Date), CAST(N'2018-09-12' AS Date), N'Spinal Compresion', 5)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (41, CAST(N'2018-06-13' AS Date), CAST(N'2018-06-21' AS Date), N'Chest Pain', 20)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (45, CAST(N'2018-11-15' AS Date), CAST(N'2018-11-23' AS Date), N'Post Partum Hemmorage', 6)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (46, CAST(N'2019-01-01' AS Date), CAST(N'2019-01-06' AS Date), N'Caeserian Section', 15)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (46, CAST(N'2018-06-08' AS Date), CAST(N'2018-06-16' AS Date), N'Severe Substernal Pain Radiating To Left Shoulder', 22)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (47, CAST(N'2019-02-02' AS Date), CAST(N'2019-02-08' AS Date), N'Appendicitis', 3)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (48, CAST(N'2018-08-15' AS Date), CAST(N'2018-08-18' AS Date), N'Pneumonia', 11)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (49, CAST(N'2018-06-24' AS Date), CAST(N'2018-06-30' AS Date), N'Unable To Void.', 7)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (51, CAST(N'2018-07-16' AS Date), CAST(N'2018-07-18' AS Date), N'Undiagnosed Chest Pain', 1)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (51, CAST(N'2018-11-05' AS Date), CAST(N'2018-11-11' AS Date), N'Hysterectomy', 14)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (52, CAST(N'2019-05-10' AS Date), CAST(N'2019-05-14' AS Date), N'Prostatectomy', 14)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (53, CAST(N'2018-10-24' AS Date), CAST(N'2018-10-24' AS Date), N'Urinary Tract Infection', 8)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (53, CAST(N'2018-11-17' AS Date), CAST(N'2018-11-22' AS Date), N'Pyelonephritis', 2)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (54, CAST(N'2018-10-31' AS Date), CAST(N'2018-11-03' AS Date), N'Diabetes', 21)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (54, CAST(N'2019-04-07' AS Date), CAST(N'2019-04-07' AS Date), N'Hypertension', 21)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (56, CAST(N'2018-12-11' AS Date), CAST(N'2018-12-13' AS Date), N'Abdominal Perineal Resection', 25)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (56, CAST(N'2018-10-07' AS Date), CAST(N'2018-10-16' AS Date), N'Cardiovascular Disease', 26)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (58, CAST(N'2018-11-12' AS Date), CAST(N'2018-11-15' AS Date), N'Cardiovascular Disease', 14)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (59, CAST(N'2018-11-08' AS Date), CAST(N'2018-11-15' AS Date), N'Birth By Caeserian Section', 18)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (60, CAST(N'2018-09-12' AS Date), CAST(N'2018-09-13' AS Date), N'Impaired Gas Exchange', 2)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (60, CAST(N'2019-03-17' AS Date), CAST(N'2019-03-18' AS Date), N'Kock Pouch Urinary Diversion', 25)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (61, CAST(N'2018-09-02' AS Date), CAST(N'2018-09-05' AS Date), N'Cva (Left) - Cerebral Vascular Accident (Stroke)', 20)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (61, CAST(N'2018-11-16' AS Date), CAST(N'2018-11-19' AS Date), N'Chronic Bronchitis', 16)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (62, CAST(N'2018-10-15' AS Date), CAST(N'2018-10-19' AS Date), N'Manic Depression', 14)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (62, CAST(N'2018-12-11' AS Date), CAST(N'2018-12-16' AS Date), N'Rheumataoid Arthritis', 2)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (63, CAST(N'2018-08-28' AS Date), CAST(N'2018-08-31' AS Date), N'Really Sick', 21)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (64, CAST(N'2019-05-05' AS Date), CAST(N'2019-05-14' AS Date), N'Unable To Void.', 17)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (66, CAST(N'2019-05-10' AS Date), CAST(N'2019-05-14' AS Date), N'Diabetes Mellitus', 17)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (67, CAST(N'2018-10-20' AS Date), CAST(N'2018-10-29' AS Date), N'Pregnancy', 15)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (67, CAST(N'2019-02-09' AS Date), CAST(N'2019-02-15' AS Date), N'Ovarian Cancer', 21)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (68, CAST(N'2018-12-02' AS Date), CAST(N'2018-12-07' AS Date), N'Diabetes Mellitus', 12)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (68, CAST(N'2018-11-05' AS Date), CAST(N'2018-11-09' AS Date), N'Pregnancy', 11)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (69, CAST(N'2019-05-02' AS Date), CAST(N'2019-05-08' AS Date), N'Asthma', 12)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (70, CAST(N'2018-07-17' AS Date), CAST(N'2018-07-17' AS Date), N'Migraine', 20)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (71, CAST(N'2018-08-07' AS Date), CAST(N'2018-08-11' AS Date), N'Post Partum Hemmorage', 10)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (71, CAST(N'2018-11-21' AS Date), CAST(N'2018-11-27' AS Date), N'Bronchiolitis', 20)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (73, CAST(N'2019-01-24' AS Date), CAST(N'2019-01-27' AS Date), N'Ovarian Cancer', 6)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (73, CAST(N'2019-03-09' AS Date), CAST(N'2019-03-15' AS Date), N'Lung Cancer', 17)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (74, CAST(N'2018-11-04' AS Date), CAST(N'2018-11-06' AS Date), N'Fractured Right Femur (Compound)', 25)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (75, CAST(N'2018-10-13' AS Date), CAST(N'2018-10-22' AS Date), N'Headache', 7)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (76, CAST(N'2018-09-25' AS Date), CAST(N'2018-10-03' AS Date), N'Appendicitis', 11)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (76, CAST(N'2019-01-12' AS Date), CAST(N'2019-01-20' AS Date), N'Pain In Abdomen Left Side', 23)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (77, CAST(N'2018-06-18' AS Date), CAST(N'2018-06-26' AS Date), N'Head Injury M.V.A.', 18)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (77, CAST(N'2018-10-25' AS Date), CAST(N'2018-11-02' AS Date), N'Asthma', 2)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (78, CAST(N'2018-06-17' AS Date), CAST(N'2018-06-17' AS Date), N'Hypertension', 17)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (79, CAST(N'2019-02-19' AS Date), CAST(N'2019-02-22' AS Date), N'Hypertension', 10)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (79, CAST(N'2019-02-28' AS Date), CAST(N'2019-03-05' AS Date), N'3rd Degree Burn', 27)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (81, CAST(N'2018-12-07' AS Date), CAST(N'2018-12-11' AS Date), N'Angina Pectoris', 27)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (81, CAST(N'2019-04-27' AS Date), CAST(N'2019-05-03' AS Date), N'Repair Stab Wound', 22)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (82, CAST(N'2019-01-06' AS Date), CAST(N'2019-01-07' AS Date), N'L4-Lf Spinal Fusion', 9)
GO
INSERT [dbo].[admissions] ([patient_id], [admission_date], [discharge_date], [diagnosis], [attending_doctor_id]) VALUES (83, CAST(N'2019-05-13' AS Date), CAST(N'2019-05-17' AS Date), N'Enlarged Bunion On Left Primary Metaarsal', 26)
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (1, N'Claude', N'Walls', N'Internist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (2, N'Joshua', N'Green', N'Cardiologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (3, N'Miriam', N'Tregre', N'General Surgeon')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (4, N'James', N'Russo', N'Obstetrician/Gynecologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (5, N'Scott', N'Hill', N'Gastroenterologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (6, N'Tasha', N'Phillips', N'Psychiatrist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (7, N'Hazel', N'Patterson', N'Oncologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (8, N'Mickey', N'Duval', N'Pediatrician')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (9, N'Jon', N'Nelson', N'Neurologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (10, N'Monica', N'Singleton', N'Orthopaedic Surgeon')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (11, N'Douglas', N'Brooks', N'Respirologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (12, N'Flora', N'Moore', N'Cardiovascular Surgeon')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (13, N'Angelica', N'Noe', N'Nuclear Medicine')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (14, N'Tyrone', N'Smart', N'Gerontologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (15, N'Marie', N'Brinkman', N'Urologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (16, N'Irene', N'Brooks', N'Gastroenterologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (17, N'Mary', N'Walker', N'Nuclear Medicine')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (18, N'Bobbi', N'Estrada', N'Gerontologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (19, N'Stephanie', N'Cohen', N'Oncologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (20, N'Ralph', N'Wilson', N'General Surgeon')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (21, N'Lisa', N'Cuddy', N'Obstetrician/Gynecologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (22, N'Simon', N'Santiago', N'Cardiologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (23, N'Heather', N'Beck', N'Pediatrician')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (24, N'Jenny', N'Pulaski', N'Neurologist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (25, N'Jeanette', N'Sites', N'Psychiatrist')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (26, N'Larry', N'Miller', N'Cardiovascular Surgeon')
GO
INSERT [dbo].[doctors] ([doctor_id], [first_name], [last_name], [specialty]) VALUES (27, N'Donna', N'Greenwood', N'Respirologist')
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (1, N'Donald', N'Waterfield', N'M', CAST(N'1963-02-12' AS Date), N'Barrie', N'ON', NULL, 156, 65)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (2, N'Mickey', N'Baasha', N'M', CAST(N'1981-05-28' AS Date), N'Dundas', N'ON', N'Sulfa', 185, 76)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (3, N'Jiji', N'Sharma', N'M', CAST(N'1957-09-05' AS Date), N'Hamilton', N'ON', N'Penicillin', 194, 106)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (4, N'Blair', N'Diaz', N'M', CAST(N'1967-01-07' AS Date), N'Hamilton', N'ON', NULL, 191, 104)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (5, N'Charles', N'Wolfe', N'M', CAST(N'2017-11-19' AS Date), N'Orillia', N'ON', N'Penicillin', 47, 10)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (6, N'Sue', N'Falcon', N'F', CAST(N'2017-09-30' AS Date), N'Ajax', N'ON', N'Penicillin', 43, 5)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (7, N'Thomas', N'ONeill', N'M', CAST(N'1993-01-31' AS Date), N'Burlington', N'ON', NULL, 180, 117)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (8, N'Sonny', N'Beckett', N'M', CAST(N'1952-12-11' AS Date), N'Port Hawkesbury', N'NS', NULL, 174, 105)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (9, N'Sister', N'Spitzer', N'F', CAST(N'1966-10-15' AS Date), N'Toronto', N'ON', N'Penicillin', 173, 95)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (10, N'Cedric', N'Coltrane', N'M', CAST(N'1961-11-10' AS Date), N'Toronto', N'ON', NULL, 157, 61)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (11, N'Hank', N'Spencer', N'M', CAST(N'1969-08-10' AS Date), N'Peterborough', N'ON', NULL, 158, 74)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (12, N'Sara', N'di Marco', N'F', CAST(N'1949-04-29' AS Date), N'Hamilton', N'ON', NULL, 145, 46)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (13, N'Daphne', N'Seabright', N'F', CAST(N'1954-11-18' AS Date), N'Ancaster', N'ON', N'Codeine', 146, 77)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (14, N'Rick', N'Bennett', N'M', CAST(N'1977-01-27' AS Date), N'Ancaster', N'ON', N'Penicillin', 220, 95)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (15, N'Amy', N'Leela', N'F', CAST(N'1977-06-25' AS Date), N'Hamilton', N'ON', NULL, 172, 72)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (16, N'Woody', N'Bashir', N'M', CAST(N'1951-11-15' AS Date), N'Barrie', N'ON', N'Penicillin', 153, 59)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (17, N'Tom', N'Halliwell', N'M', CAST(N'1987-08-01' AS Date), N'Hamilton', N'ON', N'Ragweed', 179, 114)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (18, N'Rachel', N'Winterbourne', N'F', CAST(N'1966-04-26' AS Date), N'Hamilton', N'ON', NULL, 163, 95)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (19, N'John', N'West', N'M', CAST(N'1961-06-19' AS Date), N'Oakville', N'ON', NULL, 138, 61)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (20, N'Jon', N'Doggett', N'M', CAST(N'1951-12-25' AS Date), N'Hamilton', N'ON', NULL, 194, 116)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (21, N'Angel', N'Edwards', N'F', CAST(N'1975-08-22' AS Date), N'Brantford', N'ON', NULL, 176, 106)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (22, N'Brodie', N'Beck', N'F', CAST(N'1975-08-01' AS Date), N'Carlisle', N'ON', NULL, 157, 66)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (23, N'Beanie', N'Foster', N'F', CAST(N'1998-11-22' AS Date), N'Ancaster', N'ON', N'Sulfa', 154, 75)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (24, N'Nino', N'Andrews', N'M', CAST(N'2001-04-21' AS Date), N'Hamilton', N'ON', N'Peanuts', 186, 85)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (25, N'John', N'Farley', N'M', CAST(N'1956-09-12' AS Date), N'Hamilton', N'ON', N'Gluten', 213, 104)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (26, N'Nea', N'Kobayakawa', N'F', CAST(N'1995-10-18' AS Date), N'Toronto', N'ON', NULL, 147, 62)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (27, N'Laura', N'Halliwell', N'F', CAST(N'1964-11-26' AS Date), N'Brantford', N'ON', NULL, 146, 76)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (28, N'Lucille', N'Maureen', N'F', CAST(N'1953-08-22' AS Date), N'Hamilton', N'ON', NULL, 184, 87)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (29, N'Jim', N'Thomas', N'M', CAST(N'1986-02-17' AS Date), N'Ottawa', N'ON', N'Penicillin', 173, 70)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (30, N'Roderick', N'Payne', N'M', CAST(N'2015-03-22' AS Date), N'Halifax', N'NS', NULL, 58, 17)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (31, N'Sam', N'Threep', N'M', CAST(N'1982-06-16' AS Date), N'Hamilton', N'ON', N'Sulpha', 199, 141)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (32, N'Bertha', N'Crowley', N'F', CAST(N'2009-03-14' AS Date), N'Delhi', N'ON', NULL, 125, 39)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (33, N'Roland', N'Edge', N'M', CAST(N'1967-09-25' AS Date), N'Brantford', N'ON', N'Peanut Oil', 199, 134)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (34, N'Don', N'Wiggum', N'M', CAST(N'2002-11-15' AS Date), N'Hamilton', N'ON', NULL, 189, 91)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (35, N'Anthony', N'Maxwell', N'M', CAST(N'2011-02-11' AS Date), N'Oakville', N'ON', NULL, 92, 37)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (36, N'James', N'Sullivan', N'M', CAST(N'1974-01-25' AS Date), N'Delhi', N'ON', N'Topical Anaesthesia', 139, 68)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (37, N'Anne', N'Marlowe', N'F', CAST(N'1996-09-17' AS Date), N'Pickering', N'ON', NULL, 165, 88)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (38, N'Kelly', N'Hamilton', N'F', CAST(N'2010-09-29' AS Date), N'Stoney Creek', N'ON', N'Penicillin', 84, 36)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (39, N'Charles', N'Andonuts', N'M', CAST(N'2016-05-20' AS Date), N'Hamilton', N'ON', NULL, 62, 15)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (40, N'Temple', N'Russert', N'F', CAST(N'1953-05-11' AS Date), N'Hamilton', N'ON', N'Hay Fever', 166, 102)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (41, N'Don', N'Edwards', N'M', CAST(N'1975-07-02' AS Date), N'Hamilton', N'ON', NULL, 215, 118)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (42, N'Alice', N'Donovan', N'F', CAST(N'1949-06-27' AS Date), N'Hamilton', N'ON', N'Penicillin', 167, 54)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (43, N'Stone', N'Cutting', N'M', CAST(N'2010-09-24' AS Date), N'Hamilton', N'ON', N'Codeine', 110, 42)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (44, N'Neil', N'Allan', N'M', CAST(N'1975-02-02' AS Date), N'Cambridge', N'ON', N'Penicillin', 203, 123)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (45, N'Cross', N'Gordon', N'M', CAST(N'2009-03-20' AS Date), N'Ancaster', N'ON', NULL, 125, 53)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (46, N'Phoebe', N'Bigelow', N'F', CAST(N'2002-03-17' AS Date), N'Thunder Bay', N'ON', N'Penicillin', 183, 64)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (47, N'Harry', N'Kuramitsu', N'M', CAST(N'1979-12-03' AS Date), N'Hamilton', N'ON', NULL, 215, 95)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (48, N'Gary', N'Ramotswe', N'M', CAST(N'1977-07-31' AS Date), N'Hamilton', N'ON', NULL, 178, 101)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (49, N'Phil', N'Chester', N'M', CAST(N'1990-09-25' AS Date), N'Hamilton', N'ON', N'Penicillin', 199, 112)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (50, N'Phil', N'Beckett', N'M', CAST(N'2014-10-11' AS Date), N'Ottawa', N'ON', NULL, 83, 26)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (51, N'Gala', N'Littlefield', N'F', CAST(N'2009-06-20' AS Date), N'Brantford', N'ON', NULL, 112, 41)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (52, N'Gregory', N'James', N'M', CAST(N'1986-08-17' AS Date), N'Hamilton', N'ON', NULL, 195, 135)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (53, N'Bruno', N'Wolfe', N'M', CAST(N'1998-01-15' AS Date), N'Ottawa', N'ON', N'Sulfa', 145, 70)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (54, N'Molly', N'Jackson', N'F', CAST(N'1985-05-04' AS Date), N'Carlisle', N'ON', NULL, 159, 48)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (55, N'Rose', N'Spellman', N'F', CAST(N'1957-05-31' AS Date), N'Hamilton', N'ON', NULL, 164, 59)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (56, N'Will', N'Manu', N'M', CAST(N'1960-08-25' AS Date), N'Burlington', N'ON', NULL, 154, 69)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (57, N'Woody', N'Riviera', N'M', CAST(N'1990-07-10' AS Date), N'Kingston', N'ON', N'Penicillin', 192, 109)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (58, N'Georgette', N'Gallagher', N'F', CAST(N'1975-12-06' AS Date), N'Elmira', N'ON', N'Ragweed', 170, 93)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (59, N'Rocky', N'Donahue', N'M', CAST(N'1953-04-16' AS Date), N'Hamilton', N'ON', NULL, 190, 110)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (60, N'Roland', N'Murphy', N'M', CAST(N'1974-05-19' AS Date), N'Hamilton', N'ON', N'Sulfa Drugs', 153, 71)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (61, N'Mary', N'Spellman', N'F', CAST(N'1988-03-08' AS Date), N'Stoney Creek', N'ON', NULL, 178, 92)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (62, N'Shiro', N'Whale', N'M', CAST(N'1995-01-16' AS Date), N'Hamilton', N'ON', N'Penicillin', 195, 117)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (63, N'Calleigh', N'Dean', N'F', CAST(N'2003-07-06' AS Date), N'Hamilton', N'ON', N'Penicillin', 175, 56)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (64, N'Didi', N'Dean', N'F', CAST(N'1957-11-13' AS Date), N'Milton', N'ON', NULL, 182, 110)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (65, N'Haiku', N'Alpert', N'M', CAST(N'2014-08-05' AS Date), N'Paris', N'ON', N'Penicillin', 69, 22)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (66, N'Joseph', N'Justin', N'M', CAST(N'1953-10-21' AS Date), N'Toronto', N'ON', N'Penicillin', 140, 71)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (67, N'Catherine', N'Minoru', N'F', CAST(N'1997-02-25' AS Date), N'Victoria', N'BC', N'Sulphur', 184, 100)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (68, N'Danny', N'Hardbroom', N'M', CAST(N'1985-05-11' AS Date), N'Niagara Falls', N'ON', N'Penicillin', 183, 105)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (69, N'Lily', N'Crusher', N'F', CAST(N'1954-03-17' AS Date), N'Burlington', N'ON', NULL, 185, 82)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (70, N'Billy', N'Jones', N'M', CAST(N'2013-09-26' AS Date), N'Hamilton', N'ON', NULL, 85, 29)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (71, N'Vicki', N'Babbling', N'F', CAST(N'2003-08-10' AS Date), N'Stoney Creek', N'ON', NULL, 180, 64)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (72, N'Lily', N'Vargas', N'F', CAST(N'1923-05-02' AS Date), N'Hamilton', N'ON', N'Codeine', 195, 102)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (73, N'Agatha', N'Sawyer', N'F', CAST(N'1991-02-21' AS Date), N'Ancaster', N'ON', N'Penicillin', 155, 83)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (74, N'Temple', N'Marlowe', N'F', CAST(N'1982-02-01' AS Date), N'Hamilton', N'ON', NULL, 135, 65)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (75, N'Kazuki', N'Ranall', N'M', CAST(N'1989-04-19' AS Date), N'Hamilton', N'ON', N'Penicillin', 139, 63)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (76, N'Jackie', N'Lovegood', N'F', CAST(N'1983-07-05' AS Date), N'Hamilton', N'ON', NULL, 157, 56)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (77, N'Mike', N'Mars', N'M', CAST(N'2009-07-15' AS Date), N'Hamilton', N'ON', N'Penicillin', 123, 46)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (78, N'Natsumi', N'Weasley', N'F', CAST(N'1950-08-19' AS Date), N'Thunder Bay', N'ON', N'Valporic Acid', 157, 66)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (79, N'Reginald', N'Jackson', N'M', CAST(N'1966-08-06' AS Date), N'Toronto', N'ON', N'Penicillin', 182, 101)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (80, N'Ernest', N'Clarkson', N'M', CAST(N'1962-11-22' AS Date), N'Hamilton', N'ON', NULL, 163, 66)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (81, N'Gytha', N'Banzai', N'F', CAST(N'2001-08-22' AS Date), N'Hamilton', N'ON', NULL, 182, 75)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (82, N'Matt', N'Goergen', N'M', CAST(N'1990-03-26' AS Date), N'Hamilton', N'ON', N'Penicillin', 130, 66)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (83, N'Nick', N'Walker', N'M', CAST(N'1969-07-16' AS Date), N'Hamilton', N'ON', NULL, 164, 77)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (84, N'Jen', N'Jacobs', N'F', CAST(N'1962-12-02' AS Date), N'Hamilton', N'ON', NULL, 156, 79)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (85, N'Phoebe', N'Bell', N'F', CAST(N'1975-05-06' AS Date), N'Hepworth', N'ON', N'Micropore Tape', 169, 115)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (86, N'Ann', N'Blocksberg', N'F', CAST(N'1996-09-05' AS Date), N'Hamilton', N'ON', N'Penicillin', 162, 101)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (87, N'Frank', N'Capone', N'M', CAST(N'2004-02-15' AS Date), N'Hamilton', N'ON', NULL, 166, 65)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (88, N'Caroline', N'Smart', N'F', CAST(N'1963-04-07' AS Date), N'Hamilton', N'ON', NULL, 145, 64)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (89, N'Sam', N'Spratt', N'M', CAST(N'1983-09-23' AS Date), N'Hamilton', N'ON', NULL, 195, 100)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (90, N'Prue', N'Cleever', N'F', CAST(N'1983-09-19' AS Date), N'Odessa', N'ON', N'Sulfa Drugs', 149, 119)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (91, N'Zoe', N'Miller', N'F', CAST(N'1951-12-12' AS Date), N'Hamilton', N'ON', N'Honey', 184, 103)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (92, N'Mendy', N'Strate', N'M', CAST(N'1956-03-29' AS Date), N'Stoney Creek', N'ON', NULL, 206, 111)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (93, N'Delores', N'Bones', N'F', CAST(N'2006-07-19' AS Date), N'Hamilton', N'ON', NULL, 154, 50)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (94, N'Hal', N'Riviera', N'M', CAST(N'1965-04-02' AS Date), N'Kingston', N'ON', N'Tylenol', 194, 110)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (95, N'Gene', N'Edwards', N'M', CAST(N'1965-06-06' AS Date), N'Hamilton', N'ON', N'Sulphate', 199, 96)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (96, N'Jonny', N'Christian', N'M', CAST(N'2003-06-26' AS Date), N'Kingston', N'ON', NULL, 182, 77)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (97, N'Emmett', N'Erin', N'M', CAST(N'2011-04-27' AS Date), N'Hamilton', N'ON', N'Penicillin', 126, 39)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (98, N'Harry', N'Soprano', N'M', CAST(N'2014-06-18' AS Date), N'Beamsville', N'ON', NULL, 85, 26)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (99, N'Richard', N'Davis', N'M', CAST(N'1971-08-03' AS Date), N'Toronto', N'ON', NULL, 148, 75)
GO
INSERT [dbo].[patients] ([patient_id], [first_name], [last_name], [gender], [birth_date], [city], [province_id], [allergies], [height], [weight]) VALUES (100, N'Olwyn', N'Chino', N'M', CAST(N'1978-09-03' AS Date), N'Hamilton', N'ON', N'Tetracycline', 146, 70)
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'AB', N'Alberta')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'BC', N'British Columbia')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'MB', N'Manitoba')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'NB', N'New Brunswick')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'NL', N'Newfoundland and Labrador')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'NS', N'Nova Scotia')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'NT', N'Northwest Territories')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'NU', N'Nunavut')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'ON', N'Ontario')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'PE', N'Prince Edward Island')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'QC', N'Quebec')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'SK', N'Saskatchewan')
GO
INSERT [dbo].[province_names] ([province_id], [province_name]) VALUES (N'YT', N'Yukon')
GO
ALTER TABLE [dbo].[admissions]  WITH CHECK ADD  CONSTRAINT [FK_admissions_doctors] FOREIGN KEY([attending_doctor_id])
REFERENCES [dbo].[doctors] ([doctor_id])
GO
ALTER TABLE [dbo].[admissions] CHECK CONSTRAINT [FK_admissions_doctors]
GO
ALTER TABLE [dbo].[patients]  WITH CHECK ADD  CONSTRAINT [FK_patients_province_names] FOREIGN KEY([province_id])
REFERENCES [dbo].[province_names] ([province_id])
GO
ALTER TABLE [dbo].[patients] CHECK CONSTRAINT [FK_patients_province_names]
GO
USE [Hospital]
GO
ALTER DATABASE [Hospital] SET  READ_WRITE 
GO


