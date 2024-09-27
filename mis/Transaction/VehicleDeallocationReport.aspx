<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleDeallocationReport.aspx.cs" Inherits="mis_Transaction_VehicleDeallocationReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
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
                            <a href="#TransportManagementReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Transport Management Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle Deallocation Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
     <div class="row align-item-end">
        <div class="col-lg-12 text-end">
            <a href="VehicleDeallocationTransfer.aspx" class="btn btn-info" role="button">Back</a>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Vehicle Deallocation Report / वाहन आवंटनरद्द रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Deallocation Report / वाहन आवंटनरद्द रिपोर्ट</legend>
                <div class="row">
                     <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Office Type /<br />
                                कार्यालय प्रकार का चयन करें<span style="color: red">*</span></span>
                            <select name="ctl00$ContentBody$ddlOfficeType" id="ddlOfficeType" class="form-control">
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
                            <span>Select Office Name
                                <br /> 
                            कार्यालय नाम का चयन करें<span style="color: red">*</span></span>
                            <select  class="form-control select2" ID="DropDownList2">
                                <option value=" -Select-">--Select--</option>
                                <option value="Bhopal">Bhopal</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select Vehicle Number
                                <br />
                            गाड़ी नंबर का चयन करें<span style="color: red">*</span></span>
                            <asp:DropDownList runat="server" class="form-control select2 select2-hidden-accessible" ID="ddlVehicleNumber">
                                <asp:ListItem Value="0" Text="--Select--" />
                                <asp:ListItem Value="1" Text="MP04HC4163" />
                                <asp:ListItem Value="2" Text="MP04CG9580" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select From Date
                                <br />
                                दिनांक से का चयन करें<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtFromDate" type="date" id="ctl00_ContentBody_txtFromDate" class="form-control " data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Select To Date
                                <br />
                                दिनांक तक का चयन करें<span style="color: red">*</span></span>
                            <input name="ctl00$ContentBody$txtTodate" type="date" id="ctl00_ContentBody_txtTodate" class="form-control " data-provide="datepicker" data-date-end-date="0d" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                        </div>
                    </div>
                
                </div>
                <hr />
                        <div class="col-md-12 justify-content-center">
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-outline-info btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                <a id="clearfirst" href="VehicleDeallocationReport.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                            </div>
                        </div>
            </fieldset>
            <fieldset id="FS_Details" style="display: none">
                <legend>Vehicle Deallocation Details /  वाहन आवंटनरद्द विवरण</legend>
                <div class="col-md-12">
                    <div class="row justify-content-end" id="grdFormate" style="display: none;">
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
                </div>
               
                   <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <div>
                                    <table class="table table-bordered" id="tblVehicle" style="border-collapse: collapse; text-align: center;">
                                        <tbody class="text-center">
                                            <tr>
                                                <th scope="col">Sr.No.<br />
                                                    सरल क्र. </th>
                                                <th scope="col">Office Name
                                                    <br />
                                                    कार्यालय का नाम</th>
                                                <th scope="col">Employee Name With Code
                                                    <br />
                                                    आई डी सहित कर्मचारी का नाम</th>
                                                <th scope="col">Designation
                                                    <br />
                                                    </th>
                                                <th scope="col">Order Number
                                                    <br />
                                                    </th>
                                                <th scope="col">Order Date
                                                    <br />
                                                </th>
                                                <th scope="col">Order Document
                                                    <br />
                                                </th>
                                            </tr>
                                            <tr>
                                                <td><span>1</span>
                                                </td>
                                                <td>Bhopal
                                                </td>
                                                <td>E0561-Raj
                                                </td>
                                                <td>Joint Director
                                                </td>
                                                <td>121 </td>
                                                <td> 12/04/24</td>
                                                <td><a class="Alert-View"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
                                                
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/HRMS_Document%20(1).pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }

        function exportFile() {
            var fileUrl = '../Document/HRMS_Document%20(1).pdf';
            var a = document.createElement('a');
            a.href = fileUrl;
            a.download = 'HRMS_Document.pdf';  // Replace with the desired file name
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
        }
    </script>
</asp:Content>

