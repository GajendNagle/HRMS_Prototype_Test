<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="NocReportHO.aspx.cs" Inherits="mis_HRMS_NocReportHO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 90%;
            }
            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }
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
                        <li class="breadcrumb-item"><span>H.O. level NOC Report</span></li>
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
                    <h5 class="card-title">H.O. level NOC Report / एच.ओ. स्तर पर एन.ओ.सी. रिपोर्ट</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <fieldset>
                    <legend>NOC Report / एन.ओ.सी. विवरण</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    District
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
                                <button type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                                <a href="NocReportHO.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Details / विवरण</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover bg-white " id="GrdSchoolDetails" style="width: 100%; border-collapse: collapse;">
                                        <thead>
                                            <tr>
                                                <th scope="col">Sr. No.<br>
                                                    सरल क्र.</th>
                                                <th scope="col">Deceased Employee / Officer<br>
                                                    दिवंगत कर्मचारी / अधिकरी </th>
                                                <th scope="col">Designation<br>
                                                    पद</th>
                                                <th scope="col">Death Date<br>
                                                    मृत्यु दिनांक</th>
                                                <th scope="col">Applicant Name<br>
                                                    आवेदक का नाम</th>
                                                <th scope="col">Gender<br>
                                                    लिंग</th>
                                                <th scope="col">Applicant D.O.B.<br>
                                                    आवेदक की जन्म तिथि </th>
                                                <th scope="col">Mobile Number<br>
                                                    मोबाईल  नंबर</th>
                                                <th scope="col">Applicant's Relation with Deceased Teacher<br>
                                                    आवेदक का दिवंगत शिक्षक के साथ संबंध</th>
                                                <th scope="col">Applicant's Marital Status<br>
                                                    आवेदक की वैवाहिक स्थिति</th>
                                                <th scope="col">Selected Option of Post for Appointment<br>
                                                    नियुक्ति हेतु पद का चयनित विकल्प</th>
                                                <th scope="col">Educational Qualification of Applicant<br>
                                                    आवेदक की शैक्षणिक योग्यता </th>
                                                <th scope="col">Status of Passing Primary Teacher Eligibility Test<br>
                                                    for Primary Teacher<br>
                                                    प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता  परीछा उत्तीर्ण की स्थिति</th>
                                                <th scope="col">Status<br>
                                                    स्थिति</th>
                                                <th scope="col">Appointment Department Name<br>
                                                    नियुक्ति विभाग का नाम</th>
                                                <th scope="col">NOC Document<br />
                                                    एन.ओ.सी. दस्तावेज़</th>
                                                <th scope="col">Appointment Document<br />
                                                    नियुक्ति दस्तावेज़</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Puran Singh Kushawah</td>
                                                <td>Asstt Teacher(LDT)</td>
                                                <td>28/12/2021</td>
                                                <td>BRAJESH KUSHVAH</td>
                                                <td>Male</td>
                                                <td>10/08/1997</td>
                                                <td>70477701125</td>
                                                <td>Son</td>
                                                <td>अविवाहित  </td>
                                                <td>शैक्षणिक संवर्ग </td>
                                                <td>12 PCM B SC COMPUTER SCIENCE</td>
                                                <td>नहीं </td>
                                                <td>Pending by collector</td>
                                                <td>Nil</td>
                                                <td>
                                                    <button class="btn btn-success">View</button>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success">View</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Satendra Bahadur Singh</td>
                                                <td>Madhyami8k Shaishak</td>
                                                <td>15/04/2022</td>
                                                <td>SHAKSHAM SHINGH </td>
                                                <td>Male</td>
                                                <td>12/12/1996</td>
                                                <td>70477701125</td>
                                                <td>Son</td>
                                                <td>अविवाहित  </td>
                                                <td>लिपिकीय संवर्ग  </td>
                                                <td>GRADUATE</td>
                                                <td>नहीं </td>
                                                <td>Pending by DEO</td>
                                                <td>Nil</td>
                                                <td>
                                                    <button class="btn btn-success">View</button>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success">View</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Achhe Lal patel </td>
                                                <td>Asstt Grade-2</td>
                                                <td>16/01/2023</td>
                                                <td>PRAMOD KUMAR PATEL</td>
                                                <td>Male</td>
                                                <td>02/10/2000</td>
                                                <td>70477701125</td>
                                                <td>Son</td>
                                                <td>अविवाहित  </td>
                                                <td>लिपिकीय संवर्ग  </td>
                                                <td>GRADUATE</td>
                                                <td>नहीं </td>
                                                <td>Got a job</td>
                                                <td>Health department</td>
                                                <td>
                                                    <button class="btn btn-success">View</button>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success">View</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

