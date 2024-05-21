<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DonwLoadEnrollStudentList.aspx.cs" Inherits="mis_Scheme_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">School-wise Enrollment in All Classes</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Download Enroll Student List</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Download Enroll Student List</legend>
                    <div class="row">
                        <div class="row">
                            <div class="col-md-3">
                                <label>
                                    <span style="color: Maroon; font-weight: bold;">शैक्षणिक वर्ष *</span>:</label>
                                <div class="clearfix">
                                </div>
                                <select name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ddlAcademicYear" id="ddlAcademicYear" class="form-control vd_DDL_required">
                                    <option value="0">-- शैक्षणिक वर्ष चुने --</option>
                                    <option value="36">2023-24</option>
                                    <option value="35">2022-23</option>
                                    <option value="34">2021-22</option>
                                    <option value="33">2020-21</option>
                                    <option value="32">2019-20</option>

                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    <span style="color: Maroon; font-weight: bold;">जिला *</span>:</label>
                                <div class="clearfix">
                                </div>
                                <select name="ddlDistrict" id="ddlDistrict" class="form-control vd_DDL_required">
                                    <option value="0">-- जिले चुने--</option>
                                    <option value="51">AGAR MALWA आगर मालवा</option>
                                    <option value="49">ALIRAJPUR अलीराजपुर </option>
                                    <option value="47">ANUPPUR अनूपपुर </option>
                                    <option value="46">ASHOKNAGAR अशोकनगर</option>
                                    <option value="45">BALAGHAT बालाघाट </option>
                                    <option value="28">BARWANI बड़वानी </option>
                                    <option value="35">BETUL बैतूल </option>
                                    <option value="3">BHIND भिण्ड </option>
                                    <option value="32">BHOPAL भोपाल </option>
                                    <option value="48">BURHANPUR बुरहानपुर </option>
                                    <option value="9">CHHATARPUR छतरपुर </option>
                                    <option value="43">CHHINDWARA छिंदवाडा </option>
                                    <option value="12">DAMOH दमोह </option>
                                    <option value="5">DATIA दतिया </option>
                                    <option value="23">DEWAS देवास </option>
                                    <option value="25">DHAR धार </option>
                                    <option value="41">DINDORI डिण्डौरी </option>
                                    <option value="7">GUNA गुना </option>
                                    <option value="4">GWALIOR ग्वालियर </option>
                                    <option value="36">HARDA हरदा </option>
                                    <option value="26">INDORE इन्दौर </option>
                                    <option value="39">JABALPUR जबलपुर </option>
                                    <option value="24">JHABUA झाबुआ </option>
                                    <option value="38">KATNI कटनी </option>
                                    <option value="29">KHANDWA खण्डवा </option>
                                    <option value="27">KHARGONE खरगोन </option>
                                    <option value="42">MANDLA मण्डला </option>
                                    <option value="19">MANDSAUR मन्दसौर </option>
                                    <option value="2">MORENA मुरैना </option>
                                    <option value="37">Narmadapuram नर्मदापुरम</option>
                                    <option value="40">NARSINGHPUR नरसिंहपुर </option>
                                    <option value="18">NEEMUCH नीमच </option>
                                    <option value="52">NIWARI निवाड़ी</option>
                                    <option value="10">PANNA पन्ना </option>
                                    <option value="34">RAISEN रायसेन </option>
                                    <option value="30">RAJGARH राजगढ़ </option>
                                    <option value="20">RATLAM रतलाम </option>
                                    <option value="14">REWA रीवा </option>
                                    <option value="11">SAGAR सागर </option>
                                    <option value="13">SATNA सतना </option>
                                    <option value="33">SEHORE सीहोर </option>
                                    <option value="44">SEONI सिवनी </option>
                                    <option value="16">SHAHDOL शहडोल </option>
                                    <option value="22">SHAJAPUR शाजापुर </option>
                                    <option value="1">SHEOPUR श्योपुर </option>
                                    <option value="6">SHIVPURI शिवपुरी </option>
                                    <option value="17">SIDHI सीधी </option>
                                    <option value="50">SINGRAULI सिंगरौली </option>
                                    <option value="8">TIKAMGARH टीकमगढ़ </option>
                                    <option value="21">UJJAIN उज्जैन </option>
                                    <option value="15">UMARIA उमरिया </option>
                                    <option value="31">VIDISHA विदिशा </option>

                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    <span style="color: Maroon; font-weight: bold;">ब्लॉक *</span>:</label>
                                <div class="clearfix">
                                </div>
                                <select name="ctl00$ctl00$rmp_main$dpPH$ddTehsil" id="ddTehsil" class="form-control vd_DDL_required">
                                    <option value="0">- Select -</option>
                                    <option value="144">Alirajpur अलीराजपुर</option>
                                    <option value="149">BHABRA भाबरा</option>
                                    <option value="143">JOBAT जाबेट</option>
                                    <option value="145">KATTHIWARA कट्ठीवाडा</option>
                                    <option value="148">SONDWA सोण्डवा</option>
                                    <option value="147">UDAYGARH  उदयगढ़</option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label>
                                    <span style="color: Maroon; font-weight: bold;">डाइस कोड </span>:</label>
                                <div class="clearfix">
                                </div>
                                <input name="txtDISECODE" type="text" id="txtDISECODE" class="form-control" placeholder="डाइस कोड प्रविष्ट करे" />
                            </div>

                            <div id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_divSave" class="col-md-12">
                                <hr />
                                <div style="font-size: medium; color: Teal; text-align: center;">
                                    <center class="col-md-12">
                                        <hr />
                                        <input type="button" id="btnSchoolDetailsShow"
                                            value="शाला-वार नामांकन देखे" class="btn btn-large btn-info PerformClick" />
                                        <input type="button" id="btnSchoolDetailsHide"
                                            value="Clear" class="btn btn-large btn-info PerformClick" />
                                    </center>
                                </div>
                            </div>

                        </div>
                    </div>
                </fieldset> 
                <fieldset id="divStudentDetail" style="display: none;">
                    <legend>Student List</legend>
                    <div class="row">
                        <div class="table-responsive col-md-12">
                            <table class="table">
                                <tr>
                                    <th>Sr.No.<br />
                                        <th>School Type</th>
                                    <th>Academic Year</th>
                                    <th>School Name</th>
                                    <th>Student Name</th>
                                    <th>Father Name</th>
                                    <th>Class</th>
                                    <th>Gender</th>
                                    <th>Status</th>
                                    <th>Last Updated On</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>State Govt.                               
                                    </td>
                                    <td>2023-2024</td>
                                    <td>23281605111 - MS Girls Sec. School</td>
                                    <td>Shivani Goyal</td>
                                    <td>Hiralal  Goyal</td>
                                    <td>8th</td>
                                    <td>Female</td>
                                    <td>ProfileNot Registred</td>
                                    <td>12/01/2023</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>State Govt.                               
                                    </td>
                                    <td>2023-2024</td>
                                    <td>23281605211 - MS Girls Sec. School</td>
                                    <td>Abhinav</td>
                                    <td>S Goyal</td>
                                    <td>8th</td>
                                    <td>Male</td>
                                    <td>ProfileNot Registred</td>
                                    <td>13/01/2023</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </fieldset>
            </div>

        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $("#btnSchoolDetailsHide").click(function () {
                //$("#divStudentDetail").hide();
                window.location.reload();
            });
            $("#btnSchoolDetailsShow").click(function () {
                $("#divStudentDetail").show();
            });
        });



    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

