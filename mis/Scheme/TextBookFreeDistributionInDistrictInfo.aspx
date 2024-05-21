<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TextBookFreeDistributionInDistrictInfo.aspx.cs" Inherits="mis_Scheme_TextBookFreeDistributionInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #Report {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">District Free Textbook Distribution Information
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Textbook Vitran</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Delivery</a></li>
                    <li class="breadcrumb-item active"><a href="TextBookFreeDistributionInDistrictInfo.aspx" title="click to go on">District Free Textbook Distribution Information</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <fieldset>
                    <legend>जिले में निःशुल्क पाठ्यपुस्तकों की वितरण की जानकारी</legend>
                    <div class="row justify-content-center">

                        <div class="col-md-3">
                            <label class="font-bold">वर्ष  : <span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2024-25</option>
                                <option value="Bhopal">2023-24</option>
                                <option value="Raisen">2022-23</option>
                                <option value="Rajgarh">2021-22</option>


                            </select>
                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">जिला :<span style="color: red">*</span></label>
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


                        <div class="col-md-3 ">
                            <label class="font-bold">पुस्तक का प्रकार :<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">पाठ्यपुस्तक </option>
                                <option value="1">दक्षता उन्‍नयन अभ्‍यास पुस्‍तक</option>
                                <option value="1">प्रयास अभ्‍यास पुस्तिका</option>
                                <option value="1">FLN </option>
                                <option value="1">एटग्रेड  </option>


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

                                <div class="col-lg-1 ">
                                    <div class="form-group">
                                        <input type="text" class="form-control text-center" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">


                            <div class="col-md-2 text-center">
                                <div class="form-group">
                                    <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded btn-block" onclick="Show();">Show</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="Report">
                    <legend>DETAILS</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <td>SNo</td>
                                            <td>जिला</td>
                                            <td>माध्यम</td>
                                            <td>कक्षा</td>
                                            <td>पाठ्यपुस्तक</td>
                                            <td>कुल पाठ्यपुस्तक जिनका ऑडर किया गया</td>
                                            <td>TBC द्वारा BRC को वितरित पाठ्यपुस्तक</td>
                                            <td>BRC द्वारा प्राप्त की गई पाठ्यपुस्तकों की संख्या</td>
                                            <td>जिला प्रदर्शन %</td>
                                            <td>क्षतिग्रस्त पाठ्यपुस्तकों की संख्या</td>
                                            <td>TBC द्वारा BRC को कम प्रदाय पाठ्यपुस्तको की संख्या</td>
                                            <td>BRC द्वारा शाला के लिये बनाये प्रदाय आदेश में पाठ्यपुस्तकों की कुल संख्या</td>
                                            <td>BRC द्वारा शाला को जारी प्रदाय आदेश में पाठ्यपुस्तकों की संख्या</td>
                                            <td>शाला द्वारा प्राप्त पाठ्यपुस्तको की संख्या</td>
                                            <td>शाला द्वारा प्राप्त जिला प्रदर्शन %</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Alirajpur</td>
                                            <td>Hindi</td>
                                            <td>Class Group 3 to 5</td>
                                            <td>Prayas Practice Book for 2023-24 Class 3 to 5</td>
                                            <td>54,413</td>
                                            <td>54,413</td>
                                            <td>54,413</td>
                                            <td>100.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>52,954</td>
                                            <td>52,470</td>
                                            <td>52,173</td>
                                            <td>99.4</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Alirajpur</td>
                                            <td>Hindi</td>
                                            <td>Class Group 6 to 8</td>
                                            <td>Prayas Practice Book for 2023-24 Class 6 to 8</td>
                                            <td>36,167</td>
                                            <td>36,167</td>
                                            <td>36,167</td>
                                            <td>100.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>34,788</td>
                                            <td>34,079</td>
                                            <td>33,294</td>
                                            <td>97.7</td>
                                        </tr>
                                        <tr>
                                            <td><b>कुल</b></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>90,580</td>
                                            <td>90,580</td>
                                            <td>90,580</td>
                                            <td>100.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>87,742</td>
                                            <td>86,549</td>
                                            <td>85,467</td>
                                            <td>99.4</td>
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
    <script>
        function Show() {
            var element = document.getElementById("Report");
            element.style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

