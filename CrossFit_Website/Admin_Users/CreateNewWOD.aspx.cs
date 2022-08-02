using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

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

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            int? comp = int.Parse(ddlCompetition.SelectedValue);
            int? scale = int.Parse(ddlScale.SelectedValue);
            int? nofEve = int.Parse(txtNoFEvents.Text);
            int? lengthEve = int.Parse(txtLengthOfCompetition.Text);
            DateTime eventdte = dteDateOfEvent.SelectedDate.Value;
            int? loc = int.Parse(ddlLocation.Text);
            int? adOp;
            if (ddlAdaptiveOption.Text == "--- Please Select---") adOp = null;
            else adOp = int.Parse(ddlAdaptiveOption.Text);

            CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();
            db.CompetitionEvents_Insert(comp, scale, nofEve, eventdte, lengthEve, loc, adOp);

            Response.Redirect("~/Admin_Users/ViewCompetitions.aspx");
        }
        catch
        { return; }
    }
}


