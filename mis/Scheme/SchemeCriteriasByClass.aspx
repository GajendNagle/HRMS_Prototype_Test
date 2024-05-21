<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchemeCriteriasByClass.aspx.cs" Inherits="mis_Scheme_SchemeCriteriasByClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <style>
        #Show {
            display: none;
        }
    </style>
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">कक्षा-वार समग्र छात्रवृत्ति योजनायें देखें
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item active"><a href="AdmissionOfOutOfStateEdit.aspx" title="click to go on">कक्षा-वार समग्र छात्रवृत्ति योजनायें देखें</a></li>

                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg navbar-dark topbar">
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
                                    <li><a class="dropdown-item" href="SchemeCriteriasByClass.aspx">कक्षा-वार समग्र छात्रवृत्ति योजनायें देखें</a></li>
                                    <%--                                    <li><a class="dropdown-item" href="AdmissionOfOutOfStateEdit.aspx">[1.2] Edit Profile of the Other State Student</a></li>--%>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="mt-5">
                <fieldset>
                    <legend>कक्षा-वार समग्र छात्रवृत्ति योजनायें देखें</legend>
                    <div class="row justify-content-center mt-3">
                        <div class="col-md-10">
                            <h5><b>नोट</b><span style="color: red;">
                               :: सभी छात्रवृत्ति योजनाओं को विभिन्न समूहो मे सम्मिलित किया गया है| प्रत्येक समूह मे से किसी एक योजना का लाभ पात्रतानुसार दिया जावेगा | 
                                यदि कोई छात्र एक समूह मे एक से अधिक योजना हेतु पात्र होता है तो अधिक राशि वाली योजना का लाभ दिया जावेगा |</span>
                            </h5>
                        </div>

                    </div>
                    <hr />
                    <div class="row justify-content-center">
                        <div class="col-md-3">
                            <label class="font-bold">Academic Year :<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="2024">2024-25</option>
                                <option value="2023">2023-24</option>
                                <option value="2022">2022-23</option>
                                <option value="2021">2021-22</option>


                            </select>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">कक्षा :<span style="color: red">*</span></label>
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
                    <div class="row justify-content-center mt-4">
                        <div class="col-md-4 text-center">
                            <div class="form-group">
                                <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded" onclick="toggleStudentDetails()">छात्रवृत्ति योजनाओं की जानकारी देखे</button>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <div id="Show">
                    <fieldset>
                        <legend>छात्रवृत्ति योजनाओं की जानकारी </legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>Stream</th>
                                                <th>Category</th>
                                                <th>Minority</th>
                                                <th>For Govt. School</th>
                                                <th>BPL</th>
                                                <th>PwD</th>
                                                <th>PwD %</th>
                                                <th>Father Occupation</th>
                                                <th>Vimukt Status</th>
                                                <th>Income</th>
                                                <th>Siblings</th>
                                                <th>Last Year %</th>
                                                <th>GAP</th>
                                                <th>Remarks</th>
                                                <th>DayScholar   M</th>
                                                <th>Hosteller    M</th>
                                                <th>DayScholar   F</th>
                                                <th>Hosteller  F</th>
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

