using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HRMS_SchoolBlockwiseIDCardProgress : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          

        }
    }


    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddldistrict.SelectedItem.Text == "select")
        {
            blockGroupBhopal.Items.Clear();

        }
      

        else if (ddldistrict.SelectedItem.Text == "Bhopal")
        {
            blockGroupBhopal.Items.Clear();
            blockGroupBhopal.Items.Add("--select--");
            blockGroupBhopal.Items.Add("Phanda URBAN-New City");
            blockGroupBhopal.Items.Add("Phanda URBAN-Old City");
            blockGroupBhopal.Items.Add("Phanda Gramin");
            blockGroupBhopal.Items.Add("Berasia");
        }
        else if (ddldistrict.SelectedItem.Text == "Raisen")
        {
            blockGroupBhopal.Items.Clear();
            blockGroupBhopal.Items.Add("--select--");
            blockGroupBhopal.Items.Add("Badi");
            blockGroupBhopal.Items.Add("Begamganj");
            blockGroupBhopal.Items.Add("Gairatganj");
            blockGroupBhopal.Items.Add("Obedullaganj");
            blockGroupBhopal.Items.Add("Sanchi");
        }
        else if (ddldistrict.SelectedItem.Text == "Sehore")
        {
            blockGroupBhopal.Items.Clear();
            blockGroupBhopal.Items.Add("--select--");
            blockGroupBhopal.Items.Add("Sehore");
            blockGroupBhopal.Items.Add("Budhani");
            blockGroupBhopal.Items.Add("Ichhawar");
            blockGroupBhopal.Items.Add("Nasrullaganj");
            blockGroupBhopal.Items.Add("Sehore");
        }
        else if (ddldistrict.SelectedItem.Text == "Vidisha")
        {
            blockGroupBhopal.Items.Clear();
            blockGroupBhopal.Items.Add("--select--");
            blockGroupBhopal.Items.Add("Basoda");
            blockGroupBhopal.Items.Add("Gyaraspur");
            blockGroupBhopal.Items.Add("Kurwai");
            blockGroupBhopal.Items.Add("Lateri");
            blockGroupBhopal.Items.Add("Sironj");
            blockGroupBhopal.Items.Add("Vidisha");
        }
        else if (ddldistrict.SelectedItem.Text == "Gwalior")
        {
            blockGroupBhopal.Items.Clear();
            blockGroupBhopal.Items.Add("--select--");
            blockGroupBhopal.Items.Add("Dabra");
            blockGroupBhopal.Items.Add("Bhitarwar");
            blockGroupBhopal.Items.Add("Ghatigaon");
            blockGroupBhopal.Items.Add("Morar Rural");
            blockGroupBhopal.Items.Add("Morar URBAN- 1");
            blockGroupBhopal.Items.Add("Morar URBAN- 2");
        }


    }

    protected void blockGroupBhopal_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (blockGroupBhopal.SelectedItem.Text == "Berasia")
        {
            tableBERASIA.Visible = true; 
            tableGRAMIN.Visible = false;
            tablePHANDA.Visible = false;
            tblPHANDAnew.Visible = false;
            tblbadi.Visible = false;
            BEGUMGANJ.Visible = false;
            tblGAIRATGANJ.Visible = false;
            tblOBEDULLAGANJ.Visible = false;
            
        }

        else if (blockGroupBhopal.SelectedItem.Text == "Phanda Gramin")
        {
            tableBERASIA.Visible = false;
            tableGRAMIN.Visible = true;
            tablePHANDA.Visible = false;
            tblPHANDAnew.Visible = false;
            tblbadi.Visible = false;
            BEGUMGANJ.Visible = false;
            tblGAIRATGANJ.Visible = false;
            tblOBEDULLAGANJ.Visible = false;

        }
        
        else if (blockGroupBhopal.SelectedItem.Text == "Phanda URBAN-New City")
        {
            tableBERASIA.Visible = false;
            tableGRAMIN.Visible = false;
            tablePHANDA.Visible = false;
            tblPHANDAnew.Visible = true;
            tblbadi.Visible = false;
            BEGUMGANJ.Visible = false;
            tblGAIRATGANJ.Visible = false;
            tblOBEDULLAGANJ.Visible = false;

        }
        else if (blockGroupBhopal.SelectedItem.Text == "Phanda URBAN-Old City")
        {
            tableBERASIA.Visible = false;
            tableGRAMIN.Visible = false;
            tablePHANDA.Visible = true;
            tblPHANDAnew.Visible = false;
            tblbadi.Visible = false;
            BEGUMGANJ.Visible = false;
            tblGAIRATGANJ.Visible = false;
            tblOBEDULLAGANJ.Visible = false;

        }
        else if (blockGroupBhopal.SelectedItem.Text == "Badi")
        {
            tableBERASIA.Visible = false;
            tableGRAMIN.Visible = false;
            tablePHANDA.Visible = false;
            tblPHANDAnew.Visible = false;
            tblbadi.Visible = true;
            BEGUMGANJ.Visible = false;
            tblGAIRATGANJ.Visible = false;
            tblOBEDULLAGANJ.Visible = false;

        }
        else if (blockGroupBhopal.SelectedItem.Text == "Begamganj")
        {
            tableBERASIA.Visible = false;
            tableGRAMIN.Visible = false;
            tablePHANDA.Visible = false;
            tblPHANDAnew.Visible = false;
            tblbadi.Visible = false;
            BEGUMGANJ.Visible = true;
            tblGAIRATGANJ.Visible = false;
            tblOBEDULLAGANJ.Visible = false;

        }
        else if (blockGroupBhopal.SelectedItem.Text == "Gairatganj")
        {
            tableBERASIA.Visible = false;
            tableGRAMIN.Visible = false;
            tablePHANDA.Visible = false;
            tblPHANDAnew.Visible = false;
            tblbadi.Visible = false;
            BEGUMGANJ.Visible = false;
            tblGAIRATGANJ.Visible = true;
            tblOBEDULLAGANJ.Visible = false;

        }
        else if (blockGroupBhopal.SelectedItem.Text == "Obedullaganj")
        {
            tableBERASIA.Visible = false;
            tableGRAMIN.Visible = false;
            tablePHANDA.Visible = false;
            tblPHANDAnew.Visible = false;
            tblbadi.Visible = false;
            BEGUMGANJ.Visible = false;
            tblGAIRATGANJ.Visible = false;
            tblOBEDULLAGANJ.Visible = true;

        }



    }
}
