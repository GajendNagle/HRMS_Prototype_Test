using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Scheme_Rpt_AccountDetailsDistrictWise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btnShowStudentDetails_Click(object sender, EventArgs e)
    {
        accountdistrict.Visible = true;
    }
}