using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class Exercises_List : System.Web.UI.Page
{
    // Occurs when page is being loaded
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            btn_Back.PostBackUrl = String.IsNullOrEmpty(Request.QueryString["returnurl"]) ? "~/Default.aspx" : HttpUtility.UrlDecode(Request.Url.Query.Substring(Request.Url.Query.IndexOf("returnurl") + 10));
        }
    }
    public void grid_init(object sender, System.EventArgs e)
    {
        GridFilterMenu menu = grid_Exercises.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_Exercises_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {

            GridEditableItem editedItem = e.Item as GridEditableItem;
            int ExerciseID = (int)editedItem.GetDataKeyValue("ExerciseID");

            var area = editedItem.FindControl("ddlExerciseBodyArea") as RadComboBox;
            int bodyArea = int.Parse(area.SelectedValue);
            var code = editedItem.FindControl("txtExercise") as TextBox;
            string ExerciseCode = code.Text;
            var desc = editedItem.FindControl("txtExerciseDescription") as TextBox;
            string ExerciseDescription = desc.Text;

            db.Exercises_Update(ExerciseID, bodyArea,ExerciseCode, ExerciseDescription);
            grid_Exercises.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_Exercises_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;

            var area = editedItem.FindControl("ddlExerciseBodyArea") as RadComboBox;
            int bodyArea = int.Parse(area.SelectedValue);
            var code = editedItem.FindControl("txtExercise") as TextBox;
            string ExerciseCode = code.Text;
            var desc = editedItem.FindControl("txtExerciseDescription") as TextBox;
            string ExerciseDescription = desc.Text;

            db.Exercises_Insert(bodyArea,ExerciseCode, ExerciseDescription);
            grid_Exercises.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

