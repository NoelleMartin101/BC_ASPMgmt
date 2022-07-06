using System;
using System.Web;
using System.Web.UI;

public partial class CreateNewWOD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            btn_Back.PostBackUrl = String.IsNullOrEmpty(Request.QueryString["returnurl"]) ? "~/Admin_Users/Dashboard.aspx" : HttpUtility.UrlDecode(Request.Url.Query.Substring(Request.Url.Query.IndexOf("returnurl") + 10));
        }

    }
}


