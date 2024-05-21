using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_EmployeeAcrFill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        show. Visible = true;
        show2.Visible = false;
    }

    protected void Unnamed_Click1(object sender, EventArgs e)
    {
        show. Visible = true;
        show2.Visible = false;
    }

   

    protected void Unnamed_Click3(object sender, EventArgs e)
    {     
        show.Visible = false;
        show2.Visible = false;
        Response.Redirect("AcrReport.aspx");
    }
}