using System;
using System.Web;
using System.Web.UI;
public partial class AddDiaryEntry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { 
            btn_Back.PostBackUrl = String.IsNullOrEmpty(Request.QueryString["returnurl"]) ? "~/DiaryEntries/ViewDiaryEntries.aspx" : HttpUtility.UrlDecode(Request.Url.Query.Substring(Request.Url.Query.IndexOf("returnurl") + 10));
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        db.DiaryEntries_Insert(txtTitle.Text, txtDiaryEntry.Content);

        Response.Redirect("~/DiaryEntries/ViewDiaryEntries.aspx");
    }
}


