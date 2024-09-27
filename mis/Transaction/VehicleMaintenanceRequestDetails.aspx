<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleMaintenanceRequestDetails.aspx.cs" Inherits="mis_Transaction_VehicleMaintenanceRequestDetails" %>

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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#TransportManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Transport Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle Maintenance Request Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row align-item-end">
        <div class="col-lg-12 text-end">
            <a href="VehicleMaintenanceRequest.aspx" class="btn btn-info" role="button">Back</a>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Vehicle Maintenance Request Report/ वाहन रखरखाव अनुरोध रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <fieldset>
                    <legend>Vehicle Maintenance Request Report/ वाहन रखरखाव अनुरोध रिपोर्ट</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <div>
                                    <table class="table table-bordered" id="tblVehicle" style="border-collapse: collapse; text-align: center;">
                                        <tbody class="text-center">
                                            <tr>
                                                <th scope="col">Sr.No.<br />
                                                    सरल क्र. </th>
                                                <th scope="col">Maintenance Type
                                                    <br />
                                                    रखरखाव प्रकार</th>
                                                <th scope="col">Vehicle Number
                                                    <br />
                                                    गाड़ी नंबर</th>
                                                <th scope="col">Allotment Date
                                                    <br />
                                                    आवंटन की तारीख
                                                </th>
                                                <th scope="col">Reason for Maintenance
                                                    <br />
                                                    रखरखाव का कारण
                                                </th>
                                                <th scope="col">Document View
                                                    <br />
                                                </th>
                                                <th scope="col">Status
                                                    <br />
                                                </th>
                                            </tr>
                                            <tr>
                                                <td><span>1</span>
                                                </td>
                                                <td>Tyre Tube
                                                </td>
                                                <td>MP04AP1123
                                                </td>
                                                <td>12/04/24
                                                </td>
                                                <td>Tyre Tube Replacement </td>
                                                <td><a class="Alert-View"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
                                                <td>Pending</td>
                                            </tr>
                                            <tr>
                                                <td><span>2</span>
                                                </td>
                                                <td>Servicing
                                                </td>
                                                <td>MP04CX2255
                                                </td>
                                                <td>10/03/24
                                                </td>
                                                <td>Head Block Work </td>
                                                <td><a class="Alert-View"><i class="fa fa-eye" onclick="openPDF()" aria-hidden="true"></i></a></td>
                                                <td>Approve</td>
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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
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

