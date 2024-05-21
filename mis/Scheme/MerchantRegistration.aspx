﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MerchantRegistration.aspx.cs" Inherits="mis_Scheme_MerchantRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Merchants Registrations
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Cycle Scheme</a></li>
                    <li class="breadcrumb-item active"><a href="MerchantRegistration.aspx" title="click to go on">Merchants Registrations</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <nav class="navbar navbar-expand-lg navbar-dark topbar">
                    <div class="container-fluid">
                        <a class="navbar-brand"  ></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <%--fsf--%>
                                <li class="nav-item dropdown">
                                    <a class="nav-link text-white " role="button" aria-expanded="false">
                                        <b class="font-16 font-bold"><i class="fa fa-home"></i></b>
                                    </a>
                                </li>
                                <%--fsf--%>
                                <li class="nav-item dropdown">
                                    <a class="nav-link  text-white" role="button" aria-expanded="false">
                                        <b class="font-16 font-bold">Admin</b>
                                    </a>
                                </li>
                                <%--fsf--%>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">Merchants Registrations</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="MerchantRegistration.aspx">Register Merchant</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white"   role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">CYCLE 9TH</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item">Identify Students Eligible for Cycle</a></li>
                                        <li><a class="dropdown-item">Cycle Distribution for Verified Student</a></li>
                                        <li><a class="dropdown-item">Disqualify Students for Eligiblity of Cycle</a></li>
                                        <li><a class="dropdown-item" href="9thClassAllStudent.aspx">All Students in 9th Class</a></li>
                                        <li><a class="dropdown-item" href="9thClassCycleSelectionStudent.aspx">9th Class Students Selected for Cycle Distribution</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white"   role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">CYCLE 6TH</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="6thClassAllStudent.aspx">All Students in 6th Class</a></li>
                                        <li><a class="dropdown-item" href="6thClassCycleSelectionStudent.aspx">6th Class Students Selected for Cycle Distribution</a></li>
                                    </ul>
                                </li>
                                <%--fsf--%>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">HS/ HSS Teachers Cycle 9th</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item">Identify eligible students </a></li>
                                        <li><a class="dropdown-item">Identify NOT eligible students</a></li>
                                        <li><a class="dropdown-item">All Students for 9th class </a></li>
                                        <li><a class="dropdown-item">Update Cycle Distribution Details</a></li>
                                        <li><a class="dropdown-item">Students Selected for Cycles </a></li>
                                        <li><a class="dropdown-item">District-wise Eligible and Verify Status</a></li>
                                        <li><a class="dropdown-item">List of Class 9th Students those are Eligible for Cycle </a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">MS Teachers Cycle 6th</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item">Identify eligible students </a></li>
                                        <li><a class="dropdown-item">Identify NOT eligible students</a></li>
                                        <li><a class="dropdown-item">All Students for 6th class</a></li>
                                        <li><a class="dropdown-item">Cycle Distribution for Student</a></li>
                                        <li><a class="dropdown-item">Students Selected for Cycles </a></li>
                                        <li><a class="dropdown-item">District-wise Eligible and Verify Status </a></li>
                                        <li><a class="dropdown-item">List of Class 6th Students those are Eligible for Cycle</a></li>

                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">Help</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item"  >Manual for Free Cycle Distribution for Class 9th Students (0.9 MB)</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="mt-3">
                    <fieldset>
                        <legend>Merchant Registration</legend>
                        <div class="row justify-content-center">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Mobile Number : <span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>
                             <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Confirm Mobile No. : <span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" />
                                </div>
                            </div>

                            <div class="row justify-content-center mt-2">
                                <div class="col-md-3 text-center">
                                    <div class="form-group">
                                        <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded" onclick="Show();">Validate Mobile </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                </div>

            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

