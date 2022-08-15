SET IDENTITY_INSERT [dbo].[UserRoles] ON 
GO
INSERT [dbo].[UserRoles] ([UserRoleID], [UserRole]) VALUES (1, N'Athlethe')
GO
INSERT [dbo].[UserRoles] ([UserRoleID], [UserRole]) VALUES (2, N'Judge')
GO
INSERT [dbo].[UserRoles] ([UserRoleID], [UserRole]) VALUES (3, N'Admin - Operator')
GO
INSERT [dbo].[UserRoles] ([UserRoleID], [UserRole]) VALUES (4, N'Admin - Management')
GO
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[SystemUsers] ON 
GO
INSERT [dbo].[SystemUsers] ([SystemUserID], [SystemUserName], [UserRoleID], [SystemUserEmail], [SystemUserContactNumber]) VALUES (1, N'Noelle Martin', 4, N'Noelle.martin@crossfit.com', N'0871234567')
GO
INSERT [dbo].[SystemUsers] ([SystemUserID], [SystemUserName], [UserRoleID], [SystemUserEmail], [SystemUserContactNumber]) VALUES (2, N'Patrick Martin', 4, N'Patrick.martin@crossfit.com', N'')
GO
INSERT [dbo].[SystemUsers] ([SystemUserID], [SystemUserName], [UserRoleID], [SystemUserEmail], [SystemUserContactNumber]) VALUES (3, N'Liam McDyer', 3, NULL, NULL)
GO
INSERT [dbo].[SystemUsers] ([SystemUserID], [SystemUserName], [UserRoleID], [SystemUserEmail], [SystemUserContactNumber]) VALUES (4, N'Admin User', 4, N'AdminUser@crossfit.com', N'')
GO
INSERT [dbo].[SystemUsers] ([SystemUserID], [SystemUserName], [UserRoleID], [SystemUserEmail], [SystemUserContactNumber]) VALUES (5, N'Johnathon Murray', 3, N'Johnathon@crossfit.com', N'0879855748')
GO
INSERT [dbo].[SystemUsers] ([SystemUserID], [SystemUserName], [UserRoleID], [SystemUserEmail], [SystemUserContactNumber]) VALUES (6, N'Enya Browne', 3, N'Enya@crossfit.com', N'0879855748')
GO
INSERT [dbo].[SystemUsers] ([SystemUserID], [SystemUserName], [UserRoleID], [SystemUserEmail], [SystemUserContactNumber]) VALUES (7, N'Michelle Foley', 4, N'michelle@crossfit.com', N'0879855748')
GO
SET IDENTITY_INSERT [dbo].[SystemUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[SystemUserLogons] ON 
GO
INSERT [dbo].[SystemUserLogons] ([SystemUserLogonID], [SystemUserID], [LoginDate], [LogoutDate]) VALUES (1, 1, CAST(N'2022-08-11T17:05:00.540' AS DateTime), NULL)
GO
INSERT [dbo].[SystemUserLogons] ([SystemUserLogonID], [SystemUserID], [LoginDate], [LogoutDate]) VALUES (2, 1, CAST(N'2022-08-13T14:46:11.163' AS DateTime), NULL)
GO
INSERT [dbo].[SystemUserLogons] ([SystemUserLogonID], [SystemUserID], [LoginDate], [LogoutDate]) VALUES (3, 1, CAST(N'2022-08-13T19:32:04.930' AS DateTime), NULL)
GO
INSERT [dbo].[SystemUserLogons] ([SystemUserLogonID], [SystemUserID], [LoginDate], [LogoutDate]) VALUES (4, 1, CAST(N'2022-08-15T17:29:02.497' AS DateTime), NULL)
GO
INSERT [dbo].[SystemUserLogons] ([SystemUserLogonID], [SystemUserID], [LoginDate], [LogoutDate]) VALUES (5, 1, CAST(N'2022-08-15T17:46:17.700' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[SystemUserLogons] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (1, N'IE ', N'Ireland')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (2, N'NI', N'Northern Ireland')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (3, N'GB', N'Scotland')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (4, N'GB', N'England')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (5, N'GB', N'Wales')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (6, N'US', N'United States of America')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (7, N'BR', N'Brazil')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (8, N'NZ', N'New Zealand')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (9, N'IS', N'Iceland')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (10, N'CN', N'Canada')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (11, N'AU', N'Australia ???? ')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (12, N'ES', N'Spain')
GO
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (2, N'Emma ', N'McQuaid', 1, 0, 1, N'a60f877a-1067-4804-8ca6-6d15a6739152', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (3, N'Noelle Martin', N'Martin', 1, 0, 1, N'9860d4ff-1759-459b-8cba-2e5d872213b4', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (4, N'Annie', N'Thorisdottir', 1, 0, 9, N'dde6bfac-b63c-48a0-ba7f-6f5eee5890a2', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (5, N'Patrick ', N'Vellner', 1, 0, 10, N'47045e36-9957-40fb-9074-17f70a15bb90', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (6, N'Siobhan ', N'Tomey', 1, 0, 1, N'dbe45b94-99dd-4a5c-becb-97d0b826bcda', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (7, N'Michelle ', N'Fleming', 1, 0, 1, N'8f8420fa-8532-4337-9352-d5428efa0d62', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (8, N'Paul', N'O''Rourke', 1, 0, 1, N'554d81e3-841f-43b8-bc6b-cc9aabb21cc7', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (9, N'Kara', N'Saunders', 1, 0, 11, N'9ce37447-d639-4185-9a1a-afde3855700d', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (10, N'Sam', N'Steward', 1, 0, 1, N'305b4b15-a552-48b2-bd28-da3390ce6fea', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (11, N'Katrin Tanya ', N'Davidsdottir', 1, 0, 9, N'a5b2c101-5d1b-4392-9b3b-81070cb907b4', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (10013, N'Wellie', NULL, 1, 0, 1, N'53afbf0c-6183-4fc1-bdfd-449928e16257', N'wellie@crossfit.com')
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey], [EmailAddress]) VALUES (10015, N'nowellnowater', NULL, 1, 0, 1, N'5bcda554-19a6-46d7-85d6-d84d95339d10', N'NoWellNoWater')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserBenchmarks] ON 
GO
INSERT [dbo].[UserBenchmarks] ([UserBenchmarkID], [UserID], [Snatch], [Fran], [Grace], [Sprint400m], [Deadlift], [Filthy50], [Helen], [Run5k], [Clean], [FightGoneBad], [Squat], [MaxPullUps], [Measurement]) VALUES (1, 2, CAST(86.00 AS Decimal(6, 2)), CAST(2.17 AS Decimal(6, 2)), CAST(1.17 AS Decimal(6, 2)), CAST(1.09 AS Decimal(6, 2)), CAST(170.00 AS Decimal(6, 2)), NULL, NULL, NULL, CAST(110.00 AS Decimal(6, 2)), NULL, CAST(125.00 AS Decimal(6, 2)), CAST(60.00 AS Decimal(6, 2)), N'Metric')
GO
INSERT [dbo].[UserBenchmarks] ([UserBenchmarkID], [UserID], [Snatch], [Fran], [Grace], [Sprint400m], [Deadlift], [Filthy50], [Helen], [Run5k], [Clean], [FightGoneBad], [Squat], [MaxPullUps], [Measurement]) VALUES (2, 3, CAST(45.00 AS Decimal(6, 2)), NULL, NULL, NULL, CAST(100.00 AS Decimal(6, 2)), NULL, NULL, CAST(45.00 AS Decimal(6, 2)), CAST(38.00 AS Decimal(6, 2)), NULL, CAST(90.00 AS Decimal(6, 2)), NULL, N'Metric')
GO
INSERT [dbo].[UserBenchmarks] ([UserBenchmarkID], [UserID], [Snatch], [Fran], [Grace], [Sprint400m], [Deadlift], [Filthy50], [Helen], [Run5k], [Clean], [FightGoneBad], [Squat], [MaxPullUps], [Measurement]) VALUES (3, 4, CAST(92.00 AS Decimal(6, 2)), CAST(2.37 AS Decimal(6, 2)), CAST(1.20 AS Decimal(6, 2)), CAST(107.00 AS Decimal(6, 2)), CAST(170.00 AS Decimal(6, 2)), CAST(15.07 AS Decimal(6, 2)), NULL, NULL, CAST(108.00 AS Decimal(6, 2)), CAST(460.00 AS Decimal(6, 2)), CAST(125.00 AS Decimal(6, 2)), CAST(80.00 AS Decimal(6, 2)), N'Metric')
GO
INSERT [dbo].[UserBenchmarks] ([UserBenchmarkID], [UserID], [Snatch], [Fran], [Grace], [Sprint400m], [Deadlift], [Filthy50], [Helen], [Run5k], [Clean], [FightGoneBad], [Squat], [MaxPullUps], [Measurement]) VALUES (4, 5, CAST(285.00 AS Decimal(6, 2)), CAST(2.14 AS Decimal(6, 2)), CAST(1.17 AS Decimal(6, 2)), CAST(1.06 AS Decimal(6, 2)), CAST(595.00 AS Decimal(6, 2)), CAST(20.16 AS Decimal(6, 2)), CAST(9.46 AS Decimal(6, 2)), CAST(18.50 AS Decimal(6, 2)), CAST(355.00 AS Decimal(6, 2)), CAST(389.00 AS Decimal(6, 2)), CAST(455.00 AS Decimal(6, 2)), CAST(64.00 AS Decimal(6, 2)), N'Imperial')
GO
SET IDENTITY_INSERT [dbo].[UserBenchmarks] OFF
GO
SET IDENTITY_INSERT [dbo].[Affiliates] ON 
GO
INSERT [dbo].[Affiliates] ([AffiliateID], [CountryID], [AffiliateName], [ContactPhone], [ContactEmail], [AffilateAddress]) VALUES (1, 2, N'Boundary CrossFit', N'448458386231', NULL, N'D2, Knockmore Hill Business Parks, 9 Ferguson Dr, Libsurn BT28 2EX, Antrim')
GO
INSERT [dbo].[Affiliates] ([AffiliateID], [CountryID], [AffiliateName], [ContactPhone], [ContactEmail], [AffilateAddress]) VALUES (2, 1, N'CrossFit Sligo', N'0858742555', NULL, N'Finisklin Business Park, Sligo, F91TR72')
GO
INSERT [dbo].[Affiliates] ([AffiliateID], [CountryID], [AffiliateName], [ContactPhone], [ContactEmail], [AffilateAddress]) VALUES (3, 9, N'CrossFit Reykjavik', N'3545619900', NULL, N'Faxafen 12, 108 Reykjavik, Iceland')
GO
INSERT [dbo].[Affiliates] ([AffiliateID], [CountryID], [AffiliateName], [ContactPhone], [ContactEmail], [AffilateAddress]) VALUES (4, 10, N'CrossFit Nanaimo', N'12506675937', NULL, N'2030 Boxwoord, Nanaimo, BC V9S 5W7, Canada')
GO
INSERT [dbo].[Affiliates] ([AffiliateID], [CountryID], [AffiliateName], [ContactPhone], [ContactEmail], [AffilateAddress]) VALUES (5, 6, N'Crossfit Mayham', N'1234567894568', N'', N'601 Rich Froning Way, Cookeville, Tennerssee 38501')
GO
INSERT [dbo].[Affiliates] ([AffiliateID], [CountryID], [AffiliateName], [ContactPhone], [ContactEmail], [AffilateAddress]) VALUES (6, 1, N'Viribus Crossfit', N'0852551100', N'noelle.martin101@gmail.com', N'Smithfield, Dublin 2')
GO
SET IDENTITY_INSERT [dbo].[Affiliates] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName]) VALUES (1, N'Level 1')
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName]) VALUES (2, N'Level 2')
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName]) VALUES (3, N'CCFT Level 3')
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName]) VALUES (4, N'CCFT Level 4')
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName]) VALUES (5, N'Aerobic Capacity')
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName]) VALUES (6, N'Gymnastics')
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName]) VALUES (7, N'Weightlifiting')
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName]) VALUES (8, N'CFT Kids')
GO
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Competitions] ON 
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDescription]) VALUES (1, N'Open')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDescription]) VALUES (2, N'Semi-Finals')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDescription]) VALUES (3, N'Individual Quarter Final')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDescription]) VALUES (4, N'Team Quarter Final')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDescription]) VALUES (5, N'Age Group QuarterFinals')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDescription]) VALUES (6, N'Games')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDescription]) VALUES (7, N'Regionals')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDescription]) VALUES (8, N'Granite Games')
GO
SET IDENTITY_INSERT [dbo].[Competitions] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRegisteredCompetitions] ON 
GO
INSERT [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID], [CompetitionEventID], [UserID], [RegisteredDate], [DivisionID]) VALUES (1, 2, 3, CAST(N'2022-07-31T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID], [CompetitionEventID], [UserID], [RegisteredDate], [DivisionID]) VALUES (2, 2, 2, CAST(N'2022-07-31T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID], [CompetitionEventID], [UserID], [RegisteredDate], [DivisionID]) VALUES (3, 2, 4, CAST(N'2022-07-31T00:00:00.000' AS DateTime), 5)
GO
INSERT [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID], [CompetitionEventID], [UserID], [RegisteredDate], [DivisionID]) VALUES (4, 2, 5, CAST(N'2022-08-01T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID], [CompetitionEventID], [UserID], [RegisteredDate], [DivisionID]) VALUES (5, 2, 6, CAST(N'2022-08-01T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID], [CompetitionEventID], [UserID], [RegisteredDate], [DivisionID]) VALUES (6, 2, 8, CAST(N'2022-08-01T00:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID], [CompetitionEventID], [UserID], [RegisteredDate], [DivisionID]) VALUES (7, 2, 9, CAST(N'2022-08-01T00:00:00.000' AS DateTime), 6)
GO
INSERT [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID], [CompetitionEventID], [UserID], [RegisteredDate], [DivisionID]) VALUES (8, 2, 10, CAST(N'2022-08-01T00:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID], [CompetitionEventID], [UserID], [RegisteredDate], [DivisionID]) VALUES (9, 2, 11, CAST(N'2022-08-01T00:00:00.000' AS DateTime), 3)
GO
SET IDENTITY_INSERT [dbo].[UserRegisteredCompetitions] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfiles] ON 
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (1, 2, CAST(N'1995-08-15T00:00:00.000' AS DateTime), 162, 53, 12, 1, N'Female')
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (2, 3, CAST(N'1985-11-17T00:00:00.000' AS DateTime), 155, 68, 3578, 2, N'Female')
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (3, 4, CAST(N'1982-05-11T00:00:00.000' AS DateTime), 167, 67, 2, 3, N'Female')
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (4, 5, CAST(N'1990-07-14T00:00:00.000' AS DateTime), 180, 88, 5, 4, N'Male')
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (5, 6, NULL, NULL, NULL, NULL, 2, N'Female')
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (6, 7, NULL, NULL, NULL, NULL, 2, N'Female')
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (7, 8, NULL, NULL, NULL, NULL, 2, N'Male')
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (8, 9, CAST(N'1989-09-18T00:00:00.000' AS DateTime), 159, 62, 36, 5, N'Female')
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (9, 10, CAST(N'1993-11-19T00:00:00.000' AS DateTime), 168, 85, 39, 1, N'Male')
GO
INSERT [dbo].[UserProfiles] ([UserProfileID], [UserID], [DateofBirth], [Height], [Weight], [GlobalRanking], [AffiliateID], [Sex]) VALUES (10, 11, CAST(N'1995-05-26T00:00:00.000' AS DateTime), 163, 59, 10, 4, N'Female')
GO
SET IDENTITY_INSERT [dbo].[UserProfiles] OFF
GO
SET IDENTITY_INSERT [dbo].[UserEventScores] ON 
GO
INSERT [dbo].[UserEventScores] ([UserEventScoreID], [UserRegisteredCompetitionID], [EventWorkoutID], [Score], [SubmittedDate], [VerifiedByID], [VerifiedOn], [TimeStarted], [TimeFinished]) VALUES (1, 1, 2, 198, CAST(N'2022-08-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserEventScores] ([UserEventScoreID], [UserRegisteredCompetitionID], [EventWorkoutID], [Score], [SubmittedDate], [VerifiedByID], [VerifiedOn], [TimeStarted], [TimeFinished]) VALUES (2, 2, 2, 201, CAST(N'2022-08-09T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserEventScores] ([UserEventScoreID], [UserRegisteredCompetitionID], [EventWorkoutID], [Score], [SubmittedDate], [VerifiedByID], [VerifiedOn], [TimeStarted], [TimeFinished]) VALUES (3, 3, 2, 217, CAST(N'2022-08-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserEventScores] ([UserEventScoreID], [UserRegisteredCompetitionID], [EventWorkoutID], [Score], [SubmittedDate], [VerifiedByID], [VerifiedOn], [TimeStarted], [TimeFinished]) VALUES (6, 4, 2, 175, CAST(N'2022-08-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserEventScores] ([UserEventScoreID], [UserRegisteredCompetitionID], [EventWorkoutID], [Score], [SubmittedDate], [VerifiedByID], [VerifiedOn], [TimeStarted], [TimeFinished]) VALUES (7, 5, 2, 194, CAST(N'2022-08-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserEventScores] ([UserEventScoreID], [UserRegisteredCompetitionID], [EventWorkoutID], [Score], [SubmittedDate], [VerifiedByID], [VerifiedOn], [TimeStarted], [TimeFinished]) VALUES (8, 6, 2, 204, CAST(N'2022-08-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserEventScores] ([UserEventScoreID], [UserRegisteredCompetitionID], [EventWorkoutID], [Score], [SubmittedDate], [VerifiedByID], [VerifiedOn], [TimeStarted], [TimeFinished]) VALUES (9, 7, 2, 215, CAST(N'2022-08-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserEventScores] ([UserEventScoreID], [UserRegisteredCompetitionID], [EventWorkoutID], [Score], [SubmittedDate], [VerifiedByID], [VerifiedOn], [TimeStarted], [TimeFinished]) VALUES (10, 8, 2, 247, CAST(N'2022-08-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserEventScores] ([UserEventScoreID], [UserRegisteredCompetitionID], [EventWorkoutID], [Score], [SubmittedDate], [VerifiedByID], [VerifiedOn], [TimeStarted], [TimeFinished]) VALUES (11, 9, 2, 227, CAST(N'2022-08-06T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserEventScores] OFF
GO
SET IDENTITY_INSERT [dbo].[AdaptiveOptions] ON 
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (1, N'Upper Extremity')
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (2, N'Lower Extremity')
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (3, N'Upper Extremity')
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (4, N'Lower Extremity')
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (5, N'Vision')
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (6, N'Short Stature')
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (7, N'Seated (w/hip)')
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (8, N'Seated (w/o hip)')
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (9, N'Intellectual')
GO
INSERT [dbo].[AdaptiveOptions] ([AdaptiveOptionID], [AdaptiveOption]) VALUES (10, N'Test')
GO
SET IDENTITY_INSERT [dbo].[AdaptiveOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[EventLocations] ON 
GO
INSERT [dbo].[EventLocations] ([EventLocationID], [EventLocationDescription]) VALUES (1, N'Not Specified')
GO
INSERT [dbo].[EventLocations] ([EventLocationID], [EventLocationDescription]) VALUES (2, N'Local Affiliate')
GO
INSERT [dbo].[EventLocations] ([EventLocationID], [EventLocationDescription]) VALUES (3, N'The Ranch')
GO
INSERT [dbo].[EventLocations] ([EventLocationID], [EventLocationDescription]) VALUES (4, N'Manchester FTIC')
GO
INSERT [dbo].[EventLocations] ([EventLocationID], [EventLocationDescription]) VALUES (5, N'Leicester FITC')
GO
INSERT [dbo].[EventLocations] ([EventLocationID], [EventLocationDescription]) VALUES (6, N'Crossfit BUA, Santy, Dublin')
GO
INSERT [dbo].[EventLocations] ([EventLocationID], [EventLocationDescription]) VALUES (7, N'SDSC Dublin, Harolds Cross, Dublin')
GO
INSERT [dbo].[EventLocations] ([EventLocationID], [EventLocationDescription]) VALUES (8, N'CrossFit Sligo, Finiskilin, Sligo')
GO
SET IDENTITY_INSERT [dbo].[EventLocations] OFF
GO
SET IDENTITY_INSERT [dbo].[Scales] ON 
GO
INSERT [dbo].[Scales] ([ScaleID], [ScaleDescription]) VALUES (1, N'Rx''d')
GO
INSERT [dbo].[Scales] ([ScaleID], [ScaleDescription]) VALUES (2, N'Scaled')
GO
INSERT [dbo].[Scales] ([ScaleID], [ScaleDescription]) VALUES (3, N'Foundations')
GO
INSERT [dbo].[Scales] ([ScaleID], [ScaleDescription]) VALUES (4, N'Adaptive')
GO
SET IDENTITY_INSERT [dbo].[Scales] OFF
GO
SET IDENTITY_INSERT [dbo].[CompetitionEvents] ON 
GO
INSERT [dbo].[CompetitionEvents] ([CompetitionEventID], [CompetitionID], [ScaleID], [NofEvents], [DateOfEvent], [TimeOfLaunch], [LengthOfEvent], [EventLocationID], [AdaptiveOptionID], [IsCompleted]) VALUES (2, 1, 2, 3, CAST(N'2022-01-01' AS Date), CAST(N'18:00:00' AS Time), 21, 1, NULL, 1)
GO
INSERT [dbo].[CompetitionEvents] ([CompetitionEventID], [CompetitionID], [ScaleID], [NofEvents], [DateOfEvent], [TimeOfLaunch], [LengthOfEvent], [EventLocationID], [AdaptiveOptionID], [IsCompleted]) VALUES (3, 2, 1, 5, CAST(N'2022-04-23' AS Date), CAST(N'18:00:00' AS Time), 28, 8, NULL, NULL)
GO
INSERT [dbo].[CompetitionEvents] ([CompetitionEventID], [CompetitionID], [ScaleID], [NofEvents], [DateOfEvent], [TimeOfLaunch], [LengthOfEvent], [EventLocationID], [AdaptiveOptionID], [IsCompleted]) VALUES (4, 1, 1, 3, CAST(N'2022-01-01' AS Date), CAST(N'18:00:00' AS Time), 21, 1, NULL, NULL)
GO
INSERT [dbo].[CompetitionEvents] ([CompetitionEventID], [CompetitionID], [ScaleID], [NofEvents], [DateOfEvent], [TimeOfLaunch], [LengthOfEvent], [EventLocationID], [AdaptiveOptionID], [IsCompleted]) VALUES (5, 1, 3, 3, CAST(N'2022-01-01' AS Date), CAST(N'18:00:00' AS Time), 21, 1, NULL, NULL)
GO
INSERT [dbo].[CompetitionEvents] ([CompetitionEventID], [CompetitionID], [ScaleID], [NofEvents], [DateOfEvent], [TimeOfLaunch], [LengthOfEvent], [EventLocationID], [AdaptiveOptionID], [IsCompleted]) VALUES (6, 7, 1, 5, CAST(N'2022-09-18' AS Date), CAST(N'14:00:00' AS Time), 2, 8, NULL, NULL)
GO
INSERT [dbo].[CompetitionEvents] ([CompetitionEventID], [CompetitionID], [ScaleID], [NofEvents], [DateOfEvent], [TimeOfLaunch], [LengthOfEvent], [EventLocationID], [AdaptiveOptionID], [IsCompleted]) VALUES (7, 1, 4, 3, CAST(N'2022-01-01' AS Date), CAST(N'18:00:00' AS Time), 21, 1, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[CompetitionEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[EventNumbers] ON 
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (1, N'1')
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (2, N'2')
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (3, N'3')
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (4, N'4')
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (5, N'5')
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (6, N'6')
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (7, N'7')
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (8, N'8')
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (9, N'9')
GO
INSERT [dbo].[EventNumbers] ([EventNumberID], [EventNumberDescription]) VALUES (10, N'10')
GO
SET IDENTITY_INSERT [dbo].[EventNumbers] OFF
GO
SET IDENTITY_INSERT [dbo].[ExerciseAreas] ON 
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (1, N'Shoulders')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (2, N'Upper Back')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (3, N'Lower Back')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (4, N'Glutes')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (5, N'Upper Legs')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (6, N'Lower Legs')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (7, N'Upper Arms')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (8, N'Lower Arms')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (9, N'Arms Combination')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (10, N'Legs Combination')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (11, N'Shoulders and Back')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (12, N'Legs and Core')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (13, N'Shoulders and Core')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (14, N'Full Body')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDescription]) VALUES (15, N'Shoulders, Core and Back')
GO
SET IDENTITY_INSERT [dbo].[ExerciseAreas] OFF
GO
SET IDENTITY_INSERT [dbo].[Exercises] ON 
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (1, 12, N'Deadlifts', NULL)
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (2, 11, N'Wall Walks', NULL)
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (3, 14, N'Wall Ball', NULL)
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (4, 15, N'Ski Erg', NULL)
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (5, 15, N'Rower', NULL)
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (6, 14, N'Assault Bike', NULL)
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (7, 5, N'Air Squats', N'Squat with no weights, keep chest up, drive knees out, ')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (8, 5, N'Stationary Lunges', NULL)
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (9, 14, N'Bear Crawl', N'')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (10, 11, N'Handstand Walks', N'')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (11, 13, N'Handstand Push Ups', N'')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (12, 6, N'Calf Raises', N'')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (13, 14, N'Yoke Carry', N'')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseBodyAreaID], [Exercise], [ExerciseDescription]) VALUES (14, 15, N'Front Squat', N'')
GO
SET IDENTITY_INSERT [dbo].[Exercises] OFF
GO
SET IDENTITY_INSERT [dbo].[EventWorkouts] ON 
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (1, 3, 1, 9, 5, 5, 120, N'Run on your hands and feet as fast as possible', N'None')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (2, 2, 1, 6, NULL, 1500, NULL, N'Do 1km on the assault bike as fast as possible', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (3, 2, 1, 1, 5, NULL, NULL, N'Max dead lifts - score is the max weight lifted after 5 attempts', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (4, 2, 2, 7, 150, NULL, NULL, N'', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (5, 2, 2, 10, NULL, 300, NULL, N'', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (6, 2, 3, 3, 150, NULL, NULL, N'', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (7, 2, 3, 2, 15, NULL, NULL, N'', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (8, 4, 1, 13, NULL, 54, NULL, N'Men 556lb , women 485lb', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (9, 4, 1, 14, 2, NULL, NULL, N'Men 315lb, Women 215lb', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (10, 4, 1, 1, 3, NULL, NULL, N'Men 475lb, Women 315lb', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (11, 4, 1, 14, 2, NULL, NULL, N'Men 315lb, Women 215lb', N'')
GO
INSERT [dbo].[EventWorkouts] ([EventWorkoutID], [CompetitionEventID], [EventNumberID], [ExerciseID], [Reps], [DistanceInMeters], [TimeInSeconds], [WorkoutDescription], [SpecialRequirements]) VALUES (12, 4, 1, 13, NULL, 54, NULL, N'Men 556lb , women 485lb', N'All 5 exercises must be completed in order, and in under 4 minutes')
GO
SET IDENTITY_INSERT [dbo].[EventWorkouts] OFF
GO
SET IDENTITY_INSERT [dbo].[CompetitionToDoLists] ON 
GO
INSERT [dbo].[CompetitionToDoLists] ([CompetitionToDoListID], [ListDetails], [RAGStatus], [IsCompleted]) VALUES (1, N'Raise Prize fund', N'G', 1)
GO
INSERT [dbo].[CompetitionToDoLists] ([CompetitionToDoListID], [ListDetails], [RAGStatus], [IsCompleted]) VALUES (2, N'Events 1,2,3,4 Ready ', N'G', 0)
GO
INSERT [dbo].[CompetitionToDoLists] ([CompetitionToDoListID], [ListDetails], [RAGStatus], [IsCompleted]) VALUES (3, N'Team Event 3 - Need to source 25Kg bales', N'A', 0)
GO
INSERT [dbo].[CompetitionToDoLists] ([CompetitionToDoListID], [ListDetails], [RAGStatus], [IsCompleted]) VALUES (4, N'Only 4 WODs Completed', N'R', 0)
GO
INSERT [dbo].[CompetitionToDoLists] ([CompetitionToDoListID], [ListDetails], [RAGStatus], [IsCompleted]) VALUES (5, N'SF Event Location Fell through - need to find new location', N'R', 0)
GO
INSERT [dbo].[CompetitionToDoLists] ([CompetitionToDoListID], [ListDetails], [RAGStatus], [IsCompleted]) VALUES (6, N'Need to add RX''d open event and wods', N'A', 0)
GO
INSERT [dbo].[CompetitionToDoLists] ([CompetitionToDoListID], [ListDetails], [RAGStatus], [IsCompleted]) VALUES (7, N'Design NFT for the Quarter Finals', N'G', 0)
GO
INSERT [dbo].[CompetitionToDoLists] ([CompetitionToDoListID], [ListDetails], [RAGStatus], [IsCompleted]) VALUES (8, N'Design the NFT for the Semi Finals', N'G', 0)
GO
INSERT [dbo].[CompetitionToDoLists] ([CompetitionToDoListID], [ListDetails], [RAGStatus], [IsCompleted]) VALUES (9, N'Design NFT for the Games', N'G', 0)
GO
SET IDENTITY_INSERT [dbo].[CompetitionToDoLists] OFF
GO
SET IDENTITY_INSERT [dbo].[ContractAddresses] ON 
GO
INSERT [dbo].[ContractAddresses] ([ContractAddressID], [ContractName], [ContractAddress], [ContractABI]) VALUES (1, N'GamesAccess', N'0xcc00a1209ec006001819F79A6A90042082880C95', N'[
	{
		"inputs": [],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_approved",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "Approval",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "bool",
				"name": "_approved",
				"type": "bool"
			}
		],
		"name": "ApprovalForAll",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "previousOwner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "newOwner",
				"type": "address"
			}
		],
		"name": "OwnershipTransferred",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "Transfer",
		"type": "event"
	},
	{
		"inputs": [],
		"name": "CANNOT_TRANSFER_TO_ZERO_ADDRESS",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "NOT_CURRENT_OWNER",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_approved",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "approve",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			}
		],
		"name": "balanceOf",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "getApproved",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			}
		],
		"name": "isApprovedForAll",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			},
			{
				"internalType": "string",
				"name": "_uri",
				"type": "string"
			}
		],
		"name": "mint",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "name",
		"outputs": [
			{
				"internalType": "string",
				"name": "_name",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "owner",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "ownerOf",
		"outputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "safeTransferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			},
			{
				"internalType": "bytes",
				"name": "_data",
				"type": "bytes"
			}
		],
		"name": "safeTransferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			},
			{
				"internalType": "bool",
				"name": "_approved",
				"type": "bool"
			}
		],
		"name": "setApprovalForAll",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "bytes4",
				"name": "_interfaceID",
				"type": "bytes4"
			}
		],
		"name": "supportsInterface",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "symbol",
		"outputs": [
			{
				"internalType": "string",
				"name": "_symbol",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "tokenURI",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "transferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_newOwner",
				"type": "address"
			}
		],
		"name": "transferOwnership",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]')
GO
INSERT [dbo].[ContractAddresses] ([ContractAddressID], [ContractName], [ContractAddress], [ContractABI]) VALUES (2, N'QuarterFinalAccess', N'0x037D8DE7c8B8A0201f4e51b0692b71252F361711', N'[
	{
		"inputs": [],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_approved",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "Approval",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "bool",
				"name": "_approved",
				"type": "bool"
			}
		],
		"name": "ApprovalForAll",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "previousOwner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "newOwner",
				"type": "address"
			}
		],
		"name": "OwnershipTransferred",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "Transfer",
		"type": "event"
	},
	{
		"inputs": [],
		"name": "CANNOT_TRANSFER_TO_ZERO_ADDRESS",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "NOT_CURRENT_OWNER",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_approved",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "approve",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			}
		],
		"name": "balanceOf",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "getApproved",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			}
		],
		"name": "isApprovedForAll",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			},
			{
				"internalType": "string",
				"name": "_uri",
				"type": "string"
			}
		],
		"name": "mint",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "name",
		"outputs": [
			{
				"internalType": "string",
				"name": "_name",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "owner",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "ownerOf",
		"outputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "safeTransferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			},
			{
				"internalType": "bytes",
				"name": "_data",
				"type": "bytes"
			}
		],
		"name": "safeTransferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			},
			{
				"internalType": "bool",
				"name": "_approved",
				"type": "bool"
			}
		],
		"name": "setApprovalForAll",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "bytes4",
				"name": "_interfaceID",
				"type": "bytes4"
			}
		],
		"name": "supportsInterface",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "symbol",
		"outputs": [
			{
				"internalType": "string",
				"name": "_symbol",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "tokenURI",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "transferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_newOwner",
				"type": "address"
			}
		],
		"name": "transferOwnership",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]')
