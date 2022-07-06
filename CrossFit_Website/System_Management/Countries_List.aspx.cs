using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class Countries_List : System.Web.UI.Page
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
        GridFilterMenu menu = grid_Countries.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_Countries_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {

            GridEditableItem editedItem = e.Item as GridEditableItem;
            int countryID = (int)editedItem.GetDataKeyValue("CountryID");

            var code = editedItem.FindControl("txtCountryCode") as TextBox;
            string countryCode = code.Text;
            var desc = editedItem.FindControl("txtCountryDescription") as TextBox;
            string countryDescription = desc.Text;

            db.Countries_Update(countryID, countryCode, countryDescription);
            grid_Countries.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_Countries_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;

            var code = editedItem.FindControl("txtCountryCode") as TextBox;
            string countryCode = code.Text;
            var desc = editedItem.FindControl("txtCountryDescription") as TextBox;
            string countryDescription = desc.Text;

            db.Countries_Insert(countryCode, countryDescription);
            grid_Countries.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

