<%@ Page Title="" Language="C#" MasterPageFile="~/mis/HomeMaster.master" AutoEventWireup="true" CodeFile="Module.aspx.cs" Inherits="mis_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Dashboard" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor">Dashboard</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>

        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row text-center justify-content-center mb-5">
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Dashboard/SchoolDirectoryDashboard.aspx">
                            <img src="dist/images/icon/SchoolDirectory_Module.png" class="dash-img" />
                            <h6>School Directory Dashboard</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Dashboard/HRMSDashboard.aspx">
                            <img src="dist/images/icon/HRMS_Module.png" class="dash-img" />

                            <h6>HRMS Dashboard </h6>
                        </a>
                    </div>

                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <%--   <a href="Dashboard/StudentDashboard.aspx">--%>
                        <a href="#">
                            <img src="dist/images/icon/StudentDirectory_Module.png" class="dash-img" />
                            <h6>Student / Scheme  Dashboard</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div id="Divuser_management" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor">User Management</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item active">User Management</li>
                    </ol>
                </div>
            </div>
        </div>

        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row text-center justify-content-center mb-5">
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="UserManagement/CreateUserLevel.aspx">
                            <img src="dist/images/icon/UMUserRoleCreation.png" class="dash-img" />
                            <h6>Create User Level </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="UserManagement/ModuleMapping.aspx">
                            <img src="dist/images/icon/Master_Module.png" class="dash-img" />
                            <h6>Module Mapping </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="UserManagement/ParentMenuCreation.aspx">
                            <img src="dist/images/icon/SchoolDirectory_Module.png" class="dash-img" />
                            <h6>Parent Menu Creation </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="UserManagement/SubMenuCreation.aspx">
                            <img src="dist/images/icon/UMRoleMenuMaster.png" class="dash-img" />
                            <h6>Sub Menu Creation </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="UserManagement/RoleCreation.aspx">
                            <img src="dist/images/icon/UMRoleMaster.png" class="dash-img" />
                            <h6>Role Creation</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="UserManagement/RoleWiseModuleMapping.aspx">
                            <img src="dist/images/icon/HRMS_Module.png" class="dash-img" />
                            <h6>Role Wise Module Mapping </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="UserManagement/InchargeMapping.aspx">
                            <img src="dist/images/icon/StudentDirectory_Module.png" class="dash-img" />
                            <h6>Incharge Mapping  </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="UserManagement/FormWiseRightsAssign.aspx">
                            <img src="dist/images/icon/StudentDirectory_Module.png" class="dash-img" />
                            <h6>Form Wise Right's Assign  </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="UserManagement/RoleWiseRightsAssign.aspx">
                            <img src="dist/images/icon/SchoolDirectory_Module.png" class="dash-img" />
                            <h6>Role Wise Right's Assign   </h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div id="dv_Masters" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Master Data</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item active">Master Data</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row text-center justify-content-center mb-5">

                    <div class="col-lg-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=Masters&SubID=LocationMaster">
                            <img src="dist/images/icon/Mst_Location.png" class="dash-img" />
                            <h6>Location Master Data</h6>
                        </a>
                    </div>
                    <div class="col-lg-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=Masters&SubID=OfficeMaster">
                            <img src="dist/images/icon/OfficeMaster_Module.png" class="dash-img" />

                            <h6>Office Master Data</h6>
                        </a>
                    </div>
                    <div class="col-lg-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=Masters&SubID=HRMaster">
                            <img src="dist/images/icon/Mst_HR.png" class="dash-img" />

                            <h6>HR Master Data</h6>
                        </a>
                    </div>
                    <div class="col-lg-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=Masters&SubID=PayrollMaster">
                            <img src="dist/images/icon/Payroll_Module.png" class="dash-img" />

                            <h6>Payroll Master Data</h6>
                        </a>
                    </div>
                    <%--  <div class="col-lg-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=Masters&SubID=SchemeMaster">
                            <img src="dist/images/icon/Scheme_Master.png" class="dash-img" />

                            <h6>Scheme Master Data</h6>
                        </a>
                    </div>--%>
                    <div class="col-lg-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_SchoolSetup.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_SchoolSetup.png" class="dash-img" />

                            <h6>OIS Setup Master</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div id="dv_SchoolDirectory" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">School Directory</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item active">School Directory</li>

                    </ol>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row text-center justify-content-center mb-5">

                    <div class="col-lg-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_SchoolRegistration.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_EmployeeRegistration.png" class="dash-img" />
                            <h6>OIS Registration </h6>
                        </a>
                    </div>
                    <div class="col-lg-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchoolDirectory&SubID=DO">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_EPRrpt.png" class="dash-img" />
                            <h6>OIS Verification </h6>
                        </a>
                    </div>
                    <div class="col-lg-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchoolDirectory&SubID=HO">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_EPRrpt.png" class="dash-img" />
                            <h6>Head Office Level Verification</h6>
                        </a>
                    </div>
                    <div class="col-lg-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchoolDirectory&SubID=Reports">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Reports</h6>
                        </a>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <div id="dv_HRMS" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">HRMS</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item active">HRMS</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row text-center justify-content-center mb-5">

                    <%--   Add By Ashutosh 04-01-24--%>
                    <%--    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmployeeRegistration.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_EmployeeRegistration.png" class="dash-img" />

                            <h6>Employee Registration </h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=Employee">
                            <img src="dist/images/icon/SchoolDirectory_HO_EmployeeRegistration.png" class="dash-img" />
                            <h6>Employee</h6>
                        </a>
                    </div>

                    <%--   End By Ashutosh 04-01-24--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=LeaveProcess">
                            <img src="dist/images/icon/HRMS_LeaveProcess.png" class="dash-img" />

                            <h6>Leave Process</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=Transfer">
                            <img src="dist/images/icon/HRMS_Transfer.png" class="dash-img" />

                            <h6>Transfer</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=Tour">
                            <img src="dist/images/icon/HRMS_Transfer.png" class="dash-img" />

                            <h6>Tour</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=Promotion">
                            <img src="dist/images/icon/HRMS_Promotion.png" class="dash-img" />
                            <h6>Promotion</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=Increment">
                            <img src="dist/images/icon/HRMS_EmployeeIncrement.png" class="dash-img" />

                            <h6>Increment</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HREmpRetirement.aspx">
                            <img src="dist/images/icon/HRMS_Retirement.png" class="dash-img" />

                            <h6>Retirement / Separation</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=EServiceBook">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>e-Service Book</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=DepartmentEnquiry">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Department Enquiry</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/ConfedicialReport.aspx">
                            <img src="dist/images/icon/HRMS_AnuualConfidentionalReport.png" class="dash-img" />

                            <h6>Annual Confidential Report (ACR)</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=CompassionateAppointment">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Compassionate Appointment</h6>
                        </a>
                    </div>
                    <%--      <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/AnukampaNuktiMainPage.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Compassionate Appointment</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/AllOrderDetails.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Dashboard Display Circulars-Orders </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/ParivednaNevakarn.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Grievance Management System</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=Reports">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Reports</h6>
                        </a>
                    </div>



                </div>
            </div>
        </div>
    </div>

    <div id="dv_Payroll" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Payroll</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item active">Payroll</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row text-center justify-content-center mb-5">
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/AttendanceProcess.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate.png" class="dash-img" />
                            <h6>Attendance Process</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=Payroll&SubID=SalaryGenerate">
                            <img src="dist/images/icon/Payroll_SalaryGenerate.png" class="dash-img" />
                            <h6>Salary Generate</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=Payroll&SubID=ArrearCalculation">
                            <img src="dist/images/icon/Payroll_ArrearCalculation.png" class="dash-img" />

                            <h6>Arrear Calculation</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/SalaryFinalizationProcess.aspx">
                            <%--                        <a href="Menu.aspx?ID=Payroll&SubID=SalaryFinalization">--%>
                            <img src="dist/images/icon/Payroll_SalaryFinalization.png" class="dash-img" />

                            <h6>Salary Finalization</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=Payroll&SubID=PaymentFile">
                            <img src="dist/images/icon/Payroll_PaymentFile.png" class="dash-img" />

                            <h6>Payment File</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=Payroll&SubID=Reports">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Reports</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_StudentDirectory" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Student Directory</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item active">Student Directory</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row text-center justify-content-center mb-5">

                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Student/StudentRegistration.aspx">
                            <img src="dist/images/icon/StudentDirectory_StudentRegistration.png" class="dash-img" />
                            <h6>Student Registration</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/StudentDirectory_StudentVerification.png" class="dash-img" />

                            <h6>Student Verification</h6>
                        </a>
                    </div>

                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Reports</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_SchemeManagement" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Scheme Management</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item active">Scheme Management</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row text-center justify-content-center mb-5">
                    <div class="col-md-2" data-aos="fade-right" data-aos-easing="ease-in-sine">
                        <a href="https://dpihrms.tserver.co.in/dashboard/mis/newdashboard.aspx">
                            <img src="dist/images/icon/Dashboard_Admin.png" class="dash-img" />
                            <h6>Dashboard </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Scheme_Department.aspx">
                            <img src="dist/images/icon/SchemeMgmt_SchemeFundAllocation.png" class="dash-img" />
                            <h6>Scheme Department Master</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Trn_SchemeApplication.aspx">
                            <img src="dist/images/icon/SchemeMgmt_SchemeMaster.png" class="dash-img" />
                            <h6>Scheme Master </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=AdmissionMgmt">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Admission Management</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Student Profile Management</h6>
                        </a>
                    </div>


                    <%--  <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/SchemeMgmt_Schemebenificiarydetails.png" class="dash-img" />

                            <h6>Scheme Beneficiary Details</h6>
                        </a>
                    </div>--%>
                    <%--  <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/SchemeMgmt_SchemeFundUtilization.png" class="dash-img" />

                            <h6>Scheme Fund Utilization </h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/StudentProfileLocking.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Student Profile View/Edit/Lock</h6>
                        </a>
                    </div>

                    <%-- <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Trn_StudentSchemeApply.aspx">
                            <img src="dist/images/icon/SchemeMgmt_StudentSchemeApply.png" class="dash-img" />

                            <h6>Student Scheme Apply</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/SSDDO_Scholarship.aspx">
                            <img src="dist/images/icon/SchemeMgmt_StudentSchemeApply.png" class="dash-img" />

                            <h6>SSDDO Scholarship </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Student_Tracking.aspx">
                            <img src="dist/images/icon/SchemeMgmt_StudentSchemeApply.png" class="dash-img" />

                            <h6>Student Tracking </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Scheme_Details.aspx">
                            <img src="dist/images/icon/SchemeMgmt_StudentSchemeApply.png" class="dash-img" />

                            <h6>Scheme Details </h6>
                        </a>
                    </div>




                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=eKYC">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>e-KYC </h6>
                        </a>
                    </div>
                    <%--       <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Mst_HolidayCalander.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Holiday Calander</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Mst_Circular_Order.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Circular Order</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=OfficeMgmtSystem">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Office Management System</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=BankMaster">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Bank Master</h6>
                        </a>
                    </div>
                    <%-- <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=TransferCertificate">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Transfer Certificate</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=RollList">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Roll List</h6>
                        </a>
                    </div>
                    
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/AdmissionOfOutOfStateRegister.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Out-of-State Admission</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/ListOfStudentRegisteredInSambal.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Sambal Scheme</h6>
                        </a>
                    </div>
                    <%--             <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/ListOfSchoolBlockWise.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>List Of School BlockWise</h6>
                        </a>
                    </div> --%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/SchemeCriteriasByClass.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Scholarship Benifit Sanction Management</h6>
                        </a>
                    </div>
                    <%--  <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=Admin">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Admin</h6>
                        </a>

                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/GanaveshDBTReportBlockWise.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Uniform Distribution Management</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=CycleDistributionManagement">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Cycle Distribution Management</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Text Book Management</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/CheckEligibilityForLaptopScheme.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Laptop Scheme</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=StudentManagementSystem">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Student Management System</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=StudentReports">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Reports</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