GO
INSERT [dbo].[ContractAddresses] ([ContractAddressID], [ContractName], [ContractAddress], [ContractABI]) VALUES (3, N'SemiFinalAccess', N'0xCb23D973D259e2a506b476749B080996033382C7', N'[
	{
		"inputs": [],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_approved",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "Approval",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "bool",
				"name": "_approved",
				"type": "bool"
			}
		],
		"name": "ApprovalForAll",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "previousOwner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "newOwner",
				"type": "address"
			}
		],
		"name": "OwnershipTransferred",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "Transfer",
		"type": "event"
	},
	{
		"inputs": [],
		"name": "CANNOT_TRANSFER_TO_ZERO_ADDRESS",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "NOT_CURRENT_OWNER",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_approved",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "approve",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			}
		],
		"name": "balanceOf",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "getApproved",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			}
		],
		"name": "isApprovedForAll",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			},
			{
				"internalType": "string",
				"name": "_uri",
				"type": "string"
			}
		],
		"name": "mint",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "name",
		"outputs": [
			{
				"internalType": "string",
				"name": "_name",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "owner",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "ownerOf",
		"outputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "safeTransferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			},
			{
				"internalType": "bytes",
				"name": "_data",
				"type": "bytes"
			}
		],
		"name": "safeTransferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			},
			{
				"internalType": "bool",
				"name": "_approved",
				"type": "bool"
			}
		],
		"name": "setApprovalForAll",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "bytes4",
				"name": "_interfaceID",
				"type": "bytes4"
			}
		],
		"name": "supportsInterface",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "symbol",
		"outputs": [
			{
				"internalType": "string",
				"name": "_symbol",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "tokenURI",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "transferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_newOwner",
				"type": "address"
			}
		],
		"name": "transferOwnership",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]')
