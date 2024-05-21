using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Scheme_StudentProfileLocking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            table.Visible = false;


        }
    }

    protected void cbx1_CheckedChanged(object sender, EventArgs e)
    {
        if (cbx1.Checked) { 
        
        Cbx2.Checked = true;
            Cbx3.Checked = true;
        



        }
        else
        {
            Cbx2.Checked = false;
            Cbx3.Checked = false;
          
        }
    }

    protected void CheckBtn_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBtn.Checked)
        {

            lockbtn.Visible = true;

        }
        else { lockbtn.Visible = false; }
    }

    protected void btnShowStudentDetails_Click(object sender, EventArgs e)
    {
        table.Visible = true;
    }
}