<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TextBookDistributionInSchool.aspx.cs" Inherits="mis_Scheme_TextBookDistributionInSchool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                    <li class="breadcrumb-item active"><a href="TextBookDistributionInSchool.aspx" title="click to go on">View School Textbook Dispatch Orders</a></li>
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
                            <label class="font-bold">विकासखण्ड :<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">BERASIA बैरसिया  </option>
                                <option value="1">PHANDA GRAMIN फंदा ग्रमीण </option>
                                <option value="1">PHANDA URBAN फंदा शहरी नया शहर </option>
                                <option value="1">Phanda Urban (Old City) फंदा शहरी  पुराना  शहर </option>


                            </select>
                        </div>

                        <div class="col-md-3 ">
                            <label class="font-bold">पुस्तक :<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="0">-Select-</option>
                                <option value="1">Bhasha Bharti - 1</option>
                                <option value="2">Math Magic -1</option>
                                <option value="3">English Reader (General Series)-1</option>
                                <option selected="selected" value="4">Bhasha Bharti-2</option>
                                <option value="5">Math Magic -2</option>
                                <option value="6">English Reader (General Series)-2</option>
                                <option value="7">Bhasha Bharti-3</option>
                                <option value="8">Math Magic -3</option>
                                <option value="9">Environmental Studies -Aaspaas - 3</option>
                                <option value="10">English Reader (General Series)-3</option>
                                <option value="11">Bhasha Bharti-4</option>
                                <option value="12">Math Magic-4</option>
                                <option value="13">Environmental Studies -Aaspaas - 4</option>
                                <option value="14">English Reader (General Series)-4</option>
                                <option value="15">Bhasha Bharti-5</option>
                                <option value="16">Math Magic-5</option>
                                <option value="17">Environmental Studies-Aaspaas - 5</option>
                                <option value="18">English Reader (General Series)-5</option>


                            </select>
                        </div>
                        <div class="col-md-3  mt-3 ">
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
                            <label class="font-bold">माध्यम : <span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="0">-Select-</option>
                                <option selected="selected" value="2">Hindi</option>
                                <option value="3">English</option>
                                <option value="4">Marathi</option>
                                <option value="5">Urdu</option>

                            </select>
                        </div>

                        <div class="col-md-3 mt-3">
                            <label class="font-bold">कक्षा : <span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="0">-Select-</option>
                                <option value="1">1st</option>
                                <option selected="selected" value="2">2nd</option>
                                <option value="3">3rd</option>
                                <option value="4">4th</option>
                                <option value="5">5th</option>
                                <option value="6">6th</option>
                                <option value="7">7th</option>
                                <option value="8">8th</option>
                                <option value="15">Class Group 1 to 2</option>
                                <option value="13">Class Group 3 to 5</option>
                                <option value="16">Class Group 4 to 5</option>
                                <option value="14">Class Group 6 to 8</option>

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


            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

