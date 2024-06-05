using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Registration_RPT_MeargingSchools : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void View1_Click(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        report.Visible = true;
    }

    protected void Unnamed_CheckedChanged(object sender, EventArgs e)
    {
        lblMsg.Text = "sdfsdfdsf";
    }
}