<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MutualTransLockApplication.aspx.cs" Inherits="mis_HRMS_MutualTransLockApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

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
                            <a href="#EmployeeMutualTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Mutual Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item">Mutual Transfer Lock Application</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-1">
        <div class="col-md-4 ">

            <img src="../../img/OTTMS.png" style="height: 70px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
            <p></p>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Mutual Transfer Lock Application / पारस्परिक स्थानांतरण लॉक एप्लीकेशन
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Mutual Transfer Lock Application / पारस्परिक स्थानांतरण लॉक एप्लीकेशन</legend>
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
                <div id="table1">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <tbody>

                                <tr class="card-header">
                                    <th>Sr. No.
                                        <br />
                                        सरल क्र.</th>
                                    <th style="width: 50px">Date
                                        <br />
                                        दिनांक </th>
                                    <th>Unique 
                                    <br />
                                        युनिक आई.डी.</th>
                                    <th>Name And Designation 
                                    <br />
                                        नाम एवं पद</th>
                                    <th>Subject
                                        <br />
                                        विषय</th>
                                    <th>Working Institute And UDISE Code
                                        <br />
                                        कार्यरत संस्था एवं डाइस कोड</th>
                                    <th>Working District
                                        <br />
                                        कार्यरत जिला</th>
                                    <th>New Organization And UDICE Code
                                        <br />
                                        नवीन संस्था एवं डाइम कोड</th>
                                    <th>District Of New Posting 
                                    <br />
                                        नवीन पदस्थापना का जिला</th>
                                    <th>Lock Application
                                        <br />
                                        लॉक एप्लीकेशन</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td style="width: 50px">09/03/2024</td>
                                    <td>BT921</td>
                                    <td>Arjun Talwar / Teacher (UDT) </td>
                                    <td>Hindi</td>
                                    <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                    <td>Bhapal</td>
                                    <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                    <td>Rajgarh</td>
                                    <td style="width: 20%" rowspan="2">
                                        <input type="file" class="form-control" />
                                        <p style="color: red; font-size: 15px" class="text-start">केवल पीडीएफ फॉरमैट / साइज (500 KB) </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>09/03/2024</td>
                                    <td>BT899</td>
                                    <td>Aman Patidar / Teacher (UDT) </td>
                                    <td>Hindi</td>
                                    <td>(233201023)Zeewkht Aran Pretammik Shikshak</td>
                                    <td>Rajgarh</td>
                                    <td>(233201023)Girls Pachore(Class 1 to 12)</td>
                                    <td>Bhapal</td>

                                </tr>
                                <%-- <tr>
                            <td>1</td>
                            <td>1234567</td>
                            <td>Rounak Nath</td>
                            <td>AR4781</td>
                            <td style="width: 20%">
                            <input type="file" class="form-control" />
                               <p style="color:red; font-size:15px" class="text-start">केवल पीडीएफ फॉरमैट / साइज (500 KB) </p>
                            </td>
                        </tr>--%>
                            </tbody>
                        </table>
                    </div>

                    <p style="color: red" class="font-16 mt-2"><b>नोट :- पारस्परिक स्थानान्तरण आवेदन लॉक करने हेतु संबंधित दोनों कर्मचारी ड्राफ्ट आवेदन पर स्वतः हस्ताक्षर कर फाइल अपलोड करें ।</b></p>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button id="Button2" type="button" class="btn btn-success btn w-lg btn-border Alert-Save" onclick="myFunction()">Lock Application</button>

                            <a href="MutualTransLockApplication.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
                <b>
                    <p id="note" class="font-18"></p>
                </b>
            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };

            // Initialize SweetAlert
            SweetAlert.prototype.init = function () {
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Lock This Draft Application?",
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
                                text: 'Application Locked Successfully!',
                                timer: 2000
                            }).then(() => {
                                // Hide or show table1 based on its current display state
                                var x = document.getElementById("table1");
                                var y = document.getElementById("note");
                                x.style.display = "none";
                                y.innerHTML = "------------No Record Found------------";
                            });
                        }
                    });
                });
            };

            // Initialize SweetAlert
            $.SweetAlert = new SweetAlert;
            $.SweetAlert.Constructor = SweetAlert;
        }(window.jQuery),

            // Initialize SweetAlert
            function ($) {
                "use strict";
                $.SweetAlert.init();
            }(window.jQuery);
    </script>
    ript>


</asp:Content>

