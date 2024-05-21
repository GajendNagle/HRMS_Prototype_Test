using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dv_OTPEnter.Visible = false;
            dv_Passworddetail.Visible = false;
        }
    }

    protected void btnGenerateOTP_Click(object sender, EventArgs e)
    {
        dv_OTPEnter.Visible = true;

    }

    protected void btnVerifyOTP_Click(object sender, EventArgs e)
    {
        dv_Passworddetail.Visible = true;

    }
}