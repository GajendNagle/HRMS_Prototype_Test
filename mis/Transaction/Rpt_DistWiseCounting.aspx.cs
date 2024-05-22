using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_Rpt_DistWiseCounting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (ddlDistrict.SelectedValue == "1")
        {
            filedDetails.Visible = true;
            field.Visible = false;
            details.Visible = false;
            detailstbl.Visible = false;


        }
        else if(ddlDistrict.SelectedValue =="2")
        {
            field.Visible = true;
            filedDetails.Visible = false;
            details.Visible = false;
            detailstbl.Visible = false;


        }
        else if(ddlDistrict.SelectedValue == "3")
        {
            details.Visible = true;
            detailstbl.Visible = false;
            field.Visible = false;
            filedDetails.Visible = false;

        }
        else if (ddlDistrict.SelectedValue == "4")
        {
            detailstbl.Visible = true;
            details.Visible = false;
            field.Visible = false;
            filedDetails.Visible = false;

        }
    }
}