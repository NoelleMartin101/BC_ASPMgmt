using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class ExerciseAreas_List : System.Web.UI.Page
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
        GridFilterMenu menu = grid_ExerciseAreas.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_ExerciseAreas_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {

            GridEditableItem editedItem = e.Item as GridEditableItem;
            int ExerciseBodyAreaID = (int)editedItem.GetDataKeyValue("ExerciseBodyAreaID");

            var ExerciseAreaDes = editedItem.FindControl("txtExerciseAreaDescription") as TextBox;
            string ExerciseAreaDescription = ExerciseAreaDes.Text;

            db.ExerciseAreas_Update(ExerciseBodyAreaID, ExerciseAreaDescription);
            grid_ExerciseAreas.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_ExerciseAreas_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            int ExerciseAreaID = (int)editedItem.GetDataKeyValue("ExerciseBodyAreaID");

            var ExerciseAreaDes = editedItem.FindControl("txtExerciseAreaDescription") as TextBox;
            string ExerciseAreaDescription = ExerciseAreaDes.Text;

            db.ExerciseAreas_Update(ExerciseAreaID, ExerciseAreaDescription);
            grid_ExerciseAreas.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

