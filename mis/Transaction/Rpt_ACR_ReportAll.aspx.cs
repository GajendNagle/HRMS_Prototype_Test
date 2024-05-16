using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_Rpt_AcrReportAll : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void ddlDistrictName_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        if (ddlDistrictName.SelectedItem.Text == "select")
        {
            ddlBlockName.Items.Clear();
        }
        else if (ddlDistrictName.SelectedItem.Text == "Bhopal")
        {
            ddlBlockName.Items.Clear();
           
           ddlBlockName.Items.Add(new ListItem( "--select--","0"));
            ddlBlockName.Items.Add(new ListItem("Phanda URBAN-New City","1"));
            ddlBlockName.Items.Add(new ListItem("Phanda URBAN-Old City","2"));
            ddlBlockName.Items.Add(new ListItem("Phanda Gramin","3"));
            ddlBlockName.Items.Add(new ListItem("Berasia","4"));


        }

        else if (ddlDistrictName.SelectedItem.Text == "Raisen")
        {
            ddlBlockName.Items.Clear();
            ddlBlockName.Items.Add(new ListItem("--select--","0"));
            ddlBlockName.Items.Add(new ListItem("Badi","1"));
            ddlBlockName.Items.Add(new ListItem("Begamganj","2"));
            ddlBlockName.Items.Add(new ListItem("Gairatganj","3"));
            ddlBlockName.Items.Add(new ListItem("Obedullaganj","4"));
            ddlBlockName.Items.Add(new ListItem("Sanchi","5"));
            ddlBlockName.Items.Add(new ListItem("Silwani","6"));


        }
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        show.Visible = true;
    }
}