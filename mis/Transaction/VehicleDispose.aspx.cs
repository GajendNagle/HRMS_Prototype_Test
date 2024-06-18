using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_VehicleDisposeReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlVehicleNumber_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlVehicleNumber.SelectedValue == "1")
        {
            txt1.Text = "Hatchback";
            txt2.Text = "Tiago";
            txt3.Text = "1HGCM82633A123456";
            txt4.Text = "MP04CH4163";
            txt5.Text = "Tata Motors";
            txt6.Text = "2022";
            VehicleAllotementNo.Visible= true;
        }
        else if (ddlVehicleNumber.SelectedValue == "2")
        {
            txt1.Text = "Hatchback";
            txt2.Text = "Tiago";
            txt3.Text = "1HGCM82633A142552";
            txt4.Text = "MP04CH9580";
            txt5.Text = "Tata Motors";
            txt6.Text = "2023";
            VehicleAllotementNo.Visible = true;
        }
        else
        {
            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";
            txt4.Text = "";
            txt5.Text = "";
            txt6.Text = "";
            VehicleAllotementNo.Visible = false;
        }
        
    }
}