<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Suplus_School.aspx.cs" Inherits="mis_Transaction_Suplus_School" %>

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

   <%-- <header class="bg-Secondary">
        <h2 class="fw-normal"><a href="#">Surplus Teachers Management System</a></h2>
    </header>
    <div class="mb-3">
        <div class="row nav">
            <div class="col-md-12 justify-content-around">
                <a class="head" href="../Default.aspx">Home</a>
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
        <div class="card-body">--%>
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
                        <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#RptOISSetup" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchoolDirectory')">
                            <span>OIS Setup Reports</span></a>
                    </li>

                    <li class="breadcrumb-item"><span>School Details along with Surplus Teachers</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>


    <div class="card card-border-primary">
    <div class="card-header">
        <div class="row align-items-end">
            <div class="col-lg-12">
                <h5 class="card-title"> School Details along with Surplus Teachers/स्कूल का विवरण और अतिरिक्त शिक्षकों की जानकारी
                </h5>
            </div>
        </div>
    </div>
    <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <label >DISE Code<span style="color: red">*</span></label>
                    <input type="text" class="form-control" placeholder="23510817101" />
                </div>
                <div class="col-md-6">
                    <label >Confirm DISE Code<span style="color: red">*</span></label>
                    <input type="text" class="form-control" placeholder="23510817101" />
                </div>
            </div>
        <hr />
            <div class="row">
                <div class="col-12 mt-4">
                    <div class="form-group">
                        <asp:Button runat="server" CssClass="btn btn-success btn-rounded" OnClick="btnSave_Click" Text="View Details" ID="btnSave" />
                    </div>
                </div>
            </div>
            <fieldset class="row" id="dv_rpt" visible="false" runat="server">
                <legend>School Details along with Surplus Teachers/स्कूल का विवरण और अतिरिक्त शिक्षकों की जानकारी</legend>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                        <label >District Name<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" CssClass="form-control">Agar Malwa</asp:TextBox>
                    </div>
                        </div>
                    <div class="col-md-4">
                        <div class="form-group">
                        <label >Block Name<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" CssClass="form-control">Agar</asp:TextBox>
                    </div>
                   </div>
                    <div class="col-md-4">
                        <div class="form-group">
                        <label >Management Type<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" CssClass="form-control">School Education Department</asp:TextBox>
                    </div>
                        </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                        <label >School<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" CssClass="form-control">GMS GHANIKHEDI</asp:TextBox>
                    </div>
                        </div>
                    <div class="col-md-4">
                        <div class="form-group">
                        <label >DISE Code<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" CssClass="form-control">23510817101</asp:TextBox>
                    </div>
                        </div>
                    <div class="col-md-4">
                        <div class="form-group">
                        <label>Cateogry<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" CssClass="form-control">Middle School (Class 6 to 8)</asp:TextBox>
                    </div>
                        </div>
                </div>
<%--                <fieldset class="mt-5  ">
                    <legend>panel-Wise Teacher's Surplus Details</legend>
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
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                </fieldset>--%>
<%--                <fieldset class="mt-5  ">
                    <legend>All Employee With Surplus Details</legend>
                    <p>Custom Search Builder</p>
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
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                </fieldset>--%>

            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

