<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PromotionCancel.aspx.cs" Inherits="mis_Transaction_PromotionCancelCopy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        /*   #showdetails {
            display: none;
        }*/

        #note {
            color: red;
        }

        <style >
        #ShowOrders {
            display: none;
        }

        th, td {
            padding: 15px;
        }

        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 105%;
            }

            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Promotion Cancel Orders</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Promotion" title="click to go on">Promotion</a></li>
                        <li class="breadcrumb-item active">Promotion Cancel Orders</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>All Employee Promotion History (Cancel Promotions Orders After Final Confirmation)</legend>
                    <div class="row">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Choose an option<span style="color: red">*</span></label>
                                <select id="dropdown" onchange="showTextBox()" class="form-control" required="required">
                                    <option value="">--Select--</option>
                                    <option value="Order No">Order No.</option>
                                    <option value="Employee ID">Employee-ID</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="orderNoInput" style="display: none;">
                            <div class="form-group">
                                <label>Order No.<span style="color: red">*</span></label>
                                <input type="text" id="txtorderNoInput" class="form-control" placeholder="Enter Order No." >
                            </div>
                        </div>
                        <div class="col-md-3" id="employeeIDInput" style="display: none;">
                            <div class="form-group">
                                <label>Employee-ID<span style="color: red">*</span> </label>
                                <input type="text" id="txtemployeeIDInput" class="form-control" placeholder="Enter Employee-ID" >
                            </div>
                        </div>

                        <div class="col-md-3 mt-4">
                            <div class="form-group ">
                                <asp:Button type="submit" class=" btn btn-success btn-rounded" runat="server" Text="Search" OnClick="Unnamed_Click" />
                                <a href="PromotionCancel.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>

                        </div>

                    </div>

                </fieldset>
                <div id="showdetails">
                    <fieldset id="show" visible="false" runat="server">
                        <legend>Details</legend>
                        <div class="row justify-content-end">

                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Action</th>
                                            <th>Office Name</th>
                                            <th>Employee Name</th>
                                            <th>Order No.</th>
                                            <th>Order Date</th>
                                            <th>Relieving Date</th>
                                            <th>Existing Level</th>
                                            <th>Existing Basic Salary</th>
                                            <th>New Level</th>
                                            <th>New Basic Salary</th>
                                            <th>Effective Date</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td scope="col">
                                                <input type="checkbox" /></td>
                                            <td>Head Office</td>
                                            <td>Ashok Kumar</td>
                                            <td>58965</td>
                                            <td>18/07/2023</td>
                                            <td>20/07/2023</td>
                                            <td>Level-7</td>
                                            <td>58200.00</td>
                                            <td>Level-9</td>
                                            <td>59900.00</td>
                                            <td>01/07/2023</td>
                                          
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td scope="col">
                                                <input type="checkbox" /></td>
                                            <td>Bhopal</td>
                                            <td>Shiv Saharan</td>
                                            <td>58965</td>
                                            <td>01/07/2023</td>
                                            <td>O5/07/2023</td>
                                            <td>Level-9</td>
                                            <td>58200.00</td>
                                            <td>Level-9</td>
                                            <td>59900.00</td>
                                            <td>05/06/2023</td>

                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <p id="note"><b>Cancel The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन को निरस्त करें |</b></p>
                                </div>
                            </div>
                            <div class="col-md-4 mt-2 text-center">
                                <div class="form-group">
                                    <button type="button" class="btn btn-danger " data-toggle="modal" data-target="#myModal">Cancel Order</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">

                                    <li><strong>Division Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>District Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Designation Type</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Designation Type </strong>from the dropdown and the data will be populated from the <strong>Designation Type Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Designation Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Designation Name </strong>from the dropdown and the data will be populated from the <strong>Designation Name Master</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Employee Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Employee Name </strong>from the dropdown and the data will be populated from the <strong>Employee Master</strong>.</li>
                                        </ul>
                                    </li>

                                    <li><strong>Search </strong>
                                        <ul>
                                            <li>User should be able to click on Search button.</li>
                                            <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                        </ul>

                                    </li>
                                    <li><strong>Clear</strong>
                                        <ul>
                                            <li>User should be able to click on Clear button.</li>
                                            <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Excel</strong>
                                        <ul>
                                            <li>Excel button should be visible and user should be able to click.</li>
                                            <li>After clicking on Excel button grid view data export in Excel.</li>
                                        </ul>
                                    </li>
                                    <li><strong>PDF</strong>
                                        <ul>
                                            <li>PDF button should be visible and user should be able to click.</li>
                                            <li>After clicking on PDF button grid view data export in PDF.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Searchbox</strong>
                                        <ul>
                                            <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
                                        </ul>
                                    </li>
                                    <li><strong>Cancel Promotion</strong>
                                        <ul>
                                            <li>Upon clicking the <strong>checkbox </strong>, the user can able to Cancel Promotion.</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>
                </div>

            </div>
        </div>
    </div>
    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Add Remark For Cancel Order </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="form-group">
                        <label>Remark<span style="color: red">*</span></label>
                        <textarea class="form-control" rows="3" style="resize: vertical" placeholder="Enter Remark For Cancel Order"></textarea>
                    </div>
                </div>
                <!-- Modal Footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-success Alert-RejectT" data-dismiss="modal" id="saveButton">Cancel Order</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function showTextBox() {
            var selectBox = document.getElementById("dropdown");
            var selectedValue = selectBox.options[selectBox.selectedIndex].value;

            if (selectedValue === "Order No") {
                document.getElementById("orderNoInput").style.display = "block";
                document.getElementById("txtorderNoInput").required = true; 
                document.getElementById("employeeIDInput").style.display = "none";
                document.getElementById("txtemployeeIDInput").required = false;
            } else if (selectedValue === "Employee ID") {
                document.getElementById("employeeIDInput").style.display = "block";
                document.getElementById("txtorderNoInput").required = false;
                document.getElementById("orderNoInput").style.display = "none";
                document.getElementById("txtemployeeIDInput").required = true;
            }
        }
    </script>
    <script>
        function HideShow() {

            var x = document.getElementById("ShowOrders");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <script>
        // Attach a click event listener to the Save button
        document.getElementById('saveButton').addEventListener('click', function () {
            // Perform save logic here

            // Close the modal
            $('#myModal').modal('hide');
        });
    </script>

    <%--<script>
     function Hideshow() {

         var x = document.getElementById("showdetails");
         if (x.style.display === "none") {
             x.style.display = "block";
         } else {
             x.style.display = "block";
         }
     }
 </script>--%>

    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Success').click(function () {
                    Swal.fire({
                        type: 'success',
                        title: 'Good job!',
                        text: 'Something went wrong!',
                        timer: 2000
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    })
                });
                $('.Alert-Cancel').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Cancel this Promotion?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Promotion Canceled Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }
                    })
                });

                $('.Alert-RejectT').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Cancel this Order?",
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
                                text: 'Order Canceled Successfully!',
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
</asp:Content>

