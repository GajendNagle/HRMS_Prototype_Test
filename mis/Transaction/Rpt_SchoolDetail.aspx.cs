using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_Rpt_SchoolDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dv_rpt.Visible = false;
        dv_rpt1.Visible = false;
        //dv_rpt2.Visible = false;
        divTables.Visible = false;


    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        dv_rpt.Visible = true;
        dv_rpt1.Visible = true;
        //dv_rpt2.Visible = true;
        divTables.Visible = true;

    }

    //protected void ddlMngmntGrp_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (ddlMngmntGrp.SelectedItem.Text == "Central Government")
    //    {
    //        ddlMngmntGrpDtls.ClearSelection();
    //        FillLocation(ddlMngmntGrpDtls, new[] { "Jawahar Navodaya Vidyalaya", "Kendriya Vidyalaya" });
    //    }
    //    else if (ddlMngmntGrp.SelectedItem.Text == "Government Aided")
    //    {

    //        ddlMngmntGrpDtls.ClearSelection();
    //        FillLocation(ddlMngmntGrpDtls, new[] { "Government Aided", "Partially Govt. Aided" });
    //    }
    //    else if (ddlMngmntGrp.SelectedItem.Text == "Private Unaided (Recognized)")
    //    {
    //        ddlMngmntGrpDtls.ClearSelection();
    //        FillLocation(ddlMngmntGrpDtls, new[] { "Private Unaided (Recognized)" });
    //    }
    //    else if (ddlMngmntGrp.SelectedItem.Text == "State Government")
    //    {
    //        ddlMngmntGrpDtls.ClearSelection();
    //        FillLocation(ddlMngmntGrpDtls, new[] { "Minority Affairs Dept." });
    //    }
    //}

    //protected void FillLocation(DropDownList ddltofill, string[] param)
    //{
    //    ddltofill.Items.Clear();
    //    ddltofill.Items.Insert(0, new ListItem("--Select--", ""));
    //    for (int i = 0; i < param.Length; i++)
    //    {
    //        ddltofill.Items.Add(new ListItem(param[i], Convert.ToString(i + 1)));
    //    }
    //}



}