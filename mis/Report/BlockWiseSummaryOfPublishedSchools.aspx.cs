using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_BlockWiseSummaryOfPublishedSchools : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void ddlDistrictName_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDistrictName.SelectedItem.Text == "SELECT")
        {
            ddlBlockN.Items.Clear();
        }
        else if (ddlDistrictName.SelectedItem.Text == "Bhopal")
        {
            ddlBlockN.Items.Clear();
            ddlBlockN.Items.Add("--Select--");
            ddlBlockN.Items.Add("Phanda URBAN-Old City");
            ddlBlockN.Items.Add("Phanda URBAN-New City");
            ddlBlockN.Items.Add("Phanda Gramin");
            ddlBlockN.Items.Add("Berasia");
        }
        else if (ddlDistrictName.SelectedItem.Text == "Raisen")
        {
            ddlBlockN.Items.Clear();
            ddlBlockN.Items.Add("--Select--");
            ddlBlockN.Items.Add("Badi");
            ddlBlockN.Items.Add("Begamganj");
            ddlBlockN.Items.Add("Gairatganj");
            ddlBlockN.Items.Add("Sanchi");
            ddlBlockN.Items.Add("Silwani");
        }
    }

    protected void ddlMgtGroup_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlMgtGroup.SelectedItem.Text == "SELECT")
        {
            ddlMgtGroupD.Items.Clear();
        }
        else if (ddlMgtGroup.SelectedItem.Text == "Central Government")
        {
            ddlMgtGroupD.Items.Clear();
            ddlMgtGroupD.Items.Add("--Select--");
            ddlMgtGroupD.Items.Add("Other Central Govt./PSU Schools**");
            ddlMgtGroupD.Items.Add("Central Tibetan School");
            ddlMgtGroupD.Items.Add("Railway School");
            ddlMgtGroupD.Items.Add("Sainik School");
            ddlMgtGroupD.Items.Add("Jawahar Navodaya Vidyalaya");

        }
        else if (ddlMgtGroup.SelectedItem.Text == "Private Unaided (Recognized)")
        {
            ddlMgtGroupD.Items.Clear();
            ddlMgtGroupD.Items.Add("--Select--");
            ddlMgtGroupD.Items.Add("Private Unaided (Recognized)");

        }

        else if (ddlMgtGroup.SelectedItem.Text == "Government Aided")
        {
            ddlMgtGroupD.Items.Clear();
            ddlMgtGroupD.Items.Add("--Select--");
            ddlMgtGroupD.Items.Add("Partially Govt. Aided");
            ddlMgtGroupD.Items.Add("Government Aided");

        }

        else if (ddlMgtGroup.SelectedItem.Text == "State Government")
        {
            ddlMgtGroupD.Items.Clear();
            ddlMgtGroupD.Items.Add("--Select--");
            ddlMgtGroupD.Items.Add("Ministry of Labour");
            ddlMgtGroupD.Items.Add("Social Welfare Department");
            ddlMgtGroupD.Items.Add("Minority Affairs Dept.");
            ddlMgtGroupD.Items.Add("Other State Govt. Managed");
            ddlMgtGroupD.Items.Add("Local Body");
            ddlMgtGroupD.Items.Add("Tribal Welfare Department");
            ddlMgtGroupD.Items.Add("Department of Education");

        }
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCategory.SelectedItem.Text == "SELECT")
        {
            ddlCategoryDetail.Items.Clear();
        }
        else if (ddlCategory.SelectedItem.Text == "Primary School")
        {
            ddlCategoryDetail.Items.Clear();
            ddlCategoryDetail.Items.Add("--Select--");
            ddlCategoryDetail.Items.Add("Primary only with grades K.G. to 5 ");
            ddlCategoryDetail.Items.Add("Primary only with grades 1 to 5 (PRY)");


        }
        else if (ddlCategory.SelectedItem.Text == "Upper primary School")
        {
            ddlCategoryDetail.Items.Clear();
            ddlCategoryDetail.Items.Add("--Select--");
            ddlCategoryDetail.Items.Add("Upper Primary only with K.G. to 8");
            ddlCategoryDetail.Items.Add("Upper Primary only with grades 6 to 8 (UPR)");
            ddlCategoryDetail.Items.Add("Upper Primary with grades 1 to 8 (PRY-UPR) ");

        }

        else if (ddlCategory.SelectedItem.Text == "Secondary School")
        {
            ddlCategoryDetail.Items.Clear();
            ddlCategoryDetail.Items.Add("--Select--");
            ddlCategoryDetail.Items.Add("Secondary with grade K.G. to 10");
            ddlCategoryDetail.Items.Add("Secondary only with grades 9 & 10 (SEC)");
            ddlCategoryDetail.Items.Add("Secondary with grades 6 to 10 (UPR-SEC) ");
            ddlCategoryDetail.Items.Add("Secondary with grades 1 to 10 (PRY-UPR-SEC)");

        }

        else if (ddlCategory.SelectedItem.Text == "Higher Secondary School")
        {
            ddlCategoryDetail.Items.Clear();
            ddlCategoryDetail.Items.Add("--Select--");
            ddlCategoryDetail.Items.Add("Higher Secondary with grade k.g. to 12");
            ddlCategoryDetail.Items.Add("Hr. Sec. /Jr. College only with grades 11 & 12 (HSEC)");
            ddlCategoryDetail.Items.Add("Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)");
            ddlCategoryDetail.Items.Add("Higher Secondary with grades 9 to 12 (SEC-HSEC) ");
            ddlCategoryDetail.Items.Add("Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)");

        }
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        tblDetails.Visible = true;
    }
}