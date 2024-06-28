using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Report_SankulWiseProgressReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        show.Visible = true;
    }
    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlBlock.Items.Clear();
        if (ddlDistrict.SelectedItem.Text == "Bhopal")
        {
            FillDDl(ddlBlock, new[] { "Phanda", "Berasia" });
        }
        else if (ddlDistrict.SelectedItem.Text == "Raisen")
        {
            FillDDl(ddlBlock, new[] {
                "Badi",
                "Begamganj",
                "Gairatganj",
                "Huzur" });
        }
        else
        {
            ddlBlock.Items.Insert(0, new ListItem("--Select--", ""));
        }
    }
    protected void ddlManagementGroup_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlManagementGroup.SelectedItem.Text == "State Government")
        {
            ddlManagementGroupDetails.Items.Clear();
            FillDDl(ddlManagementGroupDetails, new[] {
                "Ministry of Labour",
                "Social Welfare Department",
                "Minority Affairs Dept.",
                "Other State Govt. Managed",
                "Local Body",
                "Tribal Welfare Department",
                "Department of Education"
            });
        }
        else if (ddlManagementGroup.SelectedItem.Text == "Central Government")
        {
            ddlManagementGroupDetails.Items.Clear();
            FillDDl(ddlManagementGroupDetails, new[] {
                "Sainik School(PPP)",
                "Other Central Govt./PSU Schools**",
                "Central Tibetan School",
                "Railway School", "Sainik School",
                "Jawahar Navodaya Vidyalaya",
                "Kendriya Vidyalaya"
            });
        }
        else if (ddlManagementGroup.SelectedItem.Text == "Private Unaided (Recognized)")
        {
            ddlManagementGroupDetails.Items.Clear();
            FillDDl(ddlManagementGroupDetails, new[] { "Private Unaided (Recognized)" });
        }
        else if (ddlManagementGroup.SelectedItem.Text == "Government Aided")
        {
            ddlManagementGroupDetails.Items.Clear();
            FillDDl(ddlManagementGroupDetails, new[] { "Partially Govt. Aided", "Government Aided" });
        }
        else if (ddlManagementGroup.SelectedItem.Text == "Other")
        {
            ddlManagementGroupDetails.Items.Clear();
            FillDDl(ddlManagementGroupDetails, new[] {
                "Madarsa Unrecognized",
                "Madrasa Aided (Recognized)",
                "Madrasa Private Unaided (Recognized)",
                "Unrecognized"
            });
        }
        else
        {
            ddlManagementGroupDetails.Items.Clear();
            ddlManagementGroupDetails.Items.Insert(0, new ListItem("--Select--", ""));
        }
    }

    public void FillDDl(DropDownList ddltofill, string[] param)
    {
        ddltofill.Items.Clear();
        ddltofill.Items.Insert(0, new ListItem("--Select--", ""));
        for (int i = 0; i < param.Length; i++)
        {
            ddltofill.Items.Add(new ListItem(param[i]));
        }
    }



    protected void ddlCategory_SelectedIndexChanged1(object sender, EventArgs e)
    {
        ddlCategoryDetails.Items.Clear();
        if (ddlCategory.SelectedItem.Text == "Primary School")
        {
            FillDDl(ddlCategoryDetails, new[] {
                "Primary only with grades 1 to 5 (PRY)",
                "Primary only with grades K.G. to 5"
            });
        }
        else if (ddlCategory.SelectedItem.Text == "Upper primary School")
        {
            FillDDl(ddlCategoryDetails, new[] {
                "Upper Primary only with K.G. to 8",
                "Upper Primary only with grades 6 to 8 (UPR)",
                "Upper Primary with grades 1 to 8 (PRY-UPR)"
            });
        }
        else if (ddlCategory.SelectedItem.Text == "Secondary School")
        {
            FillDDl(ddlCategoryDetails, new[] {
                "Secondary with grade K.G. to 10",
                "Secondary only with grades 9 & 10 (SEC)",
                "Secondary with grades 6 to 10 (UPR-SEC)",
                "Secondary with grades 1 to 10 (PRY-UPR-SEC)"
            });

        }
        else if (ddlCategory.SelectedItem.Text == "Higher Secondary School")
        {
            FillDDl(ddlCategoryDetails, new[] {
                "Higher Secondary with grade k.g. to 12",
                "Hr. Sec. /Jr. College only with grades 11 & 12 (HSEC)",
                "Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)",
                "Higher Secondary with grades 9 to 12 (SEC-HSEC)",
                "Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)"
            });
        }
        else
        {
            ddlCategoryDetails.Items.Insert(0, new ListItem("--Select--", ""));
        }
    }
}