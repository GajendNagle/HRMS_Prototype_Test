<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CheckEligibilityForLaptopScheme.aspx.cs" Inherits="mis_Scheme_CheckEligibilityForLaptopScheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #Report {
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
                        <li class="breadcrumb-item">Check Student Eligibility For Laptop Scheme</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Check Student Eligibility For Laptop Scheme
                        <br />
                        लैपटॉप योजना के लिए छात्र पात्रता की जाँच करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <div class="mt-3">
                <fieldset>
                    <legend>Check Student Eligibility / छात्र पात्रता की जाँच करें</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Student Roll No<br />
                                    छात्र का रोल नंबर दर्ज करें<span style="color: red">*</span></label>
                                <input type="text" class="form-control" autocomplete="off" placeholder="Enter Bank Name" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Academic Year<br />
                                    शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">2024-25</option>
                                    <option value="2">2023-24</option>
                                    <option value="3">2022-23</option>
                                    <option value="4">2021-22</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-lg-12 mt-5">
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-border w-lg" onclick="Show();">Get Details of Student</button>
                                <a href="CheckEligibilityForLaptopScheme.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="Report">
                    <fieldset>
                        <legend>Details of Meritorious Student / मेधावी छात्र का विवरण</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover text-center">
                                        <thead>
                                            <tr>
                                                <th>Student Code<br />
                                                    छात्र कोड </th>
                                                <th>Name<br />
                                                    नाम</th>
                                                <th>Father Name<br />
                                                    पिता का नाम</th>
                                                <th>Mother Name<br />
                                                    माता का नाम</th>
                                                <th>Category<br />
                                                    श्रेणी</th>
                                                <th>Gender<br />
                                                    जेंडर</th>
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
                        <legend>Samagra Students Details / समग्र छात्रों का विवरण </legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover text-center">
                                        <thead>
                                            <tr>
                                                <th>Samagra Id<br />
                                                    समग्र आईडी</th>
                                                <th>Name<br />
                                                    नाम</th>
                                                <th>Father Name<br />
                                                    पिता का नाम</th>
                                                <th>Mother Name<br />
                                                    माता का नाम</th>
                                                <th>Date of Birth<br />
                                                    जन्म की तारीख</th>
                                                <th>Caregory<br />
                                                    श्रेणी</th>
                                                <th>Gender<br />
                                                    जेंडर</th>
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
                        <legend>School Details / स्कूल का विवरण </legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover text-center">
                                        <thead>
                                            <tr>
                                                <th>School Code<br />
                                                    स्कूल कोड</th>
                                                <th>School Name<br />
                                                    स्कूल का नाम</th>
                                                <th>Class<br />
                                                    कक्षा</th>
                                                <th>Percentage<br />
                                                    प्रतिशत</th>
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
                        <legend>Bank Details / बैंक का विवरण </legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover text-center">
                                        <thead>
                                            <tr>
                                                <th>IFSC<br />
                                                    आईएफएससी</th>
                                                <th>Bank Name<br />
                                                    बैंक का नाम</th>
                                                <th>Account No<br />
                                                    खाता नंबर</th>
                                                <th>Account Number (Re Type)<br />
                                                    खाता नंबर (पुनः टाइप करें)</th>
                                                <th>Payment Status<br />
                                                    भुगतान की स्थिति</th>
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

    <script>
        function Show() {
            var element = document.getElementById("Report");
            element.style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

