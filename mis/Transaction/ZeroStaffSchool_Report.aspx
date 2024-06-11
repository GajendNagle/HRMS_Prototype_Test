<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ZeroStaffSchool_Report.aspx.cs" Inherits="mis_Transaction_ZeroStaffSchool_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
            <h4 class="mb-sm-0"></h4>
            <div class="=page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item">
                        <span>Home</span>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#SchoolDirectoryDashboard" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#OISSetup" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('OISSetup')">
                            <span>OIS Setup Reports</span></a>
                    </li>
                    <%--                     <li class="breadcrumb-item">
    <a href="#Reports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Reports')">
        <span>Reports</span></a>
</li>--%>
                    <li class="breadcrumb-item"><span>Zero Staff School Report</span></li>
                </ol>
            </div>
        </div>
    </div>


    <%--  <div class="row page-titles mb-4">--%>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h5 class="card-title">Zero Staff School Report</h5>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Staff Details</legend>
                <div class="row form-group">
                    <div class="col-md-3">
                        <label class="font-bold">District Name<span style="color: red">*</span></label>
                        <span class="fa-pull-right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                ErrorMessage="Select District Name" InitialValue="0" ForeColor="Red"
                                Text="<i class='fa fa-exclamation-circle' title='Select District Name !'></i>"
                                ControlToValidate="ddlDistrict" Display="Dynamic" runat="server">
                            </asp:RequiredFieldValidator>
                        </span>
                        <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlDistrict" AutoPostBack="true">
                            <asp:ListItem Value="0">--Bhopal--</asp:ListItem>
                            <asp:ListItem Value="1">Chhatarpur</asp:ListItem>
                            <asp:ListItem Value="2">Betul</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Block Name</label>
                        <asp:DropDownList runat="server" CssClass="form-control select2" AutoPostBack="true" ID="ddlBlock">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Seoni</asp:ListItem>
                            <asp:ListItem>Chhapara</asp:ListItem>
                            <asp:ListItem>Kurai</asp:ListItem>
                            <asp:ListItem>Barghat</asp:ListItem>
                            <asp:ListItem>Ghansor</asp:ListItem>
                        </asp:DropDownList>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Management Group</label>

                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGrp" AutoPostBack="true">
                                <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                <asp:ListItem>State Government</asp:ListItem>
                                <asp:ListItem>Central Government</asp:ListItem>
                                <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                                <asp:ListItem>Government Aided</asp:ListItem>

                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Management Details </label>
                            <span class="fa-pull-right"></span>
                            <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolManagementDtls">
                                <asp:ListItem Value="0"> -Select-</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Category</label>

                            <asp:DropDownList CssClass="form-control select2" runat="server" AutoPostBack="true" ID="ddlSchoolCat">
                                <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                <asp:ListItem>Primary School</asp:ListItem>
                                <asp:ListItem>Upper primary School</asp:ListItem>
                                <asp:ListItem>Secondary School</asp:ListItem>
                                <asp:ListItem>Higher Secondary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Category Details</label>
                            <asp:DropDownList class="form-control select2" ID="ddlCategarydtl" runat="server">
                                <asp:ListItem Value="0"> -Select-</asp:ListItem>
                            </asp:DropDownList>

                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12" runat="server" id="btnSave">
                        <div class="form-group">
                            <asp:Button runat="server" class="btn w-lg btn-success btn-border" Text="Save" ID="btnSubmit" />
                            <a class="btn btn-outline-danger w-lg btn-border" href="ZeroStaffSchool_Report.aspx">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <div class="row form-group" id="dv_rpt" runat="server">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Zero Staff School Details</legend>
                        <div class="row">

                            <div class="col-md-12">

                                <%--table district Start--%>

                                <table class="table table-bordered table-responsive-lg " id="tblDistrict">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>District</th>
                                            <th>Block</th>
                                            <th>Management Group</th>
                                            <th>Management Details</th>
                                            <th>Category Details</th>
                                            <th>School Name</th>
                                            <th>Total Enrollment</th>
                                            <th>Sanction Teachers</th>
                                            <th>Currently Working</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>Seoni</td>
                                        <td>Central Government</td>
                                        <td>Details</td>
                                        <td>Secondary School</td>
                                        <td>23510807601 PS RAIPURIYA</td>
                                        <td>100</td>
                                        <td>55</td>
                                        <td>62</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Raisen</td>
                                        <td>Seoni</td>
                                        <td>State Government</td>
                                        <td>Details</td>
                                        <td>Primary School</td>
                                        <td>23510807601 BARAI M. S.</td>
                                        <td>100</td>
                                        <td>55</td>
                                        <td>62</td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

