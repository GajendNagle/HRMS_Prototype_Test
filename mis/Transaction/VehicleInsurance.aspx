<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleInsurance.aspx.cs" Inherits="mis_Transaction_VehicleInsuranceReport" %>

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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#TransportManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Transport Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle Insurance</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">Vehicle Insurance</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-2 col-md-12 text-end">
                    <a role="button" href="VehicleInsuranceReport.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>View Details</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Insurance / वाहन बीमा</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Vehicle Number
                                <br />
                                गाड़ी नंबर का चयन करें<span style="color: red">*</span></span>
                            <select class="form-control select2 select2-hidden-accessible">
                                <option>--Select--</option>
                                <option>MP04HC4163</option>
                                <option>MP04CV7194</option>
                                <option>MP04CG9580</option>
                                <option>MP12CA3652</option>
                                <option>MP04ZB8269</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Previous Date
                                <br />
                                बीमा पूर्व दिनांक<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtInsuranceCompany" type="date" id="ctl00_ContentBody_txtInsurancelastdate" value="2024-12-10" readonly class="form-control" onpaste="return false;" onkeypress="return lettersOnly()">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Company
                                <br />
                                बीमा कंपनी<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtInsuranceCompany" type="text" maxlength="70" id="ctl00_ContentBody_txtInsuranceCompany" class="form-control" onpaste="return false;" autocomplete="off" onkeypress="return lettersOnly()" placeholder="Enter Insurance Company">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Number
                                <br />
                                बीमा नंबर<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtNewInsuranceNumber" type="text" maxlength="17" id="ctl00_ContentBody_txtNewInsuranceNumber" class="form-control" onpaste="return false;" placeholder="Enter Insurance Number" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Start Date
                                <br />
                                बीमा प्रारंभ तिथि<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtInsuranceStartDate" type="Date" class="form-control " data-date-end-date="0d" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance End Date
                                <br />
                                बीमा समाप्ति तिथि<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtInsuranceEndDate" type="Date" class="form-control" data-provide="datepicker" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Insurance Type
            <br />
                                बीमा का प्रकार<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlInsuranceType" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentBody$ddlInsuranceType\',\'\')', 0)" id="ctl00_ContentBody_ddlInsuranceType" class="form-control select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                                <option selected="selected" value="0">--Select--</option>
                                <option value="1">General Insurance</option>
                                <option value="2">Claim</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Upload File
                                <br />
                                फ़ाइल अपलोड करें<span style="color: red">*</span> </span>
                            <input type="file" name="ctl00$ContentBody$fuInsuranceDocument" id="ctl00_ContentBody_fuInsuranceDocument" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span id="ctl00_ContentBody_lblInsAmt">Insurance Amount(Rs)
                                <br />
                                बीमा की राशि(रु.)</span>
                            <span class="left">
                                <span id="ctl00_ContentBody_RequiredFieldValidator7" style="color: Red; display: none;"><i class="fa fa-exclamation-circle" title="Enter Insurance Type !"></i></span>
                            </span>
                            <input name="ctl00$ContentBody$txtInsuranceAmount" type="text" maxlength="9" id="ctl00_ContentBody_txtInsuranceAmount" class="form-control" onkeypress="return isNumberKey(this, event);" oninput="validate(this)" autocomplete="off" onpaste="return false;" placeholder="Enter Insurance Amount">
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button id="toggleButton" type="button" class="Alert-Confirmation fw-bold btn w-lg btn-success btn-border">Save</button>
                            <a href="VehicleInsuranceReport.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row" id="FisrtTimetbl">
                    <div class="col-md-12">
                        <div class="table-responsive">
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
                <div class="row" style="display: none" id="Serchtbl">
                    <br />
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
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <div>
                                <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_grvVehicleInsuranceYr" style="border-collapse: collapse; text-align: center;">
                                    <tbody>
                                        <tr>
                                            <th scope="col">S.No.<br />
                                                सरल क्र.</th>
                                            <th scope="col">Vehicle Number<br />
                                                गाड़ी का नंबर</th>
                                            <th scope="col">Insurance Type<br />
                                                बीमा का प्रकार</th>
                                            <th scope="col">Insurance Company<br />
                                                बीमा कंपनी</th>
                                            <th scope="col">Insurance Number<br />
                                                बीमा नंबर</th>
                                            <th scope="col">Insurance Start Date<br />
                                                बीमा प्रारंभ तिथि</th>
                                            <th scope="col">Insurance End Date<br />
                                                बीमा समाप्ति तिथि</th>
                                            <th scope="col">Insurance Claim Date<br />
                                                बीमा दावा दिनांक</th>
                                            <th scope="col">Insurance Amount<br />
                                                बीमा की राशि</th>
                                            <th scope="col">View Documents<br />
                                                दस्तावेज़ देखें</th>
                                            <th scope="col">Action<br />
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span>1</span>
                                            </td>
                                            <td>
                                                <span id="">MP04CB4473</span>
                                            </td>
                                            <td>
                                                <span id="">General Insurance</span>
                                            </td>
                                            <td>
                                                <span id="">test</span>
                                            </td>
                                            <td>
                                                <span id="">85</span>
                                            </td>
                                            <td>
                                                <span id="">13/02/2024</span>
                                            </td>
                                            <td>
                                                <span id="">12/02/2025</span>
                                            </td>
                                            <td>
                                                <span id="">N/A</span>
                                            </td>
                                            <td>
                                                <span id="">955.00</span>
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-primary">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                            <td>
                                                <a disabled="disabled" class="btn btn-primary"><i class="fa fa-edit"></i></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        document.getElementById("toggleButton").addEventListener("click", function () {
            //var content2 = document.getElementById("Serchtbl");
            document.getElementById("Serchtbl").style.display = "block";
            document.getElementById("FisrtTimetbl").style.display = "none";
        });
    </script>
</asp:Content>

