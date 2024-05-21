using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_StudentAttendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dvStudentDetails.Visible = false;
        }
    }

    protected void btnShowStudent_Click(object sender, EventArgs e)
    {
        dvStudentDetails.Visible = true;
    }

    protected void btnRegisterStudents_Click(object sender, EventArgs e)
    {
        dvStudentDetails.Visible = false;
    }
}