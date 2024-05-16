using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.IO;

public partial class mis_Master_BlockMaster : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Hideall();
            HideShowControl(0);
        }
    }




    protected void ddlSchoolType_SelectedIndexChanged(object sender, EventArgs e)
    {

        Hideall();
        HideShow();

    }

    protected void HideShow()
    {
        pnlschoolcategory.Visible = true;
        if (ddlSchoolType.SelectedValue == "1")
        {
            divmin.Visible = true;
            divMax.Visible = true;
            divHM.Visible = true;
            divTeacher.Visible = true;
            show.Visible = true;
            High.Visible = false;
            Middle.Visible = false;
        }
        else if (ddlSchoolType.SelectedValue == "3")
        {
            divmd1.Visible = true;
            divmd2.Visible = true;
            divmd3.Visible = true;
            divmd4.Visible = true;
            divmd5.Visible = true;
            divmd6.Visible = true;
            divmd7.Visible = true;
            divmin.Visible = true;
            divMax.Visible = true;
            divHM.Visible = false;
            divTeacher.Visible = true;
            High.Visible = true;
            show.Visible = false;
            Middle.Visible = false;
        }
        else if (ddlSchoolType.SelectedValue == "2")
        {
            divmd1.Visible = true;
            divmd2.Visible = true;
            divmd3.Visible = true;
            divmd4.Visible = true;
            divmd5.Visible = true;
            divmd6.Visible = true;
            divmd7.Visible = true;
            divmin.Visible = true;
            divMax.Visible = true;
            divHM.Visible = true;
            divTeacher.Visible = true;
            Middle.Visible = true;
            show.Visible = false;
            High.Visible = false;
        }


    }

    protected void Hideall()
    {
        pnlschoolcategory.Visible = true;
        divmd1.Visible = false;
        divmd2.Visible = false;
        divmd3.Visible = false;
        divmd4.Visible = false;
        divmd5.Visible = false;
        divmd6.Visible = false;
        divmd7.Visible = false;
        divmin.Visible = false;
        divMax.Visible = false;
        divHM.Visible = false;
        divTeacher.Visible = false;
    }


    private void HideShowControl(int i)
    {
        switch (i)
        {
            case 1:
                pnlOISCategoryType.Visible = true;
                pnlEmpClass.Visible = true;
                Div_ddlDivision.Visible = true;
                Div_ddlDistrict.Visible = true;
                Div_ddlBlock.Visible = true;
                div_officetype.Visible = true;
                div_OfficeName.Visible = true;
                Div_Designation.Visible = true;
                //
                pnlschoolcategory.Visible = false;
                divmd1.Visible = false;
                divmd2.Visible = false;
                divmd3.Visible = false;
                divmd4.Visible = false;
                divmd5.Visible = false;
                divmd6.Visible = false;
                divmd7.Visible = false;
                divmin.Visible = false;
                divMax.Visible = false;
                divHM.Visible = false;
                divTeacher.Visible = false;
                show.Visible = false;
                High.Visible = false;
                Middle.Visible = false;
                break;
            case 2:
                pnlschoolcategory.Visible = false;
                Div_ddlDivision.Visible = false;
                Div_ddlDistrict.Visible = false;
                Div_ddlBlock.Visible = false;
                div_officetype.Visible = false;
                div_OfficeName.Visible = false;
                Div_Designation.Visible = false;
                pnlEmpClass.Visible = false;
                pnlOfficeSetupDetails.Visible = false;
                //
                divmd1.Visible = false;
                divmd2.Visible = false;
                divmd3.Visible = false;
                divmd4.Visible = false;
                divmd5.Visible = false;
                divmd6.Visible = false;
                divmd7.Visible = false;
                divmin.Visible = false;
                divMax.Visible = false;
                divHM.Visible = false;
                divTeacher.Visible = false;
                show.Visible = false;
                High.Visible = false;
                Middle.Visible = false; 
                break;
            case 3:
                pnlschoolcategory.Visible = true;
                Div_ddlDivision.Visible = false;
                Div_ddlDistrict.Visible = false;
                Div_ddlBlock.Visible = false;
                div_officetype.Visible = false;
                div_OfficeName.Visible = false;
                Div_Designation.Visible = false;
                pnlEmpClass.Visible = false;
                pnlOfficeSetupDetails.Visible = false;
                break;
            default:
                pnlOISCategoryType.Visible = false;
                pnlEmpClass.Visible = false;
                pnlOfficeSetupDetails.Visible = false;
                pnlschoolcategory.Visible = false;


                break;
        }

    }


    protected void ddlOISType_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlOISType.SelectedValue == "1")
        {
            HideShowControl(1);
        }
        else if (ddlOISType.SelectedValue == "3")
        {
            HideShowControl(3);
        }
        else if (ddlOISType.SelectedValue == "2")
        {
            HideShowControl(2);
        }
        else
        {
            HideShowControl(0);
        }
    }

    protected void ddlEmployeeClass_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlEmployeeClass.SelectedValue != "0")
        {
            pnlOfficeSetupDetails.Visible = true;
        }
        else
        {
            pnlOfficeSetupDetails.Visible = false;
        }

    }
}