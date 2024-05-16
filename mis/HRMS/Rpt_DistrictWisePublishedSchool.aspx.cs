using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HRMS_Rpt_DistrictWisePublishedSchool : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlDistrict.SelectedItem.Text == "Raisen")
        {
            ddlBlock.ClearSelection();
            FillLocation(ddlBlock, new[] { "Sagar", "Vidisha" });
        }

        else if (ddlDistrict.SelectedItem.Text == "Shivpuri")
        {
            ddlBlock.ClearSelection();
            FillLocation(ddlBlock, new[] { "Dabra", "Morar" });
        }
        else if (ddlDistrict.SelectedItem.Text == "Guna")
        {
            ddlBlock.ClearSelection();
            FillLocation(ddlBlock, new[] { "Aron", "Chachoda" });
        }
        else
        {
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Insert(0, "--Select--");
        }
    }

    protected void FillLocation(DropDownList ddltofill, string[] param)
    {
        ddltofill.Items.Clear();
        ddltofill.Items.Insert(0, new ListItem("--Select--", ""));
        for (int i = 0; i < param.Length; i++)
        {
            ddltofill.Items.Add(new ListItem(param[i], Convert.ToString(i + 1)));
        }
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCategory.SelectedValue == "1")
        {
            txtCateDtls.Text = "1st to 5th";
            //ddlCateDtls.SelectedItem.Text = "1st to 5th";
            txtSclDise.Text = "";
            txtSclDise.Text = "PSB-23510100704";
        }
        else if (ddlCategory.SelectedValue == "2")
        {
            txtCateDtls.Text = "6th to 8th";
            txtSclDise.Text = "";
            txtSclDise.Text = "KV-23510815002";
        }
        else if (ddlCategory.SelectedValue == "3")
        {
            txtCateDtls.Text = "9th to 10th";
            txtSclDise.Text = "";
            txtSclDise.Text = "PSBK-23510100403";
        }
        else if (ddlCategory.SelectedValue == "4")
        {
            txtCateDtls.Text = "6th to 10th";
            txtSclDise.Text = "";
            txtSclDise.Text = "PSS-23510102008";
        }

    }

    protected void ddlMngmntGrp_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlMngmntGrp.SelectedItem.Text == "Central Government")
        {
            ddlMngmntGrpDtls.ClearSelection();
            FillLocation(ddlMngmntGrpDtls, new[] { "Jawahar Navodaya Vidyalaya", "Kendriya Vidyalaya" });
        }
        else if (ddlMngmntGrp.SelectedItem.Text == "Government Aided")
        {

            ddlMngmntGrpDtls.ClearSelection();
            FillLocation(ddlMngmntGrpDtls, new[] { "Government Aided", "Partially Govt. Aided" });
        }
        else if (ddlMngmntGrp.SelectedItem.Text == "Private Unaided (Recognized)")
        {
            ddlMngmntGrpDtls.ClearSelection();
            FillLocation(ddlMngmntGrpDtls, new[] { "Private Unaided (Recognized)" });
        }
        else if (ddlMngmntGrp.SelectedItem.Text == "State Government")
        {
            ddlMngmntGrpDtls.ClearSelection();
            FillLocation(ddlMngmntGrpDtls, new[] { "Minority Affairs Dept." });
        }
        else
        {
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Insert(0, "--Select--");
        }
    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        div_Details.Visible = true;
    }
}