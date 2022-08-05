using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using System.Threading.Tasks;
using Nethereum.Web3;


public partial class NethereumTest : System.Web.UI.Page
{
    // Occurs when page is being loaded
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {            
           // GetAccountBalance().Wait();

        }
    }
    //static async Task GetAccountBalance()
    //{
    //    var web3 = new web3("");// End point
    //    var balance = await web3.Eth.GetBalance.SendRequestAsync(""); // Wallet Address
    //    var etherAmount = web3.Convert.FromWei(balance.Value);
    //}
}

