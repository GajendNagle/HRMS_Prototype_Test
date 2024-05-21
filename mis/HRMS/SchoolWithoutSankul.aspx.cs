using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_SchoolWithoutSankul : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        
    }
    protected void ddlDivision_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDivision.SelectedItem.Text == "SELECT")
        {
            ddlDivision.Items.Clear();
        }
        else if (ddlDivision.SelectedItem.Text == "Bhopal")
        {
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Add("--Select--");
            ddlDistrict.Items.Add("Bhopal");
            ddlDistrict.Items.Add("Raisen");
           
        }


        if (ddlDivision.SelectedItem.Text == "SELECT")
        {
            ddlDivision.Items.Clear();
        }
        else if (ddlDivision.SelectedItem.Text == "Indore")
        {
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Add("--Select--");

        }
    }
    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDistrict.SelectedItem.Text == "SELECT")
        {
            ddlBlock.Items.Clear();
        }
        else if (ddlDistrict.SelectedItem.Text == "Bhopal")
        {
            ddlBlock.Items.Clear();
            ddlBlock.Items.Add("--Select--");
            ddlBlock.Items.Add("Phanda URBAN-Old City");
            ddlBlock.Items.Add("Phanda URBAN-New City");
            ddlBlock.Items.Add("Phanda Gramin");
            ddlBlock.Items.Add("Berasia");
        }
        else if (ddlDistrict.SelectedItem.Text == "Raisen") 
        {
            ddlBlock.Items.Clear();
            ddlBlock.Items.Add("--Select--");
            ddlBlock.Items.Add("Badi");
            ddlBlock.Items.Add("Begamganj");
            ddlBlock.Items.Add("Gairatganj");
            ddlBlock.Items.Add("Sanchi");
            ddlBlock.Items.Add("Silwani");
        }
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Schoolreport.Visible = true;
    }
    protected void ddMGt_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddMGt.SelectedItem.Text == "SELECT")
        {
            ddlMgtGroupD.Items.Clear();
        }
        else if (ddMGt.SelectedItem.Text == "Central Government")
        {
            ddlMgtGroupD.Items.Clear();
            ddlMgtGroupD.Items.Add("--Select--");
            ddlMgtGroupD.Items.Add("Other Central Govt./PSU Schools**");
            ddlMgtGroupD.Items.Add("Central Tibetan School");
            ddlMgtGroupD.Items.Add("Railway School");
            ddlMgtGroupD.Items.Add("Sainik School");
            ddlMgtGroupD.Items.Add("Jawahar Navodaya Vidyalaya");
            
        }
        else if (ddMGt.SelectedItem.Text == "Private Unaided (Recognized)")
        {
            ddlMgtGroupD.Items.Clear();
            ddlMgtGroupD.Items.Add("--Select--");
            ddlMgtGroupD.Items.Add("Private Unaided (Recognized)");
            
        }

        else if (ddMGt.SelectedItem.Text == "Government Aided")
        {
            ddlMgtGroupD.Items.Clear();
            ddlMgtGroupD.Items.Add("--Select--");
            ddlMgtGroupD.Items.Add("Partially Govt. Aided");
            ddlMgtGroupD.Items.Add("Government Aided");
            
        }

        else if (ddMGt.SelectedItem.Text == "State Government")
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
}