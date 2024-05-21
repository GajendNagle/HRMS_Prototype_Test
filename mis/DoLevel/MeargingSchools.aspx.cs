using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Registration_MeargingSchools : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            firstdiv.Visible = false;
            secondDiv.Visible = false;
            grid.Visible = false;
            //des.Visible = false;
            adddiv.Visible = false;
        }
    }





    protected void btmconfirm_Click(object sender, EventArgs e)
    {
        //lblMsg.Text = objdb.Alert("fa-check", "alert-success", "Thank You!", "Record Successfully Saved");
    }



    //protected void LinkButton2_Click1(object sender, EventArgs e)
    //{
    //    if (chkSatyapan.Checked)
    //    {

    //    }
    //    else
    //    {

    //    }
    //}

    protected void View1_Click(object sender, EventArgs e)
    {
        firstdiv.Visible = true;
        grid.Visible = false;
        LinkButton4.Visible = false;


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        secondDiv.Visible = true;
        adddiv.Visible = true;
        grid.Visible = false;
        LinkButton4.Visible = false;




    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        secondDiv.Visible = false;
        firstdiv.Visible = false;

        grid.Visible = true;
        //des.Visible = true;
        LinkButton4.Visible = true;
        //des.Visible = true;
            
    }

    protected void LBUpadateInfo_Click(object sender, EventArgs e)
    {
        adddiv.Visible=true;




        //ClientScript.RegisterStartupScript
        //            (GetType(), Guid.NewGuid().ToString(), "openModal();", true);
        ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
                      "openModal();", true);

    }
}