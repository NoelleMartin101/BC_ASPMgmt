using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class EditCompetition : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            btn_Back.PostBackUrl = String.IsNullOrEmpty(Request.QueryString["returnurl"]) ? "~/Admin_Users/Dashboard.aspx" : HttpUtility.UrlDecode(Request.Url.Query.Substring(Request.Url.Query.IndexOf("returnurl") + 10));
            LoadData();
        }

    }
    private void LoadData()
    {
        int? competitionEventID = int.Parse(Request["CompetitionEventID"]);
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        CompetitionEvents_SingleRecordResult record = db.CompetitionEvents_SingleRecord(competitionEventID).SingleOrDefault();
        dteDateOfEvent.SelectedDate = record.DateOfEvent;
        txtNoFEvents.Text = record.NofEvents.ToString();
        txtLengthOfCompetition.Text = record.LengthOfEvent.ToString();

        ddlLocation.SelectedValue = record.EventLocationID.ToString();
        ddlCompetition.SelectedValue = record.CompetitionID.ToString();
        ddlScale.SelectedValue = record.ScaleID.ToString();

        if (record.AdaptiveOptionID != null)
            ddlAdaptiveOption.SelectedValue = record.AdaptiveOptionID.ToString();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            int? compEventID = int.Parse(Request["CompetitionEventID"]);
            int? comp = int.Parse(ddlCompetition.SelectedValue);
            int? scale = int.Parse(ddlScale.SelectedValue);
            int? nofEve = int.Parse(txtNoFEvents.Text);
            int? lengthEve = int.Parse(txtLengthOfCompetition.Text);
            DateTime eventdte = dteDateOfEvent.SelectedDate.Value;
            int? loc = int.Parse(ddlLocation.Text);
            int? adOp;
            if (ddlAdaptiveOption.Text == "--- Please Select---") adOp = null;
            else adOp = int.Parse(ddlAdaptiveOption.Text);

            CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();
            db.CompetitionEvents_Update(compEventID, comp, scale, nofEve, eventdte, lengthEve, loc, adOp);

            Response.Redirect("~/Admin_Users/ViewCompetitions.aspx");
        }
        catch
        {
            return;
        }
    }

    protected void btnSaveAndComplete_Click(object sender, EventArgs e)
    {
        try
        {
            int? compEventID = int.Parse(Request["CompetitionEventID"]);
            int? comp = int.Parse(ddlCompetition.SelectedValue);
            int? scale = int.Parse(ddlScale.SelectedValue);
            int? nofEve = int.Parse(txtNoFEvents.Text);
            int? lengthEve = int.Parse(txtLengthOfCompetition.Text);
            DateTime eventdte = dteDateOfEvent.SelectedDate.Value;
            int? loc = int.Parse(ddlLocation.Text);
            int? adOp;
            if (ddlAdaptiveOption.Text == "--- Please Select---") adOp = null;
            else adOp = int.Parse(ddlAdaptiveOption.Text);

            CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();
            db.CompetitionEvents_Update(compEventID, comp, scale, nofEve, eventdte, lengthEve, loc, adOp);
            db.CompetitionEvents_Completed(compEventID);
            Response.Redirect("~/Admin_Users/ViewCompetitions.aspx");
        }
        catch
        {
            return;
        }
    }


    protected void grid_EventExercises_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        int? compEventID = int.Parse(Request["CompetitionEventID"]);
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            int eventWorkoutID = (int)editedItem.GetDataKeyValue("EventWorkoutID");

            var eventNumber = editedItem.FindControl("ddlEventNumberDescription") as RadComboBox;
            int eventNo = int.Parse(eventNumber.SelectedValue);
            var exercise = editedItem.FindControl("ddlExercise") as RadComboBox;
            int exerID = int.Parse(exercise.SelectedValue);


            var reps = editedItem.FindControl("txtReps") as TextBox;
            int? rep;
            if (reps.Text == "") rep = null;
            else rep = int.Parse(reps.Text);
            var distanceInMeters = editedItem.FindControl("txtDistanceInMeters") as TextBox;
            int? distance;
            if (distanceInMeters.Text == "") distance = null;
            else distance = int.Parse(distanceInMeters.Text);
            var timeInSeconds = editedItem.FindControl("txtTimeInSeconds") as TextBox;
            int? time;
            if (timeInSeconds.Text == "") time = null;
            else time = int.Parse(timeInSeconds.Text);

            var workoutDescription = editedItem.FindControl("txtWorkoutDescription") as TextBox;
            string workoutDesc = workoutDescription.Text;
            var specialRequirements = editedItem.FindControl("txtSpecialRequirements") as TextBox;
            string spcReq = specialRequirements.Text;

            db.EventWorkouts_Update(eventWorkoutID, compEventID, eventNo, exerID, rep, distance, time, workoutDesc, spcReq);
            grid_EventExercises.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_EventExercises_InsertCommand(object sender, GridCommandEventArgs e)
    {
        int? compEventID = int.Parse(Request["CompetitionEventID"]);
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;

            var eventNumber = editedItem.FindControl("ddlEventNumberDescription") as RadComboBox;
            int eventNo = int.Parse(eventNumber.SelectedValue);
            var exercise = editedItem.FindControl("ddlExercise") as RadComboBox;
            int exerID = int.Parse(exercise.SelectedValue);

            var reps = editedItem.FindControl("txtReps") as TextBox;
            int? rep;
            if (reps.Text == "") rep = null;
            else rep = int.Parse(reps.Text);
            var distanceInMeters = editedItem.FindControl("txtDistanceInMeters") as TextBox;
            int? distance;
            if (distanceInMeters.Text == "") distance = null;
            else distance = int.Parse(distanceInMeters.Text);
            var timeInSeconds = editedItem.FindControl("txtTimeInSeconds") as TextBox;
            int? time;
            if (timeInSeconds.Text == "") time = null;
            else time = int.Parse(timeInSeconds.Text);

            var workoutDescription = editedItem.FindControl("txtWorkoutDescription") as TextBox;
            string workoutDesc = workoutDescription.Text;
            var specialRequirements = editedItem.FindControl("txtSpecialRequirements") as TextBox;
            string spcReq = specialRequirements.Text;

            db.EventWorkouts_Insert(compEventID, eventNo, exerID, rep, distance, time, workoutDesc, spcReq);
            grid_EventExercises.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}


