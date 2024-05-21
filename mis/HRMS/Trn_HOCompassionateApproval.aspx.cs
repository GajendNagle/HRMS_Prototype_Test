using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HRMS_Trn_HOCompassionateApproval : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void showDataBtn_Click(object sender, EventArgs e)
    {
        divoftextBox.Visible = false;
        divDataofAU5693.Visible = true;
        txtEmployeeId.Text = "";
    }
}