﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="School_In_Surplus.aspx.cs" Inherits="mis_Transaction_School_In_Surplus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .head {
            justify-content: space-around;
            margin: 10px;
            margin-bottom: 800px;
            font-weight: 400;
            font-size: 20px;
            color: white;
        }

            .head:hover {
                color: red;
                text-decoration: underline;
            }

        .nav {
            background-color: #005b5c;
            padding: 10px;
        }

        title {
            background-color: brown;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Surplus Teachers Management System</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports2" title="click to go on">OIS Setup Reports</a></li>
                    <li class="breadcrumb-item active">Surplus Teachers Management System</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="mb-3">
        <div class="row nav">
            <div class="col-md-12 justify-content-around">
                <%--<a class="head" href="../Default.aspx">Home</a>--%>
                <a class="head" href="ZeroTeacher.aspx">Zero Teachers </a>
                <a class="head" href="SingleTeacherManagementSystem.aspx">Single Teachers</a>
                <a class="head" href="SurplusTeacherManagementSystem.aspx">Surplus Status</a>
            </div>
        </div>
    </div>
    <center>
        <h3 class="alert alert-success">School Details along with Surplus Teachers
        </h3>
    </center>
    <div class="card mt-3 shadow ">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>School Details</legend>
                <div class="row">
                    <div class="col-md-4">
                        <label class="font-weight-bold">DISE Code<span style="color: red">*</span></label>
                        <input type="text" class="form-control" placeholder="23510817802" />
                    </div>
                    <div class="col-md-4">
                        <label class="font-weight-bold">Confirm DISE Code<span style="color: red">*</span></label>
                        <input type="text" class="form-control" placeholder="23510817802" />
                    </div>
                    <div class="col-4 mt-4">
                        <div class="form-group">
                            <asp:Button runat="server" CssClass="btn btn-success btn-rounded" OnClick="btnSave_Click" Text="View Details" ID="btnSave" />
                        </div>
                    </div>
                </div>
                <div class="row form-group" id="dv_rpt" visible="false" runat="server">
                    <div class="row mt-2">
                        <div class="col-md-4">
                            <label class="font-weight-bold">District Name<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">Agar Malwa</asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="font-weight-bold">Block Name<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" CssClass="form-control">Agar</asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="font-weight-bold">Management Type</label>
                            <asp:TextBox runat="server" CssClass="form-control">School Education Department</asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-4">
                            <label class="font-weight-bold">School</label>
                            <asp:TextBox runat="server" CssClass="form-control">GPS SANAWADI KA MAJRA</asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="font-weight-bold">DISE Code</label>
                            <asp:TextBox runat="server" CssClass="form-control">23510817802</asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label class="font-weight-bold">Cateogry</label>
                            <asp:TextBox runat="server" CssClass="form-control">Primary School (Class 1 to 5)</asp:TextBox>
                        </div>
                    </div>
                </div>
                <fieldset class="mt-5">
                    <legend>panel-Wise Teacher's Surplus Details</legend>
                    <div class="row justify-content-end">

                        <div class="col-md-1">
                            <div class="form-group">
                                <asp:Button ID="Button2" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="Excel" />
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <asp:Button ID="Button3" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="PDF" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tr class="card-header">
                                        <th>Panel_Name</th>
                                        <th>Sanctioned Posts</th>
                                        <th>Working</th>
                                        <th>Proposed Surplus</th>
                                        <th>Marked Surplus</th>
                                    </tr>
                                    <tr>
                                        <td>SSS-3</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                </fieldset>
                <fieldset class="mt-5">
                    <legend>All Employee With Surplus Details</legend>
                    <div class="row justify-content-end">

                        <div class="col-md-1">
                            <div class="form-group">
                                <asp:Button ID="Button1" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="Excel" />
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <asp:Button ID="Button4" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="PDF" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tr class="card-header">
                                        <th>Name</th>
                                        <th>Designation</th>
                                        <th>Panel</th>
                                        <th>Handicapped</th>
                                        <th>Critical Illeness</th>
                                        <th>Present Posting</th>
                                        <th>AgeInYear</th>
                                        <th>Surplus</th>
                                    </tr>
                                    <tr>
                                        <td>Bhagwan Singh Malviya [BX7671]</td>
                                        <td>Prathmik Shikshak</td>
                                        <td>SSS-3</td>
                                        <td></td>
                                        <td>No Critical Illness</td>
                                        <td>08/07/2013</td>
                                        <th>43</th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td>Dilip Kumar [BW8672]</td>
                                        <td>Prathmik Shikshak</td>
                                        <td>SSS-3</td>
                                        <td></td>
                                        <td>No Critical Illness</td>
                                        <td>21/07/2016</td>
                                        <th>44</th>
                                        <th></th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                </fieldset>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

