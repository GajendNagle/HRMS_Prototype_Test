<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_StudentBankDetailsUpdate.aspx.cs" Inherits="mis_Scheme_Trn_StudentUpdateBankDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table-custom th {
            width: 30% !important;
            padding: 10px !important;
        }

        .table-custom td {
            width: 20% !important;
            padding: 10px !important;
        }

        .rblResult td, .rblResult tr {
            border-color: transparent !important;
            background-color: transparent !important;
            padding: 5px !important;
            width: auto !important;
        }

        .rblResult label {
            margin: 0px 3px !important;
        }

        .page-title {
            font-size: 20px;
            font-weight: 600;
            text-transform: uppercase;
            color: #1b5c5d;
        }

        .form-control, .form-control:disabled, .form-control[readonly], .select2-container {
            width: 75% !important;
        }

        .table-custom td label {
            font-weight: 900 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">


    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row ">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Bank Name <br />बैंक का नाम<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Bank Name" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Branch Name<br />शाखा का नाम<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Branch Name" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Branch Code<br />शाखा कोड<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Branch Code" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success">Search</button>
                </div>
            </div>
        </div>
    </div>

    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Update Student Bank Account Details</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>
                    <li class="breadcrumb-item active">Update Student Bank Account Details</li>
                </ol>
            </div>
        </div>
    </div>--%>

    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#BankMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>Bank Master </span></a>
                        </li>
                        <li class="breadcrumb-item">Update Student Bank Account Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Update Student Bank Account Details /
छात्र का बैंक खाता विवरण अपडेट करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center">
                        <h5 class="page-title">: : Update Student Bank Account Details : :</h5>
                    </div>
                </div>
            </div>

            <fieldset>
                <legend>Student Details / 
                   छात्र विवरण</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <th>Name<br />
                                नाम :</th>
                            <td>Rounak Nath</td>
                            <th>Father Name<br />
                                पिता का नाम:</th>
                            <td>Munna lal </td>
                        </tr>
                        <tr>
                            <th>Date Of Birth<br />
                                जन्म की तारीख :</th>
                            <td>25/08/2005</td>
                            <th>Gender<br />
                                जेंडर :</th>
                            <td>Male</td>
                        </tr>
                        <tr>
                            <th>Mobile No.<br />
                                मोबाइल नंबर:</th>
                            <td>9632587415
                            </td>
                            <th>Aadhar No.<br />
                                आधार नंबर :</th>
                            <td>852369565852
                            </td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
            <fieldset>
                <legend>Student Details / छात्र विवरण</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <th>Year<br />
                                वर्ष :</th>
                            <td>2024</td>
                            <th>Class<br />
                                कक्षा :</th>
                            <td>6</td>
                        </tr>
                        <tr>
                            <th>School Name<br />
                                स्कूल का नाम :</th>
                            <td>Dhanti Bai Ms Katni</td>
                            <th>Dise<br />
                                डाइस :</th>
                            <td>20356985235</td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
            <fieldset>
                <legend>Student Bank Details / छात्र बैंक विवरण</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <th>IFSC Code<br />
                                आईएफएससी कोड :</th>
                            <td>SBIN0007718</td>
                            <th>Bank Name<br />
                                बैंक का नाम :</th>
                            <td>State Bank Of India</td>
                        </tr>
                        <tr>
                            <th>Account Number<br />
                                खाता नंबर :</th>
                            <td>56235698562</td>
                            <th></th>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
            <fieldset>
                <legend>Bank Detail / 
बैंक का विवरण</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>

                            <th>IFSC Code<br />
                                आईएफएससी कोड<span style="color: red">*</span></th>
                            <td>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter IFSC Code" /></td>
                            <td colspan="2"><span class="bg-dark text-white">Find Your IFSC</span>
                                <button id="btnSubmit1" type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Find Your IFSC</button>
                            </td>
                        </tr>
                        <tr>
                            <th>Bank Name<br />
                                बैंक का नाम<span style="color: red">*</span></th>
                            <td>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">State Bank of India</option>
                                    <option value="Bhopal">Bank of Inia</option>
                                    <option value="Bhopal">Bank of Baroda</option>
                                    <option value="Bhopal">UCO Bank</option>
                                    <option value="Bhopal">Punjab National Bank</option>
                                </select></td>
                            <th></th>
                            <td></td>
                        </tr>

                        <tr>
                            <th>Account Number<br />खाता नंबर<span style="color: red">*</span></th>
                            <td>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Account Number" /></td>

                            <th>Account Number (Re Type)<br />खाता नंबर (पुनः टाइप करें)<span style="color: red">*</span></th>
                            <td>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Account Number" /></td>

                        </tr>
                    </tbody>
                </table>
            </fieldset>
            <div class="row">

                <div class="col-md-12" style="margin-left: 45%">
                    <button id="btnSubmit" type="button" class="btn btn-success btn-rounded">Save Bank Account Details</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

