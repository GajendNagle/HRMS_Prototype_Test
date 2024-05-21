<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DispatchOrdersOfTextbooks.aspx.cs" Inherits="mis_Scheme_DispatchOrdersOfTextbooks" %>

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
            <h4 class="text-themecolor ">View dispatch orders of textbooks for schools</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=LaptopScheme" title="click to go on">Textbook Vitran Scheme</a></li>
                    <li class="breadcrumb-item active"><a href="DispatchOrdersOfTextbooks.aspx" title="click to go on">View dispatch orders of textbooks for schools</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <div class="mt-3">
                    <fieldset>

                        <div class="row ">
                            <div class="col-md-3">
                                <label class="font-bold">Academic Year<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="12">2024-25</option>
                                    <option value="14">2023-24</option>
                                    <option value="16">2022-23</option>
                                    <option value="18">2021-22</option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="font-bold">District<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="51">AGAR MALWA </option>
                                    <option value="49">ALIRAJPUR  </option>
                                    <option value="47">ANUPPUR  </option>
                                    <option value="46">ASHOKNAGAR </option>
                                    <option value="45">BALAGHAT  </option>
                                    <option value="28">BARWANI  </option>
                                    <option value="35">BETUL  </option>
                                    <option value="3">BHIND  </option>
                                    <option value="32">BHOPAL  </option>
                                    <option value="48">BURHANPUR  </option>
                                    <option value="9">CHHATARPUR  </option>
                                    <option value="43">CHHINDWARA  </option>
                                    <option value="12">DAMOH  </option>
                                    <option value="5">DATIA  </option>
                                    <option value="23">DEWAS  </option>
                                    <option value="25">DHAR  </option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="font-bold">Book Type<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="12">Text book</option>
                                    <option value="14">Practical book</option>
                                    <option value="16">Work book</option>
                                    <option value="18">FLN</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="font-bold">Block<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="51">BHITARWAR </option>
                                    <option value="49">BAMORI  </option>                                   
                                    <option value="23">DABRA  </option>
                                    <option value="25">AMARPUR  </option>
                                </select>
                            </div>
                             <div class="col-md-3">
                                <label class="font-bold">Type Of Dispatch<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                   <option value="31">Dispatch Order Created by Consignee (BEO/ BRC) </option>
                                    <option value="51">Dispatch Order has been Locked by Consignee (BEO/ BRC) and is pending for Transport Order Creation </option>
                                    <option value="49">Transport Order has been Created and is pending for Transportation  </option>                                   
                                    <option value="23">Transport Order has been Locked and Pending for Delivery at the School</option>
                                    <option value="25">Books Received at School for Distribution to Students</option>
                                </select>
                            </div>

                            <div class="col-lg-12 mt-5">

                                <div class="col-lg-12">

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
                            </div>
                            <div class="row justify-content-center">
                                <div class="col-md-3 text-center">
                                    <div class="form-group">
                                        <button type="button" id="btnShowDetails" class="btn btn-success btn-rounded" onclick="Show();">View Information </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="Report">

                        <fieldset>
                            <legend>View Order</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-12 text-end">
                                        <div class="form-group">
                                            <button class="btn btn-success">Download Excel File</button>

                                        </div>
                                    </div>

                                    <div class="table-responsive">


                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>District</th>
                                                    <th>Block</th>
                                                    <th>Dispatch Id</th>
                                                    <th>Academic Year</th>
                                                    <th>Dispatch Date</th>
                                                    <th>Status</th>
                                                    <th>DISE Code</th>
                                                    <th>School</th>
                                                    <th>Number of books </th>                                                    
                                                    <th>Transport Id</th>
                                                    <th>Transport Date</th>
                                                    <th>Delivery Date</th>
                                                    <th>Vehicle No</th>
                                                    <th>Driver</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                  <td>GWALIOR</td>
                                                    <td>Bhitarwar</td>
                                                    <td>100246213</td>
                                                    <td>2022-2023</td>
                                                    <td>22/08/2022</td>
                                                    <td>Dispatch Order Created by Consignee (BEO/ BRC)</td>
                                                    <td>23040107001</td>
                                                    <td>GPS Lakhnoti ( 1 to 5)</td>
                                                    <td>0</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>                                                    
                                                </tr>
                                                <tr>                                                   
                                                    <td>GWALIOR</td>
                                                    <td>Dabra</td>
                                                    <td>100246209</td>
                                                    <td>2022-2023</td>
                                                    <td>22/08/2022</td>
                                                    <td>Dispatch Order Created by Consignee (BEO/ BRC)</td>
                                                    <td>23040107001</td>
                                                    <td>GMS DHAMNIKA ( 6 to 8)</td>
                                                    <td>0</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>  
                                                    </tr>
                                                <tr>
                                                    <td>GWALIOR</td>
                                                    <td>Bhitawar</td>
                                                    <td>100246209</td>
                                                    <td>2022-2023</td>
                                                    <td>22/08/2022</td>
                                                    <td>Dispatch Order Created by Consignee (BEO/ BRC)</td>
                                                    <td>23040107001</td>
                                                    <td>GMS DHAMNIKA ( 6 to 8)</td>
                                                    <td>0</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>  
                                                </tr>
                                                <tr>
                                                   <td>GWALIOR</td>
                                                    <td>Bhitarwar</td>
                                                    <td>100246213</td>
                                                    <td>2022-2023</td>
                                                    <td>22/08/2022</td>
                                                    <td>Dispatch Order Created by Consignee (BEO/ BRC)</td>
                                                    <td>23040107001</td>
                                                    <td>GPS Lakhnoti ( 1 to 5)</td>
                                                    <td>0</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>                                                    

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



