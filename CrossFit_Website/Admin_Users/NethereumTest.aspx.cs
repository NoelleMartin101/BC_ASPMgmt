using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using System.Threading.Tasks;
using Nethereum.Web3;
using Nethereum.Web3.Accounts;
using Nethereum.Web3.Accounts.Managed;


public partial class NethereumTest : System.Web.UI.Page
{
    protected static string openNFTURL_app = System.Configuration.ConfigurationManager.AppSettings["OpenNFTURl"];
    // Occurs when page is being loaded
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {            
           GetAccountBalance();

        }
    }

    protected void GetAccountBalance()
    {
        string openNFTurl = openNFTURL_app;

        //var web3 = new Web3(openNFTurl);// End point
        //var balance = await Web3.Eth.GetBalance.SendRequestAsync(""); // Wallet Address
        //var etherAmount = Web3.Convert.FromWei(balance.Value);
    }
}

