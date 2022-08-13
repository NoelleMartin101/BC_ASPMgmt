<%@ Page Title="NethereumTest List" Language="C#" MasterPageFile="~/CrossFit.master" AutoEventWireup="true" CodeFile="NethereumTest.aspx.cs" Inherits="NethereumTest" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="pageHeader" ContentPlaceHolderID="head" runat="Server">
    <script src="https://cdn.jsdelivr.net/gh/ethereum/web3.js@1.0.0-beta.36/dist/web3.min.js" integrity="sha256-nWBTbvxhJgjslRyuAKJHK+XcZPlCnmIAAMixz6EefVk=" crossorigin="anonymous"></script>

</asp:Content>
<asp:Content ID="pageContent" ContentPlaceHolderID="body" runat="Server">
    <div class="row managementPageHeader">
        <div class="col-lg-12 adminButtons">
            <asp:LinkButton runat="server" ID="btn_Back" Style="float: left;" CausesValidation="false"> <span class="glyphicon glyphicon-arrow-left"></span>&nbsp; Back</asp:LinkButton>
            <p><b>&nbsp;&nbsp; Test Nethereum - Get Account Balance</b></p>
        </div>
    </div>
    <div>
        <div>
            <p id="userAreaWallet">Status: Not connected to Metamask</p>
            <button class="btn btn-success logInBtn" type="button" onclick="connectMetamaskSub()">Connect to Wallet
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button><br /><br />
            <p id="userAreaContract">Status: Not connected to Contract</p>
            <div id="userAreaContractbtn" width="100%">
                <button class="btn btn-success" type="button" onclick="connectContract()"><i
                        class="fa fa-tasks"></i>&nbsp;&nbsp;&nbsp;Connect to Contract
                    </button>
            </div>

        </div>
    </div>
    <script>
        let account;
        const connectMetamaskSub = async () => {
            if (window.ethereum !== "underfined") {
                const accounts = await ethereum.request({ method: "eth_requestAccounts" });
                account = accounts[0];
                document.getElementById("userAreaWallet").innerHTML = `User Account: ${account}`;
            }
        }
        const connectContract = async () => {
            const ABI = [
                {
                    "constant": false,
                    "inputs": [
                        {
                            "internalType": "uint256",
                            "name": "score",
                            "type": "uint256"
                        }
                    ],
                    "name": "postScore",
                    "outputs": [
                        {
                            "internalType": "uint256",
                            "name": "",
                            "type": "uint256"
                        }
                    ],
                    "payable": false,
                    "stateMutability": "nonpayable",
                    "type": "function"
                },
                {
                    "constant": true,
                    "inputs": [
                        {
                            "internalType": "uint256",
                            "name": "",
                            "type": "uint256"
                        }
                    ],
                    "name": "athletes",
                    "outputs": [
                        {
                            "internalType": "address",
                            "name": "",
                            "type": "address"
                        }
                    ],
                    "payable": false,
                    "stateMutability": "view",
                    "type": "function"
                }
            ];
            const Address = "0xbCA22768F1C0d533DC81435c53B458A64F714b1E";
            window.web3 = await new Web3(window.ethereum);
            window.contract = await new window.web3.eth.Contract(ABI, Address);
            document.getElementById("userAreaContract").innerHTML = "Connection Status: Success";
        }

       

        const web3 = new Web3('https://ropsten.infura.io/v3/Qme7W6QszZKgU815joAyqg9vSVcSKLZRBPzsnebKhLxgtY') // Your Infura Endpoint here 


        // use your account1 and account2 from metamask here!
        const account1 = '' // Your account address 1
        const account2 = '' // Your account address 2

        // put in your private keys here (from metamask)
        const privateKey1 = Buffer.from('', 'hex')
        const privateKey2 = Buffer.from('', 'hex')


        // Read the deployed contract - get the addresss from Etherscan 
        // - use your deployed contract address here!
        const contractAddress = ''

        const contractABI = // YOUR CONTRACT ABI HERE
        const contract = new web3.eth.Contract(contractABI, contractAddress)


        const getTransactionCount = async (account) => {
            return await web3.eth.getTransactionCount(account)
        }

        const sendTransaction = async (raw) => {
            return await web3.eth.sendSignedTransaction(raw)
        }

        const transferFunds = async (account1, account2, amount) => {

            let txCount = await getTransactionCount(account1)

            console.log("txCount returned: " + txCount)

            const txObject = {
                nonce: web3.utils.toHex(txCount),
                gasLimit: web3.utils.toHex(100000), // uses about 36,000 gas so add some buffer
                gasPrice: web3.utils.toHex(web3.utils.toWei('30', 'gwei')),
                to: contractAddress,
                data: contract.methods.transfer(account2, amount).encodeABI()
            }

            const tx = new Tx(txObject, { chain: 'ropsten', hardfork: 'petersburg' })

            tx.sign(privateKey1)

            const serializedTx = tx.serialize()
            const raw = '0x' + serializedTx.toString('hex')

            console.log("raw hex transaction: " + raw)

            console.log("about to send transaction")

            let minedTransaction = await sendTransaction(raw)
            console.log("transaction hash returned: " + minedTransaction.transactionHash)

            return `txHash is: ${minedTransaction.transactionHash}`
        }

        // async methods
        const getBalanceOf = async (account) => {
            let balanceOf = await contract.methods.balanceOf(account).call()
            return `balance of account ${account} is ${balanceOf}`
        }

        const go = async () => {
            console.log(await getBalanceOf(account1))
            console.log(await getBalanceOf(account2))
            await transferFunds(account1, account2, "1000000000000000000")
        }

        module.exports = { transferFunds, getBalanceOf }

        go()








    </script>
</asp:Content>

