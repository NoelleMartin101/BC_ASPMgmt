using System;
using Nethereum.Web3;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

public partial class Dashboard : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }

    protected void LoadData()
    {

    }
    protected void RegisteredUsersChart()
    {
        //CrossFitTrackerDataContext db = new CrossFitTrackerDataContext();
        //RegisterUsers_ChartDataResults chartData = db.RegisterUsers_ChartDataResult();
        //DataSet ds = new DataSet();
        //SqlDataAdapter da = new SqlDataAdapter("select * from mcnemp", con);
        //da.Fill(ds);
        //Chart1.DataSource = ds;
    }


    protected void btnQFNft_Click(object sender, EventArgs e)
    {

    }
}