<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_SchoolSetup.aspx.cs" Inherits="mis_HRMS_Rpt_SchoolSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">School Setup Report</h4>
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
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
            <div class="row form-group m-2">
                <div class="col-md-2">
                    <label class="font-bold text-dark">OIS Type<span style="color: red">*</span></label>
                    <asp:DropDownList ID="ddlOISType" runat="server" CssClass="form-control select2" OnSelectedIndexChanged="ddlOISType_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                        <asp:ListItem Value="1">Office</asp:ListItem>
                        <asp:ListItem Value="2">Institute</asp:ListItem>
                        <asp:ListItem Value="3" Selected="True">School</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>School Setup Report</legend>
                <div class="row form-group">
                    <div class="col-md-3">
                        <label class="font-bold">Division Name<span style="color: red">*</span></label>
                        <asp:DropDownList ID="ddlDivision" runat="server" CssClass="form-control select2" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Gwalior</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">District Name<span style="color: red">*</span></label>
                        <asp:DropDownList runat="server" AutoPostBack="true" CssClass="form-control select2" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" ID="ddlDistrict">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Block Name</label>
                        <asp:DropDownList ID="ddlBlock" runat="server" AutoPostBack="true"
                            CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">
                            Management Group
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
                    <div class="col-md-3">
                        <label class="font-bold">
                            Management Details
                        </label>
                        <asp:DropDownList ID="ddlMngmntGrpDtls" runat="server" CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Category </label>
                        <asp:DropDownList runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" ID="ddlCategory" CssClass="form-control select2">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem Value="1">Primary</asp:ListItem>
                            <asp:ListItem Value="2">Upper Primary</asp:ListItem>
                            <asp:ListItem Value="3">Secondary</asp:ListItem>
                            <asp:ListItem Value="4">Upper-Secondary</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3 ">
                        <label class="font-bold">Category Details</label>
                        <asp:DropDownList runat="server" Disabled="true" ID="ddlCateDtls" CssClass="form-control ">
                            <%--<asp:ListItem Value="0">--Select--</asp:ListItem>--%>
                            <%--<asp:ListItem Value="1">1st to 5th </asp:ListItem>--%>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-weight-bold">School-Dise<span style="color: red">*</span></label>
                        <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-2 mt-4">
                        <div class="form-group">
                            <asp:Button runat="server" CssClass="btn btn-success btn-rounded" OnClick="btnSave_Click" Text="View Details" ID="btnSave" />
                        </div>
                    </div>
                </div>

            </fieldset>


            <fieldset runat="server" id="div_details" visible="false">
                <legend>Details</legend>
                <div class="row justify-content-end">
                    <div class="col-md-1 ">
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
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr class="card-header">
                                    <th>S.no</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>School</th>
                                    <th>No.Of School</th>
                                    <th>Enrollment (Count)</th>
                                    <th colspan="2">No of Sanctioned Post</th>
                                    <th colspan="2">No of Working Post</th>
                                    <th colspan="2">No of Vacant Post</th>
                                    <th colspan="2">No of Surplus Post</th>
                                    <th>Remark</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>HM-PS</td>
                                    <td>PS</td>
                                    <td>HM-PS</td>
                                    <td>PS</td>
                                    <td>HM-PS</td>
                                    <td>PS</td>
                                    <td>HM-PS</td>
                                    <td>PS</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Berasia</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Private Unaided (Recognized)</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">10</a></td>
                                    <td>40</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>5</td>
                                    <td>5</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Gwalior</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Guna</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Kendriya Vidyalaya</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">12</a></td>
                                    <td>55</td>
                                    <td>15</td>
                                    <td>5</td>
                                    <td>15</td>
                                    <td>10</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="divUpperPrimary" visible="false">
                <legend>Details</legend>
                <div class="row justify-content-end">
                    <div class="col-md-1 ">
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
                            <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr class="card-header">
                                    <th>S.no</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>School</th>
                                    <th>No.Of School</th>
                                    <th>Enrollment (Count)</th>
                                    <th colspan="7" class="text-center">No of Sanctioned Post</th>
                                    <th colspan="7" class="text-center">No of Working Post</th>
                                    <th colspan="7" class="text-center">No of Vacant Post</th>
                                    <th colspan="7" class="text-center">No of Surplus Post</th>
                                    <th>Remark</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Berasia</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Jawahar Navodaya Vidyalaya</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">10</a></td>
                                    <td>25</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>15</td>
                                    <td>3</td>
                                    <td>6</td>
                                    <td>11</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>7</td>
                                    <td>17</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Raisen</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Sagar</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Minority Affairs Dept.</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">12</a></td>
                                    <td>32</td>
                                    <td>12</td>
                                    <td>8</td>
                                    <td>6</td>
                                    <td>2</td>
                                    <td>15</td>
                                    <td>6</td>
                                    <td>3</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>6</td>
                                    <td>2</td>
                                    <td>16</td>
                                    <td>5</td>
                                    <td>4</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="divSecondary" visible="false">
                <legend>Details</legend>
                <div class="row justify-content-end">
                    <div class="col-md-1 ">
                        <div class="form-group">
                            <asp:Button ID="Button5" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="Excel" />
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <asp:Button ID="Button6" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="PDF" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr class="card-header">
                                    <th>S.no</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>School</th>
                                    <th>No.Of School</th>
                                    <th>Enrollment (Count)</th>
                                    <th colspan="7" class="text-center">No of Sanctioned Post</th>
                                    <th colspan="7" class="text-center">No of Working Post</th>
                                    <th colspan="7" class="text-center">No of Vacant Post</th>
                                    <th colspan="7" class="text-center">No of Surplus Post</th>
                                    <th>Remark</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Berasia</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Private Unaided (Recognized)</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">10</a></td>
                                    <td>25</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>15</td>
                                    <td>3</td>
                                    <td>6</td>
                                    <td>11</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>7</td>
                                    <td>17</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Gwalior</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Guna</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Jawahar Navodaya Vidyalaya</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">12</a></td>
                                    <td>65</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>15</td>
                                    <td>3</td>
                                    <td>6</td>
                                    <td>11</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>7</td>
                                    <td>17</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset runat="server" id="divUprSec" visible="false">
                <legend>Details</legend>
                <div class="row justify-content-end">
                    <div class="col-md-1 ">
                        <div class="form-group">
                            <asp:Button ID="Button7" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="Excel" />
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <asp:Button ID="Button8" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="PDF" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr class="card-header">
                                    <th>S.no</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>School</th>
                                    <th>No.Of School</th>
                                    <th>Enrollment (Count)</th>
                                    <th colspan="7" class="text-center">No of Sanctioned Post</th>
                                    <th colspan="7" class="text-center">No of Working Post</th>
                                    <th colspan="7" class="text-center">No of Vacant Post</th>
                                    <th colspan="7" class="text-center">No of Surplus Post</th>
                                    <th>Remark</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td>HM</td>
                                    <td>Math</td>
                                    <td>English</td>
                                    <td>Social Science</td>
                                    <td>Sanskrit</td>
                                    <td>Science</td>
                                    <td>Hindi</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Bhopal</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Berasia</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Kendriya Vidyalaya</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">10</a></td>
                                    <td>25</td>
                                    <td>10</td>
                                    <td>12</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>15</td>
                                    <td>3</td>
                                    <td>6</td>
                                    <td>11</td>
                                    <td>10</td>
                                    <td>7</td>
                                    <td>7</td>
                                    <td>17</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>0</td>
                                    <td>1</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Gwalior</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">Guna</a></td>
                                    <%--<td>Central Government</td>--%>
                                    <td>Minority Affairs Dept.</td>
                                    <td><a class="text-info" href="SchoolRecord.aspx">12</a></td>
                                    <td>15</td>
                                    <td>15</td>
                                    <td>5</td>
                                    <td>15</td>
                                    <td>10</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td></td>
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
</asp:Content>

