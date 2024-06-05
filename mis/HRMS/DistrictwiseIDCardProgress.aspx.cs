using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_HRMS_DistrictwiseIDCardProgress : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


        protected void ddldistrict_SelectedIndexChanged1(object sender, EventArgs e)
        {
        if (ddldistrict.SelectedItem.Value == "0")
        {
            Fieldset1.Visible = true;
            Agar.Visible = true;
            Betul.Visible = true;
            Bhopal.Visible = true;
            Chhatarpur.Visible = true;
            Chhindwara.Visible = true;
            Dewas.Visible = true;
            Gwalior.Visible = true;
            Indore.Visible = true;
            Jabalpur.Visible = true;
            Narmadapuram.Visible = true;
            Raisen.Visible = true;
            Ujjain.Visible = true;
            Umaria.Visible = true;
            Vidisha.Visible = true;

        }

        else if (ddldistrict.SelectedItem.Value == "51")
        {

            Fieldset1.Visible = true;
            Agar.Visible = true;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }

        else if (ddldistrict.SelectedItem.Value == "35")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = true;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }

        else if (ddldistrict.SelectedItem.Value == "32")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = true;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }

        else if (ddldistrict.SelectedItem.Value == "9")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = true;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }

        else if (ddldistrict.SelectedItem.Value == "43")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = true;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }

        else if (ddldistrict.SelectedItem.Value == "23")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = true;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }

        else if (ddldistrict.SelectedItem.Value == "4")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = true;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }

        else if (ddldistrict.SelectedItem.Value == "26")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = true;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }

        else if (ddldistrict.SelectedItem.Value == "39")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = true;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }

        else if (ddldistrict.SelectedItem.Value == "37")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = true;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }
        else if (ddldistrict.SelectedItem.Value == "34")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = true;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }
        else if (ddldistrict.SelectedItem.Value == "21")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = true;
            Umaria.Visible = false;
            Vidisha.Visible = false;
        }
        else if (ddldistrict.SelectedItem.Value == "15")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = true;
            Vidisha.Visible = false;
        }
        else if (ddldistrict.SelectedItem.Value == "31")
        {

            Fieldset1.Visible = true;
            Agar.Visible = false;
            Betul.Visible = false;
            Bhopal.Visible = false;
            Chhatarpur.Visible = false;
            Chhindwara.Visible = false;
            Dewas.Visible = false;
            Gwalior.Visible = false;
            Indore.Visible = false;
            Jabalpur.Visible = false;
            Narmadapuram.Visible = false;
            Raisen.Visible = false;
            Ujjain.Visible = false;
            Umaria.Visible = false;
            Vidisha.Visible = true;
        }


    }
}








