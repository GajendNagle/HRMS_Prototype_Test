using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_Rpt_CancelTransfer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //ddlBlock.ClearSelection();
    //    //if (ddlDistrict.SelectedItem.Text == "All")
    //    //{
            
    //    //}

    //     if (ddlDistrict.SelectedItem.Text == "Bhopal")
    //    {

    //        FillLocation(ddlBlock, new[] { "Berasia", "Phanda" });
    //    }
    //    else if (ddlDistrict.SelectedItem.Text == "Raisen")
    //    {

    //        FillLocation(ddlBlock, new[] { "Sagar ", "Vidisha " });
    //    }

    //    else if (ddlDistrict.SelectedItem.Text == "Shivpuri")
    //    {

    //        FillLocation(ddlBlock, new[] { "Dabra", "Morar" });
    //    }
    //    else if (ddlDistrict.SelectedItem.Text == "Guna")
    //    {

    //        FillLocation(ddlBlock, new[] { "Aron", "Chachoda" });
    //    }
    //    else if (ddlDistrict.SelectedItem.Text == "All")
    //    {

    //        FillLocation(ddlBlock, new[] { "Aron", "Chachoda", "Berasia", "Phanda", "Sagar ", "Vidisha ", "Dabra", "Morar" });
    //    }
    //    else
    //    {

    //       // ddlDistrict.Items.Insert(0, "--Select--");
    //    }
    //}
    protected void FillLocation(DropDownList ddltofill, string[] param)
    {
        ddltofill.Items.Clear();
        ddltofill.Items.Insert(0, new ListItem("--Select--", ""));
        for (int i = 0; i < param.Length; i++)
        {
            ddltofill.Items.Add(new ListItem(param[i], Convert.ToString(i + 1)));
        }
    }




    protected void btnSave_Click(object sender, EventArgs e)
    {
        if(ddlDistrict.SelectedValue == "1")
        {
            dv_info.Visible = false;
            Detail.Visible = true;
        }
        else
        {
            dv_info.Visible = true;
            Detail.Visible = false;
        }
    }
}