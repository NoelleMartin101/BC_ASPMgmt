using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class SystemUsers_List : System.Web.UI.Page
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

    protected void grid_RegisteredUsers_UpdateCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            int systemUserID = (int)editedItem.GetDataKeyValue("SystemUserID");

            var suRole = editedItem.FindControl("ddlUserRoles") as RadComboBox;
            int role = int.Parse(suRole.SelectedValue);

            var suName = editedItem.FindControl("txtSystemUserName") as TextBox;
            string name = suName.Text;

            var suEmail = editedItem.FindControl("txtSystemUserEmail") as TextBox;
            string email = suEmail.Text;

            var suPhone = editedItem.FindControl("txtSystemUserContactNumber") as TextBox;
            string phone = suPhone.Text;

            var userName = editedItem.FindControl("txtUserName") as TextBox;
            string uname = userName.Text;
            var userPassword = editedItem.FindControl("txtUserPassword") as TextBox;
            string uPwd = userPassword.Text;

            db.SystemUsers_Update(systemUserID, name, role, email, phone, uname, uPwd);
            grid_RegisteredUsers.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }

    protected void grid_RegisteredUsers_InsertCommand(object sender, GridCommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;

            var suRole = editedItem.FindControl("ddlUserRoles") as RadComboBox;
            int role = int.Parse(suRole.SelectedValue);

            var suName = editedItem.FindControl("txtSystemUserName") as TextBox;
            string name = suName.Text;

            var suEmail = editedItem.FindControl("txtSystemUserEmail") as TextBox;
            string email = suEmail.Text;

            var suPhone = editedItem.FindControl("txtSystemUserContactNumber") as TextBox;
            string phone = suPhone.Text;
            
            var userName = editedItem.FindControl("txtUserName") as TextBox;
            string uname = userName.Text;
            var userPassword = editedItem.FindControl("txtUserPassword") as TextBox;
            string uPwd = userPassword.Text;

            string message = "";
            db.SystemUsers_Insert(name, role, email, phone, uname, uPwd, ref message);
            grid_RegisteredUsers.Rebind();
        }
        catch
        {
            return;
        }
        #endregion
    }
}

