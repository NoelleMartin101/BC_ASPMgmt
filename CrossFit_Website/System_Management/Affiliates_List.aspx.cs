using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class Affiliates_List : System.Web.UI.Page
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
        GridFilterMenu menu = grid_Affiliates.FilterMenu;
        menu.Visible = false;
    }


    protected void grid_Affiliates_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            int affiliateID = (int)editedItem.GetDataKeyValue("AffiliateID");

            var code = editedItem.FindControl("ddlCountry") as RadComboBox;
            int countryID = int.Parse(code.SelectedValue);
            var name = editedItem.FindControl("txtAffiliateName") as TextBox;
            string affName = name.Text;
            var phone = editedItem.FindControl("txtContactPhone") as TextBox;
            string affPhone = phone.Text;
            var email = editedItem.FindControl("txtContactEmail") as TextBox;
            string affEmail = email.Text;
            var address = editedItem.FindControl("txtAffilateAddress") as TextBox;
            string affAddress = address.Text;

           db.Affiliates_Update(affiliateID, countryID, affName, affPhone, affEmail, affAddress);
            grid_Affiliates.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_Affiliates_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;

            var code = editedItem.FindControl("ddlCountry") as RadComboBox;
            int countryID = int.Parse(code.SelectedValue);
            var name = editedItem.FindControl("txtAffiliateName") as TextBox;
            string affName = name.Text;
            var phone = editedItem.FindControl("txtContactPhone") as TextBox;
            string affPhone = phone.Text;
            var email = editedItem.FindControl("txtContactEmail") as TextBox;
            string affEmail = email.Text;
            var address = editedItem.FindControl("txtAffilateAddress") as TextBox;
            string affAddress = address.Text;

            db.Affiliates_Insert(countryID, affName, affPhone, affEmail, affAddress);
            grid_Affiliates.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

