using System;
using System.Activities.Expressions;
using System.Security.Cryptography;
using System.Web.UI.WebControls;

public partial class mis_Transaction_DepartmentEnquiry : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		
	}

    protected void showDataBtn_Click(object sender, EventArgs e)
    {
        divEmpData.Visible = true;
        divDataofAU5693.Visible = true;
        DivVibhgiyData.Visible = true;
    }
}