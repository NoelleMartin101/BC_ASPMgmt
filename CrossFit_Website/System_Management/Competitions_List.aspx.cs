using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class Competitions_List : System.Web.UI.Page
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
        GridFilterMenu menu = grid_Competitions.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_Competitions_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {

            GridEditableItem editedItem = e.Item as GridEditableItem;
            int CompetitionID = (int)editedItem.GetDataKeyValue("CompetitionID");

            var divName = editedItem.FindControl("txtCompetitionDescription") as TextBox;
            string CompetitionName = divName.Text;

            db.Competitions_Update(CompetitionID,  CompetitionName);
            grid_Competitions.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_Competitions_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;

            var divName = editedItem.FindControl("txtCompetitionDescription") as TextBox;
            string CompetitionName = divName.Text;
            db.Competitions_Insert(CompetitionName);
            grid_Competitions.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

