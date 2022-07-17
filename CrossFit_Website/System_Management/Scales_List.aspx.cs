using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class Scales_List : System.Web.UI.Page
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
        GridFilterMenu menu = grid_Scales.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_Scales_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {

            GridEditableItem editedItem = e.Item as GridEditableItem;
            int ScaleID = (int)editedItem.GetDataKeyValue("ScaleID");

            var desc = editedItem.FindControl("txtScaleDescription") as TextBox;
            string ScaleDescription = desc.Text;

            db.Scales_Update(ScaleID, ScaleDescription);
            grid_Scales.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_Scales_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;

            var desc = editedItem.FindControl("txtScaleDescription") as TextBox;
            string ScaleDescription = desc.Text;

            db.Scales_Insert(ScaleDescription);
            grid_Scales.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

