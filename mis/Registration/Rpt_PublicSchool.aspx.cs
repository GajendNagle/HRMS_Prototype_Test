using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Registration_Rpt_PublicSchool : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            
            
            hideshow();

        }
    }
    protected void ddlFYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        hideshow();
    }

    protected void hideshow()
    {
            
        
        

    }
}