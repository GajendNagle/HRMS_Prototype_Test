using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_Trn_ParivadNivaran : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void Unnamed_Click(object sender, EventArgs e)
    //{
    //    if (ddlForword.SelectedItem.Text == "CPI")
    //    {

    //        Response.Redirect("ViewAccumulatedComplaints.aspx");

    //    }
    //}

    protected void ddlForword_SelectedIndexChanged(object sender, EventArgs e)
    {
        AuthorityName.Visible = false;
        if (ddlForword.SelectedItem.Text == "CPI")
        {

            AuthorityName.Visible = true;
        }

          
    }
}