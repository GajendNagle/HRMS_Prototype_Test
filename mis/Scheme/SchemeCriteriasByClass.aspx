<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchemeCriteriasByClass.aspx.cs" Inherits="mis_Scheme_SchemeCriteriasByClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <style>
        #Show {
            display: none;
        }
    </style>
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
                        <li class="breadcrumb-item"><span>Scholarship Benefit Sanction Management</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">View class-wise overall scholarship schemes
                <br />
                       कक्षा-वार समग्र छात्रवृत्ति योजनायें देखें</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <%--<nav class="navbar navbar-expand-lg navbar-dark topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold">कक्षा-वार समग्र छात्रवृत्ति योजनायें देखें</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="SchemeCriteriasByClass.aspx">कक्षा-वार समग्र छात्रवृत्ति योजनायें देखें</a></li>--%>
                                    <%--                                    <li><a class="dropdown-item" href="AdmissionOfOutOfStateEdit.aspx">[1.2] Edit Profile of the Other State Student</a></li>--%>
                                <%--</ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>--%>
            <div class="mt-5">
                <fieldset>
                    <legend>View class-wise overall scholarship schemes / कक्षा-वार समग्र छात्रवृत्ति योजनायें देखें</legend>
                    <div class="row justify-content-center mt-3">
                        <div class="col-md-10">
                            <h5><b>नोट</b><span style="color: red;">
                               :: सभी छात्रवृत्ति योजनाओं को विभिन्न समूहो मे सम्मिलित किया गया है| प्रत्येक समूह मे से किसी एक योजना का लाभ पात्रतानुसार दिया जावेगा | 
                                यदि कोई छात्र एक समूह मे एक से अधिक योजना हेतु पात्र होता है तो अधिक राशि वाली योजना का लाभ दिया जावेगा |</span>
                            </h5>
                        </div>

                    </div>
                    <hr />
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label >Academic Year <br />शैक्षणिक वर्ष<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="2024">2024-25</option>
                                <option value="2023">2023-24</option>
                                <option value="2022">2022-23</option>
                                <option value="2021">2021-22</option>


                            </select>
                        </div>
                        <div class="col-md-3">
                            <label>Class<br />कक्षा<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">1 st </option>
                                <option value="2">2 nd</option>
                                <option value="3">3 rd</option>
                                <option value="4">4 th</option>
                                <option value="5">5 th</option>
                                <option value="6">6 th</option>
                                <option value="7">7 th</option>
                                <option value="8">8 th</option>
                                <option value="9">9 th</option>
                                <option value="10">10 th</option>
                                <option value="11">11 th</option>
                                <option value="12">12 th</option>
                                <option value="13">Nursery</option>
                                <option value="14">KG-I</option>
                                <option value="15">KG-II</option>



                            </select>
                        </div>

                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-border w-lg" onclick="toggleStudentDetails()">छात्रवृत्ति योजनाओं की जानकारी देखे</button>
                                <a href="SchemeCriteriasByClass.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <div id="Show">
                    <fieldset>
                        <legend>Information about scholarship schemes / छात्रवृत्ति योजनाओं की जानकारी </legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.<br />सरल क्र.</th>
                                                <th>Stream<br />स्ट्रीम</th>
                                                <th>Category<br />श्रेणी</th>
                                                <th>Minority<br />अल्पसंख्यक</th>
                                                <th>For Govt. School<br />सरकारी स्कूल के लिए</th>
                                                <th>BPL<br />गरीबी रेखा से नीचे</th>
                                                <th>PwD<br />लोक निर्माण विभाग</th>
                                                <th>PwD %</th>
                                                <th>Father Occupation<br />पिता का व्यवसाय</th>
                                                <th>Vimukt Status<br />विमुक्त स्थिति</th>
                                                <th>Income<br />आय</th>
                                                <th>Siblings<br />भाई-बहन</th>
                                                <th>Last Year %<br />पिछले साल का प्रतिशत</th>
                                                <th>GAP<br />गैप</th>
                                                <th>Remarks<br />टिप्पणी</th>
                                                <th>DayScholar   M<br />डेस्कॉलर</th>
                                                <th>Hosteller    M<br />छात्रावासी</th>
                                                <th>DayScholar   F<br />डेस्कॉलर</th>
                                                <th>Hosteller  F<br />छात्रावासी</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Math</td>
                                                <td>SC</td>
                                                <td>-</td>
                                                <td>N</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>0-250000</td>
                                                <td>-</td>
                                                <td>33</td>
                                                <td>Not Allowed</td>
                                                <td>-</td>
                                                <td>Rs. 2510</td>
                                                <td>Rs. 2510</td>
                                                <td>Rs. 2510</td>
                                                <td>Rs. 2510</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Biology</td>
                                                <td>SC</td>
                                                <td>-</td>
                                                <td>N</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>0-250000</td>
                                                <td>-</td>
                                                <td>33</td>
                                                <td>Not Allowed</td>
                                                <td>-</td>
                                                <td>Rs. 2510</td>
                                                <td>Rs. 2510</td>
                                                <td>Rs. 2510</td>
                                                <td>Rs. 2510</td>
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
        function toggleStudentDetails() {
            var studentDetails = document.getElementById("Show");

            studentDetails.style.display = "block";

        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

