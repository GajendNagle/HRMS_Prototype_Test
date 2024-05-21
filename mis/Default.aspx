<%@ Page Title="" Language="C#" MasterPageFile="~/mis/HomeMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="mis_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <div class="row text-center justify-content-center mb-5">
                <div class="col-md-3" data-aos="fade-right" data-aos-easing="ease-in-sine">
                    <a href="Module.aspx?ID=Dashboard">
                        <img src="dist/images/icon/Dashboard_Admin.png" class="dash-img" />
                        <h6>Dashboard </h6>
                    </a>
                </div>
                <div class="col-md-3" data-aos="fade-right" data-aos-easing="ease-in-sine">
                    <a href="Module.aspx?ID=usermanagement">
                        <img src="dist/images/icon/Modules_usermanagement.png" class="dash-img" />
                        <h6>User Management </h6>
                    </a>
                </div>
                <div class="col-md-3" data-aos="fade-up" data-aos-easing="ease-in-sine">
                    <a href="Module.aspx?ID=Masters">
                        <img src="dist/images/icon/Master_Module.png" class="dash-img" />

                        <h6>Master Data</h6>
                    </a>
                </div>
                <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                    <a href="Module.aspx?ID=SchoolDirectory">
                        <img src="dist/images/icon/SchoolDirectory_Module.png" class="dash-img" />

                        <h6>School Directory </h6>
                    </a>
                </div>
                <div class="col-md-3" data-aos="fade-up" data-aos-easing="ease-in-sine">
                    <a href="Module.aspx?ID=HRMS">
                        <img src="dist/images/icon/HRMS_Module.png" class="dash-img" />

                        <h6>HRMS </h6>
                    </a>
                </div>
                <div class="col-md-3" data-aos="fade-up" data-aos-easing="ease-in-sine">
                    <a href="Module.aspx?ID=Payroll">
                        <img src="dist/images/icon/Payroll_Module.png" class="dash-img" />

                        <h6>Payroll </h6>
                    </a>
                </div>
                <%--   </div>
        <div class="row text-center justify-content-center mb-5">--%>

                <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                    <a href="Module.aspx?ID=StudentDirectory">
                        <img src="dist/images/icon/StudentDirectory_Module.png" class="dash-img" />

                        <h6>Student Directory </h6>
                    </a>
                </div>
                <div class="col-md-3" data-aos="fade-down" data-aos-easing="ease-in-sine">
                    <a href="Module.aspx?ID=SchemeManagement">
                        <img src="dist/images/icon/Scheme_Management_Module.png" class="dash-img" />

                        <h6>Scheme Management</h6>
                    </a>
                </div>
            </div>



        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

