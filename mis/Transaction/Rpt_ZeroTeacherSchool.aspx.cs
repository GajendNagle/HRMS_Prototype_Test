using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_RptZeroTeacherSchool : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dv_rpt.Visible = false;


        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        dv_rpt.Visible = true;
    }

    protected void ddlDivision_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDivision.SelectedItem.Text == "Bhopal")
        {
            ddlDistrict.Items.Clear();
            fillddl(ddlDistrict, new[] { "Bhopal", "Raisen" });
        }
        else
        {
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Insert(0, "--Select--");
        }

    }
    public void fillddl(DropDownList ddltofill, string[] param)
    {
        ddltofill.Items.Clear();
        ddltofill.Items.Insert(0, new ListItem("--Select--"));
        for (int i = 0; i < param.Length; i++)
        {
            ddltofill.Items.Add(new ListItem(param[i], Convert.ToString(i+1)));
        }
    }

    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDistrict.SelectedItem.Text == "Bhopal")
        {
            ddlBlock.Items.Clear();
            fillddl(ddlBlock, new[] { "Phanda URBAN-Old City", "Phanda URBAN- New City", "Phanda Gramin", "Berasia" });

        }

        else if (ddlDistrict.SelectedItem.Text == "Raisen")
        {
            ddlBlock.Items.Clear();
            fillddl(ddlBlock, new[] { "Badi", "Begamganj", "Begamganj", "Gairatganj", "Obedullaganj", "Sanchi", "Silwani" });
        }
        else
        {
            ddlBlock.Items.Clear();
            ddlBlock.Items.Insert(0, "--Select--");
        }
    }



    protected void ddlManagementGrp_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlSchoolManagementDtls.Items.Clear();
        if (ddlManagementGrp.SelectedItem.Text =="State Government")
        {

            fillddl(ddlSchoolManagementDtls, new[] { "Ministry of Labour", "Social Welfare Department", "Minority Affairs Dept.", "Other State Govt. Managed" });
        }

        else if (ddlManagementGrp.SelectedItem.Text =="Central Government")
        {

            fillddl(ddlSchoolManagementDtls, new[] { "Sainik School(PPP)", "Other Central Govt./PSU Schools", "Central Tibetan School", "Railway School", "Sainik School", "Jawahar Navodaya Vidyalaya", "Kendriya Vidyalaya" });
        }
        else if (ddlManagementGrp.SelectedItem.Text =="Private Unaided (Recognized)")
        {

            fillddl(ddlSchoolManagementDtls, new[] { "Private Unaided (Recognized)" });
        }
        else if (ddlManagementGrp.SelectedItem.Text =="Government Aided")
        {
            ddlSchoolManagementDtls.Items.Clear();
            fillddl(ddlSchoolManagementDtls, new[] { "Government Aided", "Partially Govt. Aided" });
        }
        else
        {
            ddlSchoolManagementDtls.Items.Clear();
            ddlSchoolManagementDtls.Items.Insert(0, "--Select--");
        }

    }

    protected void ddlSchoolCat_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlSchoolCat.SelectedItem.Text == "Primary School")
        {

            fillddl(ddlCategarydtl, new[] { "Primary only with grades K.G. to 5 ", 
                "Primary only with grades 1 to 5 (PRY)" });
        }
        else if (ddlSchoolCat.SelectedItem.Text == "Upper primary School")
        {

            fillddl(ddlCategarydtl, new[] { "Upper Primary only with K.G.to 8", 
                "Upper Primary only with grades 6 to 8 (UPR)",
                "Upper Primary with grades 1 to 8 (PRY-UPR)" });
        }
        else if (ddlSchoolCat.SelectedItem.Text == "Secondary School")
        {

            fillddl(ddlCategarydtl, new[] { "Secondary with grade K.G.to 10",
                "Secondary only with grades 9 & 10 (SEC)",
                "Secondary with grades 6 to 10 (UPR-SEC)",
                "Secondary with grades 1 to 10 (PRY-UPR-SEC)" });
        }
        else if (ddlSchoolCat.SelectedItem.Text == "Higher Secondary School")
        {

            fillddl(ddlCategarydtl, new[] { "Higher Secondary with grade k.g.to 12",
                "Hr.Sec. /Jr.College only with grades 11 & 12(HSEC)",
                "Higher Secondary with grades 1 to 12(PRY-UPR-SEC-HSEC)",
                "Higher Secondary with grades 9 to 12(SEC-HSEC)",
                "Higher Secondary with grades 6 to 12(UPR-SEC-HSEC)" });
        }

    }

}