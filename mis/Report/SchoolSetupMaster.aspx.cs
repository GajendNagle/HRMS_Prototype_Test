using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Report_SchoolSetupMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
        if (ddlDistrict.SelectedValue=="1")
        {
            ddlBlock.ClearSelection();
            FillLocation(ddlBlock, new[] { "Berasia", "Phanda" });
        }
        else if (ddlDistrict.SelectedValue=="2")
        {
            ddlBlock.ClearSelection();
            FillLocation(ddlBlock, new[] { "Lateri", "Gyaraspur" });
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
            FillLocation(ddlMngmntGrpDtls, new[] { "department of education" });
        }
        else
        {
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Insert(0, "--Select--");
        }
    }

    protected void ddlSchoolCategory_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (ddlSchoolCategory.SelectedValue== "04-Higher Secondary School")
        {
           FillLocation(ddlSchoolSubCateDtls, new[] { "Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)", "Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)", "Higher Secondary with grades 9 to 12 (SEC-HSEC) ", "Hr. Sec. /Jr. College only with grades 11 &amp; 12 (HSEC)", "Higher Secondary with grade k.g. to 12" });
            FillLocation(ddlSchool, new[] { "23320117806 - GOVT HSS LALARIYA (Class 6 to 12)", "23320110207 - GOVT MODEL HSS HARRAKHEDA, BERASIA (Class 6 to 12)", "23320110206 - GOVT HSS HARRAKHEDA (Class 6 to 12)", "23320129259 - GOVT HSS GIRLS, SAROJINI NAIDU (Class 1 to 12)", "23320110008 - GOVT HSS GUNGA (Class 1 to 12)", "23320212709 - GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR) (Class- 6 To 12)", "23320216509 - GOVT HSS TARA SEVANIA (Class 6 to 12)", "23320214707 - GOVT HSS CHANDR SHEKAHR AZAD RATIBARH (Class- 1 To 12)", "23320202205 - GOVT HSS BAGRODA (Class 1 to 12)"});
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        div_details.Visible = true;
    }
}