USE [CrossfitTracker]
GO
/****** Object:  StoredProcedure [dbo].[Competitions_ShortView]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Competitions_ShortView]
As
BEGIN
	SELECT CompetitionID, CompetitionDesc
	FROM   Competitions
END
GO
/****** Object:  StoredProcedure [dbo].[Countries_Insert]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Countries_Insert] 
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
/****** Object:  StoredProcedure [dbo].[Countries_Update]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Countries_Update]
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
/****** Object:  StoredProcedure [dbo].[Countries_ViewAll]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Countries_ViewAll]
as
Begin
	SELECT CountryID, CountryCode, CountryDescription
	FROM   Countries
End
GO
/****** Object:  StoredProcedure [dbo].[DiaryEntries_Insert]    Script Date: 06/07/2022 20:58:06 ******/
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
/****** Object:  StoredProcedure [dbo].[DiaryEntries_SingleRecord]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DiaryEntries_SingleRecord]
(
	@DiaryEntryID int	
)
as
Begin
	Select * from DiaryEntries where DiaryEntryID = @DiaryEntryID
End
GO
/****** Object:  StoredProcedure [dbo].[DiaryEntries_Update]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DiaryEntries_Update]
(
	@DiaryEntryID int,
	@DiaryEntryTitle varchar(100),	
	@DiaryEntry varchar(max),
	@ImageSource1 varchar(100),
	@ImageSource2 varchar(100),
	@ImageSource3 varchar(100)
)
as
Begin
	Update DiaryEntries
	set DiaryEntryTitle = @DiaryEntryTitle,
		DiaryEntry = @DiaryEntry,
		ImageSource1 = @ImageSource1,
		ImageSource2 = @ImageSource2,
		ImageSource3 = @ImageSource3
	where DiaryEntryID = @DiaryEntryID
end
GO
/****** Object:  StoredProcedure [dbo].[DiaryEntries_Update_AddImages]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DiaryEntries_Update_AddImages]
(
	@DiaryEntryID int,
	@ImageSource1 varchar(100),
	@ImageSource2 varchar(100),
	@ImageSource3 varchar(100)
)
as
Begin
	Update DiaryEntries
	set ImageSource1 = @ImageSource1,
		ImageSource2 = @ImageSource2,
		ImageSource3 = @ImageSource3
	where DiaryEntryID = @DiaryEntryID
end
GO
/****** Object:  StoredProcedure [dbo].[DiaryEntries_ViewAll]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DiaryEntries_ViewAll]
as
Begin
	Select * from DiaryEntries order by DiaryEntryID desc
End
GO
/****** Object:  StoredProcedure [dbo].[Divisions_ShortView]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Divisions_ShortView]
as
BEGIN
	SELECT DivisionID, DivisionName
	FROM   Divisions
END
GO
/****** Object:  StoredProcedure [dbo].[EventLocations_ShortView]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[EventLocations_ShortView]
as
Begin
	SELECT EventLocationID, EventLocationDesc
	FROM   EventLocations
END
GO
/****** Object:  StoredProcedure [dbo].[EventLocations_ViewAll]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[EventLocations_ViewAll]
as
Begin
	SELECT EventLocationID, EventLocationDesc
	FROM   EventLocations
END
GO
/****** Object:  StoredProcedure [dbo].[EventNumbers_ShortView]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[EventNumbers_ShortView]
as
Begin
	SELECT EventNumberID, EventNumberDescription
	FROM   EventNumbers
END
GO
/****** Object:  StoredProcedure [dbo].[EventWorkouts_ViewAll]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[EventWorkouts_ViewAll]
as
Begin
	SELECT EventWorkoutID, CompetitionEventID, EventNumberID, ExerciseID, Reps, DistanceInMeters, TimeInSeconds, WorkoutDescription, SpecialRequirements
	FROM   EventWorkouts
END
GO
/****** Object:  StoredProcedure [dbo].[Exercises_ShortView]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Exercises_ShortView]
as
Begin
	SELECT ExerciseID, Exercise
	FROM   Exercises
END
GO
/****** Object:  StoredProcedure [dbo].[Scales_ShortView]    Script Date: 06/07/2022 20:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[Scales_ShortView]
as
BEGIN
	SELECT ScaleID, ScaleDescription
	FROM   Scales
END
GO
