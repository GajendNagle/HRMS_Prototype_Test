﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RoleWiseRightsAssign.aspx.cs" Inherits="mis_UserManagement_RoleWiseRightsAssign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
                        .horizontal-nav .page-titles h4 {
    font-weight: 500;
    font-size: 2.4rem;
}
        .text-themecolor {
                font-size: large;
    font-weight: 600;
        }
        .breadcrumb-item{
  font-size: larger;
}
        .topbar .top-navbar {
            min-height: 50px;
            padding: 27px;
        }

        .caret {
            display: none;
        }

        .btn .caret {
            display: none;
            /* margin-left: 0; */
        }

        .btn-default {
            background-color: #fff !important;
        }

            .btn-default:hover {
                background-color: #fff !important;
            }


        #show {
            display: none;
        }

        span.multiselect-native-select {
            position: relative
        }

            span.multiselect-native-select select {
                border: 0 !important;
                clip: rect(0 0 0 0) !important;
                height: 1px !important;
                margin: -1px -1px -1px -3px !important;
                overflow: hidden !important;
                padding: 0 !important;
                position: absolute !important;
                width: 1px !important;
                left: 50%;
                top: 30px
            }

        .multiselect-container {
            position: absolute;
            list-style-type: none;
            margin: 0;
            padding: 0
        }

            .multiselect-container .input-group {
                margin: 5px
            }

            .multiselect-container > li {
                padding: 0
            }

                .multiselect-container > li > a.multiselect-all label {
                    font-weight: 700
                }

                .multiselect-container > li.multiselect-group label {
                    margin: 0;
                    padding: 3px 20px 3px 20px;
                    height: 100%;
                    font-weight: 700
                }

                .multiselect-container > li.multiselect-group-clickable label {
                    cursor: pointer
                }

                .multiselect-container > li > a {
                    padding: 0
                }

                    .multiselect-container > li > a > label {
                        margin: 0;
                        height: 100%;
                        cursor: pointer;
                        font-weight: 400;
                        padding: 3px 0 3px 30px
                    }

                        .multiselect-container > li > a > label.radio, .multiselect-container > li > a > label.checkbox {
                            margin: 0
                        }

                        .multiselect-container > li > a > label > input[type=checkbox] {
                            margin-bottom: 5px
                        }

        .btn-group > .btn-group:nth-child(2) > .multiselect.btn {
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px
        }

        .form-inline .multiselect-container label.checkbox, .form-inline .multiselect-container label.radio {
            padding: 3px 20px 3px 40px
        }

        .form-inline .multiselect-container li a label.checkbox input[type=checkbox], .form-inline .multiselect-container li a label.radio input[type=radio] {
            margin-left: -20px;
            margin-right: 0
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Role Wise Right's Assign</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=usermanagement" title="click to go on">User Management</a></li>
                    <li class="breadcrumb-item active">Role Wise Right's Assign</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Role Wise Right's Assign</legend>
                <div class="row">
                    <div class="col-md-3 form-group">
                        <label class="font-bold">Select  User Level Name<span style="color: red">*</span></label>
                        <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="Rajasthan">S/w admin</option>
                            <option value="Maharashtra">Mgt</option>
                            <option value="Nagaland">JD Office</option>
                            <option value="Nashik">JD Section Incharge </option>
                            <option value="West">DEO Office</option>
                            <option value="Bengal">DEO Section Incharge </option>
                            <option value="Telangana">BEO Office</option>
                            <option value="Assam">BEO Section Incharge</option>
                            <option value="Tripura">Inst Head</option>
                            <option value="Madhya">Inst Section Incharge</option>
                            <option value="Tamil">School Head</option>
                            <option value="Nadu">School Section Incharge</option>
                            <option value="Gujarat">Employees</option>
                        </select>
                    </div>
                    <div class="col-md-3 form-group">
                        <label class="font-bold">Select User Role<span style="color: red">*</span></label>
                        <select name="ctl00$ContentBody$ctl00" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="Rajasthan">JD Sports</option>
                        </select>
                    </div>
                    <div class="col-md-3 form-group">
                        <label class="font-bold">Select Module Name<span style="color: red">*</span></label>
                        <select id="ddlparentmenu" multiple="multiple" class="multiselect-ui">
                            <option value="1">Master Data</option>

                        </select>
                    </div>
                    <div class="col-md-3 form-group">
                        <label class="font-bold">Select Menu Name<span style="color: red">*</span></label>
                        <select id="dates-field2" multiple="multiple" class="multiselect-ui">
                            <option value="1">State Master</option> 
                        </select> 
                    </div>
                    <div class="col-md-3 form-group">
                        <label class="font-bold">Select  Action Name<span style="color: red">*</span></label>
                       <select id="dates-field3" multiple="multiple" class="multiselect-ui">
                           <%-- <option value="--Select--">--Select--</option>--%>
                            <option value="1">Create</option>
                            <option value="2">Edit</option>
                            <option value="3">Delete</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">Role Valid Upto(Date)<span style="color: red">*</span></label>
                            <input name="ename" id="DOB" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                        </div>
                    </div>

                    <div class="col-md-1">
                        <div class="form-group">
                            <label class="font-weight-bold">Is Active</label>
                            <br />
                            <input id="ContentBody_ctl03" type="checkbox" name="ctl00$ContentBody$ctl03" checked="checked" />
                        </div>
                    </div>
                    <div class="col-md-3 mt-4">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="RoleWiseRightsAssign.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset>
                <legend>Role Wise Right's Assign Details </legend>
                <div class="row justify-content-end">

                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>User Level Name</th>
                                    <th>User Role Name </th>
                                    <th>Module Name </th>
                                    <th>Menu Name </th>
                                    <th>Action Name</th>
                                    <th>Role valid Upto(Date)</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>JD Office </td>
                                    <td>JD Admin</td>
                                    <td>Master Data</td>
                                    <td>State Master</td>
                                    <td>Create</td>
                                    <td>04/05/2024 </td>
                                    <td>Active</td>
                                    <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="alert-dark"><i class="fa fa-check"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link href="../dist/css/bootstrapM.min.css" rel="stylesheet" />
    <script src="../dist/js/bootstrap-multiselect.js"></script>

    <script>
        $(function () {
            $('.multiselect-ui').multiselect({
                includeSelectAllOption: true
            });
        });
    </script>
</asp:Content>
