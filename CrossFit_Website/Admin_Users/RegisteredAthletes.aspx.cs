using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class RegisteredAthletes : System.Web.UI.Page
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
        GridFilterMenu menu = grid_RegisteredUsers.FilterMenu;
        menu.Visible = false;
    }
}

