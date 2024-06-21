<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LockAndSanction.aspx.cs" Inherits="mis_Scheme_LockAndSanction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                        <li class="breadcrumb-item">Proposal Application Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">Proposal Application Details /
        प्रस्ताव आवेदन विवरण
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Application to Proposal / प्रस्ताव के लिए आवेदन</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select School Type<br />स्कूल प्रकार का चयन करें<span style="color: red">*</span></label>
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
                            <label>Select School<br />स्कूल का चयन करें<span style="color: red">*</span></label>
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
                            <a href="LockAndSanction.aspx" class="btn btn-outline-danger btn-border btn w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="EmployeeDetails">
                <legend>Scholership Proposal for Lock and Sanction / लॉक और स्वीकृति के लिए छात्रवृत्ति प्रस्ताव</legend>
                <table class="table table-responsive text-center">
                    <tr>
                        <th>Sr.No.<br />सरल क्र.</th>
                        <th>Proposal No<br />प्रस्ताव संख्या</th>
                        <th>Proposal Date<br />प्रस्ताव दिनांक</th>
                        <th>SSDM Remarks<br />एसएसडीएम टिप्पणियाँ</th>
                        <th>DISE Code<br />डाइस कोड</th>
                        <th>School Name<br />स्कूल का नाम</th>
                        <th>School Type<br />स्कूल का प्रकार</th>
                        <th>Total Students<br />कुल छात्र</th>
                        <th>Total Amount<br />कुल राशि</th>
                        <th>Approve & Lock<br />स्वीकृत करें और लॉक करें</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>1/351/7709</td>
                        <td>05/03/2024</td>
                        <td>lock</td>
                        <td>23340518857</td>
                        <td>Sushila devi Hr. Sec. School</td>
                        <td>State Government</td>
                        <td>5</td>
                        <td>1500</td>
                        <td style="width: 200px;">
                            <a href="ViewScholarshipSanctionApproval.aspx"><i class="fa fa-red fa-lock fa-cog"></i></a>
                        </td>
                    </tr>
                </table>
            </fieldset>

        </div>
    </div>
    <style>
        #ScholershipApplicationList {
            display: none;
        }

        #EmployeeDetails {
            display: none;
        }

        .fa-cog {
            color: red;
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function HideShow() {
            var x = document.getElementById("EmployeeDetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }


    </script>
</asp:Content>

