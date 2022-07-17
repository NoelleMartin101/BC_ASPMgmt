using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class EventNumbers_List : System.Web.UI.Page
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
        GridFilterMenu menu = grid_EventNumbers.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_EventNumbers_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {

            GridEditableItem editedItem = e.Item as GridEditableItem;
            int EventNumberID = (int)editedItem.GetDataKeyValue("EventNumberID");

            var eventNumberDes = editedItem.FindControl("txtEventNumberDescription") as TextBox;
            string eventNumberDescription = eventNumberDes.Text;

            db.EventNumbers_Update(EventNumberID, eventNumberDescription);
            grid_EventNumbers.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_EventNumbers_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            int EventNumberID = (int)editedItem.GetDataKeyValue("EventNumberID");

            var eventNumberDes = editedItem.FindControl("txtEventNumberDescription") as TextBox;
            string eventNumberDescription = eventNumberDes.Text;

            db.EventNumbers_Update(EventNumberID, eventNumberDescription);
            grid_EventNumbers.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

