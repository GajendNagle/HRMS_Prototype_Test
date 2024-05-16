using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Scheme_StudentsProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dv_StudentDetails.Visible= false;
        }
    }

    protected void btnShowStudentDetails_Click(object sender, EventArgs e)
    {
        dv_StudentDetails.Visible = true;

    }
  
}