
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
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();
        string result = "";
        db.VerifyUser(txtUserName.Text, txtPassword.Text, ref result);
        if (result == "Verified")
        {
            db.SystemUsersLogon_Insert(txtUserName.Text, txtPassword.Text);
            Response.Redirect("~/Admin_Users/Dashboard.aspx");
        }
        else lblNotVerified.Text = "You do not have access";


    }
}