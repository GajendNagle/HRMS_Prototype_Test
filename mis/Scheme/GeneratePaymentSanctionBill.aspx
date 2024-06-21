<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GeneratePaymentSanctionBill.aspx.cs" Inherits="mis_Scheme_GeneratePaymentSanctionBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #ProposalDetails {
            display: none;
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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">SSDDO Scholarship</li>
                        <li class="breadcrumb-item">View Generate Payment Sanction Bill</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">View Generate Payment Sanction Bill / जनरेट भुगतान स्वीकृति बिल देखें 
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>List of Locked Proposal / लॉक प्रस्ताव की सूची</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter From Date
                                <br />
                                दिनांक से दर्ज करें<span style="color: red">*</span></label>
                            <input type="date" name="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                To Date<br />
                                दिनाँक तक दर्ज करें<span style="color: red">*</span></label>
                            <input type="date" name="date" value="" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select School Type<br />
                                स्कूल प्रकार का चयन करें<span style="color: red">*</span></label>
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
                            <label>
                                Select School<br />
                                स्कूल का चयन करें<span style="color: red">*</span></label>
                            <select id="ddlSchool" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Sushila Devi Hr. Sec. School</option>
                                <option value="2">Acc Higehr Sec. School</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="button" name="button" value="Show Proposals" class="btn btn-success btn-border btn w-lg" onclick="HideShow()" />
                            <a href="GeneratePaymentSanctionBill.aspx" class=" btn btn-outline-danger btn w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="ProposalDetails">
                <legend>Scholership Proposal for Lock and Sanction List / लॉक और स्वीकृति सूची के लिए छात्रवृत्ति प्रस्ताव</legend>
                <table class="table table-responsive-lg text-center">
                    <tr>
                        <th>Sr.No.<br />
                            सरल क्र.</th>
                        <th>School Name<br />
                            स्कूल का नाम</th>
                        <th>School Type<br />
                            स्कूल का प्रकार</th>
                        <th>Sanction Date<br />
                            स्वीकृति दिनाँक</th>
                        <th>Total Students<br />
                            कुल छात्र</th>
                        <th>Total Amount<br />
                            कुल राशि</th>
                        <th>View<br />
                            देखना</th>
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
                    <h5 class="modal-title">Schemes Details in Proposal / प्रस्ताव में योजनाओं का विवरण</h5>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <table class="table table-responsive-lg table-bordered">
                                    <tr>
                                        <th>Proposal No<br />
                                            प्रस्ताव संख्या</th>
                                        <th>School Type<br />
                                            स्कूल का प्रकार</th>
                                        <th>School<br />
                                            स्कूल</th>
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
                            <legend>Schemes Details / योजनाओं का विवरण</legend>
                            <table class="table">
                                <tr>
                                    <th>Sr.No.<br />
                                        सरल क्र.</th>
                                    <th>Scheme Code<br />
                                        योजना कोड</th>
                                    <th>Scheme Name<br />
                                        योजना का नाम</th>
                                    <th>Total Student<br />
                                        कुल छात्र</th>
                                    <th>Scholarship Amount<br />
                                        छात्रवृत्ति राशि</th>
                                    <th>Print<br />
                                        प्रिंट</th>
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

