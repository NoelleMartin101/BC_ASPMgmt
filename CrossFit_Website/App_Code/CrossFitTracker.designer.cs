﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="CrossfitTracker")]
public partial class CrossFitTrackerDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  #endregion
	
	public CrossFitTrackerDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["CrossFitConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public CrossFitTrackerDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public CrossFitTrackerDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public CrossFitTrackerDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public CrossFitTrackerDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.Countries_Insert")]
	public int Countries_Insert([global::System.Data.Linq.Mapping.ParameterAttribute(Name="CountryCode", DbType="VarChar(5)")] string countryCode, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="CountryDescription", DbType="VarChar(100)")] string countryDescription)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), countryCode, countryDescription);
		return ((int)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.Countries_Update")]
	public int Countries_Update([global::System.Data.Linq.Mapping.ParameterAttribute(Name="CountryID", DbType="Int")] System.Nullable<int> countryID, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="CountryCode", DbType="VarChar(5)")] string countryCode, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="CountryDescription", DbType="VarChar(100)")] string countryDescription)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), countryID, countryCode, countryDescription);
		return ((int)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.Countries_ViewAll")]
	public ISingleResult<Countries_ViewAllResult> Countries_ViewAll()
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
		return ((ISingleResult<Countries_ViewAllResult>)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.DiaryEntries_Insert")]
	public int DiaryEntries_Insert([global::System.Data.Linq.Mapping.ParameterAttribute(Name="DiaryEntryTitle", DbType="VarChar(100)")] string diaryEntryTitle, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="DiaryEntry", DbType="VarChar(MAX)")] string diaryEntry)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), diaryEntryTitle, diaryEntry);
		return ((int)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.DiaryEntries_SingleRecord")]
	public ISingleResult<DiaryEntries_SingleRecordResult> DiaryEntries_SingleRecord([global::System.Data.Linq.Mapping.ParameterAttribute(Name="DiaryEntryID", DbType="Int")] System.Nullable<int> diaryEntryID)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), diaryEntryID);
		return ((ISingleResult<DiaryEntries_SingleRecordResult>)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.DiaryEntries_Update")]
	public int DiaryEntries_Update([global::System.Data.Linq.Mapping.ParameterAttribute(Name="DiaryEntryID", DbType="Int")] System.Nullable<int> diaryEntryID, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="DiaryEntryTitle", DbType="VarChar(100)")] string diaryEntryTitle, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="DiaryEntry", DbType="VarChar(MAX)")] string diaryEntry, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="ImageSource1", DbType="VarChar(100)")] string imageSource1, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="ImageSource2", DbType="VarChar(100)")] string imageSource2, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="ImageSource3", DbType="VarChar(100)")] string imageSource3)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), diaryEntryID, diaryEntryTitle, diaryEntry, imageSource1, imageSource2, imageSource3);
		return ((int)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.DiaryEntries_ViewAll")]
	public ISingleResult<DiaryEntries_ViewAllResult> DiaryEntries_ViewAll()
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
		return ((ISingleResult<DiaryEntries_ViewAllResult>)(result.ReturnValue));
	}
}

public partial class Countries_ViewAllResult
{
	
	private int _CountryID;
	
	private string _CountryCode;
	
	private string _CountryDescription;
	
