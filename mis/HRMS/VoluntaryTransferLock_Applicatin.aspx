<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VoluntaryTransferLock_Applicatin.aspx.cs" Inherits="mis_HRMS_VoluntaryTransferLock_Applicatin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
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
                            <a href="#VoluntaryTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Voluntary Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item">Voluntary Transfer Lock Application</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%--<div class="col-md-4 align-self-center" style="position: relative; bottom: 35px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -2rem;">
            <img src="../../img/OTTMS.png" style="height: 88px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>--%>
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
                    <h4 class="card-title">Voluntary Transfer Lock Application /
                स्वैच्छिक स्थानांतरण लॉक आवेदन</h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Voluntary Transfer Lock Application / स्वैच्छिक स्थानांतरण लॉक आवेदन
                </legend>
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
                        <div class="">
                            <table class="table text-center table-responsive table-bordered">
                                <tr class="card-header">
                                    <th>Sr.No
                                        <br />
                                        सरल क्र.</th>
                                    <th>Application No.
                                        <br />
                                        आवेदन नंबार</th>
                                    <th>Employee Name
                                        <br />
                                        कर्मचारी का नाम</th>
                                    <th>Unique Id 
                                        <br />
                                        यूनिक आईडी</th>
                                    <th>Upload Application 
                                        <br />
                                        आवेदन अपलोड करें</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>12546</td>
                                    <td>Arjun Talwar</td>
                                    <td>BT9430</td>
                                    <td style="width: 22%;">
                                        <input type="file" class="form-control" />
                                        <span style="color: red; margin-right: 148px;">केवल पीडीएफ फॉर्मेट / (500 केबी)</span></td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p class="font-16" style="color: red">नोट:- स्वतः हस्ताक्षर किये हुए आवेदन को अपलोड कर आवेदन को लॉक करें ।</p>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">

                        <input type="button" class="Alert-Save btn w-lg btn-outline-success btn-border" value="स्वैच्छिक स्थानांतरण लॉक करे" />
                        <a href="VoluntaryTransferLock_Applicatin.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
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
                                text: 'Application Lock Successfully!',
                                timer: 2000
                            }).then(() => {
                                // Hide or show table1 based on its current display state
                                var x = document.getElementById("table1");
                                x.style.display = x.style.display === "block" ? "none" : "block";
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
</asp:Content>

