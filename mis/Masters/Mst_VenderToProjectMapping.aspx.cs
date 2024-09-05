using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Masters_Mst_VenderToProjectMapping : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
       if(ddlProjectNo.SelectedValue == "1" & ddlProjectYear.SelectedValue == "1")
        {
            table1.Visible = true;
        }
       else
        {
            table1.Visible = false;
        }

        if (ddlProjectNo.SelectedValue == "2" & ddlProjectYear.SelectedValue == "2")
        {
            table2.Visible = true;
        }
        else
        {
            table2.Visible = false;
        }

      

    }
}