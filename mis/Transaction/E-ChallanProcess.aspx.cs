using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_E_ChallanProcess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void searchButton_Click1(object sender, EventArgs e)
    {
        if (ddlType.SelectedValue == "1")
        {
            table1.Visible = true;
        }
        else
        {
            table1.Visible = false;
        }

        if (ddlType.SelectedValue == "2")
        {
            table2.Visible = true;
        }
        else
        {
            table2.Visible = false;
        }
    }
}