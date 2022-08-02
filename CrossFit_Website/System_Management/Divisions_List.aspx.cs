using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class Divisions_List : System.Web.UI.Page
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
        GridFilterMenu menu = grid_Divisions.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_Divisions_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {

            GridEditableItem editedItem = e.Item as GridEditableItem;
            int DivisionID = (int)editedItem.GetDataKeyValue("DivisionID");

            var divName = editedItem.FindControl("txtDivisionName") as TextBox;
            string DivisionName = divName.Text;

            db.Divisions_Update(DivisionID,  DivisionName);
            grid_Divisions.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_Divisions_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;

            var divName = editedItem.FindControl("txtDivisionName") as TextBox;
            string DivisionName = divName.Text;
            db.Divisions_Insert(DivisionName);
            grid_Divisions.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

