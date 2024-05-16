using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Masters_Mst_SchoolRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            divSchool.Visible = false;
            divOffice.Visible = false;
            divInstitute.Visible = false;
            hideshow();

        }
    }
    protected void ddlFYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        hideshow();
    }

    protected void hideshow()
    {
        divSchool.Visible = false;
        divOffice.Visible = false;
        divInstitute.Visible = false;
        if (ddlRegistrationType.SelectedItem.Text == "School Registration")
        {
            divSchool.Visible = true;

        }
        else if (ddlRegistrationType.SelectedItem.Text == "Office Registration")
        {
            divOffice.Visible = true;
        }
        else if (ddlRegistrationType.SelectedItem.Text == "Institute Registration")
        {
            divInstitute.Visible = true;
        }

    }

    protected void InChargeUniqueId_TextChanged(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(InChargeUniqueId.Text.Trim()))
        {
            txtInst_InchargeEmail.Text = string.Empty;
            txtInst_InChargeName.Text = string.Empty;
            txtInst_InchargeMobile.Text = string.Empty;
            txtInst_InchargeEmail.ReadOnly = false;
            txtInst_InChargeName.ReadOnly = false;
            txtInst_InchargeMobile.ReadOnly = false;
        }
        else
        {
            txtInst_InchargeEmail.Text = "sisodiya.ms@gmail.com";
            txtInst_InChargeName.Text = "Mahaveer Sisodiya";
            txtInst_InchargeMobile.Text = "798766551";
           txtInst_InchargeEmail.ReadOnly = true;
            txtInst_InChargeName.ReadOnly = true;
            txtInst_InchargeMobile.ReadOnly = true;
        }
    }
}