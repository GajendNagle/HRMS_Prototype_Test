<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AvedanperNirnayKareForHO.aspx.cs" Inherits="mis_Transaction_AvedanperNirnayKareForHO" %>

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
                            <a href="#HeadOfficeCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>HO Compassionate Appointment </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Decide on Pending Applications at H.O. Level</span></li>
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
                    <h5 class="card-title">Decide on Pending Applications at H.O. Level / एच.ओ. लेवल पर लंबित आवेदनों पर निर्णय करें</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Decide on pending applications / लंबित आवेदनों पर निर्णय करें
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>District
                                <br />
                                जिला<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-select form-control" ID="ddlDistrict">
                                <asp:ListItem Text="selected" Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="51">Agar Malwa</asp:ListItem>
                                <asp:ListItem Value="49">Alirajpur</asp:ListItem>
                                <asp:ListItem Value="47">Anuppur</asp:ListItem>
                                <asp:ListItem Value="46">Ashoknagar</asp:ListItem>
                                <asp:ListItem Value="45">Balaghat</asp:ListItem>
                                <asp:ListItem Value="28">Barwani</asp:ListItem>
                                <asp:ListItem Value="35">Betul</asp:ListItem>
                                <asp:ListItem Value="3">Bhind</asp:ListItem>
                                <asp:ListItem Value="32">Bhopal</asp:ListItem>
                                <asp:ListItem Value="48">Burhanpur</asp:ListItem>
                                <asp:ListItem Value="9">Chhatarpur</asp:ListItem>
                                <asp:ListItem Value="43">Chhindwara</asp:ListItem>
                                <asp:ListItem Value="12">Damoh</asp:ListItem>
                                <asp:ListItem Value="5">Datia</asp:ListItem>
                                <asp:ListItem Value="23">Dewas</asp:ListItem>
                                <asp:ListItem Value="25">Dhar</asp:ListItem>
                                <asp:ListItem Value="41">Dindori</asp:ListItem>
                                <asp:ListItem Value="7">Guna</asp:ListItem>
                                <asp:ListItem Value="4">Gwalior</asp:ListItem>
                                <asp:ListItem Value="36">Harda</asp:ListItem>
                                <asp:ListItem Value="26">Indore</asp:ListItem>
                                <asp:ListItem Value="39">Jabalpur</asp:ListItem>
                                <asp:ListItem Value="24">Jhabua</asp:ListItem>
                                <asp:ListItem Value="38">Katni</asp:ListItem>
                                <asp:ListItem Value="29">Khandwa</asp:ListItem>
                                <asp:ListItem Value="27">Khargone</asp:ListItem>
                                <asp:ListItem Value="42">Mandla</asp:ListItem>
                                <asp:ListItem Value="19">Mandsaur</asp:ListItem>
                                <asp:ListItem Value="2">Morena</asp:ListItem>
                                <asp:ListItem Value="37">Narmadapuram</asp:ListItem>
                                <asp:ListItem Value="40">Narsinghpur</asp:ListItem>
                                <asp:ListItem Value="18">Neemuch</asp:ListItem>
                                <asp:ListItem Value="52">Niwari</asp:ListItem>
                                <asp:ListItem Value="10">Panna</asp:ListItem>
                                <asp:ListItem Value="34">Raisen</asp:ListItem>
                                <asp:ListItem Value="30">Rajgarh</asp:ListItem>
                                <asp:ListItem Value="20">Ratlam</asp:ListItem>
                                <asp:ListItem Value="14">Rewa</asp:ListItem>
                                <asp:ListItem Value="11">Sagar</asp:ListItem>
                                <asp:ListItem Value="13">Satna</asp:ListItem>
                                <asp:ListItem Value="33">Sehore</asp:ListItem>
                                <asp:ListItem Value="44">Seoni</asp:ListItem>
                                <asp:ListItem Value="16">Shahdol</asp:ListItem>
                                <asp:ListItem Value="22">Shajapur</asp:ListItem>
                                <asp:ListItem Value="1">Sheopur</asp:ListItem>
                                <asp:ListItem Value="6">Shivpuri</asp:ListItem>
                                <asp:ListItem Value="17">Sidhi</asp:ListItem>
                                <asp:ListItem Value="50">Singrauli</asp:ListItem>
                                <asp:ListItem Value="8">Tikamgarh</asp:ListItem>
                                <asp:ListItem Value="21">Ujjain</asp:ListItem>
                                <asp:ListItem Value="15">Umaria</asp:ListItem>
                                <asp:ListItem Value="31">Vidisha</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <hr />
                    <div class="row ">
                        <div class="col-md-12">
                            <button id="toggleButton4" type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                            <a href="AvedanperNirnayKareForHO.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>

            </fieldset>
            <div id="empDetail" style="display: none" class="mt-5">
                <fieldset>
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
                                            <td><a class="btn btn-success btn-rounded" href="HODetailsOfEmployee.aspx" />Action</td>
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
                                            <td><a class="btn btn-success btn-rounded" href="HODetailsOfEmployee.aspx" />Action</td>
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
                                            <td><a class="btn btn-success btn-rounded" href="HODetailsOfEmployee.aspx" />Action</td>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        document.getElementById("toggleButton4").addEventListener("click", function () {
            document.getElementById("empDetail").style.display = "block";
        });
    </script>
</asp:Content>
