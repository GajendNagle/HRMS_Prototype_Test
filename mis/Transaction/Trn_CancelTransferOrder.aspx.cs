using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_Trn_CancelTransferOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LBUpadateInfo_Click(object sender, EventArgs e)
    {
        //ClientScript.RegisterStartupScript
        //            (GetType(), Guid.NewGuid().ToString(), "openModal();", true);

        ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
                      "openModal();", true);

    }
}