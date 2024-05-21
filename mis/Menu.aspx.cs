using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] != null && Request.QueryString["SubID"] != null)
        {
            ViewState["ModuleID"] = Request.QueryString["ID"];
            ViewState["MenuID"] = Request.QueryString["SubID"];
            Menu();
        }
        else
        {
            ViewState["ModuleID"] = null;
            Response.Redirect("Default.aspx");
        }

    }
    protected void Menu()
    {
        dv_Masters_LocationMasters.Visible = false;
        dv_Masters_OfficeMasters.Visible = false;
        dv_Masters_HRMasters.Visible = false;
        dv_Masters_PayrollMasters.Visible = false;
        dv_Masters_SchemeMasters.Visible = false;
        dv_SchoolDirectory_Reports.Visible = false;
        dv_SchoolDirectory_HO.Visible = false;
        dv_SchoolDirectory_DO.Visible = false;
        dv_HRMS_Promotion.Visible = false;
        dv_HRMS_Increment.Visible = false;
        dv_Payroll_SalaryGenerate.Visible = false;
        dv_Payroll_ArrearCalculation.Visible = false;
        dv_Payroll_SalaryFinalization.Visible = false;
        dv_Payroll_Reports.Visible = false;
        dv_HRMS_LeaveProcess.Visible = false;
        dv_HRMS_Employee.Visible = false;
        dv_Payroll_PaymentFile.Visible = false;
        dv_HRMS_TransferApply.Visible = false;
        dv_HRMS_TourApply.Visible = false;
        dv_HRMS_Reports.Visible = false;
        dv_HRMS_eServiceBook.Visible = false;
        dv_Schememgmt_AdmissionMgmt.Visible = false;
        div_CompassionateAppointment.Visible = false;
        dv_Schememgmt_StudentProfileMgmt.Visible = false;
        dv_Office_Mgmt_System.Visible = false;
        dv_Bank_Master.Visible = false;
        //DEnquiry.Visible = false;  commented by sagar 16/05/2024
        dv_APRMS.Visible = false; // Added by Sagar 16/05/2024
        Div1.Visible = false;
        div_TransferCertificate.Visible = false;
        DIV_ProgressReport.Visible = false;
        Div_RollList.Visible = false;
        Div_SchemeManagement_Admin.Visible = false;
        dv_HRMS_LeaveProcessReports.Visible = false;
        Div_SchemeManagement_Ekyc.Visible = false;
        Div_SchemeManagement_LaptopScheme.Visible = false;
        dv_Reports.Visible = false;
        dv_HRMS_CompassionateAppointment.Visible = false;
        dv_CycleDistributionManagement.Visible = false;
        dv_StudentManagementSystem.Visible = false;
        dv_ControlReport.Visible = false;
        dv_AnalyticalReport.Visible = false;
        dv_StudentReport.Visible = false;
        dv_SchoolDirectory_Reports2.Visible = false;

        if (ViewState["ModuleID"] != null)
        {

            if (ViewState["ModuleID"].ToString() == "Masters")
            {
                if (ViewState["MenuID"].ToString() == "LocationMaster")
                {
                    dv_Masters_LocationMasters.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "OfficeMaster")
                {
                    dv_Masters_OfficeMasters.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "HRMaster")
                {
                    dv_Masters_HRMasters.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "PayrollMaster")
                {
                    dv_Masters_PayrollMasters.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "SchemeMaster")
                {
                    dv_Masters_SchemeMasters.Visible = true;

                }
                else
                {
                    Response.Redirect("Module.aspx?ID=Masters");
                }
            }
            else if (ViewState["ModuleID"].ToString() == "SchoolDirectory")
            {
                if (ViewState["MenuID"].ToString() == "Reports")
                {
                    dv_Reports.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "SchoolReports")
                {
                    dv_SchoolDirectory_Reports.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "SchoolReports2")
                {
                    dv_SchoolDirectory_Reports2.Visible = true;
                }

                else if (ViewState["MenuID"].ToString() == "HO")
                {
                    dv_SchoolDirectory_HO.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "DO")
                {
                    dv_SchoolDirectory_DO.Visible = true;
                }
                else
                {
                    Response.Redirect("Module.aspx?ID=SchoolDirectory");
                }

            }

            else if (ViewState["ModuleID"].ToString() == "Payroll")
            {
                if (ViewState["MenuID"].ToString() == "SalaryGenerate")
                {
                    dv_Payroll_SalaryGenerate.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "ArrearCalculation")
                {
                    dv_Payroll_ArrearCalculation.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "SalaryFinalization")
                {
                    dv_Payroll_SalaryFinalization.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "PaymentFile")
                {
                    dv_Payroll_PaymentFile.Visible = true;
                }

                else if (ViewState["MenuID"].ToString() == "Reports")
                {
                    dv_Payroll_Reports.Visible = true;
                }
                else
                {
                    Response.Redirect("Module.aspx?ID=Payroll");
                }
            }
            else if (ViewState["ModuleID"].ToString() == "HRMS")
            {
                if (ViewState["MenuID"].ToString() == "Promotion")
                {
                    dv_HRMS_Promotion.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "Increment")
                {
                    dv_HRMS_Increment.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "Reports")
                {
                    dv_HRMS_Reports.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "Employee")
                {
                    dv_HRMS_Employee.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "Compassionate Appointment")
                {
                    div_CompassionateAppointment.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "LeaveProcess")
                {
                    dv_HRMS_LeaveProcess.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "Transfer")
                {
                    dv_HRMS_TransferApply.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "Tour")
                {
                    Div1.Visible = true;
                }
                /*else if (ViewState["MenuID"].ToString() == "DepartmentEnquiry")
                {
                    DEnquiry.Visible = true;
                }  */          //commented by sagar 16/05/2004 
                else if (ViewState["MenuID"].ToString() == "EServiceBook")
                {
                    dv_HRMS_eServiceBook.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "CompassionateAppointment")
                {
                    dv_HRMS_CompassionateAppointment.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "LeaveProcessReports")
                {
                    dv_HRMS_LeaveProcessReports.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "APRMS")
                {
                    dv_APRMS.Visible = true;
                }
                else
                {
                    Response.Redirect("Module.aspx?ID=HRMS");
                }

            }
            else if (ViewState["ModuleID"].ToString() == "SchemeManagement")
            {
                if (ViewState["MenuID"].ToString() == "AdmissionMgmt")
                {
                    dv_Schememgmt_AdmissionMgmt.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "StudentProfileMgmt")
                {
                    dv_Schememgmt_StudentProfileMgmt.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "OfficeMgmtSystem")
                {
                    dv_Office_Mgmt_System.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "BankMaster")
                {
                    dv_Bank_Master.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "TransferCertificate")
                {
                    div_TransferCertificate.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "CycleDistributionManagement")
                {
                    dv_CycleDistributionManagement.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "StudentManagementSystem")
                {
                    dv_StudentManagementSystem.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "StudentReports")
                {
                    dv_StudentReport.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "ControlReport")
                {
                    dv_ControlReport.Visible = true;
                    dv_StudentReport.Visible = false;
                }
                else if (ViewState["MenuID"].ToString() == "AnalyticalReport")
                {
                    dv_AnalyticalReport.Visible = true;
                    dv_StudentReport.Visible = false;
                }
                else if (ViewState["MenuID"].ToString() == "ProgressReport")
                {
                    DIV_ProgressReport.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "RollList")
                {
                    Div_RollList.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "Admin")
                {
                    Div_SchemeManagement_Admin.Visible = true;
                }
                else if (ViewState["MenuID"].ToString() == "eKYC")
                {
                    Div_SchemeManagement_Ekyc.Visible = true;
                }
                else
                {
                    Response.Redirect("Module.aspx?ID=SchemeManagement");
                }

            }

            else
            {
                Response.Redirect("Default.aspx");
            }

        }
    }
}