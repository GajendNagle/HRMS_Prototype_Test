<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_GenerateLeaveOrder.aspx.cs" Inherits="mis_Leave_Mgnt_Trn_GenerateLeaveOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #show {
            display: none;
        }
    </style>
    <script>
        function showhide() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Generate Leave Order</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=LeaveProcess" title="click to go on">Leave Process</a></li>
                    <li class="breadcrumb-item active">Generate Leave Order</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Generate Leave Order</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>From Date<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>To Date<span style="color: red">*</span></label>
                            <input type="date" class="form-control" placeholder="" />
                        </div>
                    </div>

                     <div class="col-md-3 mt-4">
                        <div class="form-group">
                                <button type="button" onclick="showhide()" class="btn btn-success btn-rounded">Search</button>
                             <a href="Trn_GenerateLeaveOrder.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="show">
                <legend>Details</legend>
                <%--  <div class="row justify-content-end">
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
                </div>--%>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>
                                        <input type="checkbox" /></th>
                                    <th>Sr.No.</th>
                                    <th>Employee Name</th>
                                    <th>Department </th>
                                    <th>From Date </th>
                                    <th>To Date </th>
                                    <th>Total Days </th>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" />

                                    </td>
                                    <td>1</td>
                                    <td>Mr. Ashok Kumar Mishra</td>
                                         <td>HR</td>
                                    <td>01-10-2023</td>
                                    <td>05-10-2023</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                    </td>
                                    <td>2</td>
                                    <td>Mr. Sanjay Sharma</td>
                                    <td>Finance</td>
                                    <td>10-10-2023</td>
                                    <td>11-10-2023</td>
                                    <td>2</td>
                                </tr>
                            </table>
                        </div>
                         
                    </div>
                      <div class="col-md-12"> 
                          <label style="color:red;">Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन को अनुमोदन करें|</label>
                      </div>
                </div>
                <div class="row justify-content-center">
                      <div class="col-md-3 ">
                        <div class="form-group">
                               <button type="button" class=" Alert-Approve btn btn-success  btn-rounded">Generate Leave Order</button>
                        </div>
                    </div>
                    </div>
            </fieldset>
            <!--Description-->
            <fieldset id="dcp" runat="server">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>From Date</strong>
                                <ul>
                                    <li>User will be able to Select <strong>From Date </strong>from Calendar .</li>
                                </ul>
                            </li>
                            <li><strong>To Date</strong>
                                <ul>
          <li>User will be able to Select <strong>To Date </strong>from Calendar .</li>
                                </ul>
                            </li>
                            <li><strong>Generate Leave Order (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Generate Leave Order button.</li>
                                    <li>Click on Generate Leave Order button form all mandatory filed should be validate in process.</li>
                                    <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                    <li>If click on Yes – record will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")..</li>
                                    <li>If click on NO the record will not be saved and will return to the same page.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
            <!-- End Description -->
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Approve').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate Leave Order?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Leave Order Generated Successfully!',
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




