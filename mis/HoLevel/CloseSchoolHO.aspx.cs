using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HoLevel_CloseSchoolHO : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void View1_Click(object sender, EventArgs e)
    {
        report.Visible = true;
        divbtn.Visible = true;
        //dcp.Visible = true;
    }
}