GO
INSERT [dbo].[ContractAddresses] ([ContractAddressID], [ContractName], [ContractAddress], [ContractABI]) VALUES (4, N'OpenAccess', N'0xCC06709c5e8fA04cE89a9297e124352387802fb1', N'[
	{
		"inputs": [],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_approved",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "Approval",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "bool",
				"name": "_approved",
				"type": "bool"
			}
		],
		"name": "ApprovalForAll",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "previousOwner",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "newOwner",
				"type": "address"
			}
		],
		"name": "OwnershipTransferred",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"indexed": true,
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "Transfer",
		"type": "event"
	},
	{
		"inputs": [],
		"name": "CANNOT_TRANSFER_TO_ZERO_ADDRESS",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "NOT_CURRENT_OWNER",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_approved",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "approve",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			}
		],
		"name": "balanceOf",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "getApproved",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			}
		],
		"name": "isApprovedForAll",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			},
			{
				"internalType": "string",
				"name": "_uri",
				"type": "string"
			}
		],
		"name": "mint",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "name",
		"outputs": [
			{
				"internalType": "string",
				"name": "_name",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "owner",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "ownerOf",
		"outputs": [
			{
				"internalType": "address",
				"name": "_owner",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "safeTransferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			},
			{
				"internalType": "bytes",
				"name": "_data",
				"type": "bytes"
			}
		],
		"name": "safeTransferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_operator",
				"type": "address"
			},
			{
				"internalType": "bool",
				"name": "_approved",
				"type": "bool"
			}
		],
		"name": "setApprovalForAll",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "bytes4",
				"name": "_interfaceID",
				"type": "bytes4"
			}
		],
		"name": "supportsInterface",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "symbol",
		"outputs": [
			{
				"internalType": "string",
				"name": "_symbol",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "tokenURI",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_from",
				"type": "address"
			},
			{
				"internalType": "address",
				"name": "_to",
				"type": "address"
			},
			{
				"internalType": "uint256",
				"name": "_tokenId",
				"type": "uint256"
			}
		],
		"name": "transferFrom",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_newOwner",
				"type": "address"
			}
		],
		"name": "transferOwnership",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]')
