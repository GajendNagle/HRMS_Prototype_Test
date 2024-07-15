<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_GFMSAnalyticReport.aspx.cs" Inherits="mis_GuestFacultyManagement_Rpt_GFMSAnalyticReport" %>

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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#GFMSReports" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Reports</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Analytics Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Guest Faculty Analytics Report /
                             अतिथि शिक्षक विश्लेषण रिपोर्ट </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Subject Wise Tentative Vacancies   / विषय वार संभावित रिक्तिया </legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
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
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                District
                                <br />
                                जिला <span style="color: red">*</span></label>
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
                                ब्लॉक <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="----">All</option>
                                <option value="Bhopal">Huzur</option>
                                <option value="Raisen">Fanda</option>
                                <option value="Govindapura">Govindpura</option>
                            </select>

                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
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
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <label>
                            Subject<br />
                            विषय <span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="English">English</option>
                            <option value="Science">Science</option>
                            <option value="Mathes">Mathes</option>
                            <option value="Social Science">Social Science</option>
                            <option value="Hindi">Hindi</option>
                            <option value="Sanskrit">Sanskrit</option>
                        </select>
                        <div class="form-group">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('showAll').style.display='block'">View Tentative Vacancy</button>
                         <a href="Rpt_GFMSAnalyticReport.aspx" role="button" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>

                </div>
                <div class="row mb-0">
                    <div class="col-md-12">
                        <p>
                            <span style="color: red">*</span> <b>महत्वपूर्ण सूचना :- </b>प्रदर्शित रिक्तियाँ  अस्थायी  हैं इसलिए समय समय पर  प्रदर्शित हो रही रिक्तियाँ  देखें |
                        </p>
                    </div>
                </div>
            </fieldset>


            <div id="showAll" class="row" style="display: none">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Tentative Vacancies / संभावित रिक्तियाँ </legend>
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
                            <table class="table">

                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                           
                                            <br>
                                            सरल क्र. </th>
                                        <th>Dise Code - School
                                            <br>
                                            डाइस कोड - स्कूल
                                        </th>
                                        <th>Subject
                                            <br>
                                            विषय
                                        </th>
                                        <th>Vacancy Code
                                            <br>
                                            रिक्ति कोड
                                        </th>
                                        <th>Tentative Vacancies
                                            <br>
                                            संभावित रिक्तियाँ
                                        </th>
                                        <th>Working Guest faculty
                                            <br>
                                            कार्यरत अतिथि शिक्षक 
                                        </th>
                                        <th>Panel Available
                                            <br>
                                            पैनल उपलब्ध
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>23350804904 - GOVT. HSS GOULA</td>
                                        <td>SSS-2
                                            <br />
                                            Maths</td>
                                        <td>9040012</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>Yes</td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>23350811106 - GOVT. HSS JOULKHEDA</td>
                                        <td>SSS-3
                                            <br />
                                            Maths </td>
                                        <td>1060055 </td>
                                        <td>1 </td>
                                        <td>0 </td>
                                        <td>Yes </td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </fieldset>
                </div>
            </div>


        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

