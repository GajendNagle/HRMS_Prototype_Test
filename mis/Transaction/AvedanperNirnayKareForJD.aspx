<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AvedanperNirnayKareForJD.aspx.cs" Inherits="mis_Transaction_AvedanperNirnayKareForJD" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
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
                            <a href="#EmployeeCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Compassionate Appointment
                                </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Decide on Pending Applications at J.D. Level</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5" style="position: relative; bottom: 20px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
            <img src="../../img/Anukampa Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Decide on Pending Applications at J.D. Level /  जे.डी. लेवल पर लंबित आवेदनों पर निर्णय करें</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Decide on Pending Applications / लंबित आवेदनों पर निर्णय करें
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District <br />
                                जिला :<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">Bhopal       </option>
                                <option value="--Select--">Raisen       </option>
                                <option value="--Select--">Rajgarh      </option>
                                <option value="--Select--">Sehore     </option>
                                <option value="--Select--">Vidisha  </option>
                                <option value="--Select--"></option>
                            </select>
                        </div>
                    </div>
                    <hr />
                    <div class="row ">
                        <div class="col-md-12">
                            <button id="toggleButton4" type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                            <a href="AvedanperNirnayKareForJD.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="empDetail" style="display: none" class="mt-5">
                <legend>Details / विवरण</legend>
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
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive table-bordered">
                            <table class="table text-center">
                                <tbody>
                                    <tr>
                                        <th>Sr. No.<br />
                                            सरल क्र.</th>
                                        <th>Deceased Employee / Officer<br />
                                            दिवंगत कर्मचारी / अधिकारी</th>
                                        <th>Designation<br />
                                            पद</th>
                                        <th>Date of Death<br />
                                            दिवंगत तिथि</th>
                                        <th>District<br />
                                            जिला</th>
                                        <th>Applicant Name<br />
                                            आवेदक का नाम</th>
                                        <th>Gender<br />
                                            लिंग</th>
                                        <th>Class<br />
                                            वर्ग</th>
                                        <th>Marital Status<br />
                                            वैवाहिक स्थिति</th>
                                        <th>Date of Birth<br />
                                            जन्म दिनांक</th>
                                        <th>Relation with Deceased<br />
                                            दिवंगत से सम्बंध</th>
                                        <th>Dispose<br />
                                            डिस्पोज करें</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Dariyav Singh Malviya</td>
                                        <td>Asstt Teacher(LDT)</td>
                                        <td>23/05/2020</td>
                                        <td>Shajapur</td>
                                        <td>ANIL BAMNIYA</td>
                                        <td>Male</td>
                                        <td>GENERAL</td>
                                        <td>Married</td>
                                        <td>18/05/1994 </td>
                                        <td>Son</td>
                                        <td><a class="btn btn-success btn-rounded" href="JDDetailsOfEmployee.aspx" />Action</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Laxminarayan Meena</td>
                                        <td>Peon Regular Contingent</td>
                                        <td>05/05/2021</td>
                                        <td>Narmadapuram</td>
                                        <td>VIRENDRA</td>
                                        <td>Male</td>
                                        <td>GENERAL</td>
                                        <td>UnMarried</td>
                                        <td>01/01/1900 </td>
                                        <td>Son</td>
                                        <td><a class="btn btn-success btn-rounded" href="JDDetailsOfEmployee.aspx" />Action</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Yasmen Khan</td>
                                        <td>HM(MS)</td>
                                        <td>27/04/2021</td>
                                        <td>Ujjain</td>
                                        <td>ashar pasha</td>
                                        <td>Male</td>
                                        <td>GENERAL</td>
                                        <td>UnMarried</td>
                                        <td>09/01/1996 </td>
                                        <td>Son</td>
                                        <td><a class="btn btn-success btn-rounded" href="JDDetailsOfEmployee.aspx" />Action</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        document.getElementById("toggleButton4").addEventListener("click", function () {
            document.getElementById("empDetail").style.display = "block";
        });
    </script>
</asp:Content>