GO
INSERT [dbo].[ContractAddresses] ([ContractAddressID], [ContractName], [ContractAddress], [ContractABI]) VALUES (5, N'ManageScores', N'0xe00f31Faf7Fd981AFdFeCF9Db63784C198eA7d92', N'[
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"internalType": "int256",
				"name": "userID",
				"type": "int256"
			},
			{
				"indexed": false,
				"internalType": "string",
				"name": "userName",
				"type": "string"
			},
			{
				"indexed": false,
				"internalType": "int256",
				"name": "score",
				"type": "int256"
			},
			{
				"indexed": false,
				"internalType": "string",
				"name": "date",
				"type": "string"
			},
			{
				"indexed": false,
				"internalType": "uint256",
				"name": "id",
				"type": "uint256"
			}
		],
		"name": "ScoreStored",
		"type": "event"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"name": "competitionScores",
		"outputs": [
			{
				"internalType": "int256",
				"name": "userID",
				"type": "int256"
			},
			{
				"internalType": "string",
				"name": "userName",
				"type": "string"
			},
			{
				"internalType": "int256",
				"name": "score",
				"type": "int256"
			},
			{
				"internalType": "string",
				"name": "date",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "retrieveScore",
		"outputs": [
			{
				"components": [
					{
						"internalType": "int256",
						"name": "userID",
						"type": "int256"
					},
					{
						"internalType": "string",
						"name": "userName",
						"type": "string"
					},
					{
						"internalType": "int256",
						"name": "score",
						"type": "int256"
					},
					{
						"internalType": "string",
						"name": "date",
						"type": "string"
					}
				],
				"internalType": "struct ManageScores.Score[]",
				"name": "",
				"type": "tuple[]"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "scoreCount",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "int256",
				"name": "_userID",
				"type": "int256"
			},
			{
				"internalType": "string",
				"name": "_userName",
				"type": "string"
			},
			{
				"internalType": "int256",
				"name": "_score",
				"type": "int256"
			},
			{
				"internalType": "string",
				"name": "_date",
				"type": "string"
			}
		],
		"name": "storeScore",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	}
]')
GO
INSERT [dbo].[ContractAddresses] ([ContractAddressID], [ContractName], [ContractAddress], [ContractABI]) VALUES (6, N'ManageRegistrations', N'0x2ce179De099818e1f1b0B9b4E35f49d4Ebe341a8', N'[
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"internalType": "int256",
				"name": "userID",
				"type": "int256"
			},
			{
				"indexed": false,
				"internalType": "string",
				"name": "userName",
				"type": "string"
			},
			{
				"indexed": false,
				"internalType": "int256",
				"name": "competitionID",
				"type": "int256"
			},
			{
				"indexed": false,
				"internalType": "string",
				"name": "date",
				"type": "string"
			},
			{
				"indexed": false,
				"internalType": "uint256",
				"name": "id",
				"type": "uint256"
			}
		],
		"name": "RegistrationStored",
		"type": "event"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"name": "competitionRegistrations",
		"outputs": [
			{
				"internalType": "int256",
				"name": "userID",
				"type": "int256"
			},
			{
				"internalType": "string",
				"name": "userName",
				"type": "string"
			},
			{
				"internalType": "int256",
				"name": "competitionID",
				"type": "int256"
			},
			{
				"internalType": "string",
				"name": "date",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "registrationCount",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "retrieveRegistration",
		"outputs": [
			{
				"components": [
					{
						"internalType": "int256",
						"name": "userID",
						"type": "int256"
					},
					{
						"internalType": "string",
						"name": "userName",
						"type": "string"
					},
					{
						"internalType": "int256",
						"name": "competitionID",
						"type": "int256"
					},
					{
						"internalType": "string",
						"name": "date",
						"type": "string"
					}
				],
				"internalType": "struct ManageRegistrations.Registration[]",
				"name": "",
				"type": "tuple[]"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "int256",
				"name": "_userID",
				"type": "int256"
			},
			{
				"internalType": "string",
				"name": "_userName",
				"type": "string"
			},
			{
				"internalType": "int256",
				"name": "_competitionID",
				"type": "int256"
			},
			{
				"internalType": "string",
				"name": "_date",
				"type": "string"
			}
		],
		"name": "storeRegistration",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	}
]')
GO
SET IDENTITY_INSERT [dbo].[ContractAddresses] OFF
GO
SET IDENTITY_INSERT [dbo].[DiaryEntries] ON 
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (1, N'Azure Word Press', N'<p>As a student you are given $100 credit on azure so I spun up a wordpress site on it at the beginning of this project to keep track of my progress and to log all the ups and downs. </p>
<p>The WordPress site was the biggest down so far. I had made a few entries about how I was going to us trello, rough drafts of the database design, it was a great place to track my thought process. </p>
<p>Then two weeks in I got an email to say I''d used all my credits, which was maddning so I decided to build my own Journal/Diary log and this is the result :)&nbsp;</p>', CAST(N'2022-06-29T22:14:20.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (2, N'Database Design', N'I got the ERD diagrams completed, really happy with them now. As I go through the frontend developments I know I will have to make some changed but hopefully they will be kept to a minimum', CAST(N'2022-06-30T19:33:38.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (3, N'Lecturer Meeting', N'I had a meeting with Sean this evening, I talked him through my proposals, I detailed the functionality that I hoped to be able to include in the apps. I''m really excited to get cracking on the development work. It''s a bit daunting, doing 2 frontend websites and a database in such a short timeframe but once I get this proposal delivered I think I will be in a really good position to hit the group running and get straight into it', CAST(N'2022-07-01T22:19:17.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (4, N'Phase 1 Submission', N'Every time I think I''m finised with the document I find something else that needs to be added. Every day I write a list of the things that are left to do but by the end of the day it''s longer than it was when I started', CAST(N'2022-07-05T18:36:47.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (5, N'DLTs', N'<p>I went down a rabbit hole today looking at other types of DLT''s.&nbsp; &nbsp;</p>
<ul>
	<li>Blockchain, where data is stored in a chain of blocks, there can be any number of transactions in one block all hashed together, the miner who mined the block determines what transactions are included on the block.</li>
	<li>Hashgraph, transactions do not use miners to validation transactions, it uses gossip protocol instead. Gossip protocol is a peer-to-peer communication where nodes on the network gossip to other nodes about transactions, all nodes are then aware of the transaction and the transaction is added to the ledger using Virtual Voting protocol.</li>
	<li>Directed Acyclic Graph (DAG), transactions are recorded as vertices, with one transaction added on top of another, so rather than a chain the system looks like a graph, it also does not require miners to compete to add blocks to the chain</li>
	<li>Holochain, does not use a global consensus protocol, it instead allows each node to operate independently, while still being part of the global network.</li>
	<li>Tempo, one of the main differences with tempo is that nodes can contain a subset of the data, called a shard, rather that the global ledger allowing for increased scalability</li>
</ul>
<p>It is really interesting</p>
<ul>
    <li> <a href="https://www.analyticssteps.com/blogs/5-types-distributed-ledger-technologies-dlt ">5 types distributed ledger technologies dlt </a> </li>
    <li><a href="https://en.wikipedia.org/wiki/Hashgraph ">Hashgraph on Wikipedia</a> </li>   
    <li><a href="https://hedera.com/learning/consensus-algorithms/what-are-the-strengths-of-the-hashgraph-virtual-voting-algorithm  ">hashgraph virtual voting algorithm </a>&nbsp; </li>
	<li><a href="https://cointelegraph.com/explained/what-is-a-directed-acyclic-graph-in-cryptocurrency-how-does-dag-work#:~:text=A%20directed%20acyclic%20graph%20or,on%20top%20of%20one%20another.  ">What is a DAG</a></li>
	<li><a href="https://www.holochain.org"> Holochain </a></li>
	<li><a href="https://www.radixdlt.com/post/tempo-consensus-lessons-learned"> Tempo </a></li>
	
</ul>', CAST(N'2022-07-06T19:10:31.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (6, N'Smart Contracts', N'I''m worried that the smart contracts that I planned won''t work the way I planned to use them, I need to get them working with the Node application to see. That will be a priority this week', CAST(N'2022-07-15T20:58:41.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (7, N'Adding Nethereum to ASP.NET', N'I was finding it very difficult to install Nethereum into the existing website that I had built for phase 1 of the project, it was looking like I was going to have to rebuild the whole thing from scratch in .NetCore, which was stressing me out. I haven''t used .NetCore yet and to try learn it as well as the Node.js frontend code was very very daunting but it looks like I may have succeeded in installing it with the original website, don''t want to speak too soon but fingers crossed&nbsp;', CAST(N'2022-07-16T22:25:23.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (8, N'Deployed to Azure', N'<p>Today I deployed the database on the azure platform. </p>
<ol>
    <li>ServerName: bc-ncirl-prj.database.windows.net, </li>
    <li>Credentials: NoelleMartin AmsterdamApril2022#&nbsp;</li>
</ol>', CAST(N'2022-07-23T19:24:29.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (9, N'Connected Management App', N'<p>For testing I connected the management app to the azure instance of the database. I needed to change the connection string in the web config file</p>
<ul>
	<li><b>Azure Connection String</b></li>
    <li><em>&lt;add name="CrossfitTrackerConnectionString" connectionString="Data Source=bc-ncirl-prj.database.windows.net;User ID=NoelleMartin;Password=AmsterdamApril2022#;Initial Catalog=BC_CrossfitTracker;Integrated Security=False" providerName="System.Data.SqlClient" /&gt;</em></li>
	<li><b>Local Connection String</b></li>
    <li><em>&lt;add name="CrossfitTrackerConnectionString" connectionString="Data Source=DESKTOP-0AH4JG6\SQLSERVER2019;Initial Catalog=CrossfitTracker;Integrated Security=True" providerName="System.Data.SqlClient" /&gt;</em></li>
</ul>', CAST(N'2022-07-23T18:30:30.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (10, N'Deploy to Heroku', N'<p>I deployed the Node application to the heroku cloud <a href="https://bc-crossfittracker-app.herokuapp.com">CrossFit Tracker</a>.&nbsp; </p>
<p><strong>Steps:</strong></p>
<ol>
    <li>&nbsp;git status </li>
    <li>&nbsp;git add . </li>
    <li>&nbsp;git commit </li>
    <li>&nbsp;git push </li>
    <li>&nbsp;heroku git:remote -a bc-crossfittracker-app&nbsp;</li>
    <li>&nbsp;git push heroku main</li>
</ol>', CAST(N'2022-07-24T17:29:23.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (11, N'Connecting Node to the Database', N'I was able to connect the node application to the azure database using a test js script. It pulled the data from the diary entries table using a stored procedure, but I was not able to use the data in any meaningful way and I was not able to replicate it to use it to insert data', CAST(N'2022-07-24T17:40:36.000' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (12, N'ASP App Completion', N'<p>I think I might need to remove some of the functionality that I wanted to include in this application due to time constraints.</p>
<ol>
    <li>the SARs reporting area- allowing users to request a report of all the date contained in the system</li>
    <li>the section for adding courses for the Judges to complete</li>     
	<li>I''m also not sure about the Open Details Section on the dashboard, I don''t think it makes sense, the Open is only between 3 and 5 weeks long so it will be obsolete for most of the year. I think I might look at something else to replace it</li>
	<li>Data Validation - It would be nice to handle all user inputs and validate the data properly - Try Catch blocks have been used temporarily </li>
	<li>Business Rules Validation Logic - For example if there is an uncompleted event that should have 3 events block users from completing it if there are no workouts for one of the events</li>
	<li>Filter on the lists with dropdown lists</li>
</ol>
<p>I think to be able to get all the thing done that I would like I would need another year...lol</p>', CAST(N'2022-08-02T13:29:45.307' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (13, N'ASP Toolbar', N'<p>I am really struggling with this. This site is not the most responsive but it wasn''t really built to be, the purpose of this site is for Admin staff, so it is meant to be used from work, on a browser on a laptop or desktop, but it will still need to work on different sized screens, within reason. It is not built to work on mobile devices.</p>
<p>90% of the application works well on smaller size screens, except the toolbar. When I reduce the size of the scree the buttons on the righthand side go onto line 2.&nbsp;</p>', CAST(N'2022-08-02T13:48:29.600' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (14, N'User validation and authentication', N'<p>The other day in class the lecture was showing us user authentication using a wallet ID, it was really cool. I would love to implement something similar in the node application, I just don''t think I would have enough time.&nbsp;</p>
<p>But I will definitely keep it in mind if I have the time</p>', CAST(N'2022-08-02T18:39:21.923' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (15, N'Node & EJS to SQL Server', N'I am really struggling to get this to work, there are so many examples of connecting node to sql server but none of them seem to work with ejs. My knowledge of JavaScript&nbsp; and the express.js structure just isn''t good enough to adapt any of the samples that I have found. I''m really starting to worry about getting the application completed.', CAST(N'2022-08-03T08:52:29.810' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (16, N'Nethereum & SC & NFT', N'<p><a href="https://docs.nethereum.com/en/latest/nethereum-smartcontrats-gettingstarted/">https://docs.nethereum.com/en/latest/nethereum-smartcontrats-gettingstarted/</a></p>
<p><a href="https://github.com/Nethereum/Nethereum.Templates.SmartContracts.OZ-Erc721-Erc1155">https://github.com/Nethereum/Nethereum.Templates.SmartContracts.OZ-Erc721-Erc1155</a></p>
<p><a href="https://ethereum.org/en/developers/docs/programming-languages/dot-net/">https://ethereum.org/en/developers/docs/programming-languages/dot-net/</a></p>
<p><a href="https://consensys.net/docs/qbs/en/latest/tutorials/deploy-smart-contract/nethereum/">https://consensys.net/docs/qbs/en/latest/tutorials/deploy-smart-contract/nethereum/</a></p>
<p><a href="https://www.youtube.com/watch?v=xIYCv15MpbA">https://www.youtube.com/watch?v=xIYCv15MpbA</a>&nbsp;- this is a really simple video to get the balance of an account</p>
<p><a href="https://docs.nethereum.com/en/latest/nethereum-codegen-vsfull-workflow/">https://docs.nethereum.com/en/latest/nethereum-codegen-vsfull-workflow/</a></p>
<p><a href="https://csharp.hotexamples.com/examples/Nethereum.Web3/Web3/-/php-web3-class-examples.html">https://csharp.hotexamples.com/examples/Nethereum.Web3/Web3/-/php-web3-class-examples.html</a></p>', CAST(N'2022-08-03T11:48:44.970' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (17, N'ASP App Deployed to Azure', N'<p>My application is available on azure .......... </p>
<p><a href="https://crossfittracker.azurewebsites.net/Default.aspx">CrossFit Tracker Application</a></p>
<p>https://crossfittracker.azurewebsites.net/Admin_Users/Dashboard.aspx</p>
<p>I have it pointing to the database on azure, which I updated today :)</p>
<p>I''ve never used Azure before this project and after the disaster of the word press site at the start of the project I wasn''t too hopefull to be able to get it done so I''m really delighted to be able to deploy a DB and an asp website</p> <p> I still need to configure the database to allow connections from the application and not just the specified IP addresses.</p> <p>I think it might be ok, I think because the application and the data base use the same resource on azure they work together </p>', CAST(N'2022-08-05T18:47:40.390' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (18, N'NFT image links', N'<p>To make the NFTs look good, I used images from the links below</p>
<p>https://www.facebook.com/photo.php?fbid=486842766775193&amp;set=pb.100063484211297.-2207520000..&amp;type=3</p>
<p>https://www.facebook.com/CrossFit.Lowlands.Throwdow/photos/a.112712953541245/112716413540899</p>
<p>https://www.setforset.com/blogs/news/2022-crossfit-quarterfinals-workouts-floorplans</p>
<p>&nbsp;</p>
<p>The CrossFit website has some really great resources that can be downloaded and used as well</p>
<p><a href="https://open.crossfit.com/resources/">CrossFit.com</a></p>', CAST(N'2022-08-06T16:25:51.080' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (19, N'Final few days', N'<p>This heat is unbearable, it is making it almost impossible to concentrate on anything for any length of time. Working on it at night seems to be the only way to get anything done.</p>
<p>I am nearly there though,&nbsp; just a couple of days left :)</p>
&nbsp;
<p>&nbsp;</p>
<p>&nbsp;</p>', CAST(N'2022-08-13T20:07:21.610' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (20, N'Test', N'Test node DB connection ', CAST(N'2022-08-14T22:04:21.170' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (21, N'Node DB Connection', N'I can''t believe I was able to get the connection to the database done. I was able to insert a journal entry and I have also managed to create accounts. 
Unfortunately it is a bit late to be trying to implement it across the whole application. It is definitely something that I will work on though as soon as is possible :) :) :)', CAST(N'2022-08-14T23:19:08.303' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [DiaryEntryDate]) VALUES (22, N'If Only', N'If only I had another week to get the project done, I would be able to implement the interaction with the 4 NFT''s and the 3 Smart Contracts and complete the interaction with the database but I think I need to call it as it is now. Both applications are further along than I thought I would be able to get them within the given timeframe, but it is still disappointing not to be able to get them both fully completed before I needed to submit it.', CAST(N'2022-08-15T00:51:52.253' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DiaryEntries] OFF
GO
SET IDENTITY_INSERT [dbo].[Divisions] ON 
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (1, N'Men', 1)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (2, N'Women', 2)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (3, N'Team', 3)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (4, N'Men (35-39)', 4)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (5, N'Women (35-39)', 5)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (6, N'Men (40-44)', 4)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (7, N'Women (40-44)', 5)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (8, N'Men (45-49)', 4)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (9, N'Women (45-49)', 5)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (10, N'Men (50-54)', 4)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (11, N'Women (50-54)', 5)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (12, N'Men (55-59)', 6)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (13, N'Women (55-59)', 7)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (14, N'Men (60-64)', 6)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (15, N'Women (60-64)', 7)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (16, N'Men (65+)', 6)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (17, N'Women (65+)', 7)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (18, N'Boys (16-17)', 8)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (19, N'Girls (16-17)', 9)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (20, N'Boys (14-15)', 8)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (21, N'Girls (14-15)', 9)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (22, N'Men Upper Extremity', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (23, N'Women Upper Extremity', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (24, N'Men Lower Extremity', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (25, N'Women Lower Extremity', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (26, N'Men Neuromuscular', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (27, N'Women Neuromuscular', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (28, N'Men Vision', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (29, N'Women Vision', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (30, N'Men Short Stature', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (31, N'Women Short Stature', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (32, N'Men Seated (w/hip)', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (33, N'Women Seated (w/hip)', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (34, N'Men Seated (w/o hip)', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (35, N'Women Seated (w/o hip)', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (36, N'Men Intellectual', 10)
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName], [DivisionGroup]) VALUES (37, N'Women Intellectual', 10)
GO
SET IDENTITY_INSERT [dbo].[Divisions] OFF
GO
SET IDENTITY_INSERT [dbo].[UserCredentials] ON 
GO
INSERT [dbo].[UserCredentials] ([UserCredentialID], [UserID], [UserName], [UserPasswordHash], [UserWalletID], [UserPassword]) VALUES (2, 1, N'Noelle', NULL, NULL, N'Noelle')
GO
INSERT [dbo].[UserCredentials] ([UserCredentialID], [UserID], [UserName], [UserPasswordHash], [UserWalletID], [UserPassword]) VALUES (3, 2, N'Patrick', NULL, NULL, N'Patrick')
GO
INSERT [dbo].[UserCredentials] ([UserCredentialID], [UserID], [UserName], [UserPasswordHash], [UserWalletID], [UserPassword]) VALUES (4, 3, N'Liam', NULL, NULL, N'Liam')
GO
INSERT [dbo].[UserCredentials] ([UserCredentialID], [UserID], [UserName], [UserPasswordHash], [UserWalletID], [UserPassword]) VALUES (5, 4, N'Admin', NULL, NULL, N'Admin')
GO
INSERT [dbo].[UserCredentials] ([UserCredentialID], [UserID], [UserName], [UserPasswordHash], [UserWalletID], [UserPassword]) VALUES (6, 5, N'Jon', NULL, NULL, N'Jon')
GO
INSERT [dbo].[UserCredentials] ([UserCredentialID], [UserID], [UserName], [UserPasswordHash], [UserWalletID], [UserPassword]) VALUES (7, 6, N'EnyaB', NULL, NULL, N'enYaBrown2!')
GO
INSERT [dbo].[UserCredentials] ([UserCredentialID], [UserID], [UserName], [UserPasswordHash], [UserWalletID], [UserPassword]) VALUES (8, 7, N'Shelly', NULL, NULL, N'Shelly')
GO
INSERT [dbo].[UserCredentials] ([UserCredentialID], [UserID], [UserName], [UserPasswordHash], [UserWalletID], [UserPassword]) VALUES (11, 10013, N'Wellie', NULL, NULL, N'Wellie')
GO
INSERT [dbo].[UserCredentials] ([UserCredentialID], [UserID], [UserName], [UserPasswordHash], [UserWalletID], [UserPassword]) VALUES (13, 10015, N'nowellnowater', NULL, NULL, N'noelle@mail.com')
GO
SET IDENTITY_INSERT [dbo].[UserCredentials] OFF
GO
