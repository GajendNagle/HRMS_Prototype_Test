using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_OfficeReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dv_rpt.Visible = false;
        divDesignation.Visible = false;
        //divYear.Visible = true;
        //btnSave.Visible = true;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        dv_rpt.Visible = true;
    }

    protected void ddlDesignation_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if (ddlDesignation.SelectedItem.Text == "Clerical")
        //{
        //    btnSave.Visible = false;
        //    divYear.Visible = false;
        //    divDesignation.Visible = true;
        //    divDesignation1.Visible = false;
        //    divDesignation2.Visible = false;

        //}
        //if (ddlDesignation.SelectedItem.Text == "Teaching")
        //{
        //    btnSave.Visible = false;
        //    divYear.Visible = false;
        //    divDesignation1.Visible = true;
        //    divDesignation.Visible = false;
        //    divDesignation2.Visible = false;
        //}
        //if (ddlDesignation.SelectedItem.Text == "Executive")
        //{
        //    btnSave.Visible = false;
        //    divYear.Visible = false;
        //    divDesignation2.Visible = true;
        //    divDesignation.Visible = false;
        //    //divDesignation1.Visible = false;
        //}
    }

    protected void ddlDivision_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlDistrict.Items.Clear();
        ddlDistrict.Items.Insert(0, new ListItem("--Select--", ""));

        ddlBlock.Items.Clear();
        ddlBlock.Items.Insert(0, new ListItem("--Select--", ""));
        if (ddlDivision.SelectedItem.Text == "Bhopal")
        {
            FillLocation(ddlDistrict, new[] { "Bhopal", "Raisen"});
        }
        else if (ddlDivision.SelectedItem.Text == "Gwalior")
        {
            ddlDistrict.ClearSelection();
            FillLocation(ddlDistrict, new[] { "Shivpuri", "Guna" });
        }
    }
    protected void FillLocation(DropDownList ddltofill, string[] param)
    {
        ddltofill.Items.Clear();
        ddltofill.Items.Insert(0, new ListItem("--Select--", ""));
        for (int i = 0; i < param.Length; i++)
        {
            ddltofill.Items.Add(new ListItem(param[i], Convert.ToString(i + 1)));
        }
    }
    protected void ddlBlock_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if (ddlBlock.SelectedItem.Text == "") ;
    }

    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDivision.SelectedItem.Text == "Bhopal")
        {
            if (ddlDistrict.SelectedItem.Text == "Bhopal")
            {
                ddlBlock.ClearSelection();
                FillLocation(ddlBlock, new[] { "Berasia", "Phanda" });
            }
            else if(ddlDistrict.SelectedItem.Text == "Raisen")
            {
                ddlBlock.ClearSelection();
                FillLocation(ddlBlock, new[] { "Sagar ", "Vidisha " });
            }  
        }
        else if (ddlDistrict.SelectedItem.Text == "Shivpuri")
        {
            ddlBlock.ClearSelection();
            FillLocation(ddlBlock, new[] { "Dabra", "Morar" });
        } 
        else if(ddlDistrict.SelectedItem.Text == "Guna")
        {
            ddlBlock.ClearSelection();
            FillLocation(ddlBlock, new[] { "Aron", "Chachoda" });
        }
        else
        {
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Insert(0, "--Select--");
        }
    }
}