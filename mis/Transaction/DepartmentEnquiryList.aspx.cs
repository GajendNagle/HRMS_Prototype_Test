using System;
using System.Data;
using System.Web.UI;

public partial class mis_Transaction_DepartmentEnquiryList : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack) { }
	}

	protected void LinkButton9_Click(object sender, EventArgs e)
	{
		ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(),
					 "openModal();", true);
	}



}