<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VendorInvoiceVerification.aspx.cs" Inherits="mis_Construction_VendorInvoiceVerification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .has-search .form-control {
            padding-left: 2.375rem;
        }

        .has-search .form-control-feedback {
            position: absolute;
            z-index: 2;
            display: block;
            width: 2.375rem;
            height: 2.375rem;
            line-height: 2.375rem;
            text-align: center;
            pointer-events: none;
            color: #aaa;
        }
        /* Styling for the modal */
        .modal-content {
            padding: 20px;
        }

        .invoice-table {
            width: 100%;
            border-collapse: collapse;
            margin: 15px 0;
            font-size: 14px;
        }

            .invoice-table th, .invoice-table td {
                border: 1px solid #ddd;
                padding: 10px;
                text-align: left;
            }

            .invoice-table th {
                background-color: #f2f2f2;
            }

        .invoice-header {
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .modal-footer {
            display: flex;
            justify-content: space-between;
        }

        .btn-print {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
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
                        <li class="breadcrumb-item"><span>Vendor Invoice Verification</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            विक्रेता चालान सत्यापन विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                इस पृष्ठ के माध्यम से विक्रेता चालान को जनरेट किया जाता है।
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend>Vendor Invoice Verification / विक्रेता चालान सत्यापन</legend>

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Project Number
                                <span style="color: red">*</span>
                            </label>
                            <select class="form-control select2" onchange="functionShow()">
                                <option value="">--Select--</option>
                                <option value="1">PR1001</option>
                                <option value="2">PR1002</option>
                                <option value="3">PR1003</option>
                                <option value="4">PR1004</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="col-md-4" id="Project" style="display:none">
                        <div class="form-group">
                            <label>
                                Project Work Order No.<%--<br />
                                प्रोजेक्ट आदेश नंबर--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="PR1001" readonly class="form-control" placeholder="Enter Project Order No." />
                        </div>
                    </div>


                                        <div class="col-md-4 " id="Project1" style="display:none">
                        <div class="form-group">
                            <label>
                                Vendor Name <%--<br />
                                आरएफपी नंबर--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="R.K Construction" readonly class="form-control" placeholder="Enter RFP No." />
                        </div>
                    </div>
                                    <div class="col-md-4 " id="Project2" style="display:none">
                        <div class="form-group">
                            <label>
                                GSTN No. <%--<br />
                                आरएफपी नंबर--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="23AAAA0000AZ5" readonly class="form-control" placeholder="Enter RFP No." />
                        </div>
                    </div>

                                           <div class="col-md-4 " id="Project3" style="display:none">
                        <div class="form-group" >
                            <label>
                                Tender No. <%--<br />
                                आरएफपी नंबर--%><span style="color: red">*</span>
                            </label>
                            <input type="text" value="55558924" readonly class="form-control" placeholder="Enter RFP No." />
                        </div>
                   
                        </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Millstone<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2" id="ddldis" onchange="functionShow1()">
                                <option value="">--Select--</option>
                                <option value="1">M1</option>
                                <option value="2">M2</option>
                                <option value="3">M3</option>
                                <option value="3">M4</option>
                                <option value="3">M5</option>
                            </select>
                        </div>
                    </div>

                     <div class="col-md-4" id="WorkCom"  style="display:none"   >
                        <div class="form-group">
                            <label>
                                Work Completion Date
         <br />
                            </label>

                            <input type="date" class="form-control" value="2024-05-09" />


                        </div>
                    </div>
                    <div class="col-md-4" id="workComple"  style="display:none" >
                        <div class="form-group">
                            <label>
                                Work Completion %
                            </label>
                            <input type="text" readonly class="form-control" value="50%" id="B3" />
                        </div>
                    </div>
                  

                    <div class="col-md-4" id="completionPracent"  style="display:none" >
                        <div class="form-group">
                            <label>Completion %</label>
                            <input type="text" class="form-control" readonly value="35%" placeholder="Enter Completion %" />
                        </div>
                    </div>
                    
                </div>


                <hr style="margin-top: -25px;" />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button id="viewMoreBtn" class="btn btn-outline-success btn-border w-lg" type="button" onclick="btnsearch()">Search</button>
                            <a href="#" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
            <div id="searchdetails" style="display: none">
                <fieldset id="gridid">

                    <legend>Details / विवरण </legend>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.<%--/<br />
                                                सरल क्र.--%></th>
                                            <th>Project Number<%--/<br />परियोजना का नंबर--%></th>
                                            <th>Project Name<%--/<br />परियोजना का नाम--%></th>
                                            <th>Project Start Date<%--<br />परियोजना प्रारंभ दिनांक--%></th>
                                            <th>Project End Date<%--<br />परियोजना समाप्ति दिनांक--%></th>
                                            <th>Millstone Typy<%--<br />
                                                Millstone प्रकार--%></th>
                                            <th>Millstone Verification Description<%--/<br />
                                                Millstone सत्यापन विवरण--%></th>
                                            <th>Quality Testing Status<%--/<br />
                                                गुणवत्ता परीक्षण स्थिति--%></th>
                                            <th>Field Verification Status<%--/<br />
                                                क्षेत्र सत्यापन स्थिति--%></th>
                                            <th>Work Completion Status<%--/<br />
                                                कार्य समाप्ति स्थिति--%></th>
                                            <th>Process Invoice Generate<%--/<br />
                                                प्रक्रिया चालान उत्पन्न करें--%></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>PR1001</td>
                                            <td>School Building</td>
                                            <td>01/01/2020</td>
                                            <td>01/01/2024</td>
                                            <td>M1</td>
                                            <td>Site Visit</td>
                                            <td>Done</td>
                                            <td>Yes</td>
                                            <td>Yes</td>
                                            <td>
                                                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#invoiceModal">
                                                    Generate
                                                </button>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <!-- Modal for Invoice -->
                <div class="modal fade" id="invoiceModal" tabindex="-1" aria-labelledby="invoiceModalLabel" aria-hidden="true">
                    <div class="modal-dialog  modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">

                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="text-center">
                                    <h3 class=" text-capitalize">Invoice Details</h3>
                                </div>
                                <!-- Invoice content goes here -->

                                <p><strong>Millstone Type:</strong> <span id="invoiceMillstoneType">M1</span></p>
                                <p><strong>Description:</strong> <span id="invoiceDescription">Site Visit</span></p>
                                <p><strong>Quality Testing Status:</strong> <span id="invoiceQualityTestingStatus">Done</span></p>
                                <p><strong>Field Verification Status:</strong> <span id="invoiceFieldVerificationStatus">Yes</span></p>
                                <p><strong>Work Completion Status:</strong> <span id="invoiceWorkCompletionStatus">Yes</span></p>

                                <!-- Optional: Table for detailed data -->
                                <table class="table table-bordered invoice-table text-center">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>Millstone Type</th>
                                            <th>Description</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>M1</td>
                                            <td>Site Visit</td>
                                            <td>Done</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer ">

                                <button type="button" class="btn btn-primary" onclick="printInvoice()">Print</button>
                            </div>
                        </div>
                    </div>
                </div>




            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function btnsearch(event) {
            var x = document.getElementById("searchdetails");
            var y = document.getElementById("btncontainer");
            x.style.display = "block";
            y.style.display = "block";
        }
    </script>
    <script>

        function functionShow() {
         
            var Project = document.getElementById("Project");
            Project.style.display = "block";

            var Project1 = document.getElementById("Project1");
            Project1.style.display = "block";

            var Project2 = document.getElementById("Project2");
            Project2.style.display = "block";

            var Project3 = document.getElementById("Project3");
            Project3.style.display = "block";
        }

        function functionShow1() {

            var Project = document.getElementById("WorkCom");
            Project.style.display = "block";

            var Project1 = document.getElementById("workComple");
            Project1.style.display = "block";

            var Project2 = document.getElementById("completionPracent");
            Project2.style.display = "block";

            
        }









        function printInvoice() {
            // Extract modal content to print
            var content = document.querySelector('.modal-body').innerHTML;

            // Open a new window to display the content
            var printWindow = window.open('', '', 'height=600,width=800');

            // Add the necessary styles for printing
            printWindow.document.write('<html><head><title>Invoice Report</title>');
            printWindow.document.write('<style>body { font-family: Arial, sans-serif; font-size: 14px; margin: 0; padding: 20px; }');
            printWindow.document.write('.invoice-table { width: 100%; border-collapse: collapse; margin: 15px 0; }');
            printWindow.document.write('.invoice-table th, .invoice-table td { border: 1px solid #ddd; padding: 10px; text-align: left; }');
            printWindow.document.write('@media print { .modal-footer { display: none; } }</style></head><body>');

            // Write the modal content to the print window
            printWindow.document.write(content);
            printWindow.document.write('</body></html>');

            printWindow.document.close(); // Close the document to finish rendering

            // Ensure the print dialog appears
            printWindow.onload = function () {
                printWindow.print(); // Trigger the print dialog
                printWindow.close(); // Close the window after printing
            };
        }
    </script>
    

</asp:Content>



