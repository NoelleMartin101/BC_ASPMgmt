/****** Object:  UserDefinedFunction [dbo].[LastLogInDate]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[LastLogInDate](
	@SystemUserID int
)
returns datetime
Begin
	Declare @LastLogInDate datetime
	Select top(1) @LastLogInDate = LoginDate from SystemUserLogons where SystemUserID = @SystemUserID order by SystemUserLogonID desc
	return @LastLogInDate
End
GO
/****** Object:  Table [dbo].[AdaptiveOptions]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdaptiveOptions](
	[AdaptiveOptionID] [int] IDENTITY(1,1) NOT NULL,
	[AdaptiveOption] [varchar](50) NULL,
 CONSTRAINT [PK_Adapties] PRIMARY KEY CLUSTERED 
(
	[AdaptiveOptionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Affiliates]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Affiliates](
	[AffiliateID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[AffiliateName] [varchar](100) NULL,
	[ContactPhone] [varchar](20) NULL,
	[ContactEmail] [varchar](100) NULL,
	[AffilateAddress] [varchar](500) NULL,
 CONSTRAINT [PK_Affiliates] PRIMARY KEY CLUSTERED 
(
	[AffiliateID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompetitionEvents]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetitionEvents](
	[CompetitionEventID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionID] [int] NOT NULL,
	[ScaleID] [int] NOT NULL,
	[NofEvents] [int] NULL,
	[DateOfEvent] [date] NULL,
	[TimeOfLaunch] [time](7) NULL,
	[LengthOfEvent] [int] NULL,
	[EventLocationID] [int] NOT NULL,
	[AdaptiveOptionID] [int] NULL,
	[IsCompleted] [bit] NULL,
 CONSTRAINT [PK_CompetitionEvents] PRIMARY KEY CLUSTERED 
(
	[CompetitionEventID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competitions]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competitions](
	[CompetitionID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionDescription] [varchar](50) NULL,
 CONSTRAINT [PK_CompetitionStages] PRIMARY KEY CLUSTERED 
(
	[CompetitionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompetitionToDoLists]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetitionToDoLists](
	[CompetitionToDoListID] [int] IDENTITY(1,1) NOT NULL,
	[ListDetails] [varchar](150) NULL,
	[RAGStatus] [varchar](1) NULL,
	[IsCompleted] [bit] NULL,
 CONSTRAINT [PK_CompetitionToDoLists] PRIMARY KEY CLUSTERED 
(
	[CompetitionToDoListID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractAddresses]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractAddresses](
	[ContractAddressID] [int] IDENTITY(1,1) NOT NULL,
	[ContractName] [varchar](20) NULL,
	[ContractAddress] [varchar](50) NULL,
	[ContractABI] [varchar](max) NULL,
 CONSTRAINT [PK_ContractAddresses] PRIMARY KEY CLUSTERED 
(
	[ContractAddressID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 15/08/2022 19:02:02 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 15/08/2022 19:02:02 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaryEntries]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaryEntries](
	[DiaryEntryID] [int] IDENTITY(1,1) NOT NULL,
	[DiaryEntryTitle] [varchar](100) NULL,
	[DiaryEntry] [varchar](max) NULL,
	[DiaryEntryDate] [datetime] NULL,
 CONSTRAINT [PK_DiaryEntries] PRIMARY KEY CLUSTERED 
(
	[DiaryEntryID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Divisions]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisions](
	[DivisionID] [int] IDENTITY(1,1) NOT NULL,
	[DivisionName] [varchar](50) NULL,
	[DivisionGroup] [int] NULL,
 CONSTRAINT [PK_Divisions] PRIMARY KEY CLUSTERED 
(
	[DivisionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventLocations]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventLocations](
	[EventLocationID] [int] IDENTITY(1,1) NOT NULL,
	[EventLocationDescription] [varchar](50) NULL,
 CONSTRAINT [PK_EventLocations] PRIMARY KEY CLUSTERED 
(
	[EventLocationID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventNumbers]    Script Date: 15/08/2022 19:02:02 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventWorkouts]    Script Date: 15/08/2022 19:02:02 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExerciseAreas]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExerciseAreas](
	[ExerciseBodyAreaID] [int] IDENTITY(1,1) NOT NULL,
	[ExerciseAreaDescription] [varchar](50) NULL,
 CONSTRAINT [PK_ExerciseAreas] PRIMARY KEY CLUSTERED 
(
	[ExerciseBodyAreaID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exercises]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exercises](
	[ExerciseID] [int] IDENTITY(1,1) NOT NULL,
	[ExerciseBodyAreaID] [int] NULL,
	[Exercise] [varchar](50) NULL,
	[ExerciseDescription] [varchar](500) NULL,
 CONSTRAINT [PK_Exercises] PRIMARY KEY CLUSTERED 
(
	[ExerciseID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JudgeCourses]    Script Date: 15/08/2022 19:02:02 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scales]    Script Date: 15/08/2022 19:02:02 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemUserLogons]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemUserLogons](
	[SystemUserLogonID] [int] IDENTITY(1,1) NOT NULL,
	[SystemUserID] [int] NULL,
	[LoginDate] [datetime] NULL,
	[LogoutDate] [datetime] NULL,
 CONSTRAINT [PK_SystemUserLogons] PRIMARY KEY CLUSTERED 
(
	[SystemUserLogonID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemUsers]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemUsers](
	[SystemUserID] [int] IDENTITY(1,1) NOT NULL,
	[SystemUserName] [varchar](50) NULL,
	[UserRoleID] [int] NULL,
	[SystemUserEmail] [varchar](50) NULL,
	[SystemUserContactNumber] [varchar](15) NULL,
 CONSTRAINT [PK_SystemUsers] PRIMARY KEY CLUSTERED 
(
	[SystemUserID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserBenchmarks]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBenchmarks](
	[UserBenchmarkID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Snatch] [decimal](6, 2) NULL,
	[Fran] [decimal](6, 2) NULL,
	[Grace] [decimal](6, 2) NULL,
	[Sprint400m] [decimal](6, 2) NULL,
	[Deadlift] [decimal](6, 2) NULL,
	[Filthy50] [decimal](6, 2) NULL,
	[Helen] [decimal](6, 2) NULL,
	[Run5k] [decimal](6, 2) NULL,
	[Clean] [decimal](6, 2) NULL,
	[FightGoneBad] [decimal](6, 2) NULL,
	[Squat] [decimal](6, 2) NULL,
	[MaxPullUps] [decimal](6, 2) NULL,
	[Measurement] [varchar](8) NULL,
 CONSTRAINT [PK_UserBenchmarks] PRIMARY KEY CLUSTERED 
(
	[UserBenchmarkID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCredentials]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCredentials](
	[UserCredentialID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[UserName] [varchar](25) NOT NULL,
	[UserPasswordHash] [binary](50) NULL,
	[UserWalletID] [varchar](42) NULL,
	[UserPassword] [varchar](15) NULL,
 CONSTRAINT [PK_UserCredentials] PRIMARY KEY CLUSTERED 
(
	[UserCredentialID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserEventScores]    Script Date: 15/08/2022 19:02:02 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfiles]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfiles](
	[UserProfileID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DateofBirth] [datetime] NULL,
	[Height] [int] NULL,
	[Weight] [int] NULL,
	[GlobalRanking] [int] NULL,
	[AffiliateID] [int] NULL,
	[Sex] [varchar](6) NULL,
 CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED 
(
	[UserProfileID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegisteredCompetitions]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegisteredCompetitions](
	[UserRegisteredCompetitionID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionEventID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RegisteredDate] [datetime] NOT NULL,
	[DivisionID] [int] NULL,
 CONSTRAINT [PK_UserRegisteredCompetitions] PRIMARY KEY CLUSTERED 
(
	[UserRegisteredCompetitionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 15/08/2022 19:02:02 ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(10012,1) NOT NULL,
	[UserFirstname] [varchar](50) NOT NULL,
	[UserSurname] [varchar](50) NULL,
	[UserRoleID] [int] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[CountryID] [int] NULL,
	[UserKey] [uniqueidentifier] NOT NULL,
	[timestamp] [timestamp] NOT NULL,
	[EmailAddress] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
REFERENCES [dbo].[AdaptiveOptions] ([AdaptiveOptionID])
GO
ALTER TABLE [dbo].[CompetitionEvents] CHECK CONSTRAINT [FK_CompetitionEvents_AdaptiveOptions]
GO
ALTER TABLE [dbo].[CompetitionEvents]  WITH CHECK ADD  CONSTRAINT [FK_CompetitionEvents_Competitions] FOREIGN KEY([CompetitionID])
REFERENCES [dbo].[Competitions] ([CompetitionID])
GO
ALTER TABLE [dbo].[CompetitionEvents] CHECK CONSTRAINT [FK_CompetitionEvents_Competitions]
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
ALTER TABLE [dbo].[Exercises]  WITH CHECK ADD  CONSTRAINT [FK_Exercises_ExerciseAreas] FOREIGN KEY([ExerciseBodyAreaID])
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
ALTER TABLE [dbo].[SystemUserLogons]  WITH CHECK ADD  CONSTRAINT [FK_SystemUserLogons_SystemUsers] FOREIGN KEY([SystemUserID])
REFERENCES [dbo].[SystemUsers] ([SystemUserID])
GO
ALTER TABLE [dbo].[SystemUserLogons] CHECK CONSTRAINT [FK_SystemUserLogons_SystemUsers]
GO
ALTER TABLE [dbo].[SystemUsers]  WITH CHECK ADD  CONSTRAINT [FK_SystemUsers_UserRoles] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRoles] ([UserRoleID])
GO
ALTER TABLE [dbo].[SystemUsers] CHECK CONSTRAINT [FK_SystemUsers_UserRoles]
GO
ALTER TABLE [dbo].[UserBenchmarks]  WITH CHECK ADD  CONSTRAINT [FK_UserBenchmarks_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserBenchmarks] CHECK CONSTRAINT [FK_UserBenchmarks_Users]
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
/****** Object:  StoredProcedure [dbo].[AdaptiveOptions_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[AdaptiveOptions_Insert]
(
	@AdaptiveOption varchar(50)
)
as
Begin
	Insert into AdaptiveOptions (AdaptiveOption)
	Values (@AdaptiveOption)
End
GO
/****** Object:  StoredProcedure [dbo].[AdaptiveOptions_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[AdaptiveOptions_Update]
(
	@AdaptiveOptionID int,
	@AdaptiveOption varchar(50)
)
as
Begin
	Update AdaptiveOptions
	set AdaptiveOption = @AdaptiveOption
	Where AdaptiveOptionID = @AdaptiveOptionID

End
GO
/****** Object:  StoredProcedure [dbo].[AdaptiveOptions_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[AdaptiveOptions_ViewAll]
as
Begin
	SELECT AdaptiveOptionID, AdaptiveOption
	FROM   AdaptiveOptions
End
GO
/****** Object:  StoredProcedure [dbo].[Affiliates_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Affiliates_Insert]
(
	@CountryID int,
	@AffiliateName varchar(100),
	@ContactPhone varchar(20), 
	@ContactEmail varchar(100), 
	@AffilateAddress varchar(500)
)
as
BEGIN
	Insert into dbo.Affiliates(CountryID, AffiliateName, ContactPhone, ContactEmail, AffilateAddress)
	Values (@CountryID, @AffiliateName, @ContactPhone, @ContactEmail, @AffilateAddress)
END
GO
/****** Object:  StoredProcedure [dbo].[Affiliates_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Affiliates_Update]
(
	@AffiliateID int,
	@CountryID int,
	@AffiliateName varchar(100),
	@ContactPhone varchar(20), 
	@ContactEmail varchar(100), 
	@AffilateAddress varchar(500)
)
as
BEGIN
	Update Affiliates
	set CountryID = @CountryID,
		AffiliateName = @AffiliateName,
		ContactPhone = @ContactPhone,
		ContactEmail = @ContactEmail,
		AffilateAddress = @AffilateAddress
	where AffiliateID = @AffiliateID
END
GO
/****** Object:  StoredProcedure [dbo].[Affiliates_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Affiliates_ViewAll]
as
BEGIN
	SELECT Affiliates.AffiliateID, 
		   Affiliates.CountryID, 
		   Affiliates.AffiliateName, 
		   Affiliates.ContactPhone, 
		   Affiliates.ContactEmail, 
		   Affiliates.AffilateAddress,
		   CountryCode, CountryDescription,
		   CountryCode + '; '+ CountryDescription as Country
	FROM   Affiliates INNER JOIN
		   Countries ON Affiliates.CountryID = Countries.CountryID
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionEvents_Completed]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CompetitionEvents_Completed](
	@CompetitionEventID int
)
as
Begin	
	Update CompetitionEvents 
	set IsCompleted = 1
	Where CompetitionEventID = @CompetitionEventID
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionEvents_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CompetitionEvents_Insert](
	@CompetitionID int, 
	@ScaleID int, 
	@NofEvents int, 
	@DateTimeOfEvent dateTime, 
	@LengthOfEvent int,
	@EventLocationID int, 
	@AdaptiveOptionID int = null
)
as
Begin
	Declare @DateOfEvent date
	Declare @TimeOfLaunch time(7)
	Set @DateOfEvent = Convert(Date, @DateTimeOfEvent)
	Set @TimeOfLaunch = Convert(Time(0), @DateTimeOfEvent)

	insert into CompetitionEvents (CompetitionID, ScaleID, NofEvents, DateOfEvent, EventLocationID, AdaptiveOptionID, TimeOfLaunch, LengthOfEvent)
	Values(@CompetitionID, @ScaleID, @NofEvents, @DateOfEvent, @EventLocationID, @AdaptiveOptionID,@TimeOfLaunch, @LengthOfEvent)
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionEvents_SingleRecord]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CompetitionEvents_SingleRecord]
(
	@CompetitionEventID int
)
as
BEGIN
	SELECT CompetitionEvents.CompetitionEventID,
	       CompetitionEvents.CompetitionID, 
		   CompetitionEvents.ScaleID, 
		   CompetitionEvents.NofEvents, 
		   CompetitionEvents.DateOfEvent,
		   CompetitionEvents.TimeOfLaunch,
		   CompetitionEvents.LengthOfEvent,
		   CompetitionEvents.EventLocationID, 
           CompetitionEvents.AdaptiveOptionID, 
		   Scales.ScaleDescription, 
		   Competitions.CompetitionDescription, 
		   EventLocations.EventLocationDescription
	FROM   CompetitionEvents INNER JOIN
		   Competitions ON CompetitionEvents.CompetitionID = Competitions.CompetitionID INNER JOIN
		   Scales ON CompetitionEvents.ScaleID = Scales.ScaleID INNER JOIN
		   EventLocations ON CompetitionEvents.EventLocationID = EventLocations.EventLocationID
	WHERE  CompetitionEvents.CompetitionEventID = @CompetitionEventID
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionEvents_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CompetitionEvents_Update](
	@CompetitionEventID int,
	@CompetitionID int, 
	@ScaleID int, 
	@NofEvents int, 
	@DateTimeOfEvent dateTime,
	@LengthOfEvent int,
	@EventLocationID int, 
	@AdaptiveOptionID int = null
)
as
Begin
	
	Declare @DateOfEvent date
	Declare @TimeOfLaunch time(7)
	Set @DateOfEvent = Convert(Date, @DateTimeOfEvent)
	Set @TimeOfLaunch = Convert(Time(0), @DateTimeOfEvent)

	Update CompetitionEvents 
	set CompetitionID = @CompetitionID, 
		ScaleID = @ScaleID, 
		NofEvents = @NofEvents, 
		DateOfEvent = @DateOfEvent, 
		TimeOfLaunch = @TimeOfLaunch,
		LengthOfEvent = @LengthOfEvent,
		EventLocationID = @EventLocationID, 
		AdaptiveOptionID = @AdaptiveOptionID
	Where CompetitionEventID = @CompetitionEventID
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionEvents_View]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CompetitionEvents_View]
(
	@CompetitionEventID int = null
)
as
BEGIN
	SELECT Competitions.CompetitionDescription, 
		   Scales.ScaleDescription, 
		   EventLocations.EventLocationDescription, 
		   CompetitionEvents.NofEvents, 
		   CompetitionEvents.DateOfEvent, 
		   CompetitionEvents.CompetitionEventID,
		   TimeOfLaunch,convert(varchar,LengthOfEvent) + ' Days' as LengthOfEvent,
		   (Select Count(distinct EventNumberID) from EventWorkouts where CompetitionEventID = CompetitionEvents.CompetitionEventID) as EventsAdded,
		   IsCompleted,
		   dateadd(d,LengthOfEvent,DateOfEvent) as CompletionDate,
		   datediff(d, getdate(),dateadd(d,LengthOfEvent,DateOfEvent)) as TimeRemaining,
		   case when datediff(d, getdate(),dateadd(d,LengthOfEvent,DateOfEvent)) < 0 then Cast(1 as bit) else cast(0 as bit) end as HasExpired
	FROM   CompetitionEvents INNER JOIN
           Competitions ON CompetitionEvents.CompetitionID = Competitions.CompetitionID INNER JOIN
           Scales ON CompetitionEvents.ScaleID = Scales.ScaleID INNER JOIN
           EventLocations ON CompetitionEvents.EventLocationID = EventLocations.EventLocationID
	WHERE  @CompetitionEventID IS NULL OR CompetitionEvents.CompetitionEventID = @CompetitionEventID
	Order by  datediff(d, getdate(),dateadd(d,LengthOfEvent,DateOfEvent))
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionEventWorkouts_ViewPerCompetition]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CompetitionEventWorkouts_ViewPerCompetition]
(
	@CompetitionEventID int = null
)
as
BEGIN
	SELECT CompetitionEvents.CompetitionID, EventWorkouts.EventNumberID, EventWorkouts.ExerciseID, EventWorkouts.Reps, EventWorkouts.DistanceInMeters, EventWorkouts.TimeInSeconds, 
	EventWorkouts.WorkoutDescription, EventWorkoutID,
           EventWorkouts.SpecialRequirements, Exercises.Exercise, EventNumbers.EventNumberDescription
	FROM   CompetitionEvents INNER JOIN
           EventWorkouts ON CompetitionEvents.CompetitionEventID = EventWorkouts.CompetitionEventID INNER JOIN
           EventNumbers ON EventWorkouts.EventNumberID = EventNumbers.EventNumberID INNER JOIN
           Exercises ON EventWorkouts.ExerciseID = Exercises.ExerciseID
	WHERE  CompetitionEvents.CompetitionEventID = @CompetitionEventID
END
GO
/****** Object:  StoredProcedure [dbo].[Competitions_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[Competitions_Insert]
(
	@CompetitionDescription varchar(50)
)
as
Begin
	Insert into Competitions (CompetitionDescription)
	Values (@CompetitionDescription)
End
GO
/****** Object:  StoredProcedure [dbo].[Competitions_ShortView]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[Competitions_ShortView]
as
BEGIN
	SELECT CompetitionID, CompetitionDescription
	FROM   Competitions
END
GO
/****** Object:  StoredProcedure [dbo].[Competitions_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[Competitions_Update]
(
	@CompetitionID int,
	@CompetitionDescription varchar(50)
)
as
Begin
	Update Competitions
	set CompetitionDescription = @CompetitionDescription
	Where CompetitionID = @CompetitionID

End
GO
/****** Object:  StoredProcedure [dbo].[Competitions_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[Competitions_ViewAll]
as
Begin
	SELECT CompetitionID, CompetitionDescription
	FROM   Competitions
End
GO
/****** Object:  StoredProcedure [dbo].[CompetitionToDoLists_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CompetitionToDoLists_Insert]
(
	@ListDetails varchar(150), 
	@RAGStatus varchar(1), 
	@IsCompleted bit
)
as
Begin
	
	insert into   CompetitionToDoLists (ListDetails, RAGStatus, IsCompleted)
	values (@ListDetails, @RAGStatus, @IsCompleted)
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionToDoLists_IsCompleted]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[CompetitionToDoLists_IsCompleted]
(
	@CompetitionToDoListID int
)
as
BEGIN
	Update CompetitionToDoLists 
	set IsCompleted = 1
	where CompetitionToDoListID = @CompetitionToDoListID
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionToDoLists_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CompetitionToDoLists_Update]
(
	@CompetitionToDoListID int,
	@ListDetails varchar(150), 
	@RAGStatus varchar(1), 
	@IsCompleted bit
)
as
Begin
	
	Update CompetitionToDoLists 
	set ListDetails = @ListDetails, 
		RAGStatus = @RAGStatus, 
		IsCompleted = @IsCompleted
	Where CompetitionToDoListID = @CompetitionToDoListID
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionToDoLists_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[CompetitionToDoLists_ViewAll]
as
Begin
	SELECT CompetitionToDoListID, ListDetails, 
	case when RAGStatus = 'G' then 'Green' 
		 when RAGStatus = 'R' then 'Red' 
		 when RAGStatus = 'A' then 'Amber' 
		 end as RAGStatusFull,RAGStatus,
	IsCompleted
	FROM   CompetitionToDoLists
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionToDoLists_ViewAll_Amber]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[CompetitionToDoLists_ViewAll_Amber]
as
BEGIN
	Select * from CompetitionToDoLists where RAGStatus = 'A' and IsCompleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionToDoLists_ViewAll_Green]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[CompetitionToDoLists_ViewAll_Green]
as
BEGIN
	Select * from CompetitionToDoLists where RAGStatus = 'G' and IsCompleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[CompetitionToDoLists_ViewAll_Red]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[CompetitionToDoLists_ViewAll_Red]
as
BEGIN
	Select * from CompetitionToDoLists where RAGStatus = 'R' and IsCompleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[ContractAddresses_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ContractAddresses_ViewAll]
As
Begin
	Select ContractAddressID, ContractName, ContractAddress, ContractABI from ContractAddresses
End
GO
/****** Object:  StoredProcedure [dbo].[Countries_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[Countries_Insert] 
(
	@CountryCode varchar(5),
	@CountryDescription varchar(100)
)
as
BEGIN
	Insert into Countries(CountryCode, CountryDescription)
	Values(@CountryCode, @CountryDescription)
END
GO
/****** Object:  StoredProcedure [dbo].[Countries_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[Countries_Update]
(
	@CountryID int,
	@CountryCode varchar(5),
	@CountryDescription varchar(100)
)
as
BEGIN
	Update Countries
	Set CountryCode = @CountryCode, 
		CountryDescription = @CountryDescription
	Where CountryID = @CountryID
END
GO
/****** Object:  StoredProcedure [dbo].[Countries_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Countries_ViewAll]
@CountryID int = null
as
Begin
	SELECT CountryID, CountryCode, CountryDescription
	FROM   Countries
End
GO
/****** Object:  StoredProcedure [dbo].[DiaryEntries_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[DiaryEntries_Insert]
(
	@DiaryEntryTitle varchar(100),
	@DiaryEntry varchar(max)
)
as
Begin
	Insert into DiaryEntries(DiaryEntryTitle, DiaryEntry)
	Values (@DiaryEntryTitle,@DiaryEntry)
end
GO
/****** Object:  StoredProcedure [dbo].[DiaryEntries_SingleRecord]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[DiaryEntries_SingleRecord]
(
	@DiaryEntryID int	
)
as
Begin
	Select * from DiaryEntries where DiaryEntryID = @DiaryEntryID
End
GO
/****** Object:  StoredProcedure [dbo].[DiaryEntries_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[DiaryEntries_Update]
(
	@DiaryEntryID int,
	@DiaryEntry varchar(max)
)
as
Begin
	Update DiaryEntries
	set DiaryEntry = @DiaryEntry
	where DiaryEntryID = @DiaryEntryID
end
GO
/****** Object:  StoredProcedure [dbo].[DiaryEntries_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[DiaryEntries_ViewAll]
as
Begin
	Select * from DiaryEntries order by DiaryEntryID desc
End
GO
/****** Object:  StoredProcedure [dbo].[Divisions_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Divisions_Insert]
(
	@DivisionName varchar(50)
)
as
Begin
	Insert into Divisions (DivisionName)
	Values (@DivisionName)
End
GO
/****** Object:  StoredProcedure [dbo].[Divisions_ShortView]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Divisions_ShortView]
as
BEGIN
	SELECT DivisionID, DivisionName
	FROM   Divisions
END
GO
/****** Object:  StoredProcedure [dbo].[Divisions_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Divisions_Update]
(
	@DivisionID int,
	@DivisionName varchar(50)
)
as
Begin
	Update Divisions
	set DivisionName = @DivisionName
	Where DivisionID = @DivisionID

End
GO
/****** Object:  StoredProcedure [dbo].[Divisions_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Divisions_ViewAll]
as
Begin
	SELECT DivisionID, DivisionName
	FROM   Divisions
End
GO
/****** Object:  StoredProcedure [dbo].[EventLocations_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[EventLocations_Insert]
(
	@EventLocationDescription varchar(50)
)
as
Begin
	Insert into EventLocations (EventLocationDescription)
	Values (@EventLocationDescription)
End
GO
/****** Object:  StoredProcedure [dbo].[EventLocations_ShortView]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[EventLocations_ShortView]
as
Begin
	SELECT EventLocationID, EventLocationDescription
	FROM   EventLocations
END
GO
/****** Object:  StoredProcedure [dbo].[EventLocations_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[EventLocations_Update]
(
	@EventLocationID int,
	@EventLocationDescription varchar(50)
)
as
Begin
	Update EventLocations
	set EventLocationDescription = @EventLocationDescription
	Where EventLocationID = @EventLocationID

End
GO
/****** Object:  StoredProcedure [dbo].[EventLocations_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[EventLocations_ViewAll]
as
Begin
	SELECT EventLocationID, EventLocationDescription
	FROM   EventLocations
END
GO
/****** Object:  StoredProcedure [dbo].[EventNumbers_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[EventNumbers_Insert]
(
	@EventNumberDescription varchar(50)
)
as
Begin
	Insert into EventNumbers (EventNumberDescription)
	Values (@EventNumberDescription)
End
GO
/****** Object:  StoredProcedure [dbo].[EventNumbers_ShortView]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[EventNumbers_ShortView]
as
Begin
	SELECT EventNumberID, EventNumberDescription
	FROM   EventNumbers
END
GO
/****** Object:  StoredProcedure [dbo].[EventNumbers_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[EventNumbers_Update]
(
	@EventNumberID int,
	@EventNumberDescription varchar(50)
)
as
Begin
	Update EventNumbers
	set EventNumberDescription = @EventNumberDescription
	Where EventNumberID = @EventNumberID

End
GO
/****** Object:  StoredProcedure [dbo].[EventNumbers_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[EventNumbers_ViewAll]
as
Begin
	SELECT EventNumberID, EventNumberDescription
	FROM   EventNumbers
End
GO
/****** Object:  StoredProcedure [dbo].[EventWorkouts_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[EventWorkouts_Insert]
(
	@CompetitionEventID int, 
	@EventNumberID int, 
	@ExerciseID int, 
	@Reps int = null, 
	@DistanceInMeters int = null, 
	@TimeInSeconds int = null, 
	@WorkoutDescription varchar(250), 
	@SpecialRequirements varchar(250)
)
as
BEGIN
	insert into dbo.EventWorkouts(CompetitionEventID, EventNumberID, ExerciseID, Reps, DistanceInMeters, TimeInSeconds, WorkoutDescription, SpecialRequirements)
	Values(@CompetitionEventID, @EventNumberID, @ExerciseID, @Reps, @DistanceInMeters, @TimeInSeconds, @WorkoutDescription, @SpecialRequirements)
END
GO
/****** Object:  StoredProcedure [dbo].[EventWorkouts_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[EventWorkouts_Update]
(
	@EventWorkoutID int,
	@CompetitionEventID int, 
	@EventNumberID int, 
	@ExerciseID int, 	
	@Reps int = null, 
	@DistanceInMeters int = null, 
	@TimeInSeconds int = null, 
	@WorkoutDescription varchar(250), 
	@SpecialRequirements varchar(250)
)
as
BEGIN
	Update EventWorkouts
	set CompetitionEventID = @CompetitionEventID, 
		EventNumberID = @EventNumberID, 
		ExerciseID = @ExerciseID, 
		Reps = @Reps, 
		DistanceInMeters = @DistanceInMeters, 
		TimeInSeconds = @TimeInSeconds, 
		WorkoutDescription = @WorkoutDescription, 
		SpecialRequirements = @SpecialRequirements
	Where EventWorkoutID = @EventWorkoutID
END
GO
/****** Object:  StoredProcedure [dbo].[EventWorkouts_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[EventWorkouts_ViewAll]
as
Begin
	SELECT EventWorkoutID, CompetitionEventID, EventNumberID, ExerciseID, Reps, DistanceInMeters, TimeInSeconds, WorkoutDescription, SpecialRequirements
	FROM   EventWorkouts
END
GO
/****** Object:  StoredProcedure [dbo].[ExerciseAreas_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ExerciseAreas_Insert]
(
	@ExerciseAreaDescription varchar(50)
)
as
Begin
	Insert into ExerciseAreas (ExerciseAreaDescription)
	Values (@ExerciseAreaDescription)
End
GO
/****** Object:  StoredProcedure [dbo].[ExerciseAreas_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ExerciseAreas_Update]
(
	@ExerciseBodyAreaID int,
	@ExerciseAreaDescription varchar(50)
)
as
Begin
	Update ExerciseAreas
	set ExerciseAreaDescription = @ExerciseAreaDescription
	Where ExerciseBodyAreaID = @ExerciseBodyAreaID

End
GO
/****** Object:  StoredProcedure [dbo].[ExerciseAreas_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ExerciseAreas_ViewAll]
as
Begin
	SELECT ExerciseBodyAreaID, ExerciseAreaDescription
	FROM   ExerciseAreas
End
GO
/****** Object:  StoredProcedure [dbo].[Exercises_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Exercises_Insert]
(
	@BodyAreaID int,
	@Exercise varchar(50),
	@ExerciseDescription varchar(50)
)
as
Begin
	Insert into Exercises (ExerciseBodyAreaID,Exercise,ExerciseDescription)
	Values (@BodyAreaID,@Exercise,@ExerciseDescription)
End
GO
/****** Object:  StoredProcedure [dbo].[Exercises_ShortView]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Exercises_ShortView]
as
Begin
	SELECT ExerciseID, Exercise
	FROM   Exercises
END
GO
/****** Object:  StoredProcedure [dbo].[Exercises_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Exercises_Update]
(
	@ExerciseID int,
	@BodyAreaID int,
	@Exercise varchar(50),
	@ExerciseDescription varchar(500)
)
as
Begin
	Update Exercises
	set @BodyAreaID = ExerciseBodyAreaID, Exercise = @Exercise,ExerciseDescription = @ExerciseDescription
	Where ExerciseID = @ExerciseID

End
GO
/****** Object:  StoredProcedure [dbo].[Exercises_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Exercises_ViewAll]
as
Begin
	SELECT        Exercises.ExerciseID, Exercises.ExerciseBodyAreaID, Exercises.Exercise, Exercises.ExerciseDescription, ExerciseAreas.ExerciseAreaDescription
	FROM            Exercises INNER JOIN
                         ExerciseAreas ON Exercises.ExerciseBodyAreaID = ExerciseAreas.ExerciseBodyAreaID
End
GO
/****** Object:  StoredProcedure [dbo].[RegiseredAtheletes_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RegiseredAtheletes_ViewAll]
as
Begin
	Select users.UserID, UserFirstname, UserSurname, UserFirstname + ' ' + IsNull(UserSurname,'') as UserFullName,
	IsAdmin, UserKey, timestamp ,UserRole,CountryCode,CountryDescription,
	DateofBirth,Height,Weight,GlobalRanking,AffiliateName, Sex,
	Snatch, Fran, Grace, Sprint400m, Deadlift, Filthy50, Helen, Run5k, Clean, FightGoneBad, Squat, MaxPullUps
	from dbo.Users inner join 
		 userRoles on users.userroleid = userroles.userroleid inner join
		 countries on users.countryid = countries.countryid left outer join 
		 userprofiles on userprofiles.userid = users.userid left outer join
		 affiliates on userprofiles.affiliateid = affiliates.affiliateID left outer join
		 userbenchmarks on users.userid = userbenchmarks.userid
	where Users.UserRoleID = 1
	order by users.userroleid

End
GO
/****** Object:  StoredProcedure [dbo].[RegiseredJudges_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RegiseredJudges_ViewAll]
as
Begin
	SELECT  Users.UserID, Users.UserFirstname, Users.UserSurname, Users.UserFirstname + ' ' + Users.UserSurname as UserFullName, Affiliates.AffiliateName, Countries.CountryDescription,
	 Countries.CountryCode
	FROM    Users INNER JOIN
            UserProfiles ON Users.UserID = UserProfiles.UserID INNER JOIN
            Affiliates INNER JOIN
            Countries ON Affiliates.CountryID = Countries.CountryID ON UserProfiles.AffiliateID = Affiliates.AffiliateID
	Where   UserRoleID = 2
End
GO
/****** Object:  StoredProcedure [dbo].[RegiseredUsers_Benchmarks]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RegiseredUsers_Benchmarks]
as
Begin
	Select users.UserID, UserFirstname, UserSurname, UserFirstname + ' ' + UserSurname as UserFullName,
	IsAdmin, UserKey, timestamp ,UserRole,CountryCode,CountryDescription,
	DateofBirth,Height,Weight,GlobalRanking,AffiliateName, Sex,
	case when Measurement = 'Imperial' then 'in/lbs' else 'cm/kgs' end as Measurement,
	Snatch, Fran, Grace, Sprint400m, Deadlift, Filthy50, Helen, Run5k, Clean, FightGoneBad, Squat, MaxPullUps
	from dbo.Users inner join 
		 userRoles on users.userroleid = userroles.userroleid inner join
		 countries on users.countryid = countries.countryid left outer join 
		 userprofiles on userprofiles.userid = users.userid left outer join
		 affiliates on userprofiles.affiliateid = affiliates.affiliateID left outer join
		 userbenchmarks on users.userid = userbenchmarks.userid
	where users.userroleid = 1
	order by users.userroleid

End
GO
/****** Object:  StoredProcedure [dbo].[RegiseredUsers_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RegiseredUsers_ViewAll]
as
Begin
	Select users.UserID, UserFirstname, UserSurname, UserFirstname + ' ' + UserSurname as UserFullName,
	IsAdmin, UserKey, timestamp ,UserRole,CountryCode,CountryDescription,
	DateofBirth,Height,Weight,GlobalRanking,AffiliateName
	from dbo.Users inner join 
		 userRoles on users.userroleid = userroles.userroleid inner join
		 countries on users.countryid = countries.countryid left outer join 
		 userprofiles on userprofiles.userid = users.userid left outer join
		 affiliates on userprofiles.affiliateid = affiliates.affiliateID 
	
	order by users.userroleid

End
GO
/****** Object:  StoredProcedure [dbo].[RegisterUsers]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RegisterUsers]
as
Begin
	SELECT Countries.CountryCode, UserProfiles.Sex
	FROM   Users INNER JOIN
		   Countries ON Users.CountryID = Countries.CountryID INNER JOIN
		   UserProfiles ON Users.UserID = UserProfiles.UserID
	WHERE  Users.UserRoleID = 1
END
GO
/****** Object:  StoredProcedure [dbo].[RegisterUsers_ChartData]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RegisterUsers_ChartData]
as
Begin
	SELECT   CountryCode +'; ' +CountryDescription as Country, COUNT(*) AS CountRegisteredUsers
	FROM     Users INNER JOIN
             Countries ON Users.CountryID = Countries.CountryID
	WHERE    Users.UserRoleID = 1
	GROUP BY CountryCode, CountryDescription
END
GO
/****** Object:  StoredProcedure [dbo].[RegisterUsers_CountryChartData]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RegisterUsers_CountryChartData]
as
Begin
	SELECT  CountryCode, CountryCode + '; ' + CountryDescription AS Country, COUNT(*) AS CountRegisteredUsers, CountryCode + ': ' + convert(varchar,Count(*)) as ChartData
	FROM    Users RIGHT OUTER JOIN
			Countries ON Users.CountryID = Countries.CountryID
	WHERE   (Users.UserRoleID = 1)
	GROUP BY Countries.CountryCode, Countries.CountryDescription
END
GO
/****** Object:  StoredProcedure [dbo].[RegisterUsers_DivisionChartData]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RegisterUsers_DivisionChartData]
as
Begin
	SELECT DivisionID, DivisionName, (Select Count(*) from UserRegisteredCompetitions where DivisionID = Divisions.DivisionID) as CountRegisteredUsers,
	DivisionName + ': ' + convert(varchar, (Select Count(*) from UserRegisteredCompetitions where DivisionID = Divisions.DivisionID))as ChartData
	FROM   Divisions
	where DivisionID in (1,2,3) 
	union all
	Select 0 as DivisionID, 'M (35-54)' as DivisionName, Count(*) as CountRegisteredUsers,
	'M (35-59)' + ': ' + convert(varchar, Count(*)) as ChartData
	from UserRegisteredCompetitions
	where DivisionID in (4,6,8,10,12) 	
	union all
	Select 0 as DivisionID, 'W (35-54)' as DivisionName, Count(*) as CountRegisteredUsers,
	'W (35-59)' + ': ' + convert(varchar, Count(*)) as ChartData
	from UserRegisteredCompetitions
	where DivisionID in (5,7,9,11) 	
	union all
	Select 0 as DivisionID, 'M (55+)' as DivisionName, Count(*) as CountRegisteredUsers,
	'M (55+)' + ': ' + convert(varchar, Count(*)) as ChartData
	from UserRegisteredCompetitions
	where DivisionID in (12,14,16) 	
	union all
	Select 0 as DivisionID, 'W (55+)' as DivisionName, Count(*) as CountRegisteredUsers,
	'W (55+)' + ': ' + convert(varchar, Count(*)) as ChartData
	from UserRegisteredCompetitions
	where DivisionID in (13,15,17) 	
	union all
	Select 0 as DivisionID, 'B' as DivisionName, Count(*) as CountRegisteredUsers,
	'Boys' + ': ' + convert(varchar, Count(*)) as ChartData
	from UserRegisteredCompetitions
	where DivisionID in (18,20) 
	union all
	Select 0 as DivisionID, 'G' as DivisionName, Count(*) as CountRegisteredUsers,
	'Girls' + ': ' + convert(varchar, Count(*)) as ChartData
	from UserRegisteredCompetitions
	where DivisionID in (19,21) 
	union all
	Select 0 as DivisionID, 'A' as DivisionName, Count(*) as CountRegisteredUsers,
	'Adaptive' + ': ' + convert(varchar, Count(*)) as ChartData
	from UserRegisteredCompetitions
	where DivisionID in (22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37) 


END
GO
/****** Object:  StoredProcedure [dbo].[RegisterUsers_EventScoresChartData]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RegisterUsers_EventScoresChartData]
as
Begin
	
	SELECT AVG(UserEventScores.Score)as AverageScore,
	case when DivisionGroup = 1 then 'Men'
		 when DivisionGroup = 2 then 'Women'
		 when DivisionGroup = 3 then 'Teams'
		 when DivisionGroup = 4 then 'Men (35-54)'
		 when DivisionGroup = 5 then 'Women (35-54)'
		 when DivisionGroup = 6 then 'Men (55+)'
		 when DivisionGroup = 7 then 'Women (55+)'
		 when DivisionGroup = 8 then 'Boys'
		 when DivisionGroup = 9 then 'Girls'
		 when DivisionGroup = 10 then 'Adaptive' end as DivisionGroup
	FROM   UserEventScores INNER JOIN
           UserRegisteredCompetitions ON UserEventScores.UserRegisteredCompetitionID = UserRegisteredCompetitions.UserRegisteredCompetitionID RIGHT OUTER JOIN
           Divisions ON UserRegisteredCompetitions.DivisionID = Divisions.DivisionID
	Group by DivisionGroup
END
GO
/****** Object:  StoredProcedure [dbo].[Scales_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Scales_Insert]
(
	@ScaleDescription varchar(50)
)
as
Begin
	Insert into Scales (ScaleDescription)
	Values (@ScaleDescription)
End
GO
/****** Object:  StoredProcedure [dbo].[Scales_ShortView]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[Scales_ShortView]
as
BEGIN
	SELECT ScaleID, ScaleDescription
	FROM   Scales
END
GO
/****** Object:  StoredProcedure [dbo].[Scales_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Scales_Update]
(
	@ScaleID int,
	@ScaleDescription varchar(50)
)
as
Begin
	Update Scales
	set ScaleDescription = @ScaleDescription
	Where ScaleID = @ScaleID

End
GO
/****** Object:  StoredProcedure [dbo].[Scales_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Scales_ViewAll]
as
Begin
	SELECT ScaleID, ScaleDescription
	FROM   Scales
End
GO
/****** Object:  StoredProcedure [dbo].[SystemUsers_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[SystemUsers_Insert]
(
	@SystemUserName varchar(50),
	@SystemUserRoleID int,	
	@SystemUserEmail varchar(50),
	@SystemUserContactNumber varchar(50),
	@UserName varchar(25),
	@UserPassword varchar(15),
	@Message varchar(50) output
)
as
BEGIN
	if exists(Select * from SystemUsers where SystemUserName = @SystemUserName)
	BEGIN
		set @Message = 'User already exists!'
	END
	else
	Begin
		insert into SystemUsers(SystemUserName, UserRoleID, SystemUserEmail, SystemUserContactNumber)
		values(@SystemUserName, @SystemUserRoleID, @SystemUserEmail, @SystemUserContactNumber)
		Declare @SystemUserID int
		Select @SystemUserID = SCOPE_IDENTITY()
		insert into UserCredentials(UserID, UserName, UserPassword)
		values (@SystemUserID, @UserName, @UserPassword)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SystemUsers_Update]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SystemUsers_Update]
(
	@SystemUserID int,
	@SystemUserName varchar(50),
	@UserRoleID int,	
	@SystemUserEmail varchar(50),
	@SystemUserContactNumber varchar(50),	
	@UserName varchar(25),
	@UserPassword varchar(15)
)
as
BEGIN
	Update SystemUsers
	set SystemUserName = @SystemUserName,
		SystemUserEmail = @SystemUserEmail,
		SystemUserContactNumber = @SystemUserContactNumber,
		UserRoleID = @UserRoleID
	Where SystemUserID = @SystemUserID
	
	Update UserCredentials
	set UserName = @UserName,
		UserPassword = @UserPassword
	where UserID = @SystemUserID

END
GO
/****** Object:  StoredProcedure [dbo].[SystemUsers_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SystemUsers_ViewAll]
as
BEGIN
	SELECT SystemUsers.SystemUserID, SystemUsers.SystemUserName, SystemUsers.SystemUserEmail, SystemUsers.SystemUserContactNumber, UserRoles.UserRole, SystemUsers.UserRoleID,
			dbo.LastLogInDate(SystemUserID) as LastLogInDate,UserName, UserPassword
	FROM   SystemUsers INNER JOIN
           UserRoles ON SystemUsers.UserRoleID = UserRoles.UserRoleID left outer join 
		   UserCredentials on SystemUsers.SystemUserID = UserCredentials.UserID
END
GO
/****** Object:  StoredProcedure [dbo].[SystemUsersLogon_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SystemUsersLogon_Insert]
(
	@UserName varchar(25),
	@UserPassword varchar(15)
)
as
BEGIN
	Declare @SystemUserID int
	Select @SystemUserID = UserID from UserCredentials where UserName = @UserName and UserPassword = @UserPassword
	Insert into [dbo].[SystemUserLogons](SystemUserID, LoginDate)
	Values (@SystemUserID, GetDate())
END
GO
/****** Object:  StoredProcedure [dbo].[UserCredentials_Insert]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[UserCredentials_Insert]
(
	@UserName varchar(25),
	@UserPassword varchar(15),
	@EmailAddress varchar(50)
)
as
Begin
	insert into Users(UserFirstname, UserRoleID, IsAdmin, EmailAddress)
	Values (@UserName, 1,0,@EmailAddress)

	Declare @UserID int
	set @UserID = SCOPE_IDENTITY();

	insert into UserCredentials(UserID, UserName, UserPassword)
	Values (@UserID, @UserName, @UserPassword)

end
GO
/****** Object:  StoredProcedure [dbo].[UserRoles_ViewAll]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UserRoles_ViewAll]
as
BEGIN
	SELECT UserRoleID, UserRole
	FROM   UserRoles
	Where  UserRoleID in (3,4)
END
GO
/****** Object:  StoredProcedure [dbo].[VerifyUser]    Script Date: 15/08/2022 19:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[VerifyUser]
(
	@UserName varchar(25),
	@UserPassword varchar(15),
	@Verify varchar(12) output
)
as
BEGIN
	if exists(select * from UserCredentials where UserName = @UserName and UserPassword = @UserPassword)
	BEGIN
		set @Verify = 'Verified'
	END
	else 
	BEGIN
		set @Verify = 'Not Verified'
	END
END
GO
