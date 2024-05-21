using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Report_SingleTeacherSchool : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dv_rpt.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        dv_rpt.Visible = true;
    }

    protected void ddlDivision_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlDistrict.Items.Clear();
        ddlBlock.Items.Clear();
        ddlBlock.Items.Insert(0, new ListItem("--Select--", ""));
        ddlDistrict.Items.Insert(0, new ListItem("--Select--", ""));
        if (ddlDivision.SelectedItem.Text == "Bhopal")
        {
            ListItem[] districts = {

            new ListItem("Bhopal", "1"),
            new ListItem("Raisen", "2"),
        };

            // Add the items to the DropDownList
            ddlDistrict.Items.AddRange(districts);
        }
    }

    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlBlock.Items.Clear();
        ddlBlock.Items.Insert(0, new ListItem("--Select--", ""));
        string selectedDistrict = ddlDistrict.SelectedItem.Text;
        if (selectedDistrict == "Bhopal")
        {
            ListItem[] blocks = {

            new ListItem("Phanda Gramin", "1"),
            new ListItem("Berasia", "2")
        };

            // Add the items to the DropDownList
            ddlBlock.Items.AddRange(blocks);
        }
        else if (selectedDistrict == "Raisen")
        {
            ListItem[] blocks = {

                new ListItem("Begamganj", "1"),
                new ListItem("Gairatganj", "2")
            };
            ddlBlock.Items.AddRange(blocks);

        }
    }


    protected void ddlManagementGrp_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlmngmntgrpdtls.Items.Clear();
        ddlmngmntgrpdtls.Items.Insert(0, new ListItem("--Select--", ""));
        string selectedManagementGrp = ddlManagementGrp.SelectedItem.Text;

        if (selectedManagementGrp == "Central Government")
        {
            ListItem[] mngmntgrpdtls = {

                new ListItem("Jawahar Navodaya Vidyalaya", "1"),
                new ListItem("Kendriya Vidyalaya", "2"),
            };
            ddlmngmntgrpdtls.Items.AddRange(mngmntgrpdtls);

        }

        else if (selectedManagementGrp == "Government Aided")
        {
            ListItem[] mngmntgrpdtls = {

                new ListItem("Partially Govt. Aided", "1"),
                new ListItem("Government Aided", "2"),
            };
            ddlmngmntgrpdtls.Items.AddRange(mngmntgrpdtls);

        }
        else if (selectedManagementGrp == "Private Unaided (Recognized)")
        {
            ListItem[] mngmntgrpdtls = {

                new ListItem("Private Unaided (Recognized)", "1"),
            };
            ddlmngmntgrpdtls.Items.AddRange(mngmntgrpdtls);

        }

        else if (selectedManagementGrp == "State Government")
        {
            ListItem[] mngmntgrpdtls = {

            new ListItem("Ministry of Labour", "1"),
            new ListItem("Minority Affairs Dept.", "2")
        };

            // Add the items to the DropDownList
            ddlmngmntgrpdtls.Items.AddRange(mngmntgrpdtls);
        }

        else if (selectedManagementGrp == "Other")
        {
            ListItem[] mngmntgrpdtls = {

                new ListItem("Madarsa Unrecognized", "1"),
                new ListItem("Unrecognized", "2"),
            };
            ddlmngmntgrpdtls.Items.AddRange(mngmntgrpdtls);

        }

    }


    protected void ddlSchoolCat_SelectedIndexChanged(object sender, EventArgs e)
    {

        {
            ddlSchoolCatdtls.Items.Clear();
            ddlSchoolCatdtls.Items.Insert(0, new ListItem("--Select--", ""));
            string SelectedSchoolCat = ddlSchoolCat.SelectedItem.Text;

            if (SelectedSchoolCat == "Primary School")
            {
                ListItem[] SchoolCatdtls = {

                new ListItem("Primary only with grades K.G. to 5", "1"),
                new ListItem("Primary only with grades 1 to 5 (PRY)", "2"),
            };
                ddlSchoolCatdtls.Items.AddRange(SchoolCatdtls);

            }

            else if (SelectedSchoolCat == "Upper primary School")
            {
                ListItem[] SchoolCatdtls = {

                new ListItem("Upper Primary only with K.G. to 8", "1"),
                new ListItem("Upper Primary only with grades 6 to 8 (UPR)", "2"),
                new ListItem("Upper Primary with grades 1 to 8 (PRY-UPR) ", "3"),
            };
                ddlSchoolCatdtls.Items.AddRange(SchoolCatdtls);

            }
            else if (SelectedSchoolCat == "Secondary School")
            {
                ListItem[] SchoolCatdtls = {

                new ListItem("Secondary with grade K.G. to 10", "1"),
                new ListItem("Secondary only with grades 9 & 10 (SEC)", "2"),
                new ListItem("Secondary with grades 6 to 10 (UPR-SEC)", "3"),
                new ListItem("Secondary with grades 1 to 10 (PRY-UPR-SEC)", "4"),
            };
                ddlSchoolCatdtls.Items.AddRange(SchoolCatdtls);
            }

            else if (SelectedSchoolCat == "Higher Secondary School")
            {
                ListItem[] SchoolCatdtls = {

                new ListItem("Higher Secondary with grade k.g. to 12", "1"),
                new ListItem("Higher Secondary School Hr. Sec. /Jr. College only with grades 11 & 12 (HSEC)", "1"),
                new ListItem("Higher Secondary School Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)", "3"),                               
                new ListItem("Higher Secondary School Higher Secondary with grades 9 to 12 (SEC-HSEC)", "4"),
                new ListItem(" Higher Secondary School Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)", "5"),
            };
                ddlSchoolCatdtls.Items.AddRange(SchoolCatdtls);

            }

        }
    }

}
