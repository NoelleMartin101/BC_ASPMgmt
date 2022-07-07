USE [CrossfitTracker]
GO
/****** Object:  Table [dbo].[AdaptiveOptions]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdaptiveOptions](
	[AdaptiveOptionsID] [int] IDENTITY(1,1) NOT NULL,
	[AdaptiveOption] [varchar](50) NULL,
 CONSTRAINT [PK_Adapties] PRIMARY KEY CLUSTERED 
(
	[AdaptiveOptionsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Affiliates]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Affiliates](
	[AffiliateID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[AffiliateName] [varchar](100) NULL,
	[ContactPhone] [int] NULL,
	[ContactEmail] [varchar](100) NULL,
	[AffilateAddress] [varchar](500) NULL,
 CONSTRAINT [PK_Affiliates] PRIMARY KEY CLUSTERED 
(
	[AffiliateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompetitionEvents]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetitionEvents](
	[CompetitionEventID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionID] [int] NOT NULL,
	[DivisionID] [int] NOT NULL,
	[ScaleID] [int] NOT NULL,
	[NofEvents] [int] NULL,
	[DateOfEvent] [datetime] NULL,
	[EventLocationID] [int] NULL,
	[AdaptiveOptionID] [int] NULL,
 CONSTRAINT [PK_CompetitionEvents] PRIMARY KEY CLUSTERED 
(
	[CompetitionEventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competitions]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competitions](
	[CompetitionID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionDesc] [varchar](50) NULL,
 CONSTRAINT [PK_CompetitionStages] PRIMARY KEY CLUSTERED 
(
	[CompetitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [varchar](5) NULL,
	[CountryDescription] [varchar](100) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaryEntries]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaryEntries](
	[DiaryEntryID] [int] IDENTITY(1,1) NOT NULL,
	[DiaryEntryTitle] [varchar](100) NULL,
	[DiaryEntry] [varchar](max) NULL,
	[ImageSource1] [varchar](150) NULL,
	[ImageSource2] [varchar](150) NULL,
	[ImageSource3] [varchar](150) NULL,
	[DiaryEntryDate] [datetime] NULL,
 CONSTRAINT [PK_DiaryEntries] PRIMARY KEY CLUSTERED 
(
	[DiaryEntryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Divisions]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisions](
	[DivisionID] [int] IDENTITY(1,1) NOT NULL,
	[DivisionName] [varchar](50) NULL,
 CONSTRAINT [PK_Divisions] PRIMARY KEY CLUSTERED 
(
	[DivisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventLocations]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventLocations](
	[EventLocationID] [int] IDENTITY(1,1) NOT NULL,
	[EventLocationDesc] [varchar](50) NULL,
 CONSTRAINT [PK_EventLocations] PRIMARY KEY CLUSTERED 
(
	[EventLocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventNumbers]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventNumbers](
	[EventNumberID] [int] IDENTITY(1,1) NOT NULL,
	[EventNumberDescription] [varchar](10) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventNumberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventWorkouts]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventWorkouts](
	[EventWorkoutID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionEventID] [int] NULL,
	[EventNumberID] [int] NULL,
	[ExerciseID] [int] NULL,
	[Reps] [int] NULL,
	[DistanceInMeters] [int] NULL,
	[TimeInSeconds] [int] NULL,
	[WorkoutDescription] [varchar](250) NULL,
	[SpecialRequirements] [varchar](250) NULL,
 CONSTRAINT [PK_EventWorkouts] PRIMARY KEY CLUSTERED 
(
	[EventWorkoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExerciseAreas]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExerciseAreas](
	[ExerciseBodyAreaID] [int] IDENTITY(1,1) NOT NULL,
	[ExerciseAreaDesc] [varchar](50) NULL,
 CONSTRAINT [PK_ExerciseAreas] PRIMARY KEY CLUSTERED 
(
	[ExerciseBodyAreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exercises]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exercises](
	[ExerciseID] [int] IDENTITY(1,1) NOT NULL,
	[ExerciseAreaID] [int] NULL,
	[Exercise] [varchar](50) NULL,
 CONSTRAINT [PK_Exercises] PRIMARY KEY CLUSTERED 
(
	[ExerciseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JudgeCourses]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JudgeCourses](
	[JudgeCourseID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[AffiliateID] [int] NULL,
	[CompletionDate] [date] NULL,
	[ExpirationDate] [date] NULL,
 CONSTRAINT [PK_JudgeCourseID] PRIMARY KEY CLUSTERED 
(
	[JudgeCourseID] ASC,
	[UserID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scales]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scales](
	[ScaleID] [int] IDENTITY(1,1) NOT NULL,
	[ScaleDescription] [varchar](50) NULL,
 CONSTRAINT [PK_Scales_1] PRIMARY KEY CLUSTERED 
(
	[ScaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAthleteProfiles]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAthleteProfiles](
	[UserAthleteProfileID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DateofBirth] [datetime] NULL,
	[Height] [int] NULL,
	[Weight] [nchar](10) NULL,
	[GlobalRanking] [int] NULL,
	[AffiliateID] [int] NULL,
 CONSTRAINT [PK_UserAthleteProfiles] PRIMARY KEY CLUSTERED 
(
	[UserAthleteProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserBenchmarks]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBenchmarks](
	[UserBenchmarkID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Snatch] [decimal](4, 2) NULL,
	[Fran] [decimal](4, 2) NULL,
	[Grace] [decimal](4, 2) NULL,
	[Sprint400m] [int] NULL,
	[Deadlift] [decimal](4, 2) NULL,
	[Filthy50] [int] NULL,
	[Helen] [decimal](4, 2) NULL,
	[Run5k] [int] NULL,
	[Clean] [decimal](4, 2) NULL,
	[FightGoneBad] [decimal](4, 2) NULL,
	[Squat] [decimal](4, 2) NULL,
	[MaxPullUps] [int] NULL,
 CONSTRAINT [PK_UserBenchmarks] PRIMARY KEY CLUSTERED 
(
	[UserBenchmarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCredentials]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCredentials](
	[UserCredentialID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[UserName] [varchar](25) NOT NULL,
	[UserPasswordHash] [binary](50) NOT NULL,
	[UserWalletID] [varchar](42) NOT NULL,
 CONSTRAINT [PK_UserCredentials] PRIMARY KEY CLUSTERED 
(
	[UserCredentialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserEventScores]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEventScores](
	[UserEventScoreID] [int] IDENTITY(1,1) NOT NULL,
	[UserRegisteredCompetitionID] [int] NULL,
	[EventWorkoutID] [int] NULL,
	[Score] [int] NULL,
	[SubmittedDate] [datetime] NULL,
	[VerifiedByID] [int] NULL,
	[VerifiedOn] [datetime] NULL,
	[TimeStarted] [datetime] NULL,
	[TimeFinished] [datetime] NULL,
 CONSTRAINT [PK_UserEventScores] PRIMARY KEY CLUSTERED 
(
	[UserEventScoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfiles]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfiles](
	[UserProfileID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DateofBirth] [datetime] NULL,
	[Height] [int] NULL,
	[Weight] [nchar](10) NULL,
	[GlobalRanking] [int] NULL,
	[AffiliateID] [int] NULL,
 CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegisteredCompetitions]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegisteredCompetitions](
	[UserRegisteredCompetitionID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionEventID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RegisteredDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserRegisteredCompetitions] PRIMARY KEY CLUSTERED 
(
	[UserRegisteredCompetitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[UserRole] [varchar](50) NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/07/2022 20:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserFirstname] [varchar](50) NOT NULL,
	[UserSurname] [varchar](50) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[CountryID] [int] NOT NULL,
	[UserKey] [uniqueidentifier] NOT NULL,
	[timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiaryEntries] ADD  CONSTRAINT [DF_DiaryEntries_DiaryEntryDate]  DEFAULT (getdate()) FOR [DiaryEntryDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UserRoleID]  DEFAULT ((1)) FOR [UserRoleID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CountryID]  DEFAULT ((1)) FOR [CountryID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UserKey]  DEFAULT (newid()) FOR [UserKey]
GO
ALTER TABLE [dbo].[Affiliates]  WITH CHECK ADD  CONSTRAINT [FK_Affiliates_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Affiliates] CHECK CONSTRAINT [FK_Affiliates_Countries]
GO
ALTER TABLE [dbo].[CompetitionEvents]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionEvents_AdaptiveOptions] FOREIGN KEY([AdaptiveOptionID])
REFERENCES [dbo].[AdaptiveOptions] ([AdaptiveOptionsID])
GO
ALTER TABLE [dbo].[CompetitionEvents] CHECK CONSTRAINT [FK_CompetitionEvents_AdaptiveOptions]
GO
ALTER TABLE [dbo].[CompetitionEvents]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionEvents_Competitions] FOREIGN KEY([CompetitionID])
REFERENCES [dbo].[Competitions] ([CompetitionID])
GO
ALTER TABLE [dbo].[CompetitionEvents] CHECK CONSTRAINT [FK_CompetitionEvents_Competitions]
GO
ALTER TABLE [dbo].[CompetitionEvents]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionEvents_Divisions] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Divisions] ([DivisionID])
GO
ALTER TABLE [dbo].[CompetitionEvents] CHECK CONSTRAINT [FK_CompetitionEvents_Divisions]
GO
ALTER TABLE [dbo].[CompetitionEvents]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionEvents_EventLocations] FOREIGN KEY([EventLocationID])
REFERENCES [dbo].[EventLocations] ([EventLocationID])
GO
ALTER TABLE [dbo].[CompetitionEvents] CHECK CONSTRAINT [FK_CompetitionEvents_EventLocations]
GO
ALTER TABLE [dbo].[CompetitionEvents]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionEvents_Scales] FOREIGN KEY([ScaleID])
REFERENCES [dbo].[Scales] ([ScaleID])
GO
ALTER TABLE [dbo].[CompetitionEvents] CHECK CONSTRAINT [FK_CompetitionEvents_Scales]
GO
ALTER TABLE [dbo].[EventWorkouts]  WITH CHECK ADD  CONSTRAINT [FK_EventWorkouts_CompetitionEvents] FOREIGN KEY([CompetitionEventID])
REFERENCES [dbo].[CompetitionEvents] ([CompetitionEventID])
GO
ALTER TABLE [dbo].[EventWorkouts] CHECK CONSTRAINT [FK_EventWorkouts_CompetitionEvents]
GO
ALTER TABLE [dbo].[EventWorkouts]  WITH CHECK ADD  CONSTRAINT [FK_EventWorkouts_EventNumbers] FOREIGN KEY([EventNumberID])
REFERENCES [dbo].[EventNumbers] ([EventNumberID])
GO
ALTER TABLE [dbo].[EventWorkouts] CHECK CONSTRAINT [FK_EventWorkouts_EventNumbers]
GO
ALTER TABLE [dbo].[EventWorkouts]  WITH CHECK ADD  CONSTRAINT [FK_EventWorkouts_Exercises] FOREIGN KEY([ExerciseID])
REFERENCES [dbo].[Exercises] ([ExerciseID])
GO
ALTER TABLE [dbo].[EventWorkouts] CHECK CONSTRAINT [FK_EventWorkouts_Exercises]
GO
ALTER TABLE [dbo].[Exercises]  WITH CHECK ADD  CONSTRAINT [FK_Exercises_ExerciseAreas] FOREIGN KEY([ExerciseAreaID])
REFERENCES [dbo].[ExerciseAreas] ([ExerciseBodyAreaID])
GO
ALTER TABLE [dbo].[Exercises] CHECK CONSTRAINT [FK_Exercises_ExerciseAreas]
GO
ALTER TABLE [dbo].[JudgeCourses]  WITH CHECK ADD  CONSTRAINT [FK_JudgeCourses_Affiliates] FOREIGN KEY([AffiliateID])
REFERENCES [dbo].[Affiliates] ([AffiliateID])
GO
ALTER TABLE [dbo].[JudgeCourses] CHECK CONSTRAINT [FK_JudgeCourses_Affiliates]
GO
ALTER TABLE [dbo].[JudgeCourses]  WITH CHECK ADD  CONSTRAINT [FK_JudgeCourses_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[JudgeCourses] CHECK CONSTRAINT [FK_JudgeCourses_Courses]
GO
ALTER TABLE [dbo].[JudgeCourses]  WITH CHECK ADD  CONSTRAINT [FK_JudgeCourses_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[JudgeCourses] CHECK CONSTRAINT [FK_JudgeCourses_Users]
GO
ALTER TABLE [dbo].[UserAthleteProfiles]  WITH CHECK ADD  CONSTRAINT [FK_UserAthleteProfiles_Affiliates] FOREIGN KEY([AffiliateID])
REFERENCES [dbo].[Affiliates] ([AffiliateID])
GO
ALTER TABLE [dbo].[UserAthleteProfiles] CHECK CONSTRAINT [FK_UserAthleteProfiles_Affiliates]
GO
ALTER TABLE [dbo].[UserAthleteProfiles]  WITH CHECK ADD  CONSTRAINT [FK_UserAthleteProfiles_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserAthleteProfiles] CHECK CONSTRAINT [FK_UserAthleteProfiles_Users]
GO
ALTER TABLE [dbo].[UserBenchmarks]  WITH CHECK ADD  CONSTRAINT [FK_UserBenchmarks_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserBenchmarks] CHECK CONSTRAINT [FK_UserBenchmarks_Users]
GO
ALTER TABLE [dbo].[UserCredentials]  WITH CHECK ADD  CONSTRAINT [FK_UserCredentials_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserCredentials] CHECK CONSTRAINT [FK_UserCredentials_Users]
GO
ALTER TABLE [dbo].[UserEventScores]  WITH CHECK ADD  CONSTRAINT [FK_UserEventScores_UserRegisteredCompetitions] FOREIGN KEY([UserRegisteredCompetitionID])
REFERENCES [dbo].[UserRegisteredCompetitions] ([UserRegisteredCompetitionID])
GO
ALTER TABLE [dbo].[UserEventScores] CHECK CONSTRAINT [FK_UserEventScores_UserRegisteredCompetitions]
GO
ALTER TABLE [dbo].[UserEventScores]  WITH CHECK ADD  CONSTRAINT [FK_UserEventScores_Users] FOREIGN KEY([VerifiedByID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserEventScores] CHECK CONSTRAINT [FK_UserEventScores_Users]
GO
ALTER TABLE [dbo].[UserEventScores]  WITH CHECK ADD  CONSTRAINT [FK_UserEventScores_Users1] FOREIGN KEY([VerifiedByID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserEventScores] CHECK CONSTRAINT [FK_UserEventScores_Users1]
GO
ALTER TABLE [dbo].[UserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_UserProfiles_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserProfiles] CHECK CONSTRAINT [FK_UserProfiles_Users]
GO
ALTER TABLE [dbo].[UserRegisteredCompetitions]  WITH CHECK ADD  CONSTRAINT [FK_UserRegisteredCompetition_Competitions] FOREIGN KEY([CompetitionEventID])
REFERENCES [dbo].[Competitions] ([CompetitionID])
GO
ALTER TABLE [dbo].[UserRegisteredCompetitions] CHECK CONSTRAINT [FK_UserRegisteredCompetition_Competitions]
GO
ALTER TABLE [dbo].[UserRegisteredCompetitions]  WITH CHECK ADD  CONSTRAINT [FK_UserRegisteredCompetition_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserRegisteredCompetitions] CHECK CONSTRAINT [FK_UserRegisteredCompetition_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Countries]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserRoles] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRoles] ([UserRoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserRoles]
GO
