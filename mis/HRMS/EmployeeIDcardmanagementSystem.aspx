<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeIDcardmanagementSystem.aspx.cs" Inherits="mis_HRMS_EmployeeIDcardmanagementSystemForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href='https://fonts.googleapis.com/css?family=Afacad' rel='stylesheet' />

    <style>
        p {
            font-family: 'Caprasimo';
            font-size: 22px;
        }

        th, tr {
            white-space: nowrap;
        }

        h6 {
            margin-top: -1rem;
            font-size: 1.1rem;
            font-weight: 600;
        }

        .card-body {
            min-height: 20rem;
            padding: 10px;
        }

        .breadcrumb-item {
            display: -ms-flexbox;
            display: flex;
            font-size: 0.9rem;
        }


        .bg-megnalight {
            background-color: #01c0c838; /*#1b5b5c40*/
            border-radius: 0.5em;
            padding: 0.5rem;
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
                            <a href="#IDCard" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee ID Card Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee ID Card Management System</span></li>
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
                    <h5 class="card-title">Employee ID Card Management System /
                    कर्मचारी आई.डी कार्ड प्रबंधन प्रणाली
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
                                डीडीओ/संकुल नाम<span style="color: red">*</span></label>
                            <input name="txtUniqueID" type="text" class="form-control" autocomplete="off" placeholder="232589654521/ GOVT. HS AGURLI" />
                        </div>
                    </div>
                </div>

                <fieldset>
                    <legend>Employee Details / कर्मचारी विवरण</legend>
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
                                                    <th scope="col" aria-label="स. क्र.: activate to sort column descending" aria-sort="ascending">Checkbox<br />
                                                        चेक बॉक्स</th>
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
                                                    <th scope="col" aria-label="Valid From: activate to sort column ascending">Valid From<br />
                                                        से मान्य<span style="color: red">*</span></th>
                                                    <th scope="col" aria-label="Valid: activate to sort column ascending">Valid Upto<br />
                                                        तक वैध है<span style="color: red">*</span></th>
                                                    <th scope="col" aria-label="Upload: activate to sort column ascending" style="width: 0px !important;">Upload Signature<br />
                                                        हस्ताक्षर अपलोड करें<span style="color: red">*</span></th>
                                                    <th scope="col" aria-label="View: activate to sort column ascending">View Signature<br />
                                                        हस्ताक्षर देखें</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle">
                                                        <asp:CheckBox runat="server" ID="chck1" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="../../img/11.jpg" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Ashok Verma</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a>AI8496</a>
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
                                                        <span id="">9898989898</span>
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
                                                    <td align="center" valign="middle">
                                                        <input type="date" class="form-control" placeholder="17/11/2021" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <input type="date" class="form-control" placeholder="17/11/2023" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <asp:FileUpload ID="FileUpload1" runat="server" OnChange="showImagePreview(event)" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img id="imgPreview" style="display: none; width: 40px;" alt="Image Preview" />
                                                    </td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle">
                                                        <asp:CheckBox runat="server" ID="CheckBox1" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="../../img/112.png" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Rahul Yadav</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a>AI3333</a>
                                                    </td>

                                                    <td align="center" valign="middle">
                                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdVacancies_ctl02_lblTotalStudents">Mr. Bulbul Yadav</span>
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
                                                        <span id="">Adhyapak</span>
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
                                                    <td align="center" valign="middle">
                                                        <input type="date" class="form-control" placeholder="17/11/2021" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <input type="date" class="form-control" placeholder="17/11/2023" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <asp:FileUpload ID="FileUpload2" runat="server" OnChange="showImagePreview(event)" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img id="imgPreview" style="display: none; width: 100px;" alt="Image Preview" />
                                                    </td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle">
                                                        <asp:CheckBox runat="server" ID="CheckBox2" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img src="../../img/44.jpg" alt="Image" style="width: 50px; height: 50px;">
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a href="#51">Rudra Singh</a>

                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <a>AI0033</a>
                                                    </td>

                                                    <td align="center" valign="middle">
                                                        <span id="">Mr. Bheero Singh</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">01/01/1980</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">B+</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">9111119800</span>
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <span id="">Madhymik Shikshak</span>
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
                                                    <td align="center" valign="middle">
                                                        <input type="date" class="form-control" placeholder="17/11/2021" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <input type="date" class="form-control" placeholder="17/11/2023" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <asp:FileUpload ID="FileUpload3" runat="server" OnChange="showImagePreview(event)" />
                                                    </td>
                                                    <td align="center" valign="middle">
                                                        <img id="imgPreview" style="display: none; width: 50px;" alt="Image Preview" />
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

                <div class="row" id="generateorder">
                    <div class="col-md-12 text-center">
                        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Approve</button>
                    </div>
                </div>


                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog ">
                        <div class="modal-content">
                            <div class="modal-header">

                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <legend>Verification</legend>

                                    <div class="row">
                                        <label>OTP(one time Password)</label>
                                        <input class="form-control" placeholder="Enter Verification Code" />
                                    </div>

                                </fieldset>
                                <div class="modal-footer text-center">

                                    <button type="button" class="Alert-Confirmation btn btn-success" data-bs-dismiss="modal">Submit</button>
                                    <button type="button" id="ContentBody_clearfirst" class="btn btn-warning" data-bs-dismiss="modal">Close</button>

                                </div>
                            </div>
                        </div>
                    </div>




                </div>
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

