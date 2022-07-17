using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class AdaptiveOptions_List : System.Web.UI.Page
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
        GridFilterMenu menu = grid_AdaptiveOptions.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_AdaptiveOptions_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {

            GridEditableItem editedItem = e.Item as GridEditableItem;
            int adaptiveOptionID = (int)editedItem.GetDataKeyValue("AdaptiveOptionID");

            var aOption = editedItem.FindControl("txtAdaptiveOption") as TextBox;
            string adaptiveOption = aOption.Text;

            db.AdaptiveOptions_Update(adaptiveOptionID, adaptiveOption);
            grid_AdaptiveOptions.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_AdaptiveOptions_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            var aOption = editedItem.FindControl("txtAdaptiveOption") as TextBox;
            string adaptiveOption = aOption.Text;

            db.AdaptiveOptions_Insert(adaptiveOption);
            grid_AdaptiveOptions.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

