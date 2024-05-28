<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PromotionHoldOrder.aspx.cs" Inherits="mis_Transaction_PromotionCancelOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showdetails {
            display: none;
        }

        #note {
            color: red;
        }

        th {
            white-space: nowrap;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Promotion Hold Orders<br />
                    प्रमोशन होल्ड ऑर्डर</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Promotion" title="click to go on">Promotion</a></li>
                        <li class="breadcrumb-item active">Promotion Hold Orders</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Hold Promotions Orders After Final Confirmation<br />
                        अंतिम पुष्टि के बाद पदोन्नति ऑर्डर होल्ड करें</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Choose an option<br />
                                    विकल्प चुनें<span style="color: red">*</span></label>
                                <%--<select class="form-control select2" runat="server" id="ddlEmp">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>--%>

                                <asp:DropDownList runat="server" ID="ddlEmp" AutoPostBack="true" class="form-control select2" OnSelectedIndexChanged="ddlEmp_SelectedIndexChanged">
                                    <asp:ListItem Text="--Select--" Value="0" />
                                    <asp:ListItem Text="Employee Unique Id" Value="1" />
                                    <asp:ListItem Text="Order No." Value="2" />
                                </asp:DropDownList>

                            </div>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="ddlEmp" ValidationGroup="a" ForeColor="Red" runat="server" />
                        </div>
                        <div class="col-md-3">
                            <div class="form-group" runat="server" visible="false" id="txtEmpID">
                                <label>
                                    Employee Unique Id<br />
                                    कर्मचारी यूनिक आईडी<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" />
                            </div>
                            <div class="form-group" runat="server" visible="false" id="txtOrderNo">
                                <label>
                                    Order No.:<br />
                                    आदेश संख्या:<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" />
                            </div>

                        </div>
                        <%-- <div class="col-md-3">
                            <div class="form-group" runat="server" visible="false" id="txtOrderNo">
                                <label>
                                    Order No.:<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" />
                            </div>
                        </div>--%>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group ">
                                <%-- <asp:Button Text="Search" OnClick="Unnamed_Click" runat="server" class=" btn btn-success btn-rounded" validationgroup="a"/>--%>
                                <button onclick="Hideshow()" type="button" class=" btn btn-success btn-rounded" validationgroup="a">Search</button>
                                <a href="PromotionHoldOrder.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>

                </fieldset>
                <div id="showdetails">
                    <fieldset>
                        <legend>Promotion Hold Detail</legend>
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
                        <div class="row justify-content-center">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.<br />
                                                    सरल क्र.</th>
                                                <th>Office Name<br />
                                                    कार्यालय का नाम</th>
                                                <th>Employee Name<br />
                                                    कर्मचारी का नाम</th>
                                                <th>Order No.<br />
                                                    आदेश संख्या।</th>
                                                <th>Order Date<br />
                                                    आर्डर की तारीख</th>
                                                <th>Existing Level<br />
                                                    मौजूदा स्तर</th>
                                                <th>Existing Basic Salary<br />
                                                    मौजूदा मूल वेतन</th>
                                                <th>New Level<br />
                                                    नया स्तर</th>
                                                <th>New Basic Salary<br />
                                                    नया मूल वेतन</th>
                                                <th>Effective Date<br />
                                                    प्रभावी तिथि</th>
                                                <th>Action<br />कार्यवाही</th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>

                                            <td>Head Office</td>
                                            <td>Ashok Kumar</td>
                                            <td>58965</td>
                                            <td>18/07/2023</td>
                                            <td>Level-7</td>
                                            <td>58200.00</td>
                                            <td>Level-9</td>
                                            <td>59900.00</td>
                                            <td>01/07/2023</td>
                                            <td scope="col">
                                                <input type="checkbox" /></td>
                                        </tr>
                                        <%--<tr>
                                            <td>2</td>
                                            <td scope="col">
                                                <input type="checkbox" /></td>
                                            <td>Bhopal</td>
                                            <td>Shiv Saharan</td>
                                            <td>58965</td>
                                            <td>01/07/2023</td>
                                            <td>Level-9</td>
                                            <td>58200.00</td>
                                            <td>Level-9</td>
                                            <td>59900.00</td>
                                            <td>05/06/2023</td>
                                        </tr>--%>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <p id="note"><b>Hold The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन को रोकें |</b></p>
                                </div>
                            </div>
                            <div class="col-md-4 mt-2 text-center">
                                <div class="form-group">
                                    <button type="button" class="btn btn-success " data-toggle="modal" data-target="#myModal">Hold Order</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Description / विवरण</legend>
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
                                    <li><strong>Hold Promotion</strong>
                                        <ul>
                                            <li>Upon clicking the <strong>checkbox </strong>, the user can able to Hold Promotion.</li>
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
                    <h4 class="modal-title">Add Remark For Holding Order </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="form-group">
                        <label>Remark<span style="color: red">*</span></label>
                        <textarea class="form-control" rows="3" style="resize: vertical" placeholder="Enter Remark For Holding Order"></textarea>
                    </div>
                </div>
                <!-- Modal Footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success Alert-RejectT" data-dismiss="modal" id="saveButton">Hold</button>
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
        function Hideshow() {

            var x = document.getElementById("showdetails");
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
                        text: "Do you want to Hold this Promotion?",
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
                        text: "Do you want to Hold this Order?",
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
                                text: 'Order Holded Successfully!',
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

