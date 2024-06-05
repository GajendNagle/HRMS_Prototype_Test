using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HRMS_BlockwiseIDCardProgress : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
       
    }



    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddldistrict.SelectedItem.Text == "select")
        {
            ddlblock.Items.Clear();
        }

        else if (ddldistrict.SelectedItem.Text == "Bhopal")
        {
            ddlblock.Items.Clear();
            ddlblock.Items.Add("Select");
            ddlblock.Items.Add("Phanda URBAN-New City");
            ddlblock.Items.Add("Phanda URBAN-Old City");
            ddlblock.Items.Add("Phanda Gramin");
            ddlblock.Items.Add("Berasia");
        }
        else if (ddldistrict.SelectedItem.Text == "Raisen")
        {
            ddlblock.Items.Clear();
            ddlblock.Items.Add("Select");
            ddlblock.Items.Add("Badi");
            ddlblock.Items.Add("Begamganj");
            ddlblock.Items.Add("Gairatganj");
            ddlblock.Items.Add("Obedullaganj");
            ddlblock.Items.Add("Sanchi");
        }
        else if (ddldistrict.SelectedItem.Text == "Sehore")
        {
            ddlblock.Items.Clear();
            ddlblock.Items.Add("Select");
            ddlblock.Items.Add("Sehore");
            ddlblock.Items.Add("Budhani");
            ddlblock.Items.Add("Ichhawar");
            ddlblock.Items.Add("Nasrullaganj");
            ddlblock.Items.Add("Sehore");
        }
        else if (ddldistrict.SelectedItem.Text == "Vidisha")
        {
            ddlblock.Items.Clear();
            ddlblock.Items.Add("Select");
            ddlblock.Items.Add("Basoda");
            ddlblock.Items.Add("Gyaraspur");
            ddlblock.Items.Add("Kurwai");
            ddlblock.Items.Add("Lateri");
            ddlblock.Items.Add("Sironj");
            ddlblock.Items.Add("Vidisha");
        }
        else if (ddldistrict.SelectedItem.Text == "Gwalior")
        {
            ddlblock.Items.Clear();
            ddlblock.Items.Add("Select");
            ddlblock.Items.Add("Dabra");
            ddlblock.Items.Add("Bhitarwar");
            ddlblock.Items.Add("Ghatigaon");
            ddlblock.Items.Add("Morar Rural");
            ddlblock.Items.Add("Morar URBAN- 1");
            ddlblock.Items.Add("Morar URBAN- 2");
        }
    }

    protected void ddlblock_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlblock.SelectedItem.Text == "Select" && ddldistrict.SelectedItem.Text == "Bhopal")
        {

            Fieldset1.Visible = true;
            berasia.Visible = false;
            phandanew.Visible = false;
            phandagramin.Visible = false;
            PhandaUrban.Visible = false;
            BADI.Visible = false;
            BEGAMGANJ.Visible = false;
            GAIRATGANJ.Visible = false;
            OBEDULLAGANJ.Visible = false;

        }

        else if(ddlblock.SelectedItem.Text == "Berasia")
        {
            
            berasia.Visible = true;
            phandanew.Visible = false;
            phandagramin.Visible = false;
            PhandaUrban.Visible = false;
            BADI.Visible = false;
            BEGAMGANJ.Visible = false;
            GAIRATGANJ.Visible = false;
            OBEDULLAGANJ.Visible = false;
            Fieldset1.Visible = false;
        }
        else if (ddlblock.SelectedItem.Text == "Phanda Gramin")
        {

            berasia.Visible = false;
            phandanew.Visible = false;
            phandagramin.Visible = true;
            PhandaUrban.Visible = false;
            BADI.Visible = false;
            BEGAMGANJ.Visible = false;
            GAIRATGANJ.Visible = false;
            OBEDULLAGANJ.Visible = false;
            Fieldset1.Visible = false;
        }
        else if (ddlblock.SelectedItem.Text == "Phanda URBAN-Old City")
        {

            berasia.Visible = false;
            phandanew.Visible = false;
            phandagramin.Visible = false;
            PhandaUrban.Visible = true;
            BADI.Visible = false;
            BEGAMGANJ.Visible = false;
            GAIRATGANJ.Visible = false;
            OBEDULLAGANJ.Visible = false;
            Fieldset1.Visible = false;
        }
        else if (ddlblock.SelectedItem.Text == "Phanda URBAN-New City")
        {

            berasia.Visible = false;
            phandanew.Visible = true;
            phandagramin.Visible = false;
            PhandaUrban.Visible = false;
            BADI.Visible = false;
            BEGAMGANJ.Visible = false;
            GAIRATGANJ.Visible = false;
            OBEDULLAGANJ.Visible = false;
            Fieldset1.Visible = false;
        }
        else if (ddlblock.SelectedItem.Text == "Badi")
        {

            berasia.Visible = false;
            phandanew.Visible = false;
            phandagramin.Visible = false;
            PhandaUrban.Visible = false;
            BADI.Visible = true;
            BEGAMGANJ.Visible = false;
            GAIRATGANJ.Visible = false;
            OBEDULLAGANJ.Visible = false;
            Fieldset1.Visible = false;
        }
        else if (ddlblock.SelectedItem.Text == "Begamganj")
        {

            berasia.Visible = false;
            phandanew.Visible = false;
            phandagramin.Visible = false;
            PhandaUrban.Visible = false;
            BADI.Visible = false;
            BEGAMGANJ.Visible = true;
            GAIRATGANJ.Visible = false;
            OBEDULLAGANJ.Visible = false;
            Fieldset1.Visible = false;
        }
        else if (ddlblock.SelectedItem.Text == "Gairatganj")
        {

            berasia.Visible = false;
            phandanew.Visible = false;
            phandagramin.Visible = false;
            PhandaUrban.Visible = false;
            BADI.Visible = false;
            BEGAMGANJ.Visible = false;
            GAIRATGANJ.Visible = true;
            OBEDULLAGANJ.Visible = false;
            Fieldset1.Visible = false;
        }
        else if (ddlblock.SelectedItem.Text == "Obedullaganj")
        {

            berasia.Visible = false;
            phandanew.Visible = false;
            phandagramin.Visible = false;
            PhandaUrban.Visible = false;
            BADI.Visible = false;
            BEGAMGANJ.Visible = false;
            GAIRATGANJ.Visible = false;
            OBEDULLAGANJ.Visible = true;
            Fieldset1.Visible = false;
        }
    }
}


