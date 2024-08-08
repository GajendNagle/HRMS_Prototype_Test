<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistrictWiseStudentInfoReport.aspx.cs" Inherits="mis_Report_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showAllDetails {
            display: none;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
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
                            <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#StudentReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                                <span>Reports</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>District Wise Student Information Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">District Wise Student Information Report / जिलेवार छात्र सूचना रिपोर्ट 
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Information Report / छात्र सूचना रिपोर्ट </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Academic Year<br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="txtAcademicYear" class="form-control datepickerYear2 form-select" type="text" data-val="true" required="required" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select District Name<br />
                                ज़िला  का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control form-select" id="ddlDistrict">

                                <option value="Select">Select District</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Raisen">Raisen</option>
                                <option value="Rajgarh">Rajgarh</option>
                                <option value="Sehore">Sehore</option>
                                <option value="Vidisha">Vidisha</option>
                                <option value="Ashoknagar">Ashoknagar</option>
                                <option value="Shivpuri">Shivpuri</option>
                                <option value="Datia">Datia</option>
                                <option value="Guna">Guna</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Harda">Harda</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Betul">Betul</option>
                                <option value="Morena">Morena</option>
                                <option value="Sheopur">Sheopur</option>
                                <option value="Bhind">Bhind</option>
                                <option value="Barwani">Barwani</option>
                                <option value="Burhanpur">Burhanpur</option>
                                <option value="Dhar">Dhar</option>
                                <option value="Indore">Indore</option>
                                <option value="Jhabua">Jhabua</option>
                                <option value="Khandwa">Khandwa</option>
                                <option value="Khargone">Khargone</option>
                                <option value="Alirajpur">Alirajpur</option>
                                <option value="Balaghat">Balaghat</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Katni">Katni</option>
                                <option value="Mandla">Mandla</option>
                                <option value="Narsinghpur">Narsinghpur</option>
                                <option value="Seoni">Seoni</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Satna">Satna</option>
                                <option value="Sidhi">Sidhi</option>
                                <option value="Singroli">Singroli</option>
                                <option value="Chhatarpur">Chhatarpur</option>
                                <option value="Damoh">Damoh</option>
                                <option value="Panna">Panna</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Tikamgarh">Tikamgarh</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Umaria">Umaria</option>
                                <option value="Dindori">Dindori</option>
                                <option value="Anuppur">Anuppur</option>
                                <option value="Dewas">Dewas</option>
                                <option value="Mandsaur">Mandsaur</option>
                                <option value="Neemuch">Neemuch</option>
                                <option value="Ratlam">Ratlam</option>
                                <option value="Shajapur">Shajapur</option>
                                <option value="Ujjain">Ujjain</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="col-md-12">
                    <div class="form-group">
                        <!-- Search button triggers search and toggles divs -->
                        <%-- <button type="button" class="btn btn-success w-lg btn-border" id="btn1">
                            Search</button>--%>
                        <button type="button" class="btn btn-success w-lg btn-border" id="btn1" onclick="HideShow()">
                            Search
                        </button>
                        <a href="DistrictWiseStudentInfoReport.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <div id="showAllDetails" class="row">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Details / विवरण</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-6 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table" id="hideshowTable">
                                        <thead>
                                            <tr style="white-space: nowrap" class="text-center">
                                                <th id="Sr">Sr.No.<br />
                                                    सरक क्र. </th>
                                                <th id="SankulName">Sankul Name<br />
                                                    संकुल का नाम </th>
                                                <th id="maleStudent">Male Student<br />
                                                    मेल  स्टूडेंट  </th>
                                                <th id="FemaleStudent">Female Student<br />
                                                    फीमेल  स्टूडेंट   </th>
                                                <th id="TotalStudent">Total Student<br />
                                                    कुल छात्र</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="text-center">
                                                <td>1</td>
                                                <td>MAHARANA PRATAP, JAHANGIRABAD, BHOPAL,
PRINCIPAL, GOVT. HSS/23320400117</td>
                                                <td>
                                                    <a data-bs-toggle="modal" data-bs-target="#ModelMaleData1" role="button">2</a>
                                                </td>
                                                <td>
                                                    <a data-bs-toggle="modal" data-bs-target="#ModelFemaledata1" role="button">3</a>
                                                </td>

                                                <td><a data-bs-toggle="modal" data-bs-target="#ModelTotal1" role="button">5</a>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>2</td>
                                                <td>PHANDA, PRINCIPAL, GOVT. HS/0502003027	</td>
                                                <td><a data-bs-toggle="modal" data-bs-target="#ModelMaleData2" role="button">2</a>
                                                </td>
                                                <td>
                                                    <a data-bs-toggle="modal" data-bs-target="#ModelFemaledata1" role="button">3</a>
                                                </td>
                                                <td>
                                                    <a data-bs-toggle="modal" data-bs-target="#ModelTotal2" role="button">5</a>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>3
                                                </td>
                                                <td>M.L.B. BHEL, BARKHEDA, BHOPAL,
PRINCIPAL, GOVT. HSS/0512003007</td>
                                                <td>
                                                    <a data-bs-toggle="modal" data-bs-target="#staticBackdrop" role="button">5</a>
                                                </td>


                                                <td><a data-bs-toggle="modal" data-bs-target="#ModelFemaledata3" role="button">2</a></td>
                                                <td><a data-bs-toggle="modal" data-bs-target="#ModelTotal3" role="button">7</a></td>
                                            </tr>
                                            <!-- Add more rows here -->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="modal fade" id="ModelMaleData1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title w-100 text-center">Student Information Report / छात्र सूचना रिपोर्ट</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset style="margin-top: 1rem">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Samgra Id</th>
                                                        <th>Class</th>
                                                        <th>Student ID/Name</th>
                                                        <th>Father Name</th>
                                                        <th>School Name </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Ram /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Mithlesh Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="ModelFemaledata1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title w-100 text-center">Student Information Report / छात्र सूचना रिपोर्ट</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset style="margin-top: 1rem">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Samgra Id</th>
                                                        <th>Class</th>
                                                        <th>Student ID/Name</th>
                                                        <th>Father Name</th>
                                                        <th>School Name </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Riya /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Sheetal Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529514</td>
                                                        <td>10th</td>
                                                        <td>Shivani Roy/UID147854</td>
                                                        <td>Ritesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="ModelTotal1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title w-100 text-center">Student Information Report / छात्र सूचना रिपोर्ट</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset style="margin-top: 1rem">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Samgra Id</th>
                                                        <th>Class</th>
                                                        <th>Student ID/Name</th>
                                                        <th>Father Name</th>
                                                        <th>School Name </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Ram /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Mithlesh Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529514</td>
                                                        <td>10th</td>
                                                        <td>Rajnish Roy/UID147854</td>
                                                        <td>Ritesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529515</td>
                                                        <td>10th</td>
                                                        <td>Shravan Roy/UID147853</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Riya /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title w-100 text-center">Student Information Report / छात्र सूचना रिपोर्ट</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset id="StudentInformation" style="margin-top: 1rem">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Samgra Id</th>
                                                        <th>Class</th>
                                                        <th>Student ID/Name</th>
                                                        <th>Father Name</th>
                                                        <th>School Name </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Ram /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Mithlesh Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529514</td>
                                                        <td>10th</td>
                                                        <td>Rajnish Roy/UID147854</td>
                                                        <td>Ritesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529515</td>
                                                        <td>10th</td>
                                                        <td>Shravan Roy/UID147853</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529516</td>
                                                        <td>12th</td>
                                                        <td>Shkhar Roy/UID147852</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="ModelFemaledata3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title w-100 text-center">Student Information Report / छात्र सूचना रिपोर्ट</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset id="StudentInformation2" style="margin-top: 1rem">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Samgra Id</th>
                                                        <th>Class</th>
                                                        <th>Student ID/Name</th>
                                                        <th>Father Name</th>
                                                        <th>School Name </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Riya /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Sheetal Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="ModelTotal3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title w-100 text-center">Student Information Report / छात्र सूचना रिपोर्ट</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset style="margin-top: 1rem">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Samgra Id</th>
                                                        <th>Class</th>
                                                        <th>Student ID/Name</th>
                                                        <th>Father Name</th>
                                                        <th>School Name </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Ram /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Mithlesh Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529514</td>
                                                        <td>10th</td>
                                                        <td>Rajnish Roy/UID147854</td>
                                                        <td>Ritesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529515</td>
                                                        <td>10th</td>
                                                        <td>Shravan Roy/UID147853</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Riya /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Sheetal Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529514</td>
                                                        <td>10th</td>
                                                        <td>Shivani Roy/UID147854</td>
                                                        <td>Ritesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="ModelMaleData2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title w-100 text-center">Student Information Report / छात्र सूचना रिपोर्ट</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset style="margin-top: 1rem">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Samgra Id</th>
                                                        <th>Class</th>
                                                        <th>Student ID/Name</th>
                                                        <th>Father Name</th>
                                                        <th>School Name </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Ram /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Mithlesh Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="ModelFemaledata2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title w-100 text-center">Student Information Report / छात्र सूचना रिपोर्ट</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset style="margin-top: 1rem">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Samgra Id</th>
                                                        <th>Class</th>
                                                        <th>Student ID/Name</th>
                                                        <th>Father Name</th>
                                                        <th>School Name </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Riya /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Sheetal Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529514</td>
                                                        <td>10th</td>
                                                        <td>Shivani Roy/UID147854</td>
                                                        <td>Ritesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="ModelTotal2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title w-100 text-center">Student Information Report / छात्र सूचना रिपोर्ट</h3>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset style="margin-top: 1rem">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Samgra Id</th>
                                                        <th>Class</th>
                                                        <th>Student ID/Name</th>
                                                        <th>Father Name</th>
                                                        <th>School Name </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>989305529512</td>
                                                        <td>10th</td>
                                                        <td>Ram /UID147858</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Mithlesh Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529514</td>
                                                        <td>10th</td>
                                                        <td>Rajnish Roy/UID147854</td>
                                                        <td>Ritesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529513</td>
                                                        <td>10th</td>
                                                        <td>Sheetal Roy/UID147855</td>
                                                        <td>Brajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>
                                                    <tr>
                                                        <td>989305529510</td>
                                                        <td>12th</td>
                                                        <td>Rahul/UID147853</td>
                                                        <td>Rajesh Gupta</td>
                                                        <td>GOVT HSS Sironj/23340603802</td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function HideShow() {
            var txtAcademicYear = document.getElementById('txtAcademicYear');
            var ddlDistrict = document.getElementById('ddlDistrict');
            if (txtAcademicYear.value === "" || ddlDistrict.value === "Select") {
                document.getElementById('showAllDetails').style.display = 'none';
            } else {
                document.getElementById('showAllDetails').style.display = 'block';
            }
        }
    </script>
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">
    </script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear2").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            //setDefaultFinancialYear();
        });</script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery.multiselect@1.15.0/dist/jquery.multiselect.js">

    </script>

    <script>
        const dropdownList = document.querySelector('select.form-control');
        const checkboxes = document.querySelectorAll('.ckkBox');


        checkboxes.forEach((checkbox) => {
            checkbox.addEventListener('change', (event) => {
                const selectedOptions = [];
                checkboxes.forEach((checkbox) => {
                    if (checkbox.checked) {
                        selectedOptions.push(checkbox.value);
                    }
                });
                // Update the dropdown list
                dropdownList.options[0].selected = false;
                selectedOptions.forEach((value) => {
                    const option = dropdownList.querySelector(`option[value="${value}"]`);
                    if (option) {
                        option.selected = true;
                    }
                });
            });
        });

    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/js/bootstrap-multiselect.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/css/bootstrap-multiselect.min.css" />
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />--%>
    <script src="../dist/js/bootstrap-multiselect.js"></script>

    <script>
        $(document).ready(function () {
            $('.multiselect-ui').multiselect({
                includeSelectAllOption: true
            })
        });
    </script>
    <script>
        function DDLGrid() {
            var selectedValues = $('#dates-field2').val(); // selected option


            $("#hideshowTable tr td, #hideshowTable thead th").each(function () {  // hiding All data
                $(this).css("display", "none");
            });

            function hideShowCellsAndHeaders(columnIndex) {   // displaying required data only
                var selector = "#hideshowTable tr td:nth-child(" + (columnIndex + 1) + "), #hideshowTable thead th:nth-child(" + (columnIndex + 1) + ")";
                $(selector).each(function () {
                    $(this).css("display", "table-cell");
                });
            }
            for (var i = 0; i < selectedValues.length; i++) {
                var selectedValue = selectedValues[i];
                var header = $("#hideshowTable thead th#" + selectedValue);

                if (header.length) {
                    hideShowCellsAndHeaders(header.index());
                }
            }
        }
    </script>
</asp:Content>


