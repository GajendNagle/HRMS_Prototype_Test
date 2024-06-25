<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GanaveshDBTReportDistrictWise.aspx.cs" Inherits="mis_Scheme_GanaveshDBTReportDistrictWise" %>

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
                            <a href="#GBTReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>Uniform Distribution Management GBT Reports</span></a>
                        </li>
                        <li class="breadcrumb-item">District Wise Uniform Distribution Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">District Wise Uniform Distribution Report /
                जिलावार यूनिफार्म वितरण रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            
            <div class="mt-3">
                <fieldset>
                    <legend>District Wise Uniform Distribution Report / जिलावार यूनिफार्म वितरण रिपोर्ट</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>
                                School Category<br />
                                स्कूल श्रेणी<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="0">Non CM Rise</option>
                                <option selected="selected" value="1">CM Rise</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label>
                                Select Academic Year
                                <br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2024-25</option>
                                <option value="Bhopal">2023-24</option>
                                <option value="Raisen">2022-23</option>
                                <option value="Rajgarh">2021-22</option>


                            </select>
                        </div>


                        <div class="col-md-3">
                            <label>
                                Class
                                <br />
                                कक्षा<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="1">1 st</option>
                                <option value="2">2 nd</option>
                                <option value="3">3 rd</option>
                                <option value="4">4 th</option>
                                <option value="5">5 th</option>
                                <option value="6">6 th</option>
                                <option value="7">7 th</option>
                                <option value="8">8 th</option>


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
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-border btn w-lg" onclick="Show();">View</button>
                                <a href="GanaveshDBTReportDistrictWise.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>

                </fieldset>

                <fieldset id="Report">
                    <legend>District Wise Uniform Distribution Report / जिलावार यूनिफार्म वितरण रिपोर्ट</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>S.No<br />
                                                सरल क्र.</th>
                                            <th>District<br />
                                                ज़िला
                                            </th>
                                            <th>Total No. of Schools<br />स्कूलों की कुल संख्या</th>
                                            <th>Total No. of Schools Sanctioned<br />स्वीकृत स्कूलों की कुल संख्या</th>
                                            <th>Total No. of Enroll Students<br />नामांकित छात्रों की कुल संख्या</th>
                                            <th>Total No. of Target Students<br />लक्षित छात्रों की कुल संख्या</th>
                                            <th>Total No. of Sanctioned Students<br />स्वीकृत छात्रों की कुल संख्या</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>REWA</td>
                                            <td>20</td>
                                            <td>20</td>
                                            <td>2463</td>
                                            <td>2319</td>
                                            <td>2278</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>SAGAR</td>
                                            <td>18</td>
                                            <td>18</td>
                                            <td>3914</td>
                                            <td>3647</td>
                                            <td>3216</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>JABALPUR</td>
                                            <td>18</td>
                                            <td>18</td>
                                            <td>2821</td>
                                            <td>2566</td>
                                            <td>2455</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>SATNA</td>
                                            <td>16</td>
                                            <td>16</td>
                                            <td>1812</td>
                                            <td>1662</td>
                                            <td>1558</td>
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

