<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmpTourGenerateOrder.aspx.cs" Inherits="mis_HRMS_EmpTourRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        #EmployeeDetails1 {
            display: none;
        }


        #showsavebtn {
            display: none;
        }

        #btnApproveBEO {
            display: none;
        }

        #note {
            color: red;
        }

        #GenerateorderDetails {
            display: none;
        }

        #EmployeeDetails2 {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="content-wrapper">
        <!-- Main content -->
        <div class="container-fluid">
            <div class="row page-titles mb-4">
                <div class="col-md-5 align-self-center">
                    <h4 class="text-themecolor ">Tour Generate</h4>
                </div>
                <div class="col-md-7 align-self-center text-end">
                    <div class="d-flex justify-content-end align-items-center">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                            <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                            <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Tour" title="click to go on">Tour</a></li>
                            <li class="breadcrumb-item active">Tour Generate</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div class="card mt-3 shadow">
                <div class="card-header card-border-info">
                </div>
                <div class="card-body">
                    <nav class="navbar navbar-expand-lg topbar ">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#"></a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                                    <li>

                                        <a class="nav-link  text-white " href="EmpTourGenerateOrder.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="EmpTourGenerateOrder.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>यात्रा जनरेट करें</b></a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <br />
                    <fieldset id="show">
                        <legend>Tour Generate Details</legend>
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
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.           
                                                    <br />
                                                    सरल क्र.  </th>
                                                <th>Action           
                                                    <br />
                                                    कार्रवाई </th>
                                                <th>Employee Code/Name<br />
                                                    कर्मचारी कोड या नाम</th>
                                                <th>Tour Type        
                                                    <br />
                                                    यात्रा का प्रकार</th>
                                                <th>Tour Starts Date 
                                                    <br />
                                                    यात्रा प्रारंभ होने की तिथि     </th>
                                                <th>Tour End Date    
                                                    <br />
                                                    यात्रा समाप्ति तिथि     </th>
                                                <th>Tour Starts From 
                                                    <br />
                                                    यात्रा प्रारंभ होती है    </th>
                                                <th>Tour Ends At     
                                                    <br />
                                                    यात्रा समाप्त होती है  </th>
                                                <th>Total Days       
                                                    <br />
                                                    कुल दिन </th>
                                                <th>Tour Purpose<br />
                                                    भ्रमण का उद्देश्य  </th>
                                                <th>Tour Status      
                                                    <br />
                                                    यात्रा की स्थिति </th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <td>543545 Mr. Ashok Kumar Mishra</td>
                                            <td>Official</td>
                                            <td>10/10/2023</td>
                                            <td>12/10/2023</td>
                                            <td>Bhopal</td>
                                            <td>Indore</td>
                                            <td>3</td>
                                            <td>Office Work</td>
                                            <td>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>
                                                <input id="checkbox2" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <td>543563 Mr. Sanjay Sharma</td>
                                            <td>Official</td>
                                            <td>12/10/2023</td>
                                            <td>15/10/2023</td>
                                            <td>Indore</td>
                                            <td>Gwalior</td>
                                            <td>4</td>
                                            <td>Office Work</td>
                                            <td>Pending</td>
                                        </tr>
                                    </table>
                                </div>
                            </div> 
                        </div><br />
                            <div class="col-md-12">
                                <div>
                                    <p id="note"><b class="font-bold">Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                                </div>
                                <br />
                            </div>
                        <div id="btnApproveBEO" class="row justify-content-center">
                            <div class="col-md-12 text-center">
                                <button onclientclick="return false;" type="button" onclick=" HideShowForm()" class="Alert-ApproveT btn btn-success  btn-rounded">Approve</button>
                                <button type="button" class="btn btn-danger  btn-rounded" data-toggle="modal" data-target="#myModal">Reject</button>
                            </div>
                        </div>
                        <br />
                        <%--<div id="GenerateorderDetails" class="row justify-content-center">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Order No.<span style="color: red">*</span></label>
                                            <input name="ename" disabled placeholder="58965" type="text" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Order Date<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Document</label>
                                            <input name="ename" type="file" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 mt-4">
                                        <div class="form-group">
                                            <button type="button" onclick="HideShowFormtable() " class="Alert-Save btn btn-success btn-rounded w-100 btn-block">Generate</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </fieldset>
                    <%--<div id="EmployeeDetails2">
                        <fieldset>
                            <legend>Employee Detail</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>Employee ID/Name</th>
                                                <th>Order No.</th>
                                                <th>Order Date</th>
                                                <th>Tour Generate Letter</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>543545 Mr. Ashok Kumar Mishra</td>
                                                <td>58965</td>
                                                <td>04/10/2023</td>
                                                <td>
                                                    <button onclick="openPDF()" type="button" class=" btn "><i class="fa fa-download dnldIcon"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>543563 Mr. Sanjay Sharma</td>
                                                <td>58965</td>
                                                <td>04/10/2023</td>
                                                <td>
                                                    <button onclick="openPDF()" type="button" class=" btn "><i class="fa fa-download dnldIcon"></i></button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>--%>
                </div>
                <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li><strong>Action</strong>
                                    <ul>
                                        <li>To approve the application, after clicking on the checkbox, Approve and Request Button wil be shown</li>
                                    </ul>
                                </li>
                                <li><strong>Approve</strong>
                                    <ul>
                                        <li>User Can Click Approve Button.</li>
                                        <li>On Approve button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                        <li>If click on Yes – Data will be forwarded  and remove form this grid, and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                        <li>After Approve the data will be hide from the grid</li>
                                    </ul>
                                </li>
                                <li><strong>Reject</strong>
                                    <ul>
                                        <li>User Can Click Reject  Button.</li>
                                        <li>On Reject button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to Reject this Order?").</li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" " Tour Reject Successfully!")</li>
                                        <li>User Can Click Reject  Button A modal will be  open For Add Remark of Reject Tour, Remark will be save in database Table.</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>

                                <%--   <li><strong>Generate</strong>
                                    <ul>
                                        <li>User Can Click Generate Button Employee Detail Will be Show in Table and</li>
                                        <li>Employee Tour Latter Will be Generate</li>
                                    </ul>
                                </li>
                                <li><strong>Tour Generate Letter</strong>
                                    <ul>
                                        <li>User should be able to click on Document Icon.</li>
                                        <li>After clicking on the Document Icon a <strong>Tour Letter</strong> will open in another tab.</li>
                                    </ul>
                                </li>--%>
                            </ul>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>


    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Add Remark For Reject Tour </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="form-group">
                        <label>Remark<span style="color: red">*</span></label>
                        <textarea class="form-control" rows="3" style="resize: vertical" placeholder="Enter Remark For Reject Tour"></textarea>
                    </div>
                </div>
                <!-- Modal Footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success Alert-RejectT" data-dismiss="modal" id="saveButton">Save</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>






