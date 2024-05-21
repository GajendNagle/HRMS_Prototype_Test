using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_PromotionCancelOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlEmp_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlEmp.SelectedValue=="1")
        {
            txtEmpID.Visible = true;
            txtOrderNo.Visible = false;


        }
        else if (ddlEmp.SelectedValue=="2")
        {
            txtOrderNo.Visible = true;
            txtEmpID.Visible = false;

        }
        else
        {
            txtOrderNo.Visible = false;
            txtEmpID.Visible = false;

        }
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {

    }
}