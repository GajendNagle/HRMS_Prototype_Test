using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HRMS_GajendraTrn_CompassionateAppointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ClearField();

        }
    }

    protected void ClearField()
    {
        txtEmployeeId.Text = "";
    }
    protected void showDataBtn_Click(object sender, EventArgs e)
    {

        divoftextBox.Visible = false;
        divDataofAU5693.Visible = true;
        ClearField();

    }
}