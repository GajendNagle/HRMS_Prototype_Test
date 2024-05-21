<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AdmissionOfOutOfStateRegister.aspx.cs" Inherits="mis_Scheme_AdmissionOfOutOfStateRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Out-of-State Admission Registration /
                राज्य के बाहर प्रवेश पंजीकरण
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active"><a href="AdmissionOfOutOfStateRegister.aspx" title="click to go on">Out-of-State Admission Registration</a></li>

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
                                        <b class="font-16 font-bold">[1] Student Profile Management</b>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="AdmissionOfOutOfStateRegister.aspx">[1.1] Registration Profile of the Other State Student</a></li>
                                        <li><a class="dropdown-item" href="AdmissionOfOutOfStateEdit.aspx">[1.2] Edit Profile of the Other State Student</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="mt-5">
                    <fieldset>
                        <legend>Register Profile of The Other State Student</legend>
                        <div class="row justify-content-center mr-2 ml-1 mt-3">

                            <fieldset>
                                <legend>Personal Details</legend>

                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Name as per Aadhaar : <span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Father Name : <span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Mother Name  : <span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Date of Birth : <span style="color: red;">*</span></label>
                                            <input type="date" class="form-control" />
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Gender : <span style="color: red;">*</span></label>
                                            <select class="form-control">
                                                <option value="">--Select--</option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Category : <span style="color: red;">*</span></label>
                                            <select class="form-control">
                                                <option value="">--Select--</option>
                                                <option value="General">General</option>
                                                <option value="OBC">OBC</option>
                                                <option value="SC">SC</option>
                                                <option value="ST">ST</option>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Aadhaar Number : <span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Is BPL : <span style="color: red;">*</span></label>
                                            <select class="form-control">
                                                <option value="">--Select--</option>
                                                <option value="Yes">Yes</option>
                                                <option value="No">No</option>

                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </fieldset>

                            <fieldset class="mt-3">
                                <legend>Perment Address Details</legend>

                                <div class="row ">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>State: <span style="color: red;">*</span></label>
                                            <select class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                <option value="Assam">Assam</option>
                                                <option value="Bihar">Bihar</option>
                                                <option value="Goa">Goa</option>
                                                <option value="Gujarat">Gujarat</option>
                                                <option value="Haryana">Haryana</option>
                                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                <option value="Jharkhand">Jharkhand</option>
                                                <option value="Karnataka">Karnataka</option>
                                                <option value="Kerala">Kerala</option>
                                                <option value="Maharashtra">Maharashtra</option>
                                                <option value="Manipur">Manipur</option>
                                                <option value="Meghalaya">Meghalaya</option>
                                                <option value="Mizoram">Mizoram</option>
                                                <option value="Nagaland">Nagaland</option>
                                                <option value="Odisha">Odisha</option>
                                                <option value="Punjab">Punjab</option>
                                                <option value="Rajasthan">Rajasthan</option>
                                                <option value="Sikkim">Sikkim</option>
                                                <option value="Tamil Nadu">Tamil Nadu</option>
                                                <option value="Telangana">Telangana</option>
                                                <option value="Tripura">Tripura</option>
                                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                <option value="Uttarakhand">Uttarakhand</option>
                                                <option value="West Bengal">West Bengal</option>

                                            </select>
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>District : <span style="color: red;">*</span></label>
                                            <select class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="Phanda">Phanda</option>
                                                <option value="Berasia">Berasia</option>
                                                <option value="Hoshangabad">Hoshangabad</option>
                                                <option value="Sehore">Sehore</option>
                                                <option value="Raisen">Raisen</option>
                                                <option value="Harda">Harda</option>
                                                <option value="Vidisha">Vidisha</option>
                                                <option value="Bhopal">Bhopal</option>
                                                <option value="Dewas">Dewas</option>
                                                <option value="Ujjain">Ujjain</option>
                                                <option value="Indore">Indore</option>
                                                <option value="Khandwa">Khandwa</option>
                                                <option value="Khargone">Khargone</option>
                                                <option value="Dhar">Dhar</option>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Local Body Type  : <span style="color: red;">*</span></label>
                                            <select class="form-control">
                                                <option value="">--Select--</option>
                                                <option value="Rural">Rural</option>
                                                <option value="Urban">Urban</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Local Body  : <span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Panchayat /Ward: <span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>



                                </div>

                            </fieldset>

                            <fieldset class="mt-3">
                                <legend>Perment Address Details</legend>

                                <div class="row ">

                                    <div class="row justify-content-center mb-3">
                                        <div class="col-md-3">
                                            <label class="font-bold">Academic Year :<span style="color: red">*</span></label>
                                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="Bhopal">2024-25</option>
                                                <option value="Bhopal">2023-24</option>
                                                <option value="Raisen">2022-23</option>
                                                <option value="Rajgarh">2021-22</option>


                                            </select>
                                        </div>

                                        <div class="col-md-3">
                                            <label class="font-bold">DISE CODE :  <span style="color: red">*</span></label>
                                            <input type="text" class="form-control" />
                                        </div>

                                        <div class="col-md-3 text-center mt-4">
                                            <div class="form-group">
                                                <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded">Show School Details</button>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </fieldset>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

