using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;


public partial class ToDo_List : System.Web.UI.Page
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
        GridFilterMenu menu = grid_CompetitionToDoLists.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_CompetitionToDoLists_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            int CompetitionToDoListID = (int)editedItem.GetDataKeyValue("CompetitionToDoListID");

            var details = editedItem.FindControl("txtListDetails") as TextBox;
            string dets = details.Text;
            var rAGStatus = editedItem.FindControl("ddlRAGStatus") as RadComboBox;
            string ragS = rAGStatus.SelectedValue.ToString();

            db.CompetitionToDoLists_Update(CompetitionToDoListID, dets, ragS, false);
            grid_CompetitionToDoLists.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_CompetitionToDoLists_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            
            var details = editedItem.FindControl("txtListDetails") as TextBox;
            string dets = details.Text;
            var rAGStatus = editedItem.FindControl("ddlRAGStatus") as RadComboBox;
            string ragS = rAGStatus.SelectedValue.ToString();

            db.CompetitionToDoLists_Insert(dets, ragS, false);
            grid_CompetitionToDoLists.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void btn_Complete_Command(object sender, CommandEventArgs e)
    {
        int id = int.Parse(e.CommandArgument.ToString());
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();
        db.CompetitionToDoLists_IsCompleted(id);
        grid_CompetitionToDoLists.Rebind();
    }
}

