using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_TeacherFillReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        
        Fieldset1.Visible = false;
        fieldset2.Visible = true;
        fieldset3.Visible = false;
        fieldset4.Visible = false;
    }

    protected void Unnamed_Click1(object sender, EventArgs e)
    {
      
        Fieldset1.Visible = false;
        fieldset2.Visible = false;
        fieldset3.Visible = true;
        fieldset4.Visible = false;
    }

    protected void Unnamed_Click2(object sender, EventArgs e)
    {
        Fieldset1.Visible = false;
        fieldset2.Visible = false;
        fieldset3.Visible = false;
        fieldset4.Visible = true;
    }

  
  
}