﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_StudentBankDetailsUpdate.aspx.cs" Inherits="mis_Scheme_Trn_StudentUpdateBankDetails" %>

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
                                <label>Bank Name<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Bank Name" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Branch Name<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Branch Name" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Branch Code<span style="color: red">*</span></label>
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

    <div class="row page-titles mb-4">
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
    </div>

    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
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
                <legend>Student Details</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <th>Name :</th>
                            <td>Rounak Nath</td>
                            <th>Father Name:</th>
                            <td>Munna lal </td>
                        </tr>
                        <tr>
                            <th>Date Of Birth :</th>
                            <td>25/08/2005</td>
                            <th>Gender :</th>
                            <td>Male</td>
                        </tr>
                        <tr>
                            <th>Mobile No.:</th>
                            <td>9632587415
                            </td>
                            <th>Aadhar No. :</th>
                            <td>852369565852
                            </td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
            <fieldset>
                <legend>Student Details</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <th>Year :</th>
                            <td>2024</td>
                            <th>Class :</th>
                            <td>6</td>
                        </tr>
                        <tr>
                            <th>School Name :</th>
                            <td>Dhanti Bai Ms Katni</td>
                            <th>Dise :</th>
                            <td>20356985235</td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
            <fieldset>
                <legend>Student Bank Details</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <th>IFSC Code :</th>
                            <td>SBIN0007718</td>
                            <th>Bank Name :</th>
                            <td>State Bank Of India</td>
                        </tr>
                        <tr>
                            <th>Account Number :</th>
                            <td>56235698562</td>
                            <th></th>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
            <fieldset>
                <legend>Bank Detail</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>

                            <th>IFSC Code<span style="color: red">*</span></th>
                            <td>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter IFSC Code" /></td>
                            <td colspan="2"><span class="bg-dark text-white">Find Your IFSC</span>
                                <button id="btnSubmit1" type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Find Your IFSC</button>
                            </td>
                        </tr>
                        <tr>
                            <th>Bank Name<span style="color: red">*</span></th>
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
                            <th>Account Number<span style="color: red">*</span></th>
                            <td>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Account Number" /></td>

                            <th>Account Number (Re Type)<span style="color: red">*</span></th>
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

