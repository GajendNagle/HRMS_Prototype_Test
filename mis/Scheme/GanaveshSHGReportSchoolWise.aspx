<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GanaveshSHGReportSchoolWise.aspx.cs" Inherits="mis_Scheme_GanaveshSHGReportSchoolWise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #Report {
            display: none;
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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#SHGReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>Uniform Distribution Management SHG Reports</span></a>
                        </li>
                        <li class="breadcrumb-item">School Wise Uniform Demand & Distribution Progress</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">School Wise Uniform Demand & Distribution Progress
                <br />
                        स्कूल वार यूनिफार्म मांग एवं वितरण प्रगति</h4>
                </div>
            </div>
        </div>
        <div class="card-body">


            <div class="mt-3">
                <fieldset>
                    <legend>School Wise Uniform Demand / स्कूल वार यूनिफार्म की मांग  </legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>Select Academic Year<br />शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2024-25</option>
                                <option value="Bhopal">2023-24</option>
                                <option value="Raisen">2022-23</option>
                                <option value="Rajgarh">2021-22</option>


                            </select>
                        </div>
                        <div class="col-md-3">
                            <label>Select District Name<br />ज़िला का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
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


                            </select>
                        </div>

                        <div class="col-md-3">
                            <label>Block Name<br />ब्लॉक का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">ANUPPUR अनूपपुर</option>
                                <option value="2">JAITHARI जैतहरी</option>
                                <option value="3">KOTMA कोतमा</option>
                                <option value="3">PUSHPRAJ GARH पुष्पराजगढ़</option>


                            </select>
                        </div>

                        <div class="col-md-3">
                            <label>Basic department of registration of self-help group<br />स्व सहायता समूह के पंजीयन का मूल विभाग<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">MPSULM</option>
                                <option value="2">MPRULM</option>
                                <option value="3">WCD</option>


                            </select>
                        </div>
                        <div class="col-lg-12 mt-5">
                            <div class="row justify-content-center">
                                <div class="col-lg-3 text-center">
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
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-border w-lg" onclick="Show();">स्कूल-वार यूनिफार्म की मांग देखे</button>
                                <a href="GanaveshSHGReportSchoolWise.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="Report">
                    <legend>School Wise Uniform Demand / स्कूल वार यूनिफार्म की मांग </legend>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center table-bordered table-hover text-center">
                                    <thead>
                                        <tr>
                                            <th>S.No<br />सरल क्र.</th>
                                            <th>Primary Department of self help group registration<br />स्वयं सहायता समूह पंजीयन का प्राथमिक विभाग</th>
                                            <th>Block<br />ब्लॉक</th>
                                            <th>Total Boys<br />कुल लड़के</th>
                                            <th>Total Girls<br />कुल लड़कियाँ</th>
                                            <th>No of Uniforms for boys which Order has been placed<br />लड़कों के लिए यूनिफार्म की संख्या जिनका ऑर्डर दिया गया है</th>
                                            <th>No of Uniforms for girls for which Order has been placed<br />लड़कियों के लिए यूनिफ़ॉर्म की संख्या जिसके लिए ऑर्डर दिया गया है</th>
                                            <th>No of Uniforms for boys received by the School Head<br />स्कूल प्रमुख द्वारा प्राप्त लड़कों के लिए यूनिफार्म की संख्या</th>
                                            <th>No of Uniforms for girls received by the School Head<br />स्कूल प्रमुख द्वारा प्राप्त लड़कियों हेतु यूनिफार्म की संख्या</th>
                                            <th>No of Uniforms for boys rejected by the School Head<br />स्कूल प्रमुख द्वारा अस्वीकृत लड़कों की यूनिफार्म की संख्या</th>
                                            <th>No of Uniforms for girls rejected by the School Head<br />स्कूल प्रमुख द्वारा अस्वीकृत लड़कियों की यूनिफार्म की संख्या</th>
                                        </tr>
                                    </thead>
                                    <tr class="alert-grid">
                                        <td>1</td>
                                        <td>MPSULM
                                        </td>
                                        <td>Alirajpur</td>
                                        <td>822</td>
                                        <td>846</td>
                                        <td>1644</td>
                                        <td>1692</td>
                                        <td>1646</td>
                                        <td>1690</td>
                                        <td>0</td>
                                        <td>0</td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <script>
        function Show() {
            var element = document.getElementById("Report");
            element.style.display = "block";
        }
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

