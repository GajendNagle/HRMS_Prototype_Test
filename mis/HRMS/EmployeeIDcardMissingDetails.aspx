<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeIDcardMissingDetails.aspx.cs" Inherits="mis_HRMS_EmployeeIDcardMissingDetails" %>

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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#IDCard" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee ID Card Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee Missing Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-1">
        <div class="col-md-4 ">
            <img src="../../img/IDCARD.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)">
            <p></p>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Employee ID Card Missing Details Report /
                    कर्मचारी आईडी कार्ड गुम विवरण रिपोर्ट
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <div class="row mt-2">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                DDO/Shankul Name
                                <br />
                                डीडीओ/संकुल का नाम<span style="color: red">*</span></label>
                            <input name="txtUniqueID" type="text" class="form-control" autocomplete="off" placeholder="232589654521/ GOVT. HS AGURLI" />
                        </div>
                    </div>
                </div>

                <fieldset>
                    <legend>Employee Missing Details / कर्मचारी का गुम विवरण</legend>
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
                    <div class="row align-items-end">

                        <div class="col-lg-12" runat="server" id="dvStudentDetails">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">

                                        <table class="table table-bordered">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col" aria-label="स. क्र.: activate to sort column descending" aria-sort="ascending">S.No<br />
                                                        सरल क्र.</th>
                                                    <th scope="col" aria-label="जिला: activate to sort column ascending">Photo<br />
                                                        फ़ोटो</th>
                                                    <th scope="col" aria-label="Name: activate to sort column ascending">Name<br />
                                                        नाम   </th>
                                                    <th scope="col" aria-label="EmployeeCode: activate to sort column ascending">EmployeeCode<br />
                                                        कर्मचारी कोड</th>
                                                    <th scope="col" aria-label="शाला: activate to sort column ascending">Father Name<br />
                                                        पिता का नाम</th>
                                                    <th scope="col" aria-label="dob: activate to sort column ascending">Date of Birth<br />
                                                        जन्म की तारीख</th>
                                                    <th scope="col" aria-label="Blood : activate to sort column ascending">Blood Group<br />
                                                        ब्लड ग्रुप </th>
                                                    <th scope="col" aria-label="Mobile: activate to sort column ascending">Mobile Number<br />
                                                        मोबाइल नंबर</th>
                                                    <th scope="col" aria-label="Designation: activate to sort column ascending">Designation<br />
                                                        पद</th>
                                                    <th scope="col" aria-label="OIS: activate to sort column ascending">OIS Code<br />
                                                        ओआईएस कोड</th>
                                                    <th scope="col" aria-label="Address: activate to sort column ascending">Employee Address<br />
                                                        कर्मचारी पता</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><a>1</a>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="../../img/11.jpg" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Ashok Verma</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a></a>
                                                    </td>

                                                    <td align="center" valign="middle">
                                                        <span id="">Mr. Harish Verma</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">02/02/2024</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">B+</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">Principal HS</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">2598634781/<br />
                                                            GOVT. HSS RATATALAI</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">17/2 Shastri Nagar Ujjain</span>
                                                    </td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><a>2</a>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="../../img/112.png" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Rahul Yadav</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a></a>
                                                    </td>

                                                    <td align="center" valign="middle">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblTotalStudents"></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">02/02/1970</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">AB+</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">9000089898</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">2111147810/<br />
                                                            EPES GOVT. HSS
                                                            <br />
                                                            GIRLS HATPIPLIYA</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">18/2 Patel
                                                            <br />
                                                            Nagar Rajkot</span>
                                                    </td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><a>3</a>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Rudra Singh</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a></a>
                                                    </td>

                                                    <td align="center" valign="middle">
                                                        <span id="">Mr. Bheero Singh</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">B+</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">9111119800</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">2199999999/<br />
                                                            GOVT. HSS AMLATAJ</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">99 Indra Nagar 
                                                        <br />
                                                            Devri, MP</span>
                                                    </td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><a>4</a>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Jai</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a></a>
                                                    </td>

                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">B+</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">9111119800</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">2199999999/<br />
                                                            GOVT. HSS AMLATAJ</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">99 Indra Nagar 
                                                        <br />
                                                            Devri, MP</span>
                                                    </td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><a>5</a>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Pia Paul</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a></a>
                                                    </td>

                                                    <td align="center" valign="middle">
                                                        <span id="">Mr. Bheero Singh</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">B+</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">9111119800</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">2199999999/<br />
                                                            GOVT. HSS AMLATAJ</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">99 Indra Nagar 
                                                        <br />
                                                            Devri, MP</span>
                                                    </td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><a>6</a>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Ram</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a>ML0443</a>
                                                    </td>

                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">B+</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">2199999999/<br />
                                                            GOVT. HSS AMLATAJ</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">99 Indra Nagar 
                                                        <br />
                                                            Devri, MP</span>
                                                    </td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle"><a>7</a>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="../../img/13.jpg" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Raja</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a>AD0077</a>
                                                    </td>

                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="01/01/1980"></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">Shikshak</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id=""></span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">99 Indra Nagar 
                                                        <br />
                                                            Devri, MP</span>
                                                    </td>
                                                </tr>
                                            </tbody>

                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-12" runat="server" id="Div1">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>



                </fieldset>


            </div>

            <script type="text/javascript">
                function showImagePreview(event) {
                    var file = event.target.files[0];
                    if (file) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            var img = document.getElementById('imgPreview');
                            img.src = e.target.result;
                            img.style.display = 'block';
                        }
                        reader.readAsDataURL(file);
                    }
                }
            </script>


        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

