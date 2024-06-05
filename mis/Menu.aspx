<%@ Page Title="" Language="C#" MasterPageFile="~/mis/HomeMaster.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="mis_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">


    <div id="dv_Masters_LocationMasters" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Location Master Data</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Masters" title="click to go on">Masters Data</a></li>
                        <li class="breadcrumb-item active">Location Master Data</li>
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
                        <a href="Masters/Mst_Loc_State.aspx">
                            <img src="dist/images/icon/Mst_Loc_State.png" class="dash-img" />
                            <h6>State Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_Division.aspx">
                            <img src="dist/images/icon/Mst_Loc_Division.png" class="dash-img" />

                            <h6>Division Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_District.aspx">
                            <img src="dist/images/icon/Mst_Loc_District.png" class="dash-img" />

                            <h6>District Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_Block.aspx">
                            <img src="dist/images/icon/Mst_Loc_Block.png" class="dash-img" />

                            <h6>Block Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_Parliamentary.aspx">
                            <img src="dist/images/icon/Mst_Loc_Parliament.png" class="dash-img" />

                            <h6>Parliamentary Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_Assembly.aspx">
                            <img src="dist/images/icon/Mst_Loc_Assembly.png" class="dash-img" />

                            <h6>Assembly Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_NagerNigam.aspx">
                            <img src="dist/images/icon/Mst_Loc_NagarNigam.png" class="dash-img" />

                            <h6>Nagar Nigam Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_NagarPalika.aspx">
                            <img src="dist/images/icon/Mst_Loc_NagarPalika.png" class="dash-img" />

                            <h6>Nagar Palika Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_ZilaPanchayat.aspx">
                            <img src="dist/images/icon/Mst_Loc_JilaPanchayat.png" class="dash-img" />

                            <h6>Zila Panchayat Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_NagarPanchayat.aspx">
                            <img src="dist/images/icon/Mst_Loc_NagarPanchayat.png" class="dash-img" />

                            <h6>Nagar Panchayat Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_JanpadPanchayat.aspx">
                            <img src="dist/images/icon/Mst_Loc_JanpatPanchayat.png" class="dash-img" />

                            <h6>Janpad Panchayat Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_GramPanchayat.aspx">
                            <img src="dist/images/icon/Mst_Loc_GramPanchayat.png" class="dash-img" />

                            <h6>Gram Panchayat Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_Village.aspx">
                            <img src="dist/images/icon/Mst_Loc_Village.png" class="dash-img" />

                            <h6>Village Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Loc_Habitation.aspx">
                            <img src="dist/images/icon/Mst_Loc_Habitation.png" class="dash-img" />

                            <h6>Habitation Master Data</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_Masters_OfficeMasters" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Office Master Data</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item active">Office Master Data</li>
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
                        <a href="Masters/Mst_Off_OfficeType.aspx">
                            <img src="dist/images/icon/Mst_Office_OfficeType.png" class="dash-img" />

                            <h6>Office Type Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_SchoolType.aspx">
                            <img src="dist/images/icon/Mst_Office_SchoolType.png" class="dash-img" />

                            <h6>School Type Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_SchoolManagementGroup.aspx">
                            <img src="dist/images/icon/Mst_Office_SchoolMgmtGroup.png" class="dash-img" />

                            <h6>School Management Group Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_ManagementGroupDetails.aspx">
                            <img src="dist/images/icon/Mst_Office_SchoolMgmtDetails.png" class="dash-img" />

                            <h6>Management Group Detail Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_SchoolBoard.aspx">
                            <img src="dist/images/icon/Mst_Office_Board.png" class="dash-img" />

                            <h6>School Board Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_SchoolCategory.aspx">
                            <img src="dist/images/icon/Mst_Office_SchoolCatagory.png" class="dash-img" />

                            <h6>School Category Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_SchoolCategoryDetail.aspx">
                            <img src="dist/images/icon/Mst_Office_SchoolCatagoryDetails.png" class="dash-img" />

                            <h6>School Category Detail Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_SchoolInchargeType.aspx">
                            <img src="dist/images/icon/Mst_Office_SchoolInchargeType.png" class="dash-img" />

                            <h6>School Incharge Type Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_SchoolMedium.aspx">
                            <img src="dist/images/icon/Mst_Office_SchoolMedium.png" class="dash-img" />

                            <h6>School Medium Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_SpecialSchool.aspx">
                            <img src="dist/images/icon/Mst_Office_SpecialSchool.png" class="dash-img" />

                            <h6>Special School Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_OfficeRegistration.aspx">
                            <img src="dist/images/icon/Mst_Office_OfficeRegistration.png" class="dash-img" />

                            <h6>Office Registration Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_SchoolClassName.aspx">
                            <img src="dist/images/icon/Mst_Office_SchoolClassName.png" class="dash-img" />

                            <h6>School Class Name Master Data</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_Off_Subject.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />

                            <h6>Subject Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_ClassSubjectMapping.aspx">
                            <img src="dist/images/icon/Mst_Office_Subject.png" class="dash-img" />
                            <h6>Class To Subject Mapping </h6>
                        </a>
                    </div>
                    <%--Create By Pradeep--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_ContactMaster.aspx">
                            <img src="dist/images/icon/Mst_Office_Subject.png" class="dash-img" />
                            <h6>Directory Master Data</h6>
                        </a>
                    </div>



                </div>
            </div>
        </div>
    </div>
    <div id="dv_Masters_HRMasters" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">HR Master Data</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item active">HR Master Data</li>
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
                        <a href="Masters/Mst_HR_Post.aspx">
                            <img src="dist/images/icon/Mst_HR_Post.png" class="dash-img" />

                            <h6>Post Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_Class.aspx">
                            <img src="dist/images/icon/Mst_HR_ClassMaster.png" class="dash-img" />

                            <h6>Class Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_DesignationType.aspx">
                            <img src="dist/images/icon/Mst_HR_DesignationType.png" class="dash-img" />
                            <h6>Designation Type Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_Designation.aspx">
                            <img src="dist/images/icon/Mst_HR_Designation.png" class="dash-img" />

                            <h6>Designation Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_Section.aspx">
                            <img src="dist/images/icon/Mst_HR_SectionMaster.png" class="dash-img" />

                            <h6>Section Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_PayCommission.aspx">
                            <img src="dist/images/icon/Mst_HR_PayCommision.png" class="dash-img" />

                            <h6>Pay Commission Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_PayScale.aspx">
                            <img src="dist/images/icon/Mst_HR_PayScale.png" class="dash-img" />

                            <h6>Pay Scale Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_GradePay.aspx">
                            <img src="dist/images/icon/Mst_HR_GradePay.png" class="dash-img" />

                            <h6>Grade Pay Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_Level.aspx">
                            <img src="dist/images/icon/Mst_HR_Level.png" class="dash-img" />

                            <h6>Level Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_LevelBasicPay.aspx">
                            <img src="dist/images/icon/Mst_HR_LavelBasicPay.png" class="dash-img" />

                            <h6>Level Basic Pay Master Data</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_Department.aspx">
                            <img src="dist/images/icon/Mst_HR_Appointment.png" class="dash-img" />
                            <h6>Appointment Department Master Data</h6>
                        </a>
                    </div>
                    <%--  <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_Caste.aspx">
                            <img src="dist/images/icon/Mst_HR_Caste.png" class="dash-img" />
                            <h6>Religion Master Data</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_CategoryMaster.aspx">
                            <img src="dist/images/icon/Mst_HR_Category.png" class="dash-img" />

                            <h6>Caste Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_BloodGroup.aspx">
                            <img src="dist/images/icon/Mst_HR_Blood.png" class="dash-img" />

                            <h6>Blood Group Master Data</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_HR_Qualification.aspx">
                            <img src="dist/images/icon/Mst_HR_Qualification.png" class="dash-img" />
                            <h6>Qualification Master Data</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_Masters_PayrollMasters" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor " title="click to go on">Payroll Master Data</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item active" title="click to go on">Payroll Master Data</li>
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
                        <a href="Payroll/Mst_EarningAndDeduction.aspx">
                            <img src="dist/images/icon/Mst_Payroll_EarnAndDed.png" class="dash-img" />
                            <h6>Head Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Mst_SetEarningDeductionValueHeadWise.aspx">
                            <img src="dist/images/icon/Mst_Payroll_SetEarningdedOptionalHeadValue.png" class="dash-img" />
                            <h6>Set Earning & Deduction Head Values</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Mst_SetEarningDeductionOptionalHeadValue.aspx">
                            <img src="dist/images/icon/Mst_Payroll_SetEarnDedValueHeadWise.png" class="dash-img" />
                            <h6>Set Earning & Deduction Optional Head Values</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/SameAmountSettheAllemployeeheadwise.aspx">
                            <img src="dist/images/icon/Mst_Payroll_Sameheadamount.png" class="dash-img" />
                            <h6>Same Amount Set the All Employee Head Wise</h6>
                        </a>
                    </div>

                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Mst_LoanMaster.aspx">
                            <img src="dist/images/icon/Mst_Payroll_Loan.png" class="dash-img" />
                            <h6>Loan Master Data</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Mst_PolicyMaster.aspx">
                            <img src="dist/images/icon/Mst_Payroll_Policy.png" class="dash-img" />
                            <h6>Policy Master Data</h6>
                        </a>
                    </div>
                    <%-- Create by Aman--%>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Mst_PayrollSetHeadwiseChallanDetails.aspx">
                            <img src="dist/images/icon/Mst_Payroll_Policy.png" class="dash-img" />
                            <h6>Challan Details Master Data</h6>
                        </a>
                    </div>
                    <%-- <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Mst_EmployeeOvertimeCalculation.aspx">
                            <img src="dist/images/icon/Mst_Payroll_Policy.png" class="dash-img" />
                            <h6>Overtime Pay Calculation Master Data</h6>
                        </a>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_Masters_SchemeMasters" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Scheme Master Data</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item active">Scheme Master Data</li>
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
                        <a href="#">
                            <img src="dist/images/icon/SchemeMgmt_SchemeFundAllocation.gif" class="dash-img" />

                            <h6>Scheme Fund Allocation</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="dv_Reports" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Reports</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item active">Reports</li>
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
                        <a href="Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>School Reports</h6>
                        </a>
                    </div>
                    <div class="col-lg-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports2">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>OIS Setup Reports</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_OfficeReport.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Office Report </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Rpt_InstituteManagement.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Institute Management Report</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div id="dv_SchoolDirectory_Reports" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">School Reports</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">School Reports</li>
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
                        <a href="Registration/Rpt_PublishSchoolDetails.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Publish School Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Registration/Rpt_SchoolRegistration.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>School Detail Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Registration/RPT_MeargingSchools.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>School Merge Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Registration/RPT_UnMeargingSchools.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>School Unmerge Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Registration/Rpt_CloseSchool.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Close School Reports</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Registration/Rpt_SankulToschoolMapping.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Sankul To School Mapping Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Registration/Rpt_Sankul.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Sankul Detail Reports</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Registration/Rpt_PublicSchool.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>School Summary Report</h6>
                        </a>
                    </div>
                    <%--  <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Rpt_InstituteManagement.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Institute Management Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_OfficeReport.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Office Report </h6>
                        </a>
                    </div>--%>
                    <%-- <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Rpt_SurplusTeacherSchool.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Surplus Teacher School Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/SingleTeacherSchool.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Single Teacher School Report</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/SchoolWithoutSankul.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>School Without Sankul Report</h6>
                        </a>
                    </div>

                    <%--<div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Rpt_ZeroTeacherSchool.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Zero Teacher School Report</h6>
                        </a>
                    </div>--%>
                    <%--      <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/SurplusTeacherManagementSystem.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Surplus Teacher School Report</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Rpt_SchoolDetail.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>School Detail Report Card</h6>
                        </a>
                    </div>
                    <%--<div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_SchoolSetup.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>OIS Report Card</h6>
                        </a>
                    </div>--%>
                    <%--  <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_DistrictWisePublishedSchool.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>District Wise Published School Report</h6>
                        </a>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_SchoolDirectory_Reports2" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">OIS Setup Reports</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">OIS Setup Reports</li>
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
                        <a href="HRMS/SurplusTeacherManagementSystem.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>Surplus Teacher School Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Report/SchoolSetupMaster.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>School Setup Master</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Report/DistWiseSummaryOfPublishedSchools.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>District Wise Publish School</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_SchoolSetup.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>OIS Report Card</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/ZeroStaffSchool_Report.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>School Low Staff Report</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!--div for HO by Rohit-->
    <div id="dv_SchoolDirectory_HO" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Head Office Level Verification</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item active">HO level Verification</li>
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
                    <%--  <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmployeeRegistration.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_EmployeeRegistration.png" class="dash-img" />

                            <h6>Employee Registration </h6>
                        </a>
                    </div>--%>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HoLevel/SchoolVerification.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_SchoolVerification.png" class="dash-img" />

                            <h6>School Verification</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HoLevel/SankulVerification.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_SankulVerification.png" class="dash-img" />

                            <h6>Sankul Verification</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HoLevel/SankulToschoolMappingHO.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_SankulSchoolMapping.png" class="dash-img" />

                            <h6>Sankul To School Mapping Verification</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HoLevel/SankulToschoolUnMappingHO.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_SankulSchoolMapping.png" class="dash-img" />
                            <h6>Sankul To School UnMapping Verification</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HoLevel/MeargingSchoolsVerification.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_MergeSchool.png" class="dash-img" />

                            <h6>Merge School Verification</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HoLevel/UnmergingSchoolHO.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_UnmergeSchoolVerification.png" class="dash-img" />

                            <h6>Unmerge School Verification</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HoLevel/CloseSchoolHO.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_CloseSchoolVerification.png" class="dash-img" />

                            <h6>Close School Verification</h6>
                        </a>
                    </div>
                    <%--    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmployeeVerification.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_CloseSchoolVerification.png" class="dash-img" />

                            <h6>Employee Verification</h6>
                        </a>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <!--div End-->

    <!--div for DO by Rohit-->
    <div id="dv_SchoolDirectory_DO" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">OIS Verification</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item active">OIS Verification</li>
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
                    <%--  <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmployeeRegistration.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_EmployeeRegistration.png" class="dash-img" />

                            <h6>Employee Registration </h6>
                        </a>
                    </div>--%>
                    <%--   <div class="col-lg-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Masters/Mst_SchoolRegistration.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_EmployeeRegistration.png" class="dash-img" />
                            <h6>OIS Registration </h6>
                        </a>
                    </div>--%>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="DoLevel/SchoolVerificationDO.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_SchoolRegistration.png" class="dash-img" />

                            <h6>School Verification </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="DoLevel/Mst_SankulDO.aspx">
                            <img src="dist/images/icon/SchoolDirectory_DO_SankulRequest.png" class="dash-img" />

                            <h6>Create Sankul </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="DoLevel/SankulToschoolMapping.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_SankulSchoolMapping.png" class="dash-img" />

                            <h6>Sankul To School Mapping </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="DoLevel/SankulToSchoolUnMapping.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_SankulSchoolMapping.png" class="dash-img" />

                            <h6>Sankul To School UnMapping </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="DoLevel/MeargingSchools.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_MergeSchool.png" class="dash-img" />

                            <h6>Merge School </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="DoLevel/UnMergingSchools.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_UnmergeSchoolRequest.png" class="dash-img" />

                            <h6>Unmerge School </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="DoLevel/CloseSchool.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_CloseSchoolRequest.png" class="dash-img" />

                            <h6>Close School </h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--div End-->

    <div id="dv_Payroll_SalaryGenerate" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Salary Generate</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                        <li class="breadcrumb-item active">Salary Generate</li>
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
                        <a href="Payroll/SalaryGenerateProcess_MonthlySalaryProcess.aspx">

                            <img src="dist/images/icon/Payroll_SalaryGenerate.png" class="dash-img" />

                            <h6>Monthly Salary Process </h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/SalaryGenerateProcess_SupplymentrySalaryProcess.aspx">
                            <img src="dist/images/icon/Payroll_SupplementarySalaryProcess.png" class="dash-img" />
                            <h6>Supplementary  Salary Process</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div id="dv_Payroll_ArrearCalculation" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Arrear Calculation</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                        <li class="breadcrumb-item active">Arrear Calculation</li>
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
                    <%-- <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/schooldirectory.gif" class="dash-img" />

                            <h6>Salary Arrear</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/schooldirectory.gif" class="dash-img" />

                            <h6>DA Arrear</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/schooldirectory.gif" class="dash-img" />

                            <h6>Increment Arrear</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/ArrearCalculation.aspx">
                            <img src="dist/images/icon/Payroll_ArrearCalculation.png" class="dash-img" />

                            <h6>Arrear Calculation</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/ArrearFinalSubmission.aspx">
                            <img src="dist/images/icon/Payroll_ArrearFinalSubmission.png" class="dash-img" />
                            <h6>Arrear Final Submission</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div id="dv_Payroll_SalaryFinalization" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Salary Finalization</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                        <li class="breadcrumb-item active">Salary Finalization</li>
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
                        <a href="Payroll/SalaryFinalizationProcess.aspx">
                            <img src="dist/images/icon/schooldirectory.gif" class="dash-img" />
                            <h6>Reset Salary (Monthly & Supplementary )</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/schooldirectory.gif" class="dash-img" />

                            <h6>Supplementary Salary</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/schooldirectory.gif" class="dash-img" />

                            <h6>Monthly Salary</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_Payroll_PaymentFile" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Payment File</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                        <li class="breadcrumb-item active">Payment File</li>
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
                        <a href="Payroll/Bank_PaymentByTreasury.aspx">
                            <img src="dist/images/icon/Payroll_PaymentFile_ByTreasury.png" class="dash-img" />
                            <h6>Payment By Treasury</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/Payroll_PaymentFile_DSC.png" class="dash-img" />

                            <h6>DSC Verification</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_Payroll_Reports" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Reports</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=Payroll" title="click to go on">Payroll</a></li>
                        <li class="breadcrumb-item active">Reports</li>
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
                        <a href="Payroll/Rpt_FinalSummary.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_FSummary.png" class="dash-img" />
                            <h6>Final Summary</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_MonthlyPayBill.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_PBill.png" class="dash-img" />
                            <h6>Monthly Pay Bill</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_BankAdviceLetter.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_BALetter.png" class="dash-img" />
                            <h6>Bank Advice Letter</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_EPFReport.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_EPF.png" class="dash-img" />
                            <h6>EPF Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_EmployeeSalarySlip.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_SalarySlip.png" class="dash-img" />
                            <h6>Employee Salary Slip</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_ProfessionalTaxChallan.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_Challan.png" class="dash-img" />
                            <h6>PT Challan Process</h6>
                        </a>
                    </div>

                    <%--  <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_ProfessionalTaxChallan.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_Arrear.png" class="dash-img" />
                            <h6>Arrear Report</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_LoanDetails.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_Loan.png" class="dash-img" />
                            <h6>Loan Details</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_Form16.aspx">
                            <img src="dist/images/icon/Payroll_SalaryGenerate_Form16.png" class="dash-img" />
                            <h6>Form 16</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_ArrearTypewise.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Arrear Type Wise Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_OfficeWiseArrearEPF.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Office Wise Arrear EPF Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_ArrearEPFMonthWise.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <%--  <h6>Arrear EPF Month Wise Report </h6>--%>
                            <h6>Month Wise Arrear EPF Report </h6>
                        </a>
                    </div>
                    <!--Add By Rohit need Need Icon and also need to update-->
                    <%-- <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_EarningsDeduction.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Earning Deduction Report</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_GPF.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>GPF Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_IncomeTax.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <%--   <h6>Income Tax Report Office Wise</h6>--%>
                            <h6>Office Wise Income Tax Report </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_IncomeTaxEmployeeWise.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <%--    <h6>Income Tax Report (Employee Wise)</h6>--%>
                            <h6>Employee Wise Income Tax Report </h6>
                        </a>
                    </div>
                    <!-- Add Pradeep;s Page -->
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_EmployeeFinalStatementFromAndToYearOrMonth.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <%--   <h6>Employee Final Statement FY</h6>--%>
                            <h6>Employee Final Statement</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_MonthlyPolicyReport.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Monthly Policy Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_NpsReport.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>NPS Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_SalaryGenerationStatus.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Salary Generation Status</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_SingleSalarySlip.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Single Salary Slip</h6>
                        </a>
                    </div>
                    <%--Aman's Payroll Pages--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_PayrollSalaryLedger.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Payroll Salary Ledger</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_EDLIReport.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>EDLI For Year (1st Jan)</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_FYEarnDeduction.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />

                            <h6>FY Wise Earn Deduction</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_MonthlyOfficeWiseEarnDed.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <%--   <h6>Monthly Office Wise Head Report</h6>--%>
                            <h6>Office Wise Monthly Head Report</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_ESICReport.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>ESIC Report</h6>
                        </a>
                    </div>
                    <%-- <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_OfficeWiseOvertimePay.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Overtime Pay Report</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Payroll/Rpt_MonthlyEarnDedDetail.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Monthly Earning & Deduction Details</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <!--div for Promotion by Rohit-->
    <div id="dv_HRMS_Promotion" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Promotion</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Promotion</li>
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
                        <a href="Transaction/PromotionProcess.aspx">
                            <img src="dist/images/icon/HRMS_PromotionProcess.png" class="dash-img" />
                            <h6>Promotion Process</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/PromotionOrders.aspx">
                            <img src="dist/images/icon/HRMS_PromotionOrder.png" class="dash-img" />
                            <h6>Promotion Order</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/PromotionHoldOrder.aspx">
                            <img src="dist/images/icon/HRMS_PromotionCancelOrders.png" class="dash-img" />

                            <h6>Promotion Hold Orders</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Promotion.aspx">
                            <img src="dist/images/icon/HRMS_PromotionCancelOrders.png" class="dash-img" />

                            <h6>Promotion Order Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/PromotionWithTransfer.aspx">
                            <img src="dist/images/icon/HRMS_PromotionCancelOrders.png" class="dash-img" />
                            <h6>Promotion With Transfer Report</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--div End-->
    <!--div for Increment by Rohit-->
    <div id="dv_HRMS_Increment" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Increment</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Increment</li>
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
                        <a href="Transaction/IncrementProcess.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Increment Process</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/IncrementOrders.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Order.png" class="dash-img" />
                            <h6>Increment Order</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/IncrementCancel.aspx">
                            <img src="dist/images/icon/HRMS_Increment_CancelOrder.png" class="dash-img" />

                            <h6>Increment Cancel Orders</h6>
                        </a>
                    </div>
                    <%--  <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/AddIncrement.aspx">
                            <img src="dist/images/icon/HRMS_Increment_CancelOrder.png" class="dash-img" />

                            <h6>Add Increment</h6>
                        </a>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <!--div End-->
    <div id="div_CompassionateAppointment" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <%-- <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Compassionate Appointment</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Compassionate Appointment</li>
                    </ol>
                </div>
            </div>
        </div>--%>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row text-center justify-content-center mb-5">
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Trn_CompassionateAppointment.aspx">
                            <img src="dist/images/icon/HRMS_LeaveTypeMaster.png" class="dash-img" />
                            <h6>Apply Compassionate</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Trn_Process_CompassionateAppointment.aspx">
                            <img src="dist/images/icon/SchoolDirectory_HO_CloseSchoolVerification.png" class="dash-img" />
                            <h6>Approve Compassionate</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Added by Rohit on 06-01-24 --%>
    <div id="dv_HRMS_Employee" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Employee</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Employee</li>
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
                        <a href="Transaction/EmployeeRegImportantNotes.aspx">
                            <img src="dist/images/icon/HRMS_LeaveTypeMaster.png" class="dash-img" />
                            <h6>Employee Registration</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmployeeVerificationNotes.aspx">
                            <img src="dist/images/icon/HRMS_LeaveTypeMaster.png" class="dash-img" />
                            <h6>Employee Verification</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmployeeOtherCurriculumActivitiesNotw.aspx">
                            <img src="dist/images/icon/HRMS_LeaveTypeMaster.png" class="dash-img" />
                            <h6>Employee Other Curriculum Activities</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_EmployeeDetails.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Employee Details Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_EmployeeHandicap.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Employee Handicap Report</h6>
                        </a>
                    </div>
                    <%--   <div class="row text-center justify-content-center mb-5">
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmployeeRegistration.aspx">
                            <img src="dist/images/icon/HRMS_LeaveTypeMaster.png" class="dash-img" />
                            <h6>Employee Registration</h6>
                        </a>
                    </div>--%>

                    <%--   <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Mst_LeaveAllocation.aspx">
                            <img src="dist/images/icon/HRMS_LeaveAllocationMaster.png" class="dash-img" />
                            <h6>Leave Allocation</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Mst_DepartmentWiseLeaveApproval.aspx">
                            <img src="dist/images/icon/HRMS_DepartmentWiseLeaveApprovalMaster.png" class="dash-img" />
                            <h6>Department wise Leave Approval</h6>
                        </a><
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <%--End by Ashutosh on 05-12-23 --%>

    <%--Added by Ashutosh on 05-12-23 --%>
    <div id="dv_HRMS_LeaveProcess" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Leave Process</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Leave Process</li>
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
                        <a href="HRMS/Mst_LeaveType.aspx">
                            <img src="dist/images/icon/HRMS_LeaveTypeMaster.png" class="dash-img" />
                            <h6>Leave Type</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/LeaveStatus.aspx">
                            <img src="dist/images/icon/HRMS_LeaveTypeMaster.png" class="dash-img" />
                            <h6>Leave Status</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Mst_LeaveAllocation.aspx">
                            <img src="dist/images/icon/HRMS_LeaveAllocationMaster.png" class="dash-img" />
                            <h6>Leave Allocation</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Mst_DepartmentWiseLeaveApproval.aspx">
                            <img src="dist/images/icon/HRMS_DepartmentWiseLeaveApprovalMaster.png" class="dash-img" />
                            <h6>Department wise Leave Approval</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Trn_ApplyLeave.aspx">
                            <img src="dist/images/icon/HRMS_ApplyLeave.png" class="dash-img" />
                            <h6>Apply Leave</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Trn_ViewLeaveRequest_Approve.aspx">
                            <img src="dist/images/icon/HRMS_ViewLeaveRequest&ApproveLeave.png" class="dash-img" />
                            <h6>View Leave Request & Approve Leave</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_BalanceLeave.aspx">
                            <img src="dist/images/icon/HRMS_BalanceLeave.png" class="dash-img" />
                            <h6>Balance Leave</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/LeaveApplicantDetails.aspx">
                            <img src="dist/images/icon/HRMS_LeaveProcess.png" class="dash-img" />
                            <h6>Leave Applicant Details</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Trn_EmployeeLeaveOpeningBalance.aspx">
                            <img src="dist/images/icon/HRMS_EmployeeLeaveOpeningBalance.png" class="dash-img" />
                            <h6>Employee Leave Opening Balance</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/RptLeaveHistory.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Leave History Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=HRMS&SubID=LeaveProcessReports">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Reports</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_HRMS_LeaveProcessReports" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Reports</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="Menu.aspx?ID=HRMS&SubID=LeaveProcess" title="click to go on">Leave Process</a></li>
                        <li class="breadcrumb-item active">Reports</li>
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
                        <a href="HRMS/LeavePendencyMonitor.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Leave Pendency Monitor Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/DEOMonitoringGrid.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>DEO Monitoring Grid Report</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--End by Ashutosh on 05-12-23 --%>
    <div id="dv_HRMS_TransferApply" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Transfer</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Transfer</li>
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
                        <a href="HRMS/ApplicationForVoluntaryTransfer.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Employee Voluntary Transfer</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Trn_MutualTransferApplication.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Employee Mutual Transfer</h6>
                        </a>
                    </div>
                    <%--Added by Ashutosh 09.01.24--%>
                    <%--<div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/BEO_TransferApproval.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>BEO Transfer Approval</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Trn_AdministrativeTransfer.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Administrative Level Transfer</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/DEO_TransferApproval.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>DEO Transfer Approval</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/HeadOfficeTransferApproveAplication.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Transfer Approval by Head Office</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/OIS_Transfer1Notes.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Automatic Transfer System</h6>
                        </a>
                    </div>

                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Trn_CancleTransferOrderApplication.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Cancel Transfer Order</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmployeeJoiningInOfficeNotes.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Employee Joining In Office</h6>
                        </a>
                    </div>

                    <%--    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Employee Relieving In Office</h6>
                        </a>
                    </div>--%>
                    <%--End by Ashutosh 09.01.24--%>
                </div>
            </div>
        </div>

    </div>
    <%--Added by Zaheer on 29-12-23 --%>
    <div id="Div1" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Tour</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Tour</li>
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
                        <a href="Transaction/EmpTourApplyNotes.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Apply Tour </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmpTourGenerateOrder.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Tour Approve</h6>
                        </a>
                    </div>

                </div>


            </div>

        </div>

    </div>
    <%--End by Zaheer on 29-12-23 --%>

    <%--Added by Zaheer on 29-12-23 --%>
    <%--<div id="DEnquiry" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Department Enquiry</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Department Enquiry</li>
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
                        <a href="Transaction/DepartmentEnquiryNotes.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Department Enquiry</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/DepartmentEnquiryList.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Department Enquiry list</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Rpt_DepartmentEnquiry.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Department Enquiry Report</h6>
                        </a>
                    </div>
                </div>


            </div>

        </div>

    </div>--%>  <%--commented by sagar 16/05/2024--%>


    <%--Added by Sagar on 16/05/2024--%>
    <div id="dv_APRMS" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Annual Property Returns Management System</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">APRMS</li>
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
                        <a href="HRMS/EmpAprNotes.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Employee APRMS</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/HOAprNotes.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Head Office APRMS</h6>
                        </a>
                    </div>


                </div>


            </div>

        </div>

    </div>
    <%--End by Sagar on 16/05/2024--%>

    <%--End by Zaheer on 29-12-23 --%>

    <div id="dv_HRMS_TourApply" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Tour</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Transfer</li>
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
                        <a href="Transaction/EmpTourApply.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Apply Tour </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/EmpTourGenerateOrder.aspx">
                            <img src="dist/images/icon/HRMS_Increment_Process.png" class="dash-img" />
                            <h6>Tour Approve</h6>
                        </a>
                    </div>

                </div>


            </div>

        </div>

    </div>

    <%--Added by Ashutosh on 02-01-24 --%>
    <div id="dv_HRMS_Reports" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Reports</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Reports</li>
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
                    <%--<div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Rpt_EmployeeVerification.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Employee Detail Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_EmployeeDetails.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Employee Details Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_EmployeeHandicap.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Employee Handicap Report</h6>
                        </a>
                    </div>--%>
                    <%--<div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Rpt_EmployeePromotion.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Employee Promotion Report</h6>
                        </a>
                    </div>--%>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/Rpt_EmployeeIncrement.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Employee Increment Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_EServiceBookReport.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>E-Service Book Report</h6>
                        </a>
                    </div>
                    <%--<div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_EServiceBookReport.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Deparment Enquiry</h6>
                        </a>
                    </div>--%>
                    <%--Create by Aman's report--%>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_HREmpRetirementList.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Employee Retirement Report</h6>
                        </a>
                    </div>
                    <%--<div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_TransferReport.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Transfer Report</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_CompassionateAppointment.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Compassionate Report</h6>
                        </a>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <%--End by Ashutosh on 02-01-24 --%>

    <%--Added by Ashutosh on 06-01-24 --%>
    <div id="dv_HRMS_eServiceBook" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Reports</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">e-Service Book</li>
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
                        <a href="HRMS/Rpt_ServiceBook.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>E- Service Book</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="HRMS/Rpt_ServiceBookSearchReport.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>E-Service Book Report</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--End by Ashutosh on 06-01-24 --%>
    <%--Added by Omprakash on 07-05-24 --%>
    <div id="dv_HRMS_CompassionateAppointment" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Compassionate Appointment</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">Compassionate Appointment</li>
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
                        <a href="HRMS/AnukampaNuktiMainPage.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Employee Compassionate Application</h6>

                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/DisposeApplicationCaseForDEO.aspx">
                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>DEO Compassionate Application Approval</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/DisposeApplicatonCaseForJD.aspx">

                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>JD Compassionate Application Approval</h6>
                        </a>
                    </div>
                    <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Transaction/DisposeApplicationCaseForHO.aspx">

                            <img src="dist/images/icon/HRMS_EServiceBook.png" class="dash-img" />
                            <h6>Head Office Compassionate Application Approval</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--End by Omprakash on 07-05-24 --%>
    <%--Started by Mahaveer on 27-03-24 --%>
    <div id="dv_Schememgmt_AdmissionMgmt" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Admission Management</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Admission Management</li>
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
                        <a href="Scheme/PromoteStudents1A.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Promote Students to
                                <br />
                                Higher Class (Format - 1A)</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/NewAdmission1B.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>New Admission
                                <br />
                                (Format - 1B)</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <%--Started by Omprakash on 10-05-24 --%>
    <div id="dv_CycleDistributionManagement" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Cycle Distribution Management</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Cycle Distribution Management</li>
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
                        <a href="Scheme/9thClassCycleSelectionStudent.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>9th Class Students Selected for Cycle Distribution</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/6thClassCycleSelectionStudent.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>6th Class Students Selected for Cycle Distribution</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <%--Started by Omprakash on 10-05-24 --%>
    <div id="dv_StudentManagementSystem" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Student Management System</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Student Management System</li>
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
                        <a href="Scheme/TransferCertificate.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Transfer Certificate</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/StudentAttendance.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Student Attendance</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <%--Started by Omprakash on 10-05-24 --%>
    <div id="dv_StudentReport" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Reports</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Reports</li>
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
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=ControlReport">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Control Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=AnalyticalReport">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Analytical Report</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <%--Started by Omprakash on 10-05-24 --%>
    <div id="dv_ControlReport" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Control Report</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item"><a href="Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">Control Report</li>
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
                        <a href="Scheme/DistrictWiseeKYCStatisticalReport.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>District Wise eKYC Statistical Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/BriefReportofDistrictClassWiseeKYC.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Brief Report of District-Class Wise eKYC</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/DistrictWiseEnrollmentandSanctionofScholarships.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>District-Wise Enrollment and Sanction of Scholarships</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/KnowEnrollment_ScholarshipStatusOfSchoolWiseChildren.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Know Enrollment/Scholarship Status Of School-Wise Children</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/BriefReportOfDistrictWiseClassWiseEnrollment.ASPX">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Brief Report Of District Wise Class Wise Enrollment</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Brief Report of District Wise Profile Update</h6>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <%--Started by Omprakash on 10-05-24 --%>
    <div id="dv_AnalyticalReport" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Analytical Report</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item"><a href="Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">Analytical Report</li>
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
                        <a href="Scheme/SchemeWiseBriefReport.ASPX">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Scheme Wise Brief Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="#">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>District Wise Summary Report For The Scheme</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/DistrictAndSchemeWiseScholarshipSummaryReport.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>District and Scheme Wise Scholarship Summary Report</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/DistrictWiseScholarshipBriefReport.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>District Wise Scholarship Brief Report</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="dv_Schememgmt_StudentProfileMgmt" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Student Profile Management</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Student Profile Management</li>
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
                        <a href="Scheme/StudentsProfile.aspx">
                            <img src="dist/images/icon/report.png" class="dash-img" />
                            <h6>Update Student Profile for Scholarships</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Ended by Mahaveer on 27-03-24 --%>

    <%--Started by Arjun on 04-04-24 --%>
    <div id="dv_Office_Mgmt_System" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Office Management System</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Office Management System</li>
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
                        <a href="Scheme/Employee_Registration.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Employee Registration</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/RegisteredEmployee_Details.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Registered Employee Details</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="dv_Bank_Master" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Bank Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Bank Master</li>
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
                        <a href="Scheme/Mst_BankMaster.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Bank Master</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Rpt_AccountDetailsBlockwise.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Account Details Block wise</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Rpt_AccountDetailsDistrictWise.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Account Details District Wise</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Rpt_AccountDetailsSchoolwise.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Account Details School wise</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Trn_StudentBankDetailsUpdate.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Student Bank Details Update</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Trn_StudentMoNumberUpdate.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Student MoNumber Update</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Ended by Arjun on 04-04-24 --%>

    <div id="div_TransferCertificate" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Transfer Certificate</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Transfer Certificate</li>
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
                        <a href="Scheme/UpmappedChangeRequest.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Register Request for UnMap and Request for TC </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/TransferCertificate.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Print Transfer Certificate </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Menu.aspx?ID=SchemeManagement&SubID=ProgressReport">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Progress Report</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Ended by Arjun on 04-04-24 --%>
    <%--Ended by Arjun on 08-04-24 --%>

    <div id="DIV_ProgressReport" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Progress Report</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Progress Report</li>
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
                        <a href="Scheme/School_Wise(TC)_StudentList.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>School Wise(TC) Student List </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Block_Wise(TC)_StudentList.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Block Wise(TC) Student List</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Block_Wise(TC)_StudentList.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>School Wise TC issued Student list  </h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Ended by Arjun on 08-04-24 --%>
    <%--Ended by Arjun on 08-04-24 --%>

    <div id="Div_RollList" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Roll List</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Roll List</li>
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
                        <a href="Scheme/ViewEnrolled.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>View enrolled  </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/ViewenrolledPreviousYear.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>View enrolled Previous Year</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="Div_SchemeManagement_Admin" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Admin</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Admin</li>
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
                        <a href="Scheme/UpdateProfileNonGovermentEmployee.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Update Profile Non Goverment Employee </h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/UpdateProfilePrivateSchool.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Update Profile Private School</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/PasswordRecoveryInformation.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Password Recovery Information</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/ChangePassword.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Change Password</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="Div_SchemeManagement_LaptopScheme" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Laptop Scheme</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Laptop Scheme</li>
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
                        <a href="Scheme/CheckEligibilityForLaptopScheme.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Check Student Eligibility</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/DistrictwisestudenteligibleforPurchaseofLaptop.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>District Wise list of students eligible for purchase of Laptop</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/LaptopSchemeEligibleStudents.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>List of Eligible Students</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/Registergrievance.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Register Grievance</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div id="Div_SchemeManagement_Ekyc" runat="server">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">e-Kyc</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">e-Kyc</li>
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
                        <a href="Scheme/eKycVerifivation.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>eKyc-Verifivation</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/StudentDetailseKYC.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Student Details kyc</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/eKYC-Approval.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>eKYC-Approval</h6>
                        </a>
                    </div>
                    <div class="col-md-2" data-aos="fade-down" data-aos-easing="ease-in-sine">
                        <a href="Scheme/StudentSamagrae-KYC_Approval.aspx">
                            <img src="dist/images/icon/Report.png" class="dash-img" />
                            <h6>Student Samagra e-KYC Approval</h6>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <%--Ended by Arjun on 08-04-24 --%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

