<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolWiseVacancy.aspx.cs" Inherits="mis_GuestFacultyManagement_SchoolWiseVacancy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        @media (min-width: 1200px) {
            .modal-xxl {
                --vz-modal-width: 90%;
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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#sankulverification" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Sankul Login</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>School Wise Vacancy</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            School Wise Vacancy
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                Empty
                            </marquee>
                        </div>

                    </div>
                </div>
                <%-- <div class="col-xxl-2 col-md-12 text-end">
                    <a role="button" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>add new state</a>
                </div>--%>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>School Wise Vacancies  / स्कूल रिक्तियां </legend>
                <div class="row align-items-end">
                    <%--<div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Academic Year 
                            <br />
                                शैक्षणिक वर्ष <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="0">--Select--</option>
                                <option value="2024">2024-25</option>
                                <option value="2023">2023-24</option>
                                <option value="2022">2022-23</option>
                                <option value="2021">2021-22</option>
                                <option value="2020">2020-21</option>
                                <option value="2019">2019-20</option>
                                <option value="2018">2018-19</option>
                                <option value="2016">2017-18</option>
                                <option value="2015">2016-17</option>
                                <option value="2015">2015-16</option>
                                <option value="2014">2014-15</option>
                                <option value="2013">2013-14</option>
                                <option value="2012">2012-13</option>
                                <option value="2011">2011-12</option>
                                <option value="2010">2010-11</option>
                                <option value="2009">2009-10</option>
                                <option value="2008">2008-09</option>
                                <option value="2007">2007-08</option>
                            </select>
                        </div>
                    </div>--%>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                District
                            <br />
                                जिला
                            </label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="----">All</option>
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
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Block
                            <br />
                                ब्लॉक
                            </label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="----">All</option>
                                <option value="Bhopal">Huzur</option>
                                <option value="Raisen">Fanda</option>
                                <option value="Govindapura">Govindpura</option>
                            </select>

                        </div>
                    </div>
                    <%--<div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                School Type
                            <br />
                                स्कूल प्रकार  <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="0">-Select-</option>
                                <option value="3">Primary  to Higher Secondary School(Class 1 to 12)</option>
                                <option value="5">Middle to Higher Secondary School (Class 6 to 12)</option>
                                <option value="6">Primary to High School (Class 1 to 10)</option>
                                <option value="8">Middle to High School (Class 6 to 10)</option>
                                <option value="7">Higher Secondary Schools  (Class 9 to 12)</option>
                                <option value="10">High Schools (Class 9 to 10)</option>


                            </select>
                        </div>
                    </div>--%>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <label>
                            School Udise Code - Name
                            <br />
                            स्कूल का यूडाइस -  नाम
                        </label>
                        <select class="form-control select2" id="ddlSchool">
                            <option value="--Select--">--Select--</option>
                            <option>23350811106 - GOVT. HSS GOULA </option>
                            <option>23350804904 - GOVT. HSS JOULKHEDA </option>
                            <option>23320117806 - GOVT HSS LALARIYA  </option>
                            <option>23320110207 - GOVT MODEL HSS HARRAKHEDA, BERASIA  </option>
                            <option>23320110206 - GOVT HSS HARRAKHEDA  </option>
                            <option>23320129259 - GOVT HSS GIRLS, SAROJINI NAIDU </option>
                            <option>23320110008 - GOVT HSS GUNGA </option>
                            <option>23320212709 - GOVT HSS MAHARANA PRATAP PHANDA KALAN ,HARIHAR NAGAR </option>
                            <option>23320216509 - GOVT HSS TARA SEVANIA </option>
                            <option>23320214707 - GOVT HSS CHANDR SHEKAHR AZAD RATIBARH </option>
                            <option>23320202205 - GOVT HSS BAGRODA </option>

                        </select>
                        <div class="form-group">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('showAll').style.display='block';getvalue();">Search</button>
                        <a href="SchoolWiseVacancy.aspx" role="button" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>

                </div>

            </fieldset>
            <div id="showAll" class="row" style="display: none">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Details / विवरण </legend>
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
                        <div class="table-responsive">
                            <table class="table text-center">

                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                       
                                        <br>
                                            सरल क्र. </th>
                                        <th>School Name
                                        <br>
                                            स्कूल का नाम
                                        </th>
                                        <th>Udise Code
                                        <br>
                                            यूडाइस कोड
                                        </th>
                                        <th>Profile View
                                        <br>
                                            प्रोफाइल देखे
                                        </th>


                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td id="tdname" class="text-left">GOVT. HSS GOULA</td>
                                        <td id="tdUdise">23350804904 </td>
                                        <td>
                                            <button type="button" class="btn view-btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fas fa-eye"></i></button>
                                        </td>


                                    </tr>
                                    <tr id="tr2">
                                        <td>2</td>
                                        <td class="text-left">GOVT. HSS JOULKHEDA</td>
                                        <td>23350811106 </td>
                                        <td>
                                            <button type="button" class="btn view-btn btn-outline-info" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fas fa-eye"></i></button>
                                        </td>


                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </fieldset>
                </div>
            </div>


        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="staticBackdropLabel">School Profile</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>School Detail View</legend>
                        <div class="row align-items-end pb-5">
                            <div class="col-md-6 col-lg-4 ">
                                <div class="form-group">
                                    <label>
                                        District
                            <br />
                                        जिला
                                    </label>
                                    <input type="text" name="name" value="Betul" readonly id="modalDist" class="form-control" />

                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 ">
                                <div class="form-group">
                                    <label>
                                        Block
                                        <br />
                                        ब्लॉक
                                    </label>
                                    <input type="text" name="name" value="Ghoradongri" readonly id="modalBlock" class="form-control" />


                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="form-group">
                                    <label>
                                        School Name - Udise
                                    <br />
                                        स्कूल का नाम - यूडाइस</label>
                                    <input type="text" name="name" value="23350703011 - Govt. HSS Chopna" readonly id="modalSchoolNameAndDise" class="form-control" />

                                </div>
                            </div>

                        </div>
                        <div class="row ">
                            <%-- <div class="col-md-12">
                                <h3>School Name :- <span id="spanSchool">Govt. HSS Chopna</span></h3>
                            </div>--%>
                            <div class="col-md-12">
                                <fieldset>
                                    <legend>School Name :- <span id="spanSchool">Govt. HSS Chopna</span></legend>

                                    <div class="table-responsive">
                                        <table class="table text-center">
                                            <thead class="nowrap">
                                                <tr>
                                                    <th>Sr.No.
                                                        <br>
                                                        सरल क्र. </th>
                                                    <th>Panel
                                                        <br>
                                                        पैनल</th>
                                                    <th>Subject
                                                        <br>
                                                        विषय </th>
                                                    <th>Sanction Post
                                                        <br>
                                                        स्वीकृत पद
                                                    </th>
                                                    <th>Working
                                                        <br>
                                                        कार्यरत
                                                    </th>
                                                    <th>Vacant Post
                                                        <br>
                                                        रिक्त पद
                                                    </th>
                                                    <th>Number of Teachers Required <%--against the current vacancies--%>
                                                        <br>
                                                        <%--वर्तमान में रिक्त पदों विरुद्ध --%> आवश्यक शिक्षकों की संख्या 
                                                    </th>
                                                    <th>Available Panel
                                                        <br>
                                                        उपलब्ध पैनल
                                                    </th>
                                                    <%-- <th>Profile View
                                                        <br>
                                                    प्रोफाइल देखे
                                                </th>--%>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>SSS-3 (Lab)</td>
                                                    <td>Chemistry</td>
                                                    <td>2</td>
                                                    <td>1                                                    </td>
                                                    <td>1                                                    </td>
                                                    <td>
                                                        <input class="form-control" placeholder="0" />
                                                    </td>
                                                    <td>
                                                        <input type="radio" name="name" value="Yes" />
                                                        <label>Yes</label>
                                                        /
                                                        <input type="radio" name="name" value="No" />
                                                        <label>No</label>
                                                    </td>

                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </fieldset>
                                <div class="col-md-12 text-center px-0">
                                    <hr />
                                    <button type="button" id="btnCreateVacancy" class="btn btn-outline-success btn-border w-lg" data-bs-toggle="modal" data-bs-target="#modalCreateVacancy">Create Vacancy</button>
                                    <button type="button" class="btn btn-outline-danger  btn-border w-lg" data-bs-dismiss="modal">Clear</button>
                                </div>
                            </div>
                        </div>


                    </fieldset>
                </div>

            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="modalCreateVacancy" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalCreateVacancyLabel" aria-hidden="true">
        <div class="modal-dialog modal-xxl">
            <div class="modal-content">
                <div class="modal-header border-bottom border-2  ">
                    <h3 class="modal-title" id="modalCreateVacancyLabel">Create Vacancy</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Add Vacancy</legend>
                        <div class="row align-items-end mb-5 px-2">
                            <div class="col-6 col-lg-3">
                                <label>School Name </label>
                            </div>
                            <div class="col-6 col-lg-3">
                                <label>: <span id="spanCvSchool">Govt. HSS Chopna</span></label>
                            </div>
                            <div class="col-6 col-lg-3">
                                <label>School Udise Code </label>
                            </div>
                            <div class="col-6 col-lg-3">
                                <label>: <span id="spanCvSchooldUdise">23350703011 </span></label>
                            </div>
                        </div>
                        <div class="row ">
                            <%-- <div class="col-md-12">
                                <h3>School Name :- <span id="spanSchool">Govt. HSS Chopna</span></h3>
                            </div>--%>
                            <div class="col-md-12">
                                <fieldset>
                                    <legend>Details of Absent Teachers/ अनुपस्थित शिक्षकों का विवरण</legend>

                                    <div class="table-responsive">
                                        <table class="table text-center">
                                            <thead class="nowrap">
                                                <tr>
                                                    <th>Sr.No.
                                                        <br>
                                                        सरल क्र. </th>
                                                    <th>Teacher ID
                                                        <br>
                                                        शिक्षक की आईडी </th>
                                                    <th>Post
                                                        <br>
                                                        पद </th>
                                                    <th>Subject
                                                        <br>
                                                        विषय </th>
                                                    <th>Panel
                                                        <br>
                                                        पैनल
                                                    </th>
                                                    <th>Reason of Leave
                                                        <br>
                                                        छुट्टी का कारण
                                                    </th>
                                                    <th>From Date 
                                                        <br>
                                                        दिनांक से
                                                    </th>
                                                    <th>To Date 
                                                        <br>
                                                        दिनांक से
                                                    </th>
                                                    <th>Available Panel
                                                        <br>
                                                        उपलब्ध पैनल
                                                    </th>
                                                    <th>Number of Guest Teachers As Per Panel
                                                        <br>
                                                        पैनल के अनुसार अतिथि शिक्षकों की संख्या
                                                    </th>
                                                    <th>Action
                                                    </th>

                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td class="text-left">
                                                    AI6781 - Devashish Suryvanshi
                                                <td class="text-left">
                                                    Assistant Teacher
                                                <td class="text-left">
                                                    English
                                                <td class="text-left">SSS-3 English
                                                </td>
                                                    <td class="text-left">For Some Important Work
                                                    </td>
                                                    <td>13/08/2024
                                                    </td>
                                                    <td>23/12/2024
                                                    </td>
                                                    <td>
                                                        <input type="radio" name="name" value="Yes" />
                                                        <label>Yes</label>
                                                        / <input type="radio" name="name" value="No" />
                                                        <label>No</label>
                                                    </td>
                                                    <td>
                                                        <input class="form-control" value="1" placeholder="" /></td>
                                                    <td>
                                                        <button type="button" class="btn view-btn btn-outline-info nowrap" data-bs-toggle="modal" data-bs-target="#">Create Vacancy</button></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </fieldset>
                              <%--  <div class="col-md-12 text-center px-0">
                                    <hr />
                                    <button type="button" class="btn btn-outline-success btn-border w-lg">Create Vacancy</button>
                                    <button type="button" class="btn btn-outline-danger  btn-border w-lg" data-bs-dismiss="modal">Clear</button>
                                </div>--%>
                            </div>
                        </div>


                    </fieldset>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
   /*     $("#btnCreateVacancy").trigger('click');*/

        function getvalue() {
            var ddlvalue = document.getElementById('ddlSchool').value;
            if (ddlvalue != '--Select--') {

                document.getElementById('tdUdise').innerText = (ddlvalue.split('-'))[0]
                document.getElementById('tdname').innerText = (ddlvalue.split('-'))[1]
                document.getElementById('tr2').style.display = "none";
            } else {
                document.getElementById('tdUdise').innerText = '23350804904'
                document.getElementById('tdname').innerText = 'GOVT. HSS GOULA'
                document.getElementById('tr2').style.display = "table-row";

            }

        }
    </script>
</asp:Content>

