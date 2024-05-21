<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TextBookViewDeliveredToBlockOffice.aspx.cs" Inherits="mis_Scheme_TextBookViewDeliveredToBlockOffice" %>

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
            <h4 class="text-themecolor ">View textbooks delivered to the consignee (Block Office)
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Textbook Vitran</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Delivery</a></li>
                    <li class="breadcrumb-item active"><a href="TextBookViewDeliveredToBlockOffice.aspx" title="click to go on">View textbooks delivered to the consignee (Block Office)</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <fieldset>
                    <legend>परेषिती(Block Office) को वितरित पाठ्यपुस्तकें देखें</legend>
                    <div class="row justify-content-center">

                        <div class="col-md-3">
                            <label class="font-bold">Year : <span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2024-25</option>
                                <option value="Bhopal">2023-24</option>
                                <option value="Raisen">2022-23</option>
                                <option value="Rajgarh">2021-22</option>


                            </select>
                        </div>

                        <div class="col-md-3">
                            <label class="font-bold">District :<span style="color: red">*</span></label>
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
                            <label class="font-bold">Consignee :<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">BRC, BAROD </option>
                                <option value="1">BRC, NALKHEDA </option>
                                <option value="1">BRC, SUSNER</option>
                                <option value="1">BRC, AGAR </option>


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
                                            <td>District</td>
                                            <td>Block</td>
                                            <td>Consignee</td>
                                            <td>Challan No</td>
                                            <td>Challan Date</td>
                                            <td>Depot</td>
                                            <td>Bundles</td>
                                            <td>Books</td>
                                            <td>Status</td>
                                            <td>Photo</td>
                                            <td>View</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Agar Malwa</td>
                                            <td>Susner</td>
                                            <td>BRC, SUSNER</td>
                                            <td>5275677</td>
                                            <td>14/01/2022</td>
                                            <td>Ujjain</td>
                                            <td>23</td>
                                            <td>2,206</td>
                                            <td>टीबीसी द्वारा संबंधित परेषिती(Consignee) को भेजा गया</td>
                                            <td>
                                                <img src="#" alt="img" /></td>
                                            <td><i class="fa fa-eye "></i></td>
                                        </tr>
                                        <tr>
                                            <td>Agar Malwa</td>
                                            <td>Susner</td>
                                            <td>BRC, SUSNER</td>
                                            <td>2075129</td>
                                            <td>14/01/2022</td>
                                            <td>Ujjain</td>
                                            <td>72</td>
                                            <td>10,124</td>
                                            <td>टीबीसी द्वारा संबंधित परेषिती(Consignee) को भेजा गया</td>
                                            <td>
                                                <img src="#" alt="img" /></td>
                                            <td><i class="fa fa-eye "></i></td>
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

