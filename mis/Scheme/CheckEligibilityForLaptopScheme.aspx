<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CheckEligibilityForLaptopScheme.aspx.cs" Inherits="mis_Scheme_CheckEligibilityForLaptopScheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #Report {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">View Payment Status of Laptop Incentive to Meritorious Student 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=LaptopScheme" title="click to go on">Laptop Scheme</a></li>
                    <li class="breadcrumb-item active"><a href="CheckEligibilityForLaptopScheme.aspx" title="click to go on">Check Student Eligibility </a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <div class="mt-3">
                    <fieldset>
                        <legend>Check Student Eligibility</legend>
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Student Roll No<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" autocomplete="off" placeholder="Enter Bank Name" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label class="font-bold">Academic Year : <span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">2024-25</option>
                                    <option value="2">2023-24</option>
                                    <option value="3">2022-23</option>
                                    <option value="4">2021-22</option>

                                </select>
                            </div>
                            <div class="col-lg-12 mt-5">
                            </div>
                            <div class="col-md-4 text-center">
                                <div class="form-group">
                                    <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded" onclick="Show();">Get Details of Student</button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="Report">
                        <fieldset>
                            <legend>Details of Meritorious Student</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>Student Code </th>
                                                    <th>Name</th>
                                                    <th>Father Name</th>
                                                    <th>Mother Name</th>
                                                    <th>Category</th>
                                                    <th>Gender</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>GA18/142303/009	</td>
                                                    <td>AKASH OJHA</td>
                                                    <td>RAM PRAKASH</td>
                                                    <td>SHAKUNTALA</td>
                                                    <td>OBC</td>
                                                    <td>MALE</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Samagra Students Details </legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>Samagra Id</th>
                                                    <th>Name</th>
                                                    <th>Father Name</th>
                                                    <th>Mother Name</th>
                                                    <th>Date of Birth</th>
                                                    <th>Caregory</th>
                                                    <th>Gender</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>103023060</td>
                                                    <td>AKASH OJHA</td>
                                                    <td>RAM PRAKASH</td>
                                                    <td>SHAKUNTALA</td>
                                                    <td>01/01/2002</td>
                                                    <td>OBC</td>
                                                    <td>MALE</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>School Details </legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>School Code</th>
                                                    <th>School Name</th>
                                                    <th>Class</th>
                                                    <th>Percentage</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>141014</td>
                                                    <td>GOVT H.S.SCHOOL, JANAKGANJ LASHKAR GWALIOR</td>
                                                    <td>12th</td>
                                                    <td>89</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Bank Details </legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>IFSC</th>
                                                    <th>Bank Name</th>
                                                    <th>Account No</th>
                                                    <th>Account Number (Re Type):</th>
                                                    <th>Payment Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>BARBXXXXXXX</td>
                                                    <td>Gwalior Main Branch</td>
                                                    <td>XXXXXXXXXX1088</td>
                                                    <td>XXXXXXXXXX1088</td>
                                                    <td>Incentive to purchase laptop has been transferred in the above mentioned account, UTR-5121731459, Remark -SUCCESS</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function Show() {
            var element = document.getElementById("Report");
            element.style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

