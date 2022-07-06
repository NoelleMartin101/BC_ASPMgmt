using System;

public partial class CrossFit : System.Web.UI.MasterPage
{    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void lnk_Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"~\Default.aspx");
    }
}
