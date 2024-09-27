using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Scheme_SchemeRegistrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void ddlYojna_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlYojna.SelectedValue == "1")
        {
            ddlschemeName.SelectedValue = "1";
            txtLAbKiRashi.Text = "कक्षा 6 से 8, Rs200/Rs300";
            DivResult.Visible = false;
            DivGov.Visible = false;
            beneficiaryDepartment.SelectedValue = "1";
            DivSt3Scheme.Visible = false;
            DivVIMUKT2.Visible = false;
            DivPWD.Visible = false;
            DivLabhKiRshi.Visible = true;
            DevScheckBox.Visible = false;
            DivcycleYojna.Visible = false;
            
        }
        else if (ddlYojna.SelectedValue == "2")
        {
            ddlschemeName.SelectedValue = "4";
            txtLAbKiRashi.Text = "कक्षा 11 से 12, Rs500/Rs550";
            DivResult.Visible = true;
            DivGov.Visible = false;
            beneficiaryDepartment.SelectedValue = "1";
            DivSt3Scheme.Visible = false;
            DivVIMUKT2.Visible = false;
            DivPWD.Visible = false;
            DivLabhKiRshi.Visible = true;
            DevScheckBox.Visible = true;
            DivcycleYojna.Visible = false;
           

        }
        else if (ddlYojna.SelectedValue == "3")
        {
            ddlschemeName.SelectedValue = "5";
            txtLAbKiRashi.Text = "कक्षा 1 से 5, Rs50/Rs50, कक्षा 6 से 8, Rs120/Rs120, कक्षा 9 से 12, Rs250/Rs250";
            DivResult.Visible = false;
            DivGov.Visible = true;
            beneficiaryDepartment.SelectedValue = "1";
            DivSt3Scheme.Visible = false;
            DivVIMUKT2.Visible = false;
            DivPWD.Visible = false;
            DivLabhKiRshi.Visible = true;
            DevScheckBox.Visible = false;
            DivcycleYojna.Visible = false;
           

        }
        else if (ddlYojna.SelectedValue == "4")
        {
            ddlschemeName.SelectedValue = "7";
            txtLAbKiRashi.Text = "बालिका @RS3000 वार्षिक";
            DivResult.Visible = false;
            DivGov.Visible = false;
            beneficiaryDepartment.SelectedValue = "2";
            DivSt3Scheme.Visible = true;
            DivVIMUKT2.Visible = false;
            DivPWD.Visible = false;
            DivLabhKiRshi.Visible = false;
            DevScheckBox.Visible = false;
            DivcycleYojna.Visible = false;
           

        }
        else if (ddlYojna.SelectedValue == "5")
        {
            ddlschemeName.SelectedValue = "8";
            txtLAbKiRashi.Text = "बालक/बालिका @RS 2300/- वार्षिक";
            DivResult.Visible = false;
            DivGov.Visible = false;
            beneficiaryDepartment.SelectedValue = "2";
            DivSt3Scheme.Visible = false;
            DivVIMUKT2.Visible = true;
            DivPWD.Visible = false;
            DivLabhKiRshi.Visible = false;
            DevScheckBox.Visible = false;
            DivcycleYojna.Visible = false;
           
        }
        else if (ddlYojna.SelectedValue == "6")
        {
            ddlschemeName.SelectedValue = "9";
            txtLAbKiRashi.Text = "गैर छात्रावास कक्षा 11 से 12, Rs2300/Rs2300, छात्रावास कक्षा 11 से 12, Rs4000/Rs4000";
            DivResult.Visible = false;
            DivGov.Visible = false;
            beneficiaryDepartment.SelectedValue = "2";
            DivSt3Scheme.Visible = false;
            DivVIMUKT2.Visible = true;
            DivPWD.Visible = false;
            DivLabhKiRshi.Visible = false;
            DevScheckBox.Visible = false;
            DivcycleYojna.Visible = false;
           
        }
        else if (ddlYojna.SelectedValue == "7")
        {
            ddlschemeName.SelectedValue = "10";
            txtLAbKiRashi.Text = "बालक / बालिका कक्षा 1 से 8 Rs500,500 कक्षा 9 से 12 Rs 1000,Rs1000";
            DivResult.Visible = false;
            DivGov.Visible = false;
            beneficiaryDepartment.SelectedValue = "2";
            DivSt3Scheme.Visible = false;
            DivVIMUKT2.Visible = true;
            DivPWD.Visible = true;
            DivLabhKiRshi.Visible = true;
            DevScheckBox.Visible = false;
            DivcycleYojna.Visible = false;
           
        }
        else if (ddlYojna.SelectedValue == "8")
        {
            ddlschemeName.SelectedValue = "11";
            txtLAbKiRashi.Text = "कक्षा 1 से 8 तक समस्त शासकीय प्राथमिक एवं माध्यमिक शालाओं में दर्ज छात्र/छात्राओं को योजना के अंतर्गत लाभ दिया जाता है।";
            DivResult.Visible = false;
            DivGov.Visible = false;
            beneficiaryDepartment.SelectedValue = "2";
            DivSt3Scheme.Visible = false;
            DivVIMUKT2.Visible = false;
            DivPWD.Visible = false;
            DivLabhKiRshi.Visible = true;
            DevScheckBox.Visible = false;
            DivcycleYojna.Visible = false;
            

        }
        else if (ddlYojna.SelectedValue == "9")
        {
            ddlschemeName.SelectedValue = "12";
            txtLAbKiRashi.Text = "निरंक";
            DivResult.Visible = false;
            DivGov.Visible = false;
            beneficiaryDepartment.SelectedValue = "2";
            DivSt3Scheme.Visible = false;
            DivVIMUKT2.Visible = false;
            DivPWD.Visible = false;
            DivLabhKiRshi.Visible = true;
            DevScheckBox.Visible = false;
            DivcycleYojna.Visible = true;
           


        }
        else
        {

            ddlschemeName.SelectedValue = "0";
            txtLAbKiRashi.Text = "";
            DivResult.Visible = false;
            DivGov.Visible = false;
            beneficiaryDepartment.SelectedValue = "0";
            DivSt3Scheme.Visible = false;
            DivVIMUKT2.Visible = false;
            DivPWD.Visible = false;
            DivLabhKiRshi.Visible = false;
            DevScheckBox.Visible = false;
            DivcycleYojna.Visible = false;
           
        }

        if (ddlCategory.SelectedValue == "3" && ddlYojna.SelectedValue == "5")
        {
            DivTribal.Visible = false;
            DivNaveeen.Visible = true;
            DivNaveeen2.Visible = true;
            DivVIMUKT.Visible = true;
        }
        else
        {
            DivTribal.Visible = false;
        }

        if (ddlCategory.SelectedValue == "3" && ddlYojna.SelectedValue == "4")
        {
            DivTribal.Visible = true;

            DivNaveeen.Visible = false;
            DivNaveeen2.Visible = false;
            DivVIMUKT.Visible = false;
        }
        else
        {
            DivTribal.Visible = false;
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {



    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCategory.SelectedValue != "1")
        {
            DivNaveeen.Visible = true;
            DivNaveeen2.Visible = true;
            DivVIMUKT.Visible = false;
            DivOBC.Visible = false;
            DivOBC2.Visible = false;
        }
        else
        {
            DivNaveeen.Visible = false;
            DivNaveeen2.Visible = false;
            DivVIMUKT.Visible = false;
            DivOBC.Visible = false;
            DivOBC2.Visible = false;
        }
        if (ddlCategory.SelectedValue == "3")
        {
            DivNaveeen.Visible = true;
            DivNaveeen2.Visible = true;
            DivTribal.Visible = true;
            DivVIMUKT.Visible = true;
            DivOBC.Visible = false;
            DivOBC2.Visible = false;
        }
        if (ddlCategory.SelectedValue == "4")
        {
            DivNaveeen.Visible = true;
            DivNaveeen2.Visible = true;
            DivTribal.Visible = false;
            DivVIMUKT.Visible = false;
            DivOBC.Visible = true;
            DivOBC2.Visible = true;
        }

        if (ddlCategory.SelectedValue == "3" && ddlYojna.SelectedValue == "5")
        {
            DivTribal.Visible = false;
            DivNaveeen.Visible = true;
            DivNaveeen2.Visible = true;
            DivVIMUKT.Visible = true;
        }
        else
        {
            DivTribal.Visible = false;
        }

        if (ddlCategory.SelectedValue == "3" && ddlYojna.SelectedValue == "4")
        {
            DivTribal.Visible = true;

            DivNaveeen.Visible = false;
            DivNaveeen2.Visible = false;
            DivVIMUKT.Visible = false;
        }
        else
        {
            DivTribal.Visible = false;
        }
    }
}