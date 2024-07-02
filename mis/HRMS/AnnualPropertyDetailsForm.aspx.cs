using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_AnnualPropertyDetailsForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        show2.Visible = true;
    }

    //protected void ddlproprty_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    ddlArea.Items.Clear();
    //    if (ddlproprty.SelectedItem.Text == "select")
    //    {
    //        ddlArea.Items.Clear();
    //    }
    //    else if (ddlproprty.SelectedItem.Text =="Residential Property(आवासीय संपत्ति)")
    //    {

    //        ddlArea.Items.Add("square feet");

    //    }
    //    else if (ddlproprty.SelectedItem.Text =="Commercial Property(व्यावसायिक संपत्ति)")
    //    {

    //        ddlArea.Items.Add("square feet");

    //    }
    //    else if (ddlproprty.SelectedItem.Text =="Land/Plot(भूमि/प्लॉट)")
    //    {
    //        ddlArea.Items.Add("square feet");

    //    }
    //    else if (ddlproprty.SelectedItem.Text == "Agricultural Land(कृषि भूमि)")
    //    {
    //        ddlArea.Items.Add("hectare");

    //    }
    //}

    //    protected void ddlpropertowner_SelectedIndexChanged(object sender, EventArgs e)
    //    {
    //        divOwner.Visible = false;
    //        if (ddlpropertowner.SelectedItem.Text == "Self(स्वयं के नाम)")
    //        {

    //            divOwner.Visible = false;

    //        }
    //        else if (ddlpropertowner.SelectedItem.Text == "Wife(पत्नी के नाम)")
    //        {
    //            divOwner.Visible = true;


    //        }
    //        else if (ddlpropertowner.SelectedItem.Text == "Son(पुत्र के नाम)")
    //        {
    //            divOwner.Visible = true;


    //        }
    //        else if (ddlpropertowner.SelectedItem.Text == "Daughter(पुत्री के नाम)")
    //        {
    //            divOwner.Visible = true;


    //        }
    //        else if (ddlpropertowner.SelectedItem.Text == "Other(अन्य)")
    //        {
    //            divOwner.Visible = true;


    //        }
    //    }

    protected void rdAprm_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (rdAprm.SelectedValue =="1")
            {
                show1.Visible = true;
                show2.Visible = true;
                showbtn.Visible = false;
            }
            else
            {
                show2.Visible = false;
                showbtn.Visible = true;
            }
        }
        catch (Exception)
        {

            throw;
        }
    }
}