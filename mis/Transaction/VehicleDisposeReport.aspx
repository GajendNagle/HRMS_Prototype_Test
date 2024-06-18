<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleDisposeReport.aspx.cs" Inherits="mis_Transaction_VehicleDisposeReport" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
    </style>
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#TransportManagementReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Transport Management Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle Dispose  Report </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vehicle Dispose Report/ 
वाहन डिस्पोज़  रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Dispose Report/ 
वाहन डिस्पोज़  रिपोर्ट</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>From Date /<br />
                                की तिथि से<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtFromDate" type="date" id="ctl00_ContentBody_txtFromDate" class="form-control " data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>To Date /<br />
                                तारीख तक<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtTodate" type="date" id="ctl00_ContentBody_txtTodate" class="form-control " data-provide="datepicker" data-date-end-date="0d" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Office Type /<br />
                                कार्यालय का प्रकार<span style="color: red">*</span></span>
                            <select class="form-control select2">
                                <option value=" -Select-">--Select--</option>
                                <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Office Name /<br />
                                कार्यालय का नाम<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlOfficeName" id="ctl00_ContentBody_ddlOfficeName" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                <option value="Bhopal">SANKUL/AEO</option>
                                <option value="Bhopal">SCHOOL</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle Number /<br />
                                गाडी नंबर<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlVehicleNumber" disabled="disabled" id="ctl00_ContentBody_ddlVehicleNumber" class="form-control" tabindex="-1" aria-hidden="true">
                                <option value="1" selected="selected">MP04CB4473</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button runat="server" type="button" class="fw-bold btn w-lg btn-success btn-border" Text="Search" OnClick="btnSearchRcd_Click" ID="btnSearchRcd" />
                        <a href="VehicleDisposeReport.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details/विवरण</legend>
                <div class="row" runat="server" id="NoRcdTable">
                    <div class="col-md-12">
                        <div>
                            <table class="datatable table table-bordered dataTable" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_grvVehicleAllotment" style="border-collapse: collapse; text-align: center;">
                                <tbody>
                                    <tr>
                                        <td>No Recods Found</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div runat="server" id="hideTable" visible="false">
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
                                <div>
                                    <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_gvVehicleDispose" style="border-collapse: collapse; text-align: center;">
                                        <tbody>
                                            <tr>
                                                <th scope="col">S.No.<br />
                                                    सरल क्र.</th>
                                                <th scope="col">Order Date<br />
                                                    आदेश की तारीख</th>
                                                <th scope="col">Office Type<br />
                                                    कार्यालय का प्रकार</th>
                                                <th scope="col">Vehicle Number<br />
                                                    गाडी नंबर</th>
                                                <th scope="col">Vehicle Model<br />
                                                    वाहन मॉडल</th>
                                                <th scope="col">Vehicle Chassis Number<br />
                                                    वाहन चेसिस नंबर</th>
                                                <th scope="col">Order Number<br />
                                                    आदेश संख्या</th>
                                                <th scope="col">Selling Amount<br />
                                                    विक्रय राशि</th>
                                                <th scope="col">Buying Amount<br />
                                                    क्रय राशि</th>
                                                <th scope="col">Name Of Buyer<br />
                                                    क्रेता का नाम</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span>1</span>
                                                </td>
                                                <td>
                                                    <span>01/06/2024</span>
                                                </td>
                                                <td>Head Office
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_gvVehicleDispose_ctl02_lblVehicle_Number">MP04CB4473</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_gvVehicleDispose_ctl02_lblVehicle_Model">2007</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_gvVehicleDispose_ctl02_lblVehicle_Chassis_Number">MA3ECA12S02671501</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_gvVehicleDispose_ctl02_lblOrder_Number">444</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_gvVehicleDispose_ctl02_lblSelling_Amount">25000.00</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_gvVehicleDispose_ctl02_lblBuying_Amount">65000.00</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_gvVehicleDispose_ctl02_lblName_Of_Buyer">Raj</span>
                                                </td>
                                                <td>
                                                    <a class="btn btn-primary"><i class="fa fa-edit"></i></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
