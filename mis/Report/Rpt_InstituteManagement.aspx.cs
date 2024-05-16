using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rpt_InstituteManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlDistrictName_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlDistrictName.SelectedItem.Text == "select")
        {
            ddlBlockName.Items.Clear();
        }
        else if (ddlDistrictName.SelectedItem.Text == "Bhopal")
        {
            ddlBlockName.Items.Clear();
            ddlBlockName.Items.Add("--select--");
            ddlBlockName.Items.Add("Phanda URBAN-New City");
            ddlBlockName.Items.Add("Phanda URBAN-Old City");
            ddlBlockName.Items.Add("Phanda Gramin");
            ddlBlockName.Items.Add("Berasia");


        }

        else if (ddlDistrictName.SelectedItem.Text == "Raisen")
        {
            ddlBlockName.Items.Clear();
            ddlBlockName.Items.Add("--select--");
            ddlBlockName.Items.Add("Badi");
            ddlBlockName.Items.Add("Begamganj");
            ddlBlockName.Items.Add("Gairatganj");
            ddlBlockName.Items.Add("Obedullaganj");
            ddlBlockName.Items.Add("Sanchi");
            ddlBlockName.Items.Add("Silwani");


        }
    }

    protected void Unnamed_Click2(object sender, EventArgs e)
    {

        if (ddlDesignation.SelectedItem.Text == "Teaching")
        {

            show.Visible = true;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;

        }
        else if (ddlDesignation.SelectedItem.Text == "Executive")
        {

            show.Visible = false;
            show1.Visible = true;
            show2.Visible = false;
            show3.Visible = false;
        }
        else if (ddlDesignation.SelectedItem.Text == "Ministry")
        {

            show.Visible = false;
            show1.Visible = false;
            show2.Visible = true;
            show3.Visible = false;
        }
        else if (ddlDesignation.SelectedItem.Text == "Clerical")
        {

            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = true;
        }
    }

    protected void ddlManagementGroup_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlManagementGroupDetails.Items.Clear();

        if (ddlManagementGroup.SelectedItem.Text == "State Government")
        {
            ddlManagementGroupDetails.ClearSelection();

            ddlManagementGroupDetails.Items.Add("Ministry of Labour");
            ddlManagementGroupDetails.Items.Add("Social Welfare Department");
            ddlManagementGroupDetails.Items.Add("Minority Affairs Dept.");
            ddlManagementGroupDetails.Items.Add("Other State Govt. Managed");



        }

        else if (ddlManagementGroup.SelectedItem.Text == "Central Government")
        {
            ddlManagementGroupDetails.ClearSelection();

            ddlManagementGroupDetails.Items.Add("Central Tibetan Institute");
            ddlManagementGroupDetails.Items.Add("Railway Institute");
            ddlManagementGroupDetails.Items.Add("Sainik Institute");
            ddlManagementGroupDetails.Items.Add("Kendriya Vidyalaya");



        }
        else if (ddlManagementGroup.SelectedItem.Text == "Government Aided")
        {
            ddlManagementGroupDetails.ClearSelection();

            ddlManagementGroupDetails.Items.Add("Partially Govt. Aided");
            ddlManagementGroupDetails.Items.Add("Government Aided");

        }

        else if (ddlManagementGroup.SelectedItem.Text == "Private Unaided (Recognized)")
        {
            ddlManagementGroupDetails.ClearSelection();

            ddlManagementGroupDetails.Items.Add("Private Unaided (Recognized)");

        }
        else if (ddlManagementGroup.SelectedItem.Text == "Other")
        {
            ddlManagementGroupDetails.ClearSelection();
            ddlManagementGroupDetails.Items.Add("Madarsa Unrecognized");
            ddlManagementGroupDetails.Items.Add("Madrasa Aided (Recognized)");
            ddlManagementGroupDetails.Items.Add("Madrasa Private Unaided (Recognized)");
            ddlManagementGroupDetails.Items.Add("Unrecognized");



        }
        ddlManagementGroupDetails.Items.Insert(0, new ListItem("select", "0"));


    }
}




