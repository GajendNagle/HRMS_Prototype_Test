using System;
using System.Activities.Expressions;
using System.Security.Cryptography;
using System.Web.UI.WebControls;

public partial class mis_Transaction_DepartmentEnquiry : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{

		}
	}


    //protected void ddlOfficetype_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //	ddlOfficeName.ClearSelection();
    //	ddlEmployee.ClearSelection();
    //	if (ddlOfficetype.SelectedValue == "1")
    //		ddlOfficeName.Items.FindByText("School Education Department, Mantralay Bhopal").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "3")
    //		ddlOfficeName.Items.FindByValue("3").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "4")
    //		ddlOfficeName.Items.FindByValue("4").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "5")
    //		ddlOfficeName.Items.FindByValue("5").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "6")
    //		ddlOfficeName.Items.FindByValue("6").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "7")
    //		ddlOfficeName.Items.FindByValue("7").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "8")
    //		ddlOfficeName.Items.FindByValue("8").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "9")
    //		ddlOfficeName.Items.FindByValue("9").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "10")
    //		ddlOfficeName.Items.FindByValue("10").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "11")
    //		ddlOfficeName.Items.FindByValue("11").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "12")
    //		ddlOfficeName.Items.FindByValue("12").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "13")
    //		ddlOfficeName.Items.FindByValue("13").Selected = true;
    //	else if (ddlOfficetype.SelectedValue == "14")
    //		ddlOfficeName.Items.FindByValue("14").Selected = true;
    //}

    //protected void ddlOfficeName_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //	ddlEmployee.ClearSelection();
    //	if (ddlOfficeName.SelectedValue == "1")
    //		ddlEmployee.Items.FindByValue("1").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "3")
    //		ddlEmployee.Items.FindByValue("3").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "4")
    //		ddlEmployee.Items.FindByValue("4").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "5")
    //		ddlEmployee.Items.FindByValue("5").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "6")
    //		ddlEmployee.Items.FindByValue("6").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "7")
    //		ddlEmployee.Items.FindByValue("7").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "8")
    //		ddlEmployee.Items.FindByValue("8").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "9")
    //		ddlEmployee.Items.FindByValue("9").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "10")
    //		ddlEmployee.Items.FindByValue("10").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "11")
    //		ddlEmployee.Items.FindByValue("5").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "12")
    //		ddlEmployee.Items.FindByValue("6").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "13")
    //		ddlEmployee.Items.FindByValue("8").Selected = true;
    //	else if (ddlOfficeName.SelectedValue == "14")
    //		ddlEmployee.Items.FindByValue("9").Selected = true;
    //}

    protected void showDataBtn_Click(object sender, EventArgs e)
    {
        divEmpData.Visible = true;
        divDataofAU5693.Visible = true;
        DivVibhgiyData.Visible = true;
    }
}