</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        // Attach a click event listener to the Save button
        document.getElementById('saveButton').addEventListener('click', function () {
            // Perform save logic here

            // Close the modal
            $('#myModal').modal('hide');
        });
    </script>
    <script>
        function showhidesavebtn() {
            var checkbox1 = document.getElementById("checkbox1");
            var checkbox2 = document.getElementById("checkbox2");
            var DIV = document.getElementById("GenerateorderDetails");

            var btnApproveBEO = document.getElementById("btnApproveBEO");
            if (checkbox1.checked || checkbox2.checked) {
                btnApproveBEO.style.display = "block"


            }
            else if (checkbox2.checked === false && checkbox1.checked === false) {
                btnApproveBEO.style.display = "none"

                GenerateorderDetails.style.display = "none"
            }
            else {
                btnApproveBEO.style.display = "block"
            }
        }
    </script>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/HRMS_Document%20(1).pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    <script>
        function HideShow() {

            var x = document.getElementById("EmployeeDetails1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-ApproveT').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approve this Tour?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Tour Approveed Successfully!',
                                timer: 2000
                            }
                            )
                        }
                    })
                });

                $('.Alert-RejectT').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Reject this Tour?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Tour Rejected Successfully!',
                                timer: 2000
                            }
                            )
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <script>
        function HideShowForm() {

            var x = document.getElementById("GenerateorderDetails");
            var y = document.getElementById("EmployeeDetails2");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }

        }
    </script>
    <script>
        function HideShowFormtable() {


            var y = document.getElementById("EmployeeDetails2");
            if (y.style.display === "none") {
                y.style.display = "block";
            } else {
                y.style.display = "block";
            }

        }
    </script>
</asp:Content>

