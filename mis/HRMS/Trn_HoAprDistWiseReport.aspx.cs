using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HRMS_Trn_HoAprDistWiseReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Unnamed_Click(object sender, EventArgs e)
    {

        if (txtUniqueID.SelectedItem.Text == "All")
        {

            show.Visible = true;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
        else if (txtUniqueID.SelectedItem.Text == "Bhopal")
        {

            show.Visible = false;
            show1.Visible = true;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
        else if (txtUniqueID.SelectedItem.Text == "Indore")
        {

            show.Visible = false;
            show1.Visible = false;
            show2.Visible = true;
            show3.Visible = false;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;

        }
        else if (txtUniqueID.SelectedItem.Text == "Sagar")
        {

            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = true;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;

        }
        else if (txtUniqueID.SelectedItem.Text == "Sehore")
        {

            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = true;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        show.Visible = false;
        show1.Visible = false;
        show2.Visible = false;
        show3.Visible = false;
        show4.Visible = false;
        Fieldset2.Visible = true;
        Fieldset3.Visible = false;
        Fieldset4.Visible = false;
        Fieldset5.Visible = false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        show.Visible = false;
        show1.Visible = false;
        show2.Visible = false;
        show3.Visible = false;
        show4.Visible = false;
        Fieldset2.Visible = false;
        Fieldset3.Visible = true;
        Fieldset4.Visible = false;
        Fieldset5.Visible = false;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        show.Visible = false;
        show1.Visible = false;
        show2.Visible = false;
        show3.Visible = false;
        show4.Visible = false;
        Fieldset2.Visible = false;
        Fieldset3.Visible = false;
        Fieldset4.Visible = true;
        Fieldset5.Visible = false;


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        show.Visible = false;
        show1.Visible = false;
        show2.Visible = false;
        show3.Visible = false;
        show4.Visible = false;
        Fieldset2.Visible = false;
        Fieldset3.Visible = false;
        Fieldset4.Visible = false;
        Fieldset5.Visible = true;

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        show.Visible = false;
        show1.Visible = false;
        show2.Visible = false;
        show3.Visible = false;
        show4.Visible = false;
        Fieldset2.Visible = true;
        Fieldset3.Visible = false;
        Fieldset4.Visible = false;
        Fieldset5.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        show.Visible = false;
        show1.Visible = false;
        show2.Visible = false;
        show3.Visible = false;
        show4.Visible = false;
        Fieldset2.Visible = false;
        Fieldset3.Visible = true;
        Fieldset4.Visible = false;
        Fieldset5.Visible = false;


    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        show.Visible = false;
        show1.Visible = false;
        show2.Visible = false;
        show3.Visible = false;
        show4.Visible = false;
        Fieldset2.Visible = false;
        Fieldset3.Visible = false;
        Fieldset4.Visible = true;
        Fieldset5.Visible = false;


    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        show.Visible = false;
        show1.Visible = false;
        show2.Visible = false;
        show3.Visible = false;
        show4.Visible = false;       
        Fieldset2.Visible = false;
        Fieldset3.Visible = false;
        Fieldset4.Visible = false;
        Fieldset5.Visible = true;


    }

    protected void txtUniqueID_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (txtUniqueID.SelectedItem.Text == "--Select--")
        {
            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = false;            
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
        if (txtUniqueID.SelectedItem.Text == "All")
        {
            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
        if (txtUniqueID.SelectedItem.Text == "Bhopal")
        {
            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
        if (txtUniqueID.SelectedItem.Text == "Indore")
        {
            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
        if (txtUniqueID.SelectedItem.Text == "Indore")
        {
            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
        if (txtUniqueID.SelectedItem.Text == "Sagar")
        {
            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
        if (txtUniqueID.SelectedItem.Text == "Sehore")
        {
            show.Visible = false;
            show1.Visible = false;
            show2.Visible = false;
            show3.Visible = false;
            show4.Visible = false;
            Fieldset2.Visible = false;
            Fieldset3.Visible = false;
            Fieldset4.Visible = false;
            Fieldset5.Visible = false;
        }
    }
}