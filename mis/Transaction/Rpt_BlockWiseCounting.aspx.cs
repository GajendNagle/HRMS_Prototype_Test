using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_Rpt_BlockWiseCounting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        if (ddlDistrictN.SelectedValue == "1")
        {
            table1.Visible = true;
        }
        else
        {
            table1.Visible = false;
        }
        if (ddlDistrictN.SelectedValue == "2")
        {
            table2.Visible = true;
        }
        else
        {
            table2.Visible = false;
        }

        if (ddlDistrictN.SelectedValue == "3")
        {
            table3.Visible = true;
        }
        else
        {
            table3.Visible = false;
        }

        if (ddlDistrictN.SelectedValue == "4")
        {
            table4.Visible = true;
        }
        else
        {
            table4.Visible = false;
        }

        if (ddlDistrictN.SelectedValue == "5")
        {
            table5.Visible = true;
        }
        else
        {
            table5.Visible = false;
        }

        if (ddlDistrictN.SelectedValue == "6")
        {
            table6.Visible=true;
        }
        else
        {
            table6.Visible = false;
        }
    }

  
}