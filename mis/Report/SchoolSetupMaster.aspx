<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolSetupMaster.aspx.cs" Inherits="mis_Report_SchoolSetupMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
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

                        <li class="breadcrumb-item"><span>School Setup Master</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <%--  <div class="row page-titles mb-4">--%>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h5 class="card-title">School Setup Master / स्कूल सेटअप मास्टर</h5>
                </div>
            </div>
        </div>
        <div class="card-body">

            <%--  <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">School Setup Master</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports2" title="click to go on">OIS Setup Reports</a></li>
                    <li class="breadcrumb-item active">School Setup Report</li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">--%>
            <%--   <div class="card-body">--%>
            <fieldset>
                <legend>School Setup Master / स्कूल सेटअप मास्टर</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Financial Year<br />
                            वित्तीय वर्ष<span style="color: red">*</span></label>
                        <asp:DropDownList ID="FinancialYear" runat="server" CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>2024-25</asp:ListItem>
                            <asp:ListItem>2023-24</asp:ListItem>
                            <asp:ListItem>2022-23</asp:ListItem>
                            <asp:ListItem>2021-22</asp:ListItem>
                            <asp:ListItem>2020-21</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label>
                            District Name<br />
                            जिले का नाम<span style="color: red">*</span></label>
                        <asp:DropDownList runat="server" AutoPostBack="true" CssClass="form-control select2" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" ID="ddlDistrict">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">Bhopal</asp:ListItem>
                            <asp:ListItem Value="2">Vidisha</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label>
                            Block Name<br />
                            विकासखण्ड  
 का नाम</label>
                        <asp:DropDownList ID="ddlBlock" runat="server" AutoPostBack="true"
                            CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label>
                            Management Group<br />
                            प्रबंधन समूह
                        </label>
                        <asp:DropDownList ID="ddlMngmntGrp" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMngmntGrp_SelectedIndexChanged"
                            CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">Central Government</asp:ListItem>
                            <asp:ListItem Value="2">Government Aided</asp:ListItem>
                            <asp:ListItem Value="3">State Government</asp:ListItem>
                            <asp:ListItem Value="4">Private Unaided (Recognized)</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Management Details<br />
                            प्रबंधन विवरण
                        </label>
                        <asp:DropDownList ID="ddlMngmntGrpDtls" runat="server" CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label>
                            School Category<br />
                            स्कूल श्रेणी</label>
                        <asp:DropDownList runat="server" OnSelectedIndexChanged="ddlSchoolCategory_SelectedIndexChanged1" AutoPostBack="true" ID="ddlSchoolCategory" CssClass="form-control select2 ">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">01-Primary School</asp:ListItem>
                            <asp:ListItem Value="2">02-Upper primary School</asp:ListItem>
                            <asp:ListItem Value="3">03-Secondary School</asp:ListItem>
                            <asp:ListItem vlaue="4">04-Higher Secondary School</asp:ListItem>
                            <asp:ListItem vlaue="5">05-Pre-Primary School</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label>
                            School Sub Category Details<br />
                            स्कूल उप श्रेणी विवरण
                        </label>
                        <asp:DropDownList runat="server" ID="ddlSchoolSubCateDtls" CssClass="form-control select2 fs-4">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label>
                            School/Dise Code<br />
                            स्कूल/डिस कोड</label>
                        <asp:DropDownList runat="server" ID="ddlSchool" CssClass="form-control select2 fs-4">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <hr />
                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Button Text="Search" runat="server" ID="btnSearch" class="btn w-lg btn-success btn-border" OnClick="btnSearch_Click" />
                        <a class="btn btn-outline-danger w-lg btn-border" href="SchoolSetupMaster.aspx">Clear</a>
                    </div>
                </div>
                <%--<div class="row justify-content-center">
                        <div class="col-md mt-4 text-center">
                            <asp:Button Text="Search" runat="server" ID="btnSearch" class="Alert-Confirmation btn w-lg btn-success btn-border" OnClick="btnSearch_Click" />
                            <a class="btn btn-danger btn-rounded m-3" href="SchoolSetupMaster.aspx">Clear</a>
                        </div>
                    </div>--%>
            </fieldset>
            <fieldset runat="server" id="div_details" visible="false">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search..."/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr class="card-header text-center">
                                    <th style="width: 8%">Sr. No.<br />सरल क्र.</th>
                                    <th>Subject
                                        <br />
                                        विषय</th>
                                    <th>Class 11/12
                                        <br />
                                        कक्षा 11/12</th>
                                    <th>Sanction Post
                                        <br />
                                        स्वीकृत पद</th>
                                </tr>

                                <tr>
                                    <td>1</td>
                                    <td>Hindi</td>
                                    <td>
                                        <input class="form-control" value="50" /></td>
                                    <td>
                                        <input class="form-control" value="1" /></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>English</td>
                                    <td>
                                        <input class="form-control" value="50" /></td>
                                    <td>
                                        <input class="form-control" value="2" /></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Sans</td>
                                    <td>
                                        <input class="form-control" value="40" /></td>
                                    <td>
                                        <input class="form-control" value="1" /></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Urdu</td>
                                    <td>
                                        <input class="form-control" value="35" /></td>
                                    <td>
                                        <input class="form-control" value="1" /></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Physics</td>
                                    <td>
                                        <input class="form-control" value="45" /></td>
                                    <td>
                                        <input class="form-control" value="2" /></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Chemistry</td>
                                    <td>
                                        <input class="form-control" value="55" /></td>
                                    <td>
                                        <input class="form-control" value="2" /></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Maths</td>
                                    <td>
                                        <input class="form-control" value="70" /></td>
                                    <td>
                                        <input class="form-control" value="3" /></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Biology </td>
                                    <td>
                                        <input class="form-control" value="60" /></td>
                                    <td>
                                        <input class="form-control" value="2" /></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>History</td>
                                    <td>
                                        <input class="form-control" value="33" /></td>
                                    <td>
                                        <input class="form-control" value="1" /></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Political Science</td>
                                    <td>
                                        <input class="form-control" value="37" /></td>
                                    <td>
                                        <input class="form-control" value="1" /></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>Geography</td>
                                    <td>
                                        <input class="form-control" value="45" /></td>
                                    <td>
                                        <input class="form-control" value="2" /></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>Economics</td>
                                    <td>
                                        <input class="form-control" value="45" /></td>
                                    <td>
                                        <input class="form-control" value="2" /></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>Sociology</td>
                                    <td>
                                        <input class="form-control" value="36" /></td>
                                    <td>
                                        <input class="form-control" value="1" /></td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>Commerce</td>
                                    <td>
                                        <input class="form-control" value="36" /></td>
                                    <td>
                                        <input class="form-control" value="1" /></td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>Agriculture</td>
                                    <td>
                                        <input class="form-control" value="25" /></td>
                                    <td>
                                        <input class="form-control" value="1" /></td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td>Home Science</td>
                                    <td>
                                        <input class="form-control" value="28" /></td>
                                    <td>
                                        <input class="form-control" value="1" /></td>
                                </tr>
                                <tr class="card-header">
                                    <th colspan="2">Total 11/12 class Enrollment Count</th>
                                    <th>690</th>
                                    <th>24</th>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

