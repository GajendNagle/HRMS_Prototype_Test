using System;

public partial class mis_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] != null)
        {
            ViewState["ModuleID"] = Request.QueryString["ID"];
            Module();
        }
        else
        {
            ViewState["ModuleID"] = null;
            Response.Redirect("Default.aspx");
        }

    }
    protected void Module()
    {
        dv_Dashboard.Visible = false;
        dv_Masters.Visible = false;
        dv_SchoolDirectory.Visible = false;
        dv_HRMS.Visible = false;
        dv_Payroll.Visible = false;
        dv_StudentDirectory.Visible = false;
        dv_SchemeManagement.Visible = false;
        Divuser_management.Visible = false;
        if (ViewState["ModuleID"] != null)
        {

            if (ViewState["ModuleID"].ToString() == "Dashboard")
            {
                dv_Dashboard.Visible = true;
            }
            else if (ViewState["ModuleID"].ToString() == "Masters")
            {
                dv_Masters.Visible = true;
            }
            else if (ViewState["ModuleID"].ToString() == "SchoolDirectory")
            {
                dv_SchoolDirectory.Visible = true;
            }
            else if (ViewState["ModuleID"].ToString() == "HRMS")
            {
                dv_HRMS.Visible = true;
            }
            else if (ViewState["ModuleID"].ToString() == "Payroll")
            {
                dv_Payroll.Visible = true;
            }
            else if (ViewState["ModuleID"].ToString() == "StudentDirectory")
            {
                dv_StudentDirectory.Visible = true;
            }
            else if (ViewState["ModuleID"].ToString() == "SchemeManagement")
            {
                dv_SchemeManagement.Visible = true;
            }
            else if (ViewState["ModuleID"].ToString() == "usermanagement")
            {
                Divuser_management.Visible = true;
            }
            else
            {
                Response.Redirect("Default.aspx");
            }

        }
    }
}