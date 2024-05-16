<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="UpmappedChangeRequest.aspx.cs" Inherits="mis_Scheme_RegisterRequestTC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #ProposalDetails {
            display: none;
        }


        #showsavebtn {
            display: none;
        }

        #btnApproveDEO {
            display: none;
        }

        #note {
            color: red;
        }

        /* Close button style */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Add Application to Proposal</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active">Proposal Application Details</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Application to Proposal</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Acedemic Year<span style="color: red">*</span></label>
                            <input type="date" name="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Samagra ID<span style="color: red">*</span></label>
                            <input type="text" name="text" value="" class="form-control" />
                        </div>
                    </div>
                </div>

            </fieldset>

            <div class="col-lg-12">

                <div class="row justify-content-center">
                    <div class="col-lg-3 text-center">
                        <img src="../../img/captcha.png" width="150" />
                    </div>
                    <div class="col-lg-12"></div>
                    <div class="col-lg-4 text-center">
                        <label class="font-bold">Please enter the code shown above</label>
                    </div>
                    <div class="col-lg-12"></div>

                    <div class="col-lg-1 ">
                        <div class="form-group">
                            <input type="text" class="form-control text-center" />
                        </div>
                    </div>

                </div>
            </div>

            <fieldset>
                <legend>Student Details</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Name<span style="color: red">*</span></label>
                            <input type="text" name="text" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Father Name<span style="color: red">*</span></label>
                            <input type="text" name="text" value="" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Date Of Birth<span style="color: red">*</span></label>
                            <input type="date" name="date" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Dise Code<span style="color: red">*</span></label>
                            <input type="text" name="text" value="" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>School Name<span style="color: red">*</span></label>
                            <input type="text" name="text" value="" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Class<span style="color: red">*</span></label>
                            <input type="text" name="text" value="" class="form-control" />
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Scholership Details</legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Year</th>
                                    <th>Scholarships</th>
                                    <th>Sponsaring Department</th>
                                    <th>Amount</th>
                                    <th>Sanction Date</th>
                                    <th>Bank Account</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>2023-2024</td>
                                    <td>3.1.1 राज्यशासन अनु जनजाति छात्रवृत्ति(6-8)</td>
                                    <td>Trabal Walfare Department</td>
                                    <td>G1_Amt</td>
                                    <td>05/03/2024</td>
                                    <td>---</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Cycle Awarded in 9Th Class</legend>
                <div class="row red">
                    No record as per the desired criteria are available in the database OR The desired information is not available/entered by user.
                </div>
            </fieldset>
            <fieldset>
                <legend>Cycle Awarded in 6Th Class</legend>
                <div class="row red">
                    No record as per the desired criteria are available in the database OR The desired information is not available/entered by user.
                </div>
            </fieldset>
            <div class="col-lg-12">

                <div class="row justify-content-center">
                    <div class="col-lg-3 text-center">
                        <img src="../../img/captcha.png" width="150" />
                    </div>
                    <div class="col-lg-12"></div>
                    <div class="col-lg-4 text-center">
                        <label class="font-bold">Please enter the code shown above</label>
                    </div>
                    <div class="col-lg-12"></div>

                    <div class="col-lg-1 ">
                        <div class="form-group">
                            <input type="text" class="form-control text-center" />
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-lg-12">
                <div class="col-md-3">
                    <input id="btnPropSend" type="button" name="name" value="Register Request for Unmap and TC Request" class="btn btn-primary" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        $(document).ready(function () {
            $('#btnPropSend').click(function () {

                Swal.fire({
                    title: 'Register request for UnMap and request for TC Confirmation Message?',
                    text: "Are you sure, want to Register request for UnMap and request for TC? Press yes to Register Request",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085D6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, I want Register'
                    // animation: false,
                    // customClass: {
                    //     popup: 'animated tada'
                    // }
                }).then((result) => {
                    if (result.value) {
                        Swal.fire({
                            type: 'success',
                            title: 'Success!',
                            text: 'Register Request for UnMap and request for TC Successfully!',
                            timer: 2000
                        });
                        // window.location.reload();
                    }
                });

            });
        });

    </script>
</asp:Content>

