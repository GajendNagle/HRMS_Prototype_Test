<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TextBookViewDispatchOrderForSchool.aspx.cs" Inherits="mis_Scheme_TextBookViewDispatchOrderForSchool" %>

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
            <h4 class="text-themecolor ">View School Textbook Dispatch Orders
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Textbook Vitran</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Delivery</a></li>
                    <li class="breadcrumb-item active"><a href="TextBookViewDispatchOrderForSchool.aspx" title="click to go on">View School Textbook Dispatch Orders</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <fieldset>
                    <legend>स्कूलों के लिए पाठ्यपुस्तकों के प्रेषण आदेश देखें</legend>
                    <div class="row">

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

                        <div class="col-md-3 ">
                            <label class="font-bold">विकासखण्ड :<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">BERASIA बैरसिया  </option>
                                <option value="1">PHANDA GRAMIN फंदा ग्रमीण </option>
                                <option value="1">PHANDA URBAN फंदा शहरी नया शहर </option>
                                <option value="1">Phanda Urban (Old City) फंदा शहरी  पुराना  शहर </option>


                            </select>
                        </div>
                        <div class="col-md-3 mt-3">
                            <label class="font-bold">डिस्पेच का प्रकार : <span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="2">Dispatch Order Created by Consignee (BEO/ BRC)  </option>
                                <option value="2">Transport Order has been Created and is pending for Transportation  </option>
                                <option value="2">Transport Order has been Locked and Pending for Delivery at the School  </option>
                                <option value="2">Books Received at School for Distribution to Students  </option>


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
                                    <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded btn-block" onclick="Show();">जानकारी देखें</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="Report">
                    <legend>आदेश देखें</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <td>District</td>
                                            <td>Block</td>
                                            <td>Dispatch ID</td>
                                            <td>Academic Year</td>
                                            <td>Dispatch Date</td>
                                            <td>Status</td>
                                            <td>DISE Code</td>
                                            <td>School</td>
                                            <td>No. Of Books</td>
                                            <td>Transport ID</td>
                                            <td>Transport Date</td>
                                            <td>Delivery Date</td>
                                            <td>Vehicle NO</td>
                                            <td>Driver</td>
                                            <td>View</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Bhopal</td>
                                            <td>Berasia</td>
                                            <td>100156870</td>
                                            <td>2021-2022</td>
                                            <td>15/02/2022</td>
                                            <td>Dispatch Order Created by Consignee (BEO/ BRC)</td>
                                            <td>23320106303</td>
                                            <td>GOVT MS DAMKHEDA (Class 1 to 8)</td>
                                            <td>0</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td><i class="fa fa-eye"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Bhopal</td>
                                            <td>Berasia</td>
                                            <td>100059112</td>
                                            <td>2021-2022</td>
                                            <td>02/08/2021</td>
                                            <td>Dispatch Order Created by Consignee (BEO/ BRC)</td>
                                            <td>23320101602</td>
                                            <td>GOVT MS DONGARGAON (Class 1 to 8)</td>
                                            <td>0</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td><i class="fa fa-eye"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Bhopal</td>
                                            <td>Berasia</td>
                                            <td>100045412</td>
                                            <td>2021-2022</td>
                                            <td>30/07/2021</td>
                                            <td>Dispatch Order Created by Consignee (BEO/ BRC)</td>
                                            <td>23320129259</td>
                                            <td>GOVT HSS GIRLS, SAROJINI NAIDU (Class 1 to 12)</td>
                                            <td>0</td>
                                            <td>100004527</td>
                                            <td>09/08/2021</td>
                                            <td></td>
                                            <td>MP04VD0443</td>
                                            <td>MAHIPAL 7047926014</td>
                                            <td><i class="fa fa-eye"></i></td>
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

