<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BlockTextbookDistribution.aspx.cs" Inherits="mis_Scheme_BlockTextbookDistribution" %>

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
            <h4 class="text-themecolor ">Information about distribution of free textbooks in the Block</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=LaptopScheme" title="click to go on">Textbook Vitran Scheme</a></li>
                    <li class="breadcrumb-item active"><a href="BlockTextbookDistribution.aspx" title="click to go on">Information about distribution of free textbooks in the Block</a></li>
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
                                        <button type="button" id="btnShowDetails" class="btn btn-success btn-rounded" onclick="Show();">Show </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="Report">

                        <fieldset>
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
                                                    <th>S.No.</th>
                                                    <th>District</th>
                                                    <th>Block</th>
                                                    <th>Medium</th>
                                                    <th>Class</th>
                                                    <th>Textbook</th>
                                                    <th>Total Textbooks Ordered</th>
                                                    <th>Textbook distributed by TBC to BRC</th>
                                                    <th>Number of textbooks received by BRC</th>
                                                    <th>District Performance %</th>
                                                    <th>Number of damaged textbooks</th>
                                                    <th>Less number of textbooks supplied to BRC by TBC</th>
                                                    <th>Total number of textbooks in the supply order made by BRC for the school</th>
                                                    <th>Number of textbooks in the supply order issued by BRC to the school</th>
                                                    <th>Number of textbooks received by the school</th>
                                                    <th>District Performance % achieved by School</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>GWALIOR</td>
                                                    <td>Bhitarwar</td>
                                                    <td>Urdu</td>
                                                    <td>7th</td>
                                                    <td>(Urdu) Land Our Mind Geography (Urdu)-6</td>
                                                    <td>130</td>
                                                    <td>130</td>
                                                    <td>130</td>
                                                    <td>100.00</td>
                                                    <td>0</td>
                                                    <td>0</td>
                                                    <td>85</td>
                                                    <td>84</td>
                                                    <td>66</td>
                                                    <td>95.2</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>GWALIOR</td>
                                                    <td>Dabra</td>
                                                    <td>English</td>
                                                    <td>7th</td>
                                                    <td>Our Environment-2(Geography)-7</td>
                                                    <td>270</td>
                                                    <td>270</td>
                                                    <td>270</td>
                                                    <td>100.00</td>
                                                    <td>0</td>
                                                    <td>0</td>
                                                    <td>270</td>
                                                    <td>270</td>
                                                    <td>270</td>
                                                    <td>100.00</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>GWALIOR</td>
                                                    <td>Ghatigaon</td>
                                                    <td>Hindi</td>
                                                    <td>7th</td>
                                                    <td>Auxiliary Reading-7</td>
                                                    <td>90</td>
                                                    <td>90</td>
                                                    <td>90</td>
                                                    <td>100.00</td>
                                                    <td>0</td>
                                                    <td>0</td>
                                                    <td>0</td>
                                                    <td>0</td>
                                                    <td>0</td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>GWALIOR</td>
                                                    <td>Bhitarwar</td>
                                                    <td>Hindi</td>
                                                    <td>7th</td>
                                                    <td>Mathematics-7</td>
                                                    <td>270</td>
                                                    <td>270</td>
                                                    <td>270</td>
                                                    <td>100.00</td>
                                                    <td>0</td>
                                                    <td>0</td>
                                                    <td>270</td>
                                                    <td>270</td>
                                                    <td>270</td>
                                                    <td>100.00</td>
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



