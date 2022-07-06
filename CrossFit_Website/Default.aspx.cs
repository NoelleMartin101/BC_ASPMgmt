
using System;
using System.Web.UI;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           
        }
    }

    protected void btn_Connect_Click(object sender, EventArgs e)
    {
        ManageUserPageAccess();
    }

    private void ManageUserPageAccess()
    {
        Response.Redirect("~/Admin_Users/Dashboard.aspx");
          
    }
}