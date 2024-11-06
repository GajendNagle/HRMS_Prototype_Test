<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolInfrastructureReport.aspx.cs" Inherits="mis_SchoolInfrastructure_SchoolInfrastructureReport" %>

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
                            <a href="#Security Management" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School infrastructure</span></a>
                        </li>

                        <li class="breadcrumb-item">School Infrastructure Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">School Infrastructure Report </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext ">स्कूल शिक्षा विभाग (मध्य प्रदेश)</marquee>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="divSecurity">
                <fieldset>
                    <legend>School Infrastructure /
                     स्कूल इन्फ्रास्ट्रक्चर
                     
              
                    </legend>
                    <div class="row align-items-end">
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <label>
                                Select Academic Year /<br />
                                शैक्षणिक वर्ष चुनें <span style="color: red;">*</span></label>
                            <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <label>
                                Enter School UDISE/<br />

                                स्कूल यू-डाइस दर्ज करें   <span style="color: red;">*</span>
                            </label>
                            <input type="text" id="inputUDISE" placeholder="Enter School UDISE" class="form-control">
                        </div>

                        <div class="col-md-6 ">
                            <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="onClickShowData()">Search</button>
                            <a href="SchoolInfrastructureReport.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>

                    </div>




                </fieldset>


            </div>
            <div id="divsecurity1" runat="server" class="d-none">

                <fieldset>
                    <legend>School Basic Information / स्कूल की मूल जानकारी
                    </legend>

                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
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

                <fieldset>
                    <legend>Available Infrastructure / उपलब्ध इन्फ्रास्ट्रक्चर
                    </legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div1">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th class="mt-0" scope="col">Sr No. /<br />
                                                        सरल क्र.</th>
                                                    <th class="mt-0" scope="col">Available Infrastructure /<br />
                                                        उपलब्ध इन्फ्रास्ट्रक्चर</th>
                                                    <th class="mt-0" scope="col">Actions /<br />
                                                        कार्रवाई</th>
                                                    <th class="mt-0" scope="col">Infrastructure Counting /<br />
                                                        इंफ्रास्ट्रक्चर की गणना</th>
                                                </tr>

                                                <tr role="row">
                                                    <td class="mt-0" scope="col">1</td>
                                                    <td class="mt-0" scope="col">Classrooms</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>15</td>
                                                </tr>

                                                <tr role="row">
                                                    <td class="mt-0" scope="col">2</td>
                                                    <td class="mt-0" scope="col">Library</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>2</td>

                                                </tr>

                                                <tr role="row">
                                                    <td class="mt-0" scope="col">3</td>
                                                    <td class="mt-0" scope="col">Laboratory</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>1</td>


                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">4</td>
                                                    <td class="mt-0" scope="col">Playground</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>2</td>

                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">5</td>
                                                    <td class="mt-0" scope="col">Male Toilets</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>2</td>

                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">6</td>
                                                    <td class="mt-0" scope="col">Female Toilets</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>2</td>


                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">7</td>
                                                    <td class="mt-0" scope="col">Water Purifier(drinking water)</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>4</td>


                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">8</td>
                                                    <td class="mt-0" scope="col">Mess(Mid Day Meal)</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>1</td>


                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">9</td>
                                                    <td class="mt-0" scope="col">Security Guard</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            No
                                                        </label>

                                                    </td>
                                                    <td>0</td>

                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">10</td>
                                                    <td class="mt-0" scope="col">Security Camera</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>2</td>


                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">11</td>
                                                    <td class="mt-0" scope="col">Lights</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>18</td>


                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">12</td>
                                                    <td class="mt-0" scope="col">Fans</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>10</td>


                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">13</td>
                                                    <td class="mt-0" scope="col">Trasnportation</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            No
                                                        </label>

                                                    </td>
                                                    <td>0</td>

                                                </tr>
                                                <tr role="row">
                                                    <td class="mt-0" scope="col">14</td>
                                                    <td class="mt-0" scope="col">Tables/Chairs</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            Yes
                                                        </label>

                                                    </td>
                                                    <td>20</td>

                                                </tr>

                                                <tr role="row">
                                                    <td class="mt-0" scope="col">15</td>
                                                    <td class="mt-0" scope="col">Bed(in case of hostel)</td>
                                                    <td scope="col">
                                                        <label style="margin-right: 30px;">
                                                            No
                                                        </label>

                                                    </td>
                                                    <td>0</td>

                                                </tr>
                                            </thead>
                                        </table>
                                    </div>
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


    <script>
        function onClickShowData() {
            var divSecurity1 = document.getElementById('<%= divsecurity1.ClientID %>');
            var inputUDISE = document.getElementById("inputUDISE");
            if (inputUDISE.value == "") {
            } else {
                divSecurity1.classList.remove('d-none');
            }
        }
    </script>
</asp:Content>

