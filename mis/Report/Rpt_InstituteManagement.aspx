<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_InstituteManagement.aspx.cs" Inherits="Rpt_InstituteManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Institute Report Detail</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item active">Institute Report</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Institute Report Detail</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="font-bold">Division Name<span class="fa-pull-right" style="color: red">*</span> </label>

                            <asp:DropDownList runat="server" ID="ddlDivistionName" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlDistrictName" CssClass="form-control select2" OnSelectedIndexChanged="ddlDistrictName_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Raisen</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">Block Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" ID="ddlBlockName" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Institute Type<span style="color: red;"> *</span></label>
                                <asp:DropDownList CssClass="form-select select2" ReadOnly="true" runat="server">
                                    <asp:ListItem>-Select-</asp:ListItem>
                                    <asp:ListItem>Maharshi Pathanjali Sanskrit Sansthan,Bhopal</asp:ListItem>

                                    <asp:ListItem>DIET,Bhopal</asp:ListItem>
                                    <asp:ListItem>Other  Institute/ College,Bhopal</asp:ListItem>
                                    <asp:ListItem>Libraives,Bhopal</asp:ListItem>
                                    <asp:ListItem>Kasturba Gandhi Balika  Vidyalaya,Bhopal</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Institute/ U-Dise Code</label>
                                <span style="color: red;">*</span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolDiseCode">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>234502OBS02-Maharshi Pathanjali Sanskrit Sansthan,Bhopal</asp:ListItem>
                                    <asp:ListItem>234507OBS01-DIET,Bhopal</asp:ListItem>
                                    <asp:ListItem>234510OBT01-Other  Institute/ College,Bhopal</asp:ListItem>
                                    <asp:ListItem>232807OBS02-Libraives,Bhopal</asp:ListItem>
                                    <asp:ListItem>232816OBS02-Kasturba Gandhi Balika  Vidyalaya,Bhopal</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group</label>
                                <span style="color: red;">*</span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroup" OnSelectedIndexChanged="ddlManagementGroup_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>State Government</asp:ListItem>
                                    <asp:ListItem>Central Government</asp:ListItem>
                                    <asp:ListItem>Government Aided</asp:ListItem>
                                    <asp:ListItem>Private Unaided (Recognized)</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Management Group Details</label>
                                <span style="color: red;">*</span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGroupDetails">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Designation type</label>
                                <span style="color: red;">*</span>

                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" ErrorMessage="Select Designation " InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlDesignation" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlDesignation">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>Teaching</asp:ListItem>
                                    <asp:ListItem>Executive</asp:ListItem>
                                    <asp:ListItem>Ministry</asp:ListItem>
                                    <asp:ListItem>Clerical</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">financial year</label>
                                <span style="color: red;">*</span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="dropdownlist1">
                                    <asp:ListItem Value="0">--select-</asp:ListItem>
                                    <asp:ListItem>2019-2020</asp:ListItem>
                                    <asp:ListItem>2020-2021</asp:ListItem>
                                    <asp:ListItem>2021-2022</asp:ListItem>
                                    <asp:ListItem>2022-2023 </asp:ListItem>
                                    <asp:ListItem>2023-2024</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3 text-center mt-4">
                            <div class="form-group">
                                <asp:Button runat="server" class="alert-save btn btn-success btn-rounded" Text="search" OnClick="Unnamed_Click2" />
                                <a href="Rpt_InstituteManagement.aspx" class="btn btn-danger  btn-rounded">clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <br />
                <fieldset id="show" runat="server" visible="false">
                    <legend>Detail</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <table id="tbl2" class="table table-bordered table-responsive-lg text-center" runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>Sr.No.</th>
                                            <th>Designation </th>
                                            <th>Sanchion Post</th>
                                            <th>Working Post</th>
                                            <th>Vacant Post</th>
                                            <th>Surplus Post</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <br />
                <fieldset id="show1" runat="server" visible="false">
                    <legend>Detail</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <table id="tbl3" class="table table-bordered table-responsive-lg text-center" runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>Sr.No.</th>
                                            <th>Designation </th>
                                            <th>Sanchion Post</th>
                                            <th>Working Post</th>
                                            <th>Vacant Post</th>
                                            <th>Surplus Post</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Block MIS Coordinator</td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <br />
                <fieldset id="show2" runat="server" visible="false">
                    <legend>Detail</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>Sr.No.</th>
                                            <th>Designation </th>
                                            <th>Sanchion Post</th>
                                            <th>Working Post</th>
                                            <th>Vacant Post</th>
                                            <th>Surplus Post</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Samvida Hostal Adhikshak</td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <br />
                <fieldset id="show3" runat="server" visible="false">
                    <legend>Detail</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput4" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <table id="Table2" class="table table-bordered table-responsive-lg text-center" runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>Sr.No.</th>
                                            <th>Designation </th>
                                            <th>Sanchion Post</th>
                                            <th>Working Post</th>
                                            <th>Vacant Post</th>
                                            <th>Surplus Post</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>Ardh Kushal Karigar(SSW)</td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" Text="0" CssClass="form-control"></asp:TextBox></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

