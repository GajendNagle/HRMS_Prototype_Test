using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_E_ChallanDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void searchButton_Click(object sender, EventArgs e)
    {
        if(ddlType.SelectedValue == "1")
        {
            InTimeDetails.Visible = true;
        }
        else
        {
            InTimeDetails.Visible = false;
        }

        if (ddlType.SelectedValue == "2")
        {
            OutTimeDetails.Visible = true;
        }
        else
        {
            OutTimeDetails.Visible = false;
        }
    }
}