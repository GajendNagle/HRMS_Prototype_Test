<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolInfrastructure.aspx.cs" Inherits="mis_SchoolInfrastructure_SchoolInfrastructure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Infrastructure</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#LocationMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>School Infrastructure</span></a>
                        </li>

                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="container-fluid">
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row">
                    <div class="col-12">
                        <h4 class="card-title">School Infrastructure /
                             स्कूल इन्फ्रास्ट्रक्चर </h4>
                    </div>
                </div>
            </div>

            <div class="card-body">

                <fieldset>

                    <legend>School Infrastructure / स्कूल इन्फ्रास्ट्रक्चर </legend>
                    <div class="row align-items-end">
                        <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                            <div class="form-group">
                                <label>
                                    Enter School UDISE /<br />
                                    स्कूल यू-डाइस दर्ज करें<span style="color: red">*</span></label>
                                <input type="text" id="UdiseCode" placeholder=" Enter School UDISE" class="form-control" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <button type="button" class="btn btn-success btn-border" onclick="myFunction()">Search</button>
                                <a href="SchoolInfrastructure.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>

                    <div id="showfields" style="display: none;">
                        <div class="row align-items-end">


                            <div class="col-md-6 col-lg-4 col-xl-3  mt-3">
                                <div class="form-group">
                                    <label>
                                        Enter School Name/
                                    <br />
                                        स्कूल का नाम दर्ज करें<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" placeholder="Greenwood International School" disabled />
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 col-xl-3  mt-3">
                                <div class="form-group">
                                    <label>
                                        Enter School Management/
                                 <br />
                                        स्कूल प्रबंधन दर्ज करें<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" placeholder="Private Management" disabled />
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3  mt-3">
                                <div class="form-group">
                                    <label>
                                        Enter School Management Detail/
                <br />
                                        स्कूल प्रबंधन विवरण दर्ज करें<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" placeholder="Managed by Greenwood Education Trust" disabled />
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3  mt-3">
                                <div class="form-group">
                                    <label>
                                        Enter School Category/
                <br />
                                        स्कूल श्रेणी दर्ज करें<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" placeholder="Senior Secondary School" disabled />
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3  mt-3">
                                <div class="form-group">
                                    <label>
                                        Enter School Category Detail/
                <br />
                                        स्कूल श्रेणी विवरण दर्ज करें<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" placeholder="Offers Classes from 6th to 12th" disabled />
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3  mt-3">
                                <div class="form-group">
                                    <label>
                                        Enter School Hostel/
                <br />
                                        स्कूल हॉस्टल दर्ज करें<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" placeholder="Available" disabled />
                                </div>
                            </div>




                        </div>
                    </div>

                    <hr />

                </fieldset>

                <fieldset id="showfieldsinfo" style="display: none;">
                    <legend>School Basic Information / स्कूल की मूल जानकारी
                    </legend>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="specialAcademicsSection">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <tbody>
                                                <tr>
                                                    <th>Sankul Name / Code</th>
                                                    <td>GOVT HSS MAHATMA GANDHI BHEL - 23320300049</td>
                                                    <th>School Name / Code</th>
                                                    <td>GOVT MS BOYS BARKHEDA (BHEL) - 23355854596</td>
                                                </tr>
                                                <%--   <tr>
                                    <th>School Name (In English)</th>
                                    <td>CMRISE  -GOVT HSS BOYS, BERASIA (Class 6 to 12)</td>
                                    <th>School Name (हिंदी में)</th>
                                    <td>CMRISE  -GOVT HSS BOYS, BERASIA (Class 6 to 12)</td>
                                </tr>--%>
                                                <tr>
                                                    <th>Year of Establishment</th>
                                                    <td>1956</td>
                                                    <th>Board Type</th>
                                                    <td>MP Board</td>
                                                </tr>
                                                <tr>
                                                    <%-- <th>Board Code</th>
                                    <td>NA</td>--%>
                                                    <th>School Type</th>
                                                    <td>Boys</td>

                                                    <th>School Category</th>
                                                    <td>Higher Secondary School</td>
                                                </tr>
                                                <tr>

                                                    <th>School Category Details</th>
                                                    <td>Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</td>
                                                    <th>School Management Group Details</th>
                                                    <td>Department of Education</td>
                                                </tr>

                                                <tr>
                                                    <th>No. of Male Teachers</th>
                                                    <td>24</td>
                                                    <th>No. of Female Teachers</th>
                                                    <td>20</td>
                                                </tr>
                                                <tr>
                                                    <th>No. of Male Student</th>
                                                    <td>86</td>
                                                    <th>No. of Female Students</th>
                                                    <td>62</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="showfieldsdetails" style="display: none;">
                    >

                    <legend>School Infrastructure Details / स्कूल इंफ्रास्ट्रक्चर विवरण</legend>
                    <div class="row align-items-end">
                        <div class=" col-md-12">

                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center">
                                        <thead>
                                            <tr>
                                                <th>Sr.No./<br />
                                                    सरल क्र.
                                                </th>
                                                <th>Infrastructure Name /<br />
                                                    इंफ्रास्ट्रक्चर का नाम
                                                </th>
                                                <th>Available Infrastructure /<br />
                                                    उपलब्ध इंफ्रास्ट्रक्चर
                                                </th>
                                                <th>Infrastructure Counting /<br />
                                                    इंफ्रास्ट्रक्चर की गणना
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Class Room's</td>

                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option1" value="Yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option1" value="No">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>2</td>
                                                <td>Library</td>

                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option2" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option2" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>3</td>
                                                <td>Laboratory</td>

                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option3" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option3" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Playground</td>

                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option4" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option4" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Male Toilets</td>

                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option5" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option5" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6</td>

                                                <td>Female Toilets</td>
                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option6" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option6" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>7</td>

                                                <td>Water Purifier [Drinking Water]</td>
                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option7" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option7" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>8</td>
                                                <td>Mess [Mid Day Meal]</td>

                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option8" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option8" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>9</td>

                                                <td>Security Guard</td>
                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option9" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option9" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>10</td>

                                                <td>Security Camera</td>
                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option10" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option10" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>11</td>
                                                <td>Lights</td>

                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option11" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option11" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>12</td>
                                                <td>Fan's</td>

                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option12" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option12" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>13</td>

                                                <td>Transportation</td>
                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option13" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option13" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>14</td>

                                                <td>Tables / Chairs</td>
                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option14" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option14" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>15</td>

                                                <td>Bed [in case of Hostel]</td>
                                                <td scope="col">

                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option15" value="yes">
                                                        Yes
   
                                                    </label>
                                                    <label style="margin-right: 30px;">
                                                        <input type="radio" name="option15" value="no">
                                                        No
   
                                                    </label>
                                                </td>
                                                <td>
                                                    <input type="number" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>


                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mx-2">
                        <div class="col-md-12">
                            <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                            <a href="SchoolInfrastructure.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </fieldset>

            </div>
        </div>


    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function myFunction() {
            var show = document.getElementById("show");
            var UdiseCode = document.getElementById("UdiseCode");

            if (UdiseCode.value === "") {
                //showfields.style.display = 'none';
                showfieldsinfo.style.display = 'none';
                showfieldsdetails.style.display = 'none';
            } else {
                //showfields.style.display = 'block';
                showfieldsinfo.style.display = 'block'
                showfieldsdetails.style.display = 'block'
            }
        }
    </script>
</asp:Content>

