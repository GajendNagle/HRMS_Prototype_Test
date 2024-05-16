using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_DoLevel_SankulToSchoolUnMapping : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //divsave.Visible = false;
            grid.Visible = false;
            divbtn.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //divsave.Visible = true;
        //btnsearch.Visible = false;
        grid.Visible = true;
        divbtn.Visible = true;


    }




    protected void btnsave_Click(object sender, EventArgs e)
    {
        grid.Visible = true;
        divbtn.Visible = true;

    }
}