<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GeneratePaymentSanctionBill.aspx.cs" Inherits="mis_Scheme_GeneratePaymentSanctionBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #ProposalDetails {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">View Generate Payment Sanction Bill</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active">View Generate Payment Sanction Bill</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <fieldset>
                <legend>List of Locked Proposal</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>From Date<span style="color: red">*</span></label>
                            <input type="date" name="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>To Date<span style="color: red">*</span></label>
                            <input type="date" name="date" value="" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>School Type<span style="color: red">*</span></label>
                            <select id="ddlApplicant" class="form-control select2" onchange="ShowComment()">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Govt.</option>
                                <option value="2">State Govt.</option>
                                <option value="3">Private</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>School<span style="color: red">*</span></label>
                            <select id="ddlSchool" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Sushila Devi Hr. Sec. School</option>
                                <option value="2">Acc Higehr Sec. School</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="button" name="button" value="Show Proposals" class="btn btn-primary" onclick="HideShow()" />
                            <a href="GeneratePaymentSanctionBill.aspx" class=" btn btn-danger">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="ProposalDetails">
                <legend>Scholership Proposal for Lock and Sanction List</legend>
                <table class="table">
                    <tr>
                        <th>Sr.No.</th>
                        <th>School Name</th>
                        <th>School Type</th>
                        <th>Sanction Date</th>
                        <th>Total Students</th>
                        <th>Total Amount</th>
                        <th>View</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Sushila devi Hr. Sec. School</td>
                        <td>State Government</td>
                        <td>05/03/2024</td>
                        <td>5</td>
                        <td>1500</td>
                        <td style="width: 200px;">
                            <i class="fa fa-eye fa-cog" onclick="ShowSanctionPopup()"></i>
                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Sushila devi Hr. Sec. School</td>
                        <td>State Government</td>
                        <td>05/03/2024</td>
                        <td>5</td>
                        <td>1500</td>
                        <td style="width: 200px;">
                            <i class="fa fa-red fa-eye fa-cog" onclick="ShowSanctionPopup()"></i>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </div>
    <div class="modal" tabindex="-1" role="dialog" id="SchemeListModal">
        <div class="modal-dialog" role="document" style="max-width: 1000px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Schemes Details in Proposal</h5>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <table class="table table-responsive-lg table-bordered">
                                    <tr>
                                        <th>Proposal No</th>
                                        <th>School Type</th>
                                        <th>School</th>
                                    </tr>
                                    <tr>
                                        <td>1/351/7709</td>
                                        <td>State Government</td>
                                        <td>Sushila Devi Hr. Sec. School</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <fieldset style="width: 966px;">
                            <legend>Schemes Details</legend>
                            <table class="table">
                                <tr>
                                    <th>Sr.No.</th>
                                    <th>Scheme Code</th>
                                    <th>Scheme Name</th>
                                    <th>Total Student</th>
                                    <th>Scholarship Amount</th>
                                    <th>Print</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>1.2</td>
                                    <td>सुदामा श्री मैट्रिक योजना</td>
                                    <td>1</td>
                                    <td>300</td>
                                    <td style="width: 200px;">
                                        <i class="fa fa-print"></i>
                                    </td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>1.2</td>
                                    <td>राज्य शासन पिछड़ा वर्ग छात्रवृत्ति</td>
                                    <td>18</td>
                                    <td>6100</td>
                                    <td style="width: 200px;">
                                        <i class="fa fa-print"></i>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <%-- <button type="button" class="btn btn-success Alert-ApprovelT" onclientclick="return false;" onclick="()" data-bs-dismiss="modal">Forward To DEO</button>--%>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function HideShow() {

            var x = document.getElementById("ProposalDetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
        function ShowSanctionPopup() {
            $("#SchemeListModal").modal("show");
        }
    </script>
</asp:Content>

