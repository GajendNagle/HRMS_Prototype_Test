<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PasswordRecoveryInformation.aspx.cs" Inherits="mis_Scheme_PasswordRecoveryInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Update Your Password Recovery Information 
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active"><a href="ChangePassword.aspx" title="click to go on">Update Your Password Recovery Information</a></li>

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
                        <legend>Update Your Password Recovery Information </legend>
                        <div class="row justify-content-center">
                            <div class="col-3"></div>
                            <div class="col-6 mt-1">
                                <p>
                                    आपका वर्तमान में पंजीकृत मोबाईल नंवरः
                                    <label>9713402248</label>
                                </p>
                            </div>
                        </div>


                        <div class="row justify-content-center mt-3">

                            <div class="col-md-11">
                                <h3>सूचना</h3>
                                <div class="row">
                                    <div class="col-6 mt-1">
                                        <p>* जब भी आप अपना पासवर्ड भूल जाते है तो आपको आपके इस पंजीकृत नंबर पर PIN प्राप्त होगा।</p>

                                        <p>* यदि वर्तमान में पंजीकृत मोबाईल नंबर सही नहीं है तो तत्काल अपना सही मोबाईल नंबर दर्ज करे।</p>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <%--         <div class="row justify-content-center mt-3">
                            <div class="col-md-3 ">
                                <div class="row">
                                    <div class="col-6 mt-1">
                                        <p>* जब भी आप अपना पासवर्ड भूल जाते है तो आपको आपके इस पंजीकृत नंबर पर PIN प्राप्त होगा।</p>

                                        <p>* यदि वर्तमान में पंजीकृत मोबाईल नंबर सही नहीं है तो तत्काल अपना सही मोबाईल नंबर दर्ज करे।</p>
                                    </div>
                                </div>
                            </div>

                        </div>--%>

                        <div class="row justify-content-center mt-3">
                            <div class="col-md-1"></div>
                            <div class="col-md-6">
                                <div class="row mt-1">
                                    <div class="col-6 ">
                                        <button type="button" id="btnShowStudentDetails1" class="btn btn-secondary  btn-rounded">
                                            मेरा मोबाईल नंबर सही है। मुझे काम करने दो।
                                        </button>
                                    </div>
                                    <div class="col-6">
                                        <button type="button" id="btnShowStudentDetails2" class="btn btn-secondary  btn-rounded">अपना सही मोबाईल नंबर पंजीकृत करें।</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <hr />
                        <div class="row justify-content-center mt-3 mb-2">
                            <div class="col-md-1"></div>
                            <div class="col-md-8">
                                <div class="row mt-1">
                                    <div class="col-4">
                                        <button type="button" id="btnShowStudentDetails3" class="btn btn-success  btn-rounded">
                                            View History of Successful Logins
                                        </button>
                                    </div>
                                    <div class="col-4">
                                        <button type="button" id="btnShowStudentDetails4" class="btn btn-info btn-rounded">View History of Change of Passwords</button>
                                    </div>
                                    <div class="col-4">
                                        <button type="button" id="btnShowStudentDetails5" class="btn btn-danger  btn-rounded">View History of Change of Mobile Numbers</button>
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

