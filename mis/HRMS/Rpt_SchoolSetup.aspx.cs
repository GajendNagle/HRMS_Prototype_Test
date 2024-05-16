using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HRMS_Rpt_SchoolSetup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlDivision_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlDistrict.Items.Clear();
        ddlDistrict.Items.Insert(0, new ListItem("--Select--", ""));

        ddlBlock.Items.Clear();
        ddlBlock.Items.Insert(0, new ListItem("--Select--", ""));
        if (ddlDivision.SelectedItem.Text == "Bhopal")
        {
            FillLocation(ddlDistrict, new[] { "Bhopal", "Raisen" });
        }
        else if (ddlDivision.SelectedItem.Text == "Gwalior")
        {
            ddlDistrict.ClearSelection();
            FillLocation(ddlDistrict, new[] { "Shivpuri", "Guna" });
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

    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDivision.SelectedItem.Text == "Bhopal")
        {
            if (ddlDistrict.SelectedItem.Text == "Bhopal")
            {
                ddlBlock.ClearSelection();
                FillLocation(ddlBlock, new[] { "Berasia", "Phanda" });
            }
            else if (ddlDistrict.SelectedItem.Text == "Raisen")
            {
                ddlBlock.ClearSelection();
                FillLocation(ddlBlock, new[] { "Sagar ", "Vidisha " });
            }
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

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (ddlCategory.SelectedValue == "1")
        {
            div_details.Visible = true;
            divUpperPrimary.Visible = false;
            divSecondary.Visible = false;
            divUprSec.Visible = false;
        }
        else if (ddlCategory.SelectedValue == "2")
        {
            div_details.Visible = false;
            divUprSec.Visible = false;
            divSecondary.Visible = false;
            divUpperPrimary.Visible = true;
        }
        else if (ddlCategory.SelectedValue == "3")
        {
            div_details.Visible = false;
            divUpperPrimary.Visible = false;
            divSecondary.Visible = true;
            divUprSec.Visible = false;
        }
        else if (ddlCategory.SelectedValue == "4")
        {
            div_details.Visible = false;
            divUpperPrimary.Visible = false;
            divSecondary.Visible = false;
            divUprSec.Visible = true;
        }
        else
        {
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Insert(0, "--Select--");
        }
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCategory.SelectedValue == "1")
        {
            //txtCategoryDtls.Text = "";
            txtCategoryDtls.Text = "1st to 5th";
            txtDiceCode.Text = "23510100704";
            //ddlCateDtls.SelectedItem.Text = "1st to 5th";
            //ddlDiceCode.ClearSelection();
            //ddlDiceCode.SelectedItem.Text = "23510100704";
        }
        else if (ddlCategory.SelectedValue == "2")
        {
            txtCategoryDtls.Text = "6th to 8th";
            txtDiceCode.Text = "23510815002";
            //ddlCateDtls.SelectedItem.Text = "6th to 8th";
            //ddlDiceCode.ClearSelection();
            //ddlDiceCode.SelectedItem.Text = "23510815002";
        }
        else if (ddlCategory.SelectedValue == "3")
        {
            txtCategoryDtls.Text = "9th to 10th";
            txtDiceCode.Text = "23510100403";

            //ddlCateDtls.SelectedItem.Text = "9th to 10th";
            //ddlDiceCode.ClearSelection();
            //ddlDiceCode.SelectedItem.Text = "23510100403";
        }
        else if (ddlCategory.SelectedValue == "4")
        {
            txtCategoryDtls.Text = "6th to 10th";
            txtDiceCode.Text = "23510102008";

            //ddlCateDtls.SelectedItem.Text = "6th to 10th";
            //ddlDiceCode.ClearSelection();
            //ddlDiceCode.SelectedItem.Text = "23510102008";
        }

    }

    protected void ddlOISType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlOISType.SelectedValue == "1")
        {
            Response.Redirect("Rpt_OfficeSetup.aspx");
        }
        else if (ddlOISType.SelectedValue == "2")
        {
            Response.Redirect("Rpt_InstituteSetup.aspx");
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


}