USE [CrossfitTracker]
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
SET IDENTITY_INSERT [dbo].[UserRoles] ON 
GO
INSERT [dbo].[UserRoles] ([UserRoleID], [UserRole]) VALUES (1, N'Athlethe')
GO
INSERT [dbo].[UserRoles] ([UserRoleID], [UserRole]) VALUES (2, N'Judge')
GO
INSERT [dbo].[UserRoles] ([UserRoleID], [UserRole]) VALUES (3, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
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
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (6, N'AS', N'American Samoa')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (7, N'AD', N'Andorra')
GO
INSERT [dbo].[Countries] ([CountryID], [CountryCode], [CountryDescription]) VALUES (8, N'AG', N'Antigua and Barbuda')
GO
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserID], [UserFirstname], [UserSurname], [UserRoleID], [IsAdmin], [CountryID], [UserKey]) VALUES (1, N'Noelle', N'Martin', 3, 1, 1, N'23e3aa18-2c6a-4ade-86e2-754177988369')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[ExerciseAreas] ON 
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (1, N'Shoulders')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (2, N'Upper Back')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (3, N'Lower Back')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (4, N'Glutes')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (5, N'Upper Legs')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (6, N'Lower Legs')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (7, N'Upper Arms')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (8, N'Lower Arms')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (9, N'Arms Combination')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (10, N'Legs Combination')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (11, N'Shoulders and Back')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (12, N'Legs and Core')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (13, N'Shoulders and Core')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (14, N'Full Body')
GO
INSERT [dbo].[ExerciseAreas] ([ExerciseBodyAreaID], [ExerciseAreaDesc]) VALUES (15, N'Shoulders, Core and Back')
GO
SET IDENTITY_INSERT [dbo].[ExerciseAreas] OFF
GO
SET IDENTITY_INSERT [dbo].[Exercises] ON 
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseAreaID], [Exercise]) VALUES (1, 12, N'Deadlifts')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseAreaID], [Exercise]) VALUES (2, 11, N'Wall Walks')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseAreaID], [Exercise]) VALUES (3, 14, N'Wall Ball')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseAreaID], [Exercise]) VALUES (4, 15, N'Ski Erg')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseAreaID], [Exercise]) VALUES (5, 15, N'Rower')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseAreaID], [Exercise]) VALUES (6, 14, N'Assault Bike')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseAreaID], [Exercise]) VALUES (7, 5, N'Air Squats')
GO
INSERT [dbo].[Exercises] ([ExerciseID], [ExerciseAreaID], [Exercise]) VALUES (8, 5, N'Stationary Lunges')
GO
SET IDENTITY_INSERT [dbo].[Exercises] OFF
GO
SET IDENTITY_INSERT [dbo].[Scales] ON 
GO
INSERT [dbo].[Scales] ([ScaleID], [ScaleDescription]) VALUES (1, N'Rx''d')
GO
INSERT [dbo].[Scales] ([ScaleID], [ScaleDescription]) VALUES (2, N'Scaled')
GO
INSERT [dbo].[Scales] ([ScaleID], [ScaleDescription]) VALUES (3, N'Foundations')
GO
SET IDENTITY_INSERT [dbo].[Scales] OFF
GO
SET IDENTITY_INSERT [dbo].[Divisions] ON 
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (1, N'Men')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (2, N'Women')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (3, N'Team')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (4, N'Men (35-39)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (5, N'Women (35-39)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (6, N'Men (40-44)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (7, N'Women (40-44)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (8, N'Men (45-49)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (9, N'Women (45-49)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (10, N'Men (50-54)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (11, N'Women (50-54)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (12, N'Men (55-59)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (13, N'Women (55-59)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (14, N'Men (60-64)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (15, N'Women (60-64)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (16, N'Men (65+)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (17, N'Women (65+)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (18, N'Boys (16-17)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (19, N'Girls (16-17)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (20, N'Boys (14-15)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (21, N'Girls (14-15)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (22, N'Men Upper Extremity')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (23, N'Women Upper Extremity')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (24, N'Men Lower Extremity')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (25, N'Women Lower Extremity')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (26, N'Men Neuromuscular')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (27, N'Women Neuromuscular')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (28, N'Men Vision')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (29, N'Women Vision')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (30, N'Men Short Stature')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (31, N'Women Short Stature')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (32, N'Men Seated (w/hip)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (33, N'Women Seated (w/hip)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (34, N'Men Seated (w/o hip)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (35, N'Women Seated (w/o hip)')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (36, N'Men Intellectual')
GO
INSERT [dbo].[Divisions] ([DivisionID], [DivisionName]) VALUES (37, N'Women Intellectual')
GO
SET IDENTITY_INSERT [dbo].[Divisions] OFF
GO
SET IDENTITY_INSERT [dbo].[Competitions] ON 
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDesc]) VALUES (1, N'Open')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDesc]) VALUES (2, N'Semi-Finals')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDesc]) VALUES (3, N'Individual Quarter Final')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDesc]) VALUES (4, N'Team Quarter Final')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDesc]) VALUES (5, N'Age Group QuarterFinals')
GO
INSERT [dbo].[Competitions] ([CompetitionID], [CompetitionDesc]) VALUES (6, N'Games')
GO
SET IDENTITY_INSERT [dbo].[Competitions] OFF
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
SET IDENTITY_INSERT [dbo].[DiaryEntries] ON 
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [ImageSource1], [ImageSource2], [ImageSource3], [DiaryEntryDate]) VALUES (1, N'Azure Word Press', N'As a student you are given $100 credit on azure so I spun up a wordpress site on it at the beginning of this project to keep track of my progress and to log all the ups and downs. The WordPress site was the biggest down so far. I had made a few entries about how I was going to us trello, rough drafts of the database design, it was a great place to track my thought process. Then two weeks in I got an email to say I''d used all my credits, which was maddning so I decided to build my own Journal/Diary log and this is the result :)', NULL, NULL, NULL, CAST(N'2022-06-29T22:14:19.560' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [ImageSource1], [ImageSource2], [ImageSource3], [DiaryEntryDate]) VALUES (2, N'Database Design', N'I got the ERD diagrams completed, really happy with them now. As I go through the frontend developments I know I will have to make some changed but hopefully they will be kept to a minimum', NULL, NULL, NULL, CAST(N'2022-06-30T19:33:37.560' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [ImageSource1], [ImageSource2], [ImageSource3], [DiaryEntryDate]) VALUES (3, N'Lecturer Meeting', N'I had a meeting with Sean this evening, I talked him through my proposals, I detailed the functionality that I hoped to be able to include in the apps. I''m really excited to get cracking on the development work. It''s a bit daunting, doing 2 frontend websites and a database in such a short timeframe but once I get this proposal delivered I think I will be in a really good position to hit the group running and get straight into it', NULL, NULL, NULL, CAST(N'2022-07-01T22:19:17.247' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [ImageSource1], [ImageSource2], [ImageSource3], [DiaryEntryDate]) VALUES (4, N'Phase 1 Submission', N'Every time I think I''m finised with the document I find something else that needs to be added. Every day I write a list of the things that are left to do but by the end of the day it''s longer than it was when I started', NULL, NULL, NULL, CAST(N'2022-07-05T18:36:47.200' AS DateTime))
GO
INSERT [dbo].[DiaryEntries] ([DiaryEntryID], [DiaryEntryTitle], [DiaryEntry], [ImageSource1], [ImageSource2], [ImageSource3], [DiaryEntryDate]) VALUES (5, N'DLTs', N'Went down a rabbit hole today looking at other types of DLT''s.

https://www.analyticssteps.com/blogs/5-types-distributed-ledger-technologies-dlt

https://hedera.com/learning/consensus-algorithms/what-are-the-strengths-of-the-hashgraph-virtual-voting-algorithm

https://en.wikipedia.org/wiki/Hashgraph
Hedera Hashgraph is the only public distributed ledger based on the Hashgraph algorithm.[7] Hedera Hashgraph is developed by a company of the same name, Hedera, based in Dallas, Texas.[7] Hedera was founded by Hashgraph inventor Leemon Baird and his business partner Mance Harmon, and has an exclusive license to the Hashgraph patents held by their company, Swirlds.

Hedera is owned and managed by a "governing council" of global companies and entities. The council''s members include Swirlds, as well as Google, Boeing, IBM, Deutsche Telekom, LG, Tata Communications, Électricité de France, FIS, University College London, the London School of Economics, DLA Piper, Shinhan Bank, Standard Bank, ServiceNow, Ubisoft, and several others.[8]

The Hedera Governing Council has voted to purchase the patent rights to Hashgraph and make the algorithm open source under the Apache License in 2022.[9]', NULL, NULL, NULL, CAST(N'2022-07-06T19:10:31.487' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[DiaryEntries] OFF
GO
