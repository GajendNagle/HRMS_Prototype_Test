<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BriefReportOfDistrictWiseClassWiseEnrollment.aspx.cs" Inherits="mis_Scheme_BriefReportOfDistrictWiseClassWiseEnrollment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .rblResult td, .rblResult tr {
            border-color: transparent !important;
            background-color: transparent !important;
            padding: 5px !important;
        }

        .rblResult label {
            margin: 0px 3px !important;
        }

        .table-custom th {
            text-align: right !important;
            width: 20% !important;
        }

        .table-custom td {
            width: 30% !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Brief Report Of District Wise Class Wise Enrollment</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentReports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item active">Brief Report Of District Wise Class Wise Enrollment</li>
                </ol>
            </div>
        </div>
    </div>--%>

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
                        <li class="breadcrumb-item">
                            <a href="#ControlReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')"><span>Control Report</span></a>
                        </li>
                        <li class="breadcrumb-item">Brief Report Of District Wise Class Wise Enrollment</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-10">
                    <h4 class="card-title">Brief Report Of District Wise Class Wise Enrollment
                <br />
                        जिलावार कक्षावार नामांकन की संक्षिप्त रिपोर्ट
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select District Name<br />
                                जिला का चयन करें<span class="text-danger">*</span></label>
                            <select class="form-control select2">
                                <option value="0">- Select District -</option>
                                <option selected="selected" value="51">AGAR MALWA आगर मालवा</option>
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
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Academic Year<br />
                                शैक्षणिक वर्ष का चयन करें<span class="text-danger">*</span></label>
                            <select class="form-control select2">
                                <option value="0">-Select-</option>
                                <option value="37">2024-25</option>
                                <option selected="selected" value="36">2023-24</option>
                                <option value="35">2022-23</option>
                                <option value="34">2021-22</option>
                                <option value="33">2020-21</option>
                                <option value="32">2019-20</option>
                            </select>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row justify-content-center">
                            <div class="col-lg-3 text-center ">
                                <img src="../../img/captcha.png" width="150" />
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4 text-center">
                                <label class="font-bold">Please enter the code shown above</label>
                            </div>
                            <div class="col-lg-12"></div>

                            <div class="col-lg-2">
                                <div class="form-group">
                                    <input type="text" class="form-control text-center" />
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnRegisterStudents" Text="View" CssClass="btn btn-success btn-border w-lg" />

                            <a href="BriefReportOfDistrictWiseClassWiseEnrollment.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-lg-12" runat="server" id="dvStudentDetails">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">

                                    <table class="table text-center table-bordered table-hover text-center">
                                        <thead>
                                            <tr>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        S.No.<br />
                                                        सरल क्र.
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div style="text-align: center">
                                                        District<br />
                                                        ज़िला
                                                    </div>
                                                </th>
                                                <th scope="col">Total Students<br />
                                                    कुल छात्र</th>
                                                <th class="Class15" scope="col">
                                                    <div style="text-align: center">
                                                        Class 1<br />
                                                        कक्षा 1
                                                    </div>
                                                </th>
                                                <th class="Class15" scope="col">
                                                    <div style="text-align: center">
                                                        Class 2<br />
                                                        कक्षा 2
                                                    </div>
                                                </th>
                                                <th class="Class15" scope="col">
                                                    <div style="text-align: center">
                                                        Class 3<br />
                                                        कक्षा 3
                                                    </div>
                                                </th>
                                                <th class="Class15" scope="col">
                                                    <div style="text-align: center">
                                                        Class 4<br />
                                                        कक्षा 4
                                                    </div>
                                                </th>
                                                <th class="Class15" scope="col">
                                                    <div style="text-align: center">
                                                        Class 5<br />
                                                        कक्षा 5
                                                    </div>
                                                </th>
                                                <th class="Class68" scope="col" style="display: none;">
                                                    <div style="text-align: center">
                                                        Class 6<br />
                                                        कक्षा 6
                                                    </div>
                                                </th>
                                                <th class="Class68" scope="col" style="display: none;">
                                                    <div style="text-align: center">
                                                        Class 7<br />
                                                        कक्षा 7
                                                    </div>
                                                </th>
                                                <th class="Class68" scope="col" style="display: none;">
                                                    <div style="text-align: center">
                                                        Class 8<br />
                                                        कक्षा 8
                                                    </div>
                                                </th>
                                                <th class="Class910" scope="col" style="display: none;">
                                                    <div style="text-align: center">
                                                        Class 9<br />
                                                        कक्षा 9
                                                    </div>
                                                </th>
                                                <th class="Class910" scope="col" style="display: none;">
                                                    <div style="text-align: center">
                                                        Class 10<br />
                                                        कक्षा 10
                                                    </div>
                                                </th>
                                                <th class="Class1112" scope="col" style="display: none;">
                                                    <div style="text-align: center">
                                                        Class 11<br />
                                                        कक्षा 11
                                                    </div>
                                                </th>
                                                <th class="Class1112" scope="col" style="display: none;">
                                                    <div style="text-align: center">
                                                        Class 12<br />
                                                        कक्षा 12
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr class="alert-grid">
                                                <td>1
                                                </td>
                                                <td>
                                                    <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_Label1" class="ui-widget" style="font-weight: bold;">ALIRAJPUR</span>
                                                </td>
                                                <td style="background-color: Silver;">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblTotal" class="ui-widget" style="font-weight: bold;">162669</span>
                                                    </div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass1" class="ui-widget" style="font-weight: bold;">21304</span>
                                                    </div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass2" class="ui-widget" style="font-weight: bold;">21869</span>
                                                    </div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass3" class="ui-widget" style="font-weight: bold;">19747</span>
                                                    </div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass4" class="ui-widget" style="font-weight: bold;">16550</span>
                                                    </div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass5" class="ui-widget" style="font-weight: bold;">18113</span>
                                                    </div>
                                                </td>
                                                <td class="Class68" style="display: none;">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass6" class="ui-widget" style="font-weight: bold;">14762</span>
                                                    </div>
                                                </td>
                                                <td class="Class68" style="display: none;">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass7" class="ui-widget" style="font-weight: bold;">13194</span>
                                                    </div>
                                                </td>
                                                <td class="Class68" style="display: none;">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass8" class="ui-widget" style="font-weight: bold;">10992</span>
                                                    </div>
                                                </td>
                                                <td class="Class910" style="display: none;">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass9" class="ui-widget" style="font-weight: bold;">8676</span>
                                                    </div>
                                                </td>
                                                <td class="Class910" style="display: none;">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass10" class="ui-widget" style="font-weight: bold;">7207</span>
                                                    </div>
                                                </td>
                                                <td class="Class1112" style="display: none;">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass11" class="ui-widget" style="font-weight: bold;">4872</span>
                                                    </div>
                                                </td>
                                                <td class="Class1112" style="display: none;">
                                                    <div style="text-align: right">
                                                        <span id="ctl00_ctl00_rmp_main_dpPH_gvStudentList_ctl02_lblClass12" class="ui-widget" style="font-weight: bold;">5383</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="alert-warning" align="right" style="background-color: Silver;">
                                                <td>&nbsp;</td>
                                                <td>Total</td>
                                                <td>
                                                    <div style="text-align: right">162669</div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">21304</div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">21869</div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">19747</div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">16550</div>
                                                </td>
                                                <td class="Class15">
                                                    <div style="text-align: right">18113</div>
                                                </td>
                                                <td class="Class68" style="display: none;">
                                                    <div style="text-align: right">14762</div>
                                                </td>
                                                <td class="Class68" style="display: none;">
                                                    <div style="text-align: right">13194</div>
                                                </td>
                                                <td class="Class68" style="display: none;">
                                                    <div style="text-align: right">10992</div>
                                                </td>
                                                <td class="Class910" style="display: none;">
                                                    <div style="text-align: right">8676</div>
                                                </td>
                                                <td class="Class910" style="display: none;">
                                                    <div style="text-align: right">7207</div>
                                                </td>
                                                <td class="Class1112" style="display: none;">
                                                    <div style="text-align: right">4872</div>
                                                </td>
                                                <td class="Class1112" style="display: none;">
                                                    <div style="text-align: right">5383</div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </fieldset>



        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

