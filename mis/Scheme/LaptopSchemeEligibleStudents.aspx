<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LaptopSchemeEligibleStudents.aspx.cs" Inherits="mis_Scheme_LaptopSchemeEligibleStudents" %>

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
            <h4 class="text-themecolor ">List of Eligible Students </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=LaptopScheme" title="click to go on">Laptop Scheme</a></li>
                    <li class="breadcrumb-item active"><a href="LaptopSchemeEligibleStudents.aspx" title="click to go on">List of Eligible Students</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <div class="mt-3">
                    <fieldset>
                        <legend>List of Eligible Students </legend>

                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <label class="font-bold">District : <span style="color: red">*</span></label>
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
                                <label class="font-bold">School :<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">GHSS MODEL  GHATIGAON (6-12)</option>
                                    <option value="1">GHSS PATAI (Class- 6 to 12)</option>                                    
                                    <option value="7">Higher Secondary Schools  (Class 9 to 12)</option>
                                    <option value="10">High Schools (Class 9 to 10)</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="font-bold">Academic Year : <span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="12">2024-25</option>
                                    <option value="14">2023-24</option>
                                    <option value="16">2022-23</option>
                                    <option value="18">2021-22</option>


                                </select>
                            </div>



                            <div class="col-lg-12 mt-5">
                            </div>
                            <div class="col-md-4 text-center">
                                <div class="form-group">
                                    <button type="button" id="btnShowStudentDetails" class="btn btn-success btn-rounded" onclick="Show();">Get List of Eligible Students </button>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="Report">
                       
                        <fieldset>
                            <legend>Students Details </legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>S.No.</th>
                                                    <th>Roll No</th>
                                                    <th>Samagra Id</th>
                                                    <th>Student Code</th>
                                                    <th>Student Name</th>
                                                    <th>Father Name</th>
                                                    <th>Mother Name</th>                                                    
                                                    <th>Gender</th>
                                                    <th>Category</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>876103023057</td>
                                                    <td>103023060</td>
                                                    <td>A18/6029103/876</td>
                                                    <td>ABHISEK ADWASI</td>
                                                    <td>RAI SINGH ADWASI</td>
                                                    <td>SAROJ DEVI</td>
                                                    <td>MALE</td>
                                                    <td>OBC</td>
                                                   
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>22144144257</td>
                                                    <td>1833001030</td>
                                                    <td>A18/142145/018</td>
                                                    <td>ABHISEK ADWASI</td>
                                                    <td>MOHANLAL RAJAK</td>
                                                    <td>USHA RAJAK</td>
                                                    <td>MALE</td>
                                                    <td>OBC</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>22144144549</td>
                                                    <td>18330012016</td>
                                                    <td>A18/1456545/019</td>
                                                    <td>NITU SINGH</td>
                                                    <td>POORAN SINGH</td>
                                                    <td>MEENA</td>
                                                    <td>FEMALE</td>
                                                    <td>OBC</td>
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

