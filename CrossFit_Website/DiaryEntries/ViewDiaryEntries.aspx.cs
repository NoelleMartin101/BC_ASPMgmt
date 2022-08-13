using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
public partial class ViewDiaryEntries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Command(object sender, System.Web.UI.WebControls.CommandEventArgs e)
    {
        CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();

        #region Variables/Data
        try
        {
            RepeaterItem item = (RepeaterItem)((LinkButton)sender).NamingContainer;
            RadEditor diaryEntry_txt = (RadEditor)item.FindControl("txtDiaryEntry");
            
            int id = int.Parse(e.CommandArgument.ToString());

            db.DiaryEntries_Update(id, diaryEntry_txt.Content);
            
            Response.Redirect(Request.RawUrl);

        }
        catch
        {
            return;
        }
        #endregion

    }

    protected void btn_Edit_Click(object sender, EventArgs e)
    {
        RepeaterItem item = (RepeaterItem)((LinkButton)sender).NamingContainer;
        Label diaryEntry_lbl = (Label)item.FindControl("lblEntry");
        RadEditor diaryEntry_txt = (RadEditor)item.FindControl("txtDiaryEntry");
        LinkButton edit_btn = (LinkButton)item.FindControl("btnEdit");
        LinkButton save_btn = (LinkButton)item.FindControl("btnSave");
        LinkButton cancel_btn = (LinkButton)item.FindControl("btnCancel");

        diaryEntry_lbl.Visible = false;
        diaryEntry_txt.Visible = true;
        edit_btn.Visible = false;
        save_btn.Visible = true;
        cancel_btn.Visible = true;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        RepeaterItem item = (RepeaterItem)((LinkButton)sender).NamingContainer;
        Label diaryEntry_lbl = (Label)item.FindControl("lblEntry");
        RadEditor diaryEntry_txt = (RadEditor)item.FindControl("txtDiaryEntry");
        LinkButton edit_btn = (LinkButton)item.FindControl("btnEdit");
        LinkButton save_btn = (LinkButton)item.FindControl("btnSave");
        LinkButton cancel_btn = (LinkButton)item.FindControl("btnCancel");

        diaryEntry_lbl.Visible = true;
        diaryEntry_txt.Visible = false;
        edit_btn.Visible = true;
        save_btn.Visible = false;
        cancel_btn.Visible = false;
    }
}


