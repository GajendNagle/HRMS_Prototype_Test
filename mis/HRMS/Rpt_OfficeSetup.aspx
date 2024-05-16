<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_OfficeSetup.aspx.cs" Inherits="mis_HRMS_Rpt_OfficeSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Office Setup Report</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">Office Setup Report</li>
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
                            <asp:ListItem Value="1" Selected="True">Office</asp:ListItem>
                            <asp:ListItem Value="2">Institute</asp:ListItem>
                            <asp:ListItem Value="3">School</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Office Setup Report</legend>
                    <div class="row form-group">
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">Division Name<span style="color: red">*</span></label>
                            <asp:DropDownList ID="ddlDivision" runat="server" CssClass="form-control select2" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Gwalior</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control select2" ID="ddlDistrict">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">Block Name</label>
                            <asp:DropDownList ID="ddlBlock" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlBlock_SelectedIndexChanged"
                                CssClass="form-control select2">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-3">
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
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">
                                Management Details
                            </label>
                            <asp:DropDownList ID="ddlMngmntGrpDtls" runat="server" CssClass="form-control select2">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3 mt-3">
                            <div class="form-group">
                                <label class="font-bold">Office Type</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="a"
                                        ErrorMessage="Select Office Type" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Office Type !'></i>"
                                        ControlToValidate="ddlOffice" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlOffice">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem>BEO,BAROD</asp:ListItem>
                                    <asp:ListItem>BRC,BAROD</asp:ListItem>
                                    <asp:ListItem>DEO, DHAR</asp:ListItem>
                                    <asp:ListItem>DPC, DINDORI</asp:ListItem>
                                    <asp:ListItem>DPC, INDORE</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-3 mt-3">
                            <div class="form-group">
                                <label class="font-bold">Designation Type</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="a"
                                        ErrorMessage="Select Designation" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Designation !'></i>"
                                        ControlToValidate="ddlDesignation" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" OnSelectedIndexChanged="ddlDesignation_SelectedIndexChanged" AutoPostBack="true" ID="ddlDesignation">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">Clerical</asp:ListItem>
                                    <asp:ListItem Value="2">Teaching</asp:ListItem>
                                    <asp:ListItem Value="3">Executive</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3 mt-3">
                            <div class="form-group">
                                <label class="font-bold">Office Code</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="a"
                                        ErrorMessage="Select Office Code" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Office Code !'></i>"
                                        ControlToValidate="ddlUDiceCode" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlUDiceCode">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem>232201OBS01</asp:ListItem>
                                    <asp:ListItem>232201OBS02</asp:ListItem>
                                    <asp:ListItem>232202OBS01</asp:ListItem>
                                    <asp:ListItem>232202OBS02</asp:ListItem>
                                    <asp:ListItem>232203OBS01</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div runat="server" id="divDesignation" visible="false">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <tr class="card-header">
                                                <th>Sr No.</th>
                                                <th>Designation Type</th>
                                                <th>Sanction</th>
                                                <th>Working</th>
                                                <th>Vacant</th>
                                                <th>Surplus</th>
                                            </tr>
                                            <tr>
                                                <td>1.</td>
                                                <td>Ardh Kaushal Karigar(SSW)</td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            </tr>
                                            <tr>
                                                <td>2.</td>
                                                <td>School Mother</td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control" Text="0" /></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mt-4" runat="server" id="btnSave">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" CssClass="btn btn-success btn-rounded" runat="server" Text="Search" OnClick="btnSubmit_Click" />
                                <a href="Rpt_OfficeReport.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="row form-group" id="dv_rpt" runat="server">
                    <div class="col-md-12">
                        <fieldset>
                            <legend>Office Details</legend>
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
                            <div runat="server" id="divDesignation2" visible="true">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <tr class="text-center card-header">
                                                    <th>Sr No.</th>
                                                    <th>District</th>
                                                    <th>Block</th>
                                                    <th>Office Type</th>
                                                    <th>Designation
                                                    </th>
                                                    <th>No. of Sanctioned Post
                                                    </th>
                                                    <th>No. of Working Post
                                                    </th>
                                                    <th>No. of Vacant Post
                                                    </th>
                                                    <th>No. of Surplus Post
                                                    </th>
                                                    <th>Remark
                                                    </th>
                                                </tr>
                                                <tr class="text-center">
                                                    <td>1.</td>
                                                    <td>Bhopal</td>
                                                    <td>Berasia</td>
                                                    <td>BEO,BAROD</td>
                                                    <td>232201OBS01-BEO,BAROD</td>
                                                    <td>15</td>
                                                    <td>8</td>
                                                    <td>7</td>
                                                    <td>0</td>
                                                    <td>
                                                        <input class="form-control" /></td>
                                                </tr>
                                                <tr class="text-center">
                                                    <td>2.</td>
                                                    <td>Bhopal</td>
                                                    <td>Phanda</td>
                                                    <td>BRC,BAROD</td>
                                                    <td>232201OBS02-BRC,BAROD</td>
                                                    <td>10</td>
                                                    <td>11</td>
                                                    <td>0</td>
                                                    <td>1</td>
                                                    <td>
                                                        <input class="form-control" /></td>

                                                </tr>
                                            </table>
                                        </div>
                                    </div>
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