	public Countries_ViewAllResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CountryID", DbType="Int NOT NULL")]
	public int CountryID
	{
		get
		{
			return this._CountryID;
		}
		set
		{
			if ((this._CountryID != value))
			{
				this._CountryID = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CountryCode", DbType="VarChar(5)")]
	public string CountryCode
	{
		get
		{
			return this._CountryCode;
		}
		set
		{
			if ((this._CountryCode != value))
			{
				this._CountryCode = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CountryDescription", DbType="VarChar(100)")]
	public string CountryDescription
	{
		get
		{
			return this._CountryDescription;
		}
		set
		{
			if ((this._CountryDescription != value))
			{
				this._CountryDescription = value;
			}
		}
	}
}

public partial class DiaryEntries_SingleRecordResult
{
	
	private System.Nullable<int> _DiaryEntryID;
	
	private string _DiaryEntryTitle;
	
	private string _DiaryEntry;
	
	private string _ImageSource1;
	
	private string _ImageSource2;
	
	private string _ImageSource3;
	
	private System.Nullable<System.DateTime> _DiaryEntryDate;
	
	public DiaryEntries_SingleRecordResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaryEntryID", DbType="Int")]
	public System.Nullable<int> DiaryEntryID
	{
		get
		{
			return this._DiaryEntryID;
		}
		set
		{
			if ((this._DiaryEntryID != value))
			{
				this._DiaryEntryID = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaryEntryTitle", DbType="VarChar(100)")]
	public string DiaryEntryTitle
	{
		get
		{
			return this._DiaryEntryTitle;
		}
		set
		{
			if ((this._DiaryEntryTitle != value))
			{
				this._DiaryEntryTitle = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaryEntry", DbType="VarChar(MAX)")]
	public string DiaryEntry
	{
		get
		{
			return this._DiaryEntry;
		}
		set
		{
			if ((this._DiaryEntry != value))
			{
				this._DiaryEntry = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImageSource1", DbType="VarChar(150)")]
	public string ImageSource1
	{
		get
		{
			return this._ImageSource1;
		}
		set
		{
			if ((this._ImageSource1 != value))
			{
				this._ImageSource1 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImageSource2", DbType="VarChar(150)")]
	public string ImageSource2
	{
		get
		{
			return this._ImageSource2;
		}
		set
		{
			if ((this._ImageSource2 != value))
			{
				this._ImageSource2 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImageSource3", DbType="VarChar(150)")]
	public string ImageSource3
	{
		get
		{
			return this._ImageSource3;
		}
		set
		{
			if ((this._ImageSource3 != value))
			{
				this._ImageSource3 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaryEntryDate", DbType="DateTime")]
	public System.Nullable<System.DateTime> DiaryEntryDate
	{
		get
		{
			return this._DiaryEntryDate;
		}
		set
		{
			if ((this._DiaryEntryDate != value))
			{
				this._DiaryEntryDate = value;
			}
		}
	}
}

public partial class DiaryEntries_ViewAllResult
{
	
	private System.Nullable<int> _DiaryEntryID;
	
	private string _DiaryEntryTitle;
	
	private string _DiaryEntry;
	
	private string _ImageSource1;
	
	private string _ImageSource2;
	
	private string _ImageSource3;
	
	private System.Nullable<System.DateTime> _DiaryEntryDate;
	
	public DiaryEntries_ViewAllResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaryEntryID", DbType="Int")]
	public System.Nullable<int> DiaryEntryID
	{
		get
		{
			return this._DiaryEntryID;
		}
		set
		{
			if ((this._DiaryEntryID != value))
			{
				this._DiaryEntryID = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaryEntryTitle", DbType="VarChar(100)")]
	public string DiaryEntryTitle
	{
		get
		{
			return this._DiaryEntryTitle;
		}
		set
		{
			if ((this._DiaryEntryTitle != value))
			{
				this._DiaryEntryTitle = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaryEntry", DbType="VarChar(MAX)")]
	public string DiaryEntry
	{
		get
		{
			return this._DiaryEntry;
		}
		set
		{
			if ((this._DiaryEntry != value))
			{
				this._DiaryEntry = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImageSource1", DbType="VarChar(150)")]
	public string ImageSource1
	{
		get
		{
			return this._ImageSource1;
		}
		set
		{
			if ((this._ImageSource1 != value))
			{
				this._ImageSource1 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImageSource2", DbType="VarChar(150)")]
	public string ImageSource2
	{
		get
		{
			return this._ImageSource2;
		}
		set
		{
			if ((this._ImageSource2 != value))
			{
				this._ImageSource2 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImageSource3", DbType="VarChar(150)")]
	public string ImageSource3
	{
		get
		{
			return this._ImageSource3;
		}
		set
		{
			if ((this._ImageSource3 != value))
			{
				this._ImageSource3 = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DiaryEntryDate", DbType="DateTime")]
	public System.Nullable<System.DateTime> DiaryEntryDate
	{
		get
		{
			return this._DiaryEntryDate;
		}
		set
		{
			if ((this._DiaryEntryDate != value))
			{
				this._DiaryEntryDate = value;
			}
		}
	}
}
#pragma warning restore 1591