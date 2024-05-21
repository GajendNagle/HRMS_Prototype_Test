using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Scheme_Paid_Scholarship : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	} 
    protected void GetListOfStudents_Click(object sender, EventArgs e)
    {
		Studenttraking.Visible = true; 
	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Successful.Visible = true;
		PaymentFailed.Visible = false;
	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		Successful.Visible = false;
		PaymentFailed.Visible = true;
		
	}
}