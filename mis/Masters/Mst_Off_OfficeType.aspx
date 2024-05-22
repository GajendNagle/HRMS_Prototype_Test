<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_OfficeType.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_OfficeType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .waves-input-wrapper .waves-button-input {
            border: none;
            font-weight: bold;
        }

        .table-bordered th, .table-bordered td {
            border: 1px solid #2e3c49;
            border-collapse: collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Office Type Master</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="../menu.aspx?ID=Masters&SubID=OfficeMaster" title="click to go on">Office Masters</a></li>
                        <li class="breadcrumb-item active">Office Type Master</li>
                    </ol>
                </div>
            </div>
        </div>
        <%-- Already code  --%>

        <%--<div class="card mt-3 shadow" id="FirstTimeShowDiv" runat="server">
            <div class="card-header ">
                <div class="text-right">

                </div>
            </div>
            <div class="card-body">
                <span id="ContentBody_lblMsg"></span>
                <fieldset>
                    <legend>Office Type Master</legend>

                    <div class="row form-group">

                        <div class="col-md-3">
                            <label class="font-weight-bold">Office Type Name  (In English)<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Office Type" onkeypress="return lettersOnly();" />
                        </div>
                        <div class="col-md-3">
                            <label class="font-weight-bold">कार्यालय प्रकार का नाम (हिंदी में)<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="कार्यालय का प्रकार दर्ज करे" />
                        </div>
                        <div class="col-md-2">
                            <label class="font-weight-bold">Office Type Code No.<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Code Number" onkeypress="return lettersOnly();" />
                        </div>
                        <div class="col-md-1">
                            <label class="font-weight-bold">Is Active</label>
                            <br />
                            <input type="checkbox" checked="checked" />
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">

                                <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                                <a href="Mst_Off_OfficeType.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>


                </fieldset>
                <fieldset>
                    <legend>Office Type Details </legend>
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
                                <table class="table table-bordered">
                                    <thead>


                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>OSI Type</th>
                                            <th>OSI Type Level</th>
                                            <th>Office Type Name</th>
                                            <th>कार्यालय प्रकार का नाम</th>
                                            <th>Office Type Code</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tr style="border: 1px solid black">
                                        <td>1</td>
                                        <td>School</td>
                                        <td>School</td>
                                        <td>Test Office</td>
                                        <td>टेस्ट डाटा</td>

                                        <td>54</td>
                                        <td>Active</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Office</td>
                                        <td>State Level</td>
                                        <td>New Office Open Soon</td>

                                        <td>वस</td>
                                        <td>66</td>
                                        <td>InActive</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>

               
            </div>

        </div>--%>
        <%-- Already code  --%>
        <%-- My code  --%>

        <div class="card mt-3 shadow" id="OnclickTimeShowDiv" runat="server" visible="true">
            <div class="card-header ">
                <div class="text-right">
                </div>
            </div>
            <div class="card-body">
                <span id="bg"></span>
                <fieldset>
                    <legend>Add Office Type</legend>

                    <div class="row form-group">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-weight-bold">OSI Type<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" CssClass="form-control form-select">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">Office</asp:ListItem>
                                    <asp:ListItem Value="2">School</asp:ListItem>
                                    <asp:ListItem Value="3">Institute</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-weight-bold">Office Type Level<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" CssClass="form-control form-select">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">1-State Level</asp:ListItem>
                                    <asp:ListItem Value="2">2-Division Level</asp:ListItem>
                                    <asp:ListItem Value="3">3-District Level</asp:ListItem>
                                    <asp:ListItem Value="3">4-Block Level</asp:ListItem>
                                    <asp:ListItem Value="3">5-DDO </asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-weight-bold">Office Type Name  (In English)<span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Office Type" onkeypress="return lettersOnly();" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-weight-bold">कार्यालय प्रकार का नाम (हिंदी में)<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="कार्यालय का प्रकार दर्ज करे" />
                            </div>
                        </div>
                        <div class="col-md-2">

                            <div class="form-group">
                                <label class="font-weight-bold">Office Type Code No.<span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Code Number" onkeypress="return lettersOnly();" />
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <label class="font-weight-bold">Is Active</label>
                                <br />
                                <input type="checkbox" checked="checked" />
                            </div>
                        </div>




                        <div class="col-md-3 mt-4">
                            <div class="form-group">

                                <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                                <a href="Mst_Off_OfficeType.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>


                     <fieldset>
                         <legend>Office Type Details (Report)</legend>
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
                                <table class="table table-bordered">
                                    <thead>


                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>OSI Type</th>
                                            <th>OSI Type Level</th>
                                            <th>Office Type Name</th>
                                            <th>कार्यालय प्रकार का नाम</th>
                                            <th>Office Type Code</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tr style="border: 1px solid black">
                                        <td>1</td>
                                        <td>School</td>
                                        <td>School</td>
                                        <td>Test Office</td>
                                        <td>टेस्ट डाटा</td>

                                        <td>54</td>
                                        <td>
                                              <a  class="btn btn-success btn-rounded">Active</a>
                                        </td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Office</td>
                                        <td>State Level</td>
                                        <td>New Office Open Soon</td>

                                        <td>वस</td>
                                        <td>66</td>
                                        <%--<td class="btn btn-danger btn-rounded">InActive</td>--%>
                                        <td >
                                            <a  class="btn btn-danger btn-rounded">InActive</a>
                                            </td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>&nbsp|&nbsp <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                            </fieldset>
            </div>

        </div>
        <%-- My code  --%>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

