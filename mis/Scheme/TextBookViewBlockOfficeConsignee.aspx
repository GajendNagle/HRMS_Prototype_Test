<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TextBookViewBlockOfficeConsignee.aspx.cs" Inherits="mis_Scheme_Default" %>

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
            <h4 class="text-themecolor ">View Consignee (Block Office)
 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Textbook Vitran</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Delivery</a></li>
                    <li class="breadcrumb-item active"><a href="TextBookViewBlockOfficeConsignee.aspx" title="click to go on">View Consignee (Block Office)</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <fieldset>
                    <legend>परेषिती(Block Office) देखें</legend>
                    <div class="row justify-content-center">
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

                        <div class="col-md-1 "></div>

                        <div class="col-md-3 ">
                            <label class="font-bold">Block :<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">ANUPPUR अनूपपुर</option>
                                <option value="2">JAITHARI जैतहरी</option>
                                <option value="3">KOTMA कोतमा</option>
                                <option value="3">PUSHPRAJ GARH पुष्पराजगढ़</option>

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
                                            <th>ID</th>
                                            <th>OIS_code</th>
                                            <th>Name</th>
                                            <th>Customer_id</th>
                                            <th>district_id</th>
                                            <th>block_id</th>
                                            <th>lat</th>
                                            <th>long</th>
                                            <th>Office_ID</th>
                                            <th>TBC_Block_ID</th>
                                            <th>ID1</th>
                                            <th>District_Name</th>
                                            <th>District_NameH</th>
                                            <th>District_Type</th>
                                            <th>Division_ID</th>
                                            <th>DDO_District_ID</th>
                                            <th>Insert_Time</th>
                                            <th>Update_Time</th>
                                            <th>User_ID</th>
                                            <th>District_code</th>
                                            <th>Code_By_MPBSE</th>
                                            <th>Is_tribal</th>
                                            <th>Code_By_BSPY</th>
                                            <th>IsAttendaceActive</th>
                                            <th>D_Lat</th>
                                            <th>D_Long</th>
                                            <th>ID2</th>
                                            <th>District_ID1</th>
                                            <th>Block_Name</th>
                                            <th>Block_NameH</th>
                                            <th>Block_Code</th>
                                            <th>Block_Type</th>
                                            <th>Insert_Time1</th>
                                            <th>Update_Time1</th>
                                            <th>User_ID1</th>
                                            <th>Block_Code_New</th>
                                            <th>Is_Tribal1</th>
                                            <th>sssm_lb_id</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>182</td>
                                        <td>232801OBT02</td>
                                        <td>BRC, RAJPUR</td>
                                        <td></td>
                                        <td>28</td>
                                        <td>182</td>
                                        <td></td>
                                        <td></td>
                                        <td>110551</td>
                                        <td>29</td>
                                        <td>28</td>
                                        <td>Barwani</td>
                                        <td>बड़वानी</td>
                                        <td>N</td>
                                        <td>4</td>
                                        <td>02</td>
                                        <td>24/04/2008 11:07:00</td>
                                        <td>24/04/2008 11:07:00</td>
                                        <td>1</td>
                                        <td>1742</td>
                                        <td>55</td>
                                        <td></td>
                                        <td>723</td>
                                        <td></td>
                                        <td>22.0363157</td>
                                        <td>74.903339</td>
                                        <td>182</td>
                                        <td>28</td>
                                        <td>Raj Pur</td>
                                        <td>राज पुर</td>
                                        <td>2801</td>
                                        <td>T</td>
                                        <td>24/04/2008 11:35:00</td>
                                        <td>24/04/2008 11:35:00</td>
                                        <td>1</td>
                                        <td>1742004</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>183</td>
                                        <td>232803OBT02</td>
                                        <td>BRC, BARWANI</td>
                                        <td></td>
                                        <td>28</td>
                                        <td>183</td>
                                        <td></td>
                                        <td></td>
                                        <td>110556</td>
                                        <td>25</td>
                                        <td>28</td>
                                        <td>Barwani</td>
                                        <td>बड़वानी</td>
                                        <td>N</td>
                                        <td>4</td>
                                        <td>02</td>
                                        <td>24/04/2008 11:07:00</td>
                                        <td>24/04/2008 11:07:00</td>
                                        <td>1</td>
                                        <td>1742</td>
                                        <td>55</td>
                                        <td></td>
                                        <td>723</td>
                                        <td></td>
                                        <td>22.0363157</td>
                                        <td>74.903339</td>
                                        <td>183</td>
                                        <td>28</td>
                                        <td>Barwani</td>
                                        <td>बड़वानी</td>
                                        <td>2803</td>
                                        <td>T</td>
                                        <td>24/04/2008 11:35:00</td>
                                        <td>04/08/2008 14:30:00</td>
                                        <td>4088</td>
                                        <td>1742001</td>
                                        <td></td>
                                        <td></td>
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

