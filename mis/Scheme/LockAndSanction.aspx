<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LockAndSanction.aspx.cs" Inherits="mis_Scheme_LockAndSanction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="EmployeeDetails">
                <legend>Scholership Proposal for Lock and Sanction</legend>
                <table class="table">
                    <tr>
                        <th>Sr.No.</th>
                        <th>Proposal No</th>
                        <th>Proposal Date</th>
                        <th>SSDM Remarks</th>
                        <th>DISE Code</th>
                        <th>School Name</th>
                        <th>School Type</th>
                        <th>Total Students</th>
                        <th>Total Amount</th>
                        <th>Approve & Lock</th>
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

