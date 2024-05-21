<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_DistrictWisePublishedSchool.aspx.cs" Inherits="mis_HRMS_Rpt_DistrictWisePublishedSchool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">District Wise List Of Published School</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports" title="click to go on">School Reports</a></li>
                    <li class="breadcrumb-item active">District Wise List Of Published School</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>District Wise List Of Published Schools</legend>
                <div class="row form-group">
                    <div class="col-md-3">
                        <label class="font-bold">District Name<span style="color: red">*</span></label>
                        <asp:DropDownList runat="server" AutoPostBack="true" CssClass="form-control select2" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged" ID="ddlDistrict">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Raisen</asp:ListItem>
                            <asp:ListItem>Shivpuri</asp:ListItem>
                            <asp:ListItem>Guna</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Block Name<span style="color: red">*</span></label>
                        <asp:DropDownList ID="ddlBlock" runat="server"
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
                    <div class="col-md-3">
                        <label class="font-bold">Category Details</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCateDtls"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label class="font-weight-bold">School-DiseCode</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtSclDise"></asp:TextBox>

                    </div>
                    <div class="col-md-2 mt-4">
                        <asp:Button runat="server" CssClass="btn btn-success btn-rounded" OnClick="btnSave_Click" Text="View" ID="btnSave" />
                    </div>
                </div>
            </fieldset>

            <fieldset class="mt-4" runat="server" id="div_Details" visible="false">
                <legend>Published Schools Details</legend>
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
                                    <th>Sr. No.</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>DiseCode</th>
                                    <th>School</th>
                                    <th>School Category</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Raisen</td>
                                    <td>Sagar</td>
                                    <td>23510100704</td>
                                    <td>P.S. BAGRI KHEDA</td>
                                    <td>Primary School(Class 1 to 5)</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Raisen</td>
                                    <td>Vidisha</td>
                                    <td>23510815002</td>
                                    <td>PS SEMLI</td>
                                    <td>Upper Primary School(Class 6 to 8)</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Shivpuri</td>
                                    <td>Dabra</td>
                                    <td>23510100403</td>
                                    <td>P.S. DUDH PURA</td>
                                    <td>Seondary School(Class 9 to 10)</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Guna</td>
                                    <td>Aron</td>
                                    <td>23510100403</td>
                                    <td>P.S. JHIKRIYA</td>
                                    <td>Upper Secondary School(Class 6 to 10)</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Shivpuri</td>
                                    <td>Morar</td>
                                    <td>23510100704</td>
                                    <td>P.S. BAPCHA</td>
                                    <td>Upper Primary School(Class 6 to 8)</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Guna</td>
                                    <td>Aron</td>
                                    <td>23510815002</td>
                                    <td>PS SULTANPURA</td>
                                    <td>Secondary School(Class 9 to 10)</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Raisen</td>
                                    <td>Vidisha</td>
                                    <td>23510100704</td>
                                    <td>PS RAMSINGH KA DERA SULTANPURA</td>
                                    <td>Primary School(Class 1 to 5)</td>
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

