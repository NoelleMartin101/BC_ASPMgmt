using System;
using System.Web;
using System.Web.UI;

public partial class ViewDiaryEntries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //this.Form.DefaultButton = this.btn_Update.UniqueID;
            // Loads the selected record data into the form, sets the back button link, page default field focus and default action button
            LoadData();
        }
    }

    private void LoadData()
    {
        
    }

}


