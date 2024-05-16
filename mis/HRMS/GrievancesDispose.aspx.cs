using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_GrievancesDispose : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void chakbox_CheckedChanged(object sender, EventArgs e)
    {
        show.Visible = false;
        show2.Visible = false;
        show3.Visible = true;
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        show.Visible = false;
        show2.Visible = true;
        show3.Visible = false;
    }
}