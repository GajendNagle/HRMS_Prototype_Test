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
        if (ddlDistrict.SelectedValue == "1")
        {
            dv_info.Visible = false;
            Detail.Visible = true;
            detailGuna.Visible = false;
            detailDewas.Visible = false;
            detailDatia.Visible = false;
        }
        else if (ddlDistrict.SelectedValue == "2")
        {
            dv_info.Visible = true;
            Detail.Visible = false;
            detailGuna.Visible = false;
            detailDewas.Visible = false;
            detailDatia.Visible = false;
        }
        else if (ddlDistrict.SelectedValue == "3")
        {
            dv_info.Visible = false;
            Detail.Visible = false;
            detailGuna.Visible = true;
        }
        else if (ddlDistrict.SelectedValue == "4")
        {
            dv_info.Visible = false;
            Detail.Visible = false;
            detailGuna.Visible = false;
            detailDatia.Visible = true;
            detailDewas.Visible = false;
        }
        else if (ddlDistrict.SelectedValue == "5")
        {
            dv_info.Visible = false;
            Detail.Visible = false;
            detailGuna.Visible = false;
            detailDewas.Visible = true;
            detailDatia.Visible = false;
        }
    }
}