﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="UpdateProfileNonGovermentEmployee.aspx.cs" Inherits="mis_Scheme_UpdateProfileNonGovermentEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Update Profile for Non Goverment Employee
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active"><a href="ChangePassword.aspx" title="click to go on">Update Profile for Non Goverment Employee</a></li>

                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                  <nav class="navbar navbar-expand-lg navbar-dark topbar">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">Update</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="ChangePassword.aspx">Change your password</a></li>
                                        <li><a class="dropdown-item" href="PasswordRecoveryInformation.aspx">Update Your Recovery Information</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <b class="font-16 font-bold">Profile Update</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="UpdateProfileNonGovermentEmployee.aspx">Update Profile for Non Goverment Employee</a></li>
                                        <li><a class="dropdown-item" href="UpdateProfilePrivateSchool.aspx">Update Profile for Private School</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div class="mt-5">
                    <fieldset>
                        <legend>Update Profile for Non Goverment Employee</legend>
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <div class="row">
                                    <div class="col-3 mt-1">
                                        <label class="font-bold">Role :-<span style="color: red">*</span></label>
                                    </div>
                                    <div class="col-6">
                                        <select class="form-control">
                                            <option value="">--Select--</option>
                                            <option value="PrivateEmployee">PrivateEmployee</option>
                                  
                                        </select>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <hr />
                        <div class="row justify-content-center">
                            <div class="col-md-3 text-center mt-4">
                                <div class="form-group">
                                    <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded">Profile Update for Non Goverment Employee</button>
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

