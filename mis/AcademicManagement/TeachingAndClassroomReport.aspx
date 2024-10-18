<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TeachingAndClassroomReport.aspx.cs" Inherits="mis_AcademicManagement_TeachingAndClassroomManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />

    <style>
        .align-middle {
            vertical-align: middle !important;
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
                            <a href="#AcademicManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Academic Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Teacher To Class Mapping Report</li>
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
                        <div class="headertext btn btn-primary rounded-pill">Teacher To Class Mapping Report</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">स्कूल शिक्षा विभाग (मध्य प्रदेश)</marquee>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="card-body">
            <div runat="server" id="div">
                <fieldset>
                    <legend>Teacher To Class Mapping/

                       
                        शिक्षक से कक्षा मेपिंग</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>
                                Select Academic Year /<br />
                                शैक्षणिक वर्ष चुनें <span style="color: red;">*</span></label>
                            <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                        </div>
                        <div class="col-md-3">
                            <label>
                                Teacher Name /<br />
                                अध्यापक/अध्यापिका का नाम <span style="color: red;">*</span>

                            </label>
                            <select id="class_select" class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="12">Arvind Mishra</option>
                                <option value="11">Pallav Patel </option>
                                <option value="10">Sumit Chandrawanshi</option>
                                <option value="9">Rajesh Patidar</option>
                                <option value="8">Ajay Patidar</option>
                                <option value="7">Mohit Jha</option>
                                <option value="6">Chetan Pandey</option>
                                `
                            </select>
                        </div>

                        <div class="col-md-2  text-center ">
                            <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="onClickShowData()">Search</button>
                        </div>
                    </div>


                    <hr />

                </fieldset>


            </div>



            <div id="divteachingclass6" runat="server" class="d-none">
                <fieldset>
                    <legend>Teacher and Class Mapping Report</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No. /<br />
                                                        सरल क्रमांक</th>
                                                    <th scope="col">Teacher Name: /<br />
                                                        अध्यापक/अध्यापिका का नाम</th>
                                                    <th scope="col">Class /<br />
                                                        कक्षा</th>
                                                    <th scope="col">Subject /<br />
                                                        विषय</th>
                                                    <th scope="col">No. of Students /<br />
                                                        छात्रों की संख्या</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>1</span></td>
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>Chetan Pandey</span></td>
                                                    <td align="center" valign="middle"><span>6th</span></td>
                                                    <td align="center" valign="middle"><span>Mathes</span></td>
                                                    <td align="center" valign="middle">45</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="middle"><span>7th</span></td>
                                                    <td align="center" valign="middle"><span>hindi</span></td>
                                                    <td align="center" valign="middle">33</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div id="divteachingclass7" runat="server" class="d-none">
                <fieldset>
                    <legend>Teacher and Class Mapping Report</legend>
                        <div class="row justify-content-end">
        <div class="col-md-4 text-end">
            <div class="form-group">
                <button class="btn btn-info btn-rounded w-55">Excel</button>
                <button class="btn btn-info btn-rounded w-55">PDF</button>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
            </div>
        </div>
    </div>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div7">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No. /<br />
                                                        सरल संख्या</th>
                                                    <th scope="col">Teacher Name: /<br />
                                                        अध्यापक/अध्यापिका का नाम</th>
                                                    <th scope="col">Class /<br />
                                                        कक्षा</th>
                                                    <th scope="col">Subject/<br />
                                                        विषय</th>
                                                    <th scope="col">No. of Students /<br />
                                                        छात्रों की संख्या</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>1</span></td>
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>Mohit Jha</span></td>
                                                    <td align="center" valign="middle"><span>7th</span></td>
                                                    <td align="center" valign="middle"><span>Mathes</span></td>
                                                    <td align="center" valign="middle">45</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="middle"><span>8th</span></td>
                                                    <td align="center" valign="middle"><span>hindi</span></td>
                                                    <td align="center" valign="middle">56</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div id="divteachingclass8" runat="server" class="d-none">
                <fieldset>
                    <legend>Teacher and Class Mapping Report</legend>
                        <div class="row justify-content-end">
        <div class="col-md-4 text-end">
            <div class="form-group">
                <button class="btn btn-info btn-rounded w-55">Excel</button>
                <button class="btn btn-info btn-rounded w-55">PDF</button>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
            </div>
        </div>
    </div>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div8">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No. /<br />
                                                        सरल संख्या</th>
                                                    <th scope="col">Teacher Name: /<br />
                                                        अध्यापक/अध्यापिका का नाम</th>
                                                    <th scope="col">Class /<br />
                                                        कक्षा</th>
                                                    <th scope="col">Subject /<br />
                                                        विषय</th>
                                                    <th scope="col">No. of Students /<br />
                                                        छात्रों की संख्या</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>1</span></td>
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>Ajay Patidar</span></td>
                                                    <td align="center" valign="middle"><span>9th</span></td>
                                                    <td align="center" valign="middle"><span>Social Science</span></td>
                                                    <td align="center" valign="middle">78</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="middle"><span>7th</span></td>
                                                    <td align="center" valign="middle"><span>hindi</span></td>
                                                    <td align="center" valign="middle">33</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div id="divteachingclass9" runat="server" class="d-none">
                <fieldset>
                    <legend>Teacher and Class Mapping Report</legend>
                        <div class="row justify-content-end">
        <div class="col-md-4 text-end">
            <div class="form-group">
                <button class="btn btn-info btn-rounded w-55">Excel</button>
                <button class="btn btn-info btn-rounded w-55">PDF</button>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
            </div>
        </div>
    </div>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div9">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No. /<br />
                                                        सरल संख्या</th>
                                                    <th scope="col">Teacher Name: /<br />
                                                        अध्यापक/अध्यापिका का नाम</th>
                                                    <th scope="col">Class /<br />
                                                        कक्षा</th>
                                                    <th scope="col">Subject/<br />
                                                        विषय</th>
                                                    <th scope="col">No. of Students /<br />
                                                        छात्रों की संख्या</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>1</span></td>
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>Rajesh Patidar</span></td>
                                                    <td align="center" valign="middle"><span>3th</span></td>
                                                    <td align="center" valign="middle"><span>science</span></td>
                                                    <td align="center" valign="middle">45</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="middle"><span>2ndth</span></td>
                                                    <td align="center" valign="middle"><span>English</span></td>
                                                    <td align="center" valign="middle">33</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div id="divteachingclass10" runat="server" class="d-none">
                <fieldset>
                    <legend>Teacher and Class Mapping Report</legend>
                        <div class="row justify-content-end">
        <div class="col-md-4 text-end">
            <div class="form-group">
                <button class="btn btn-info btn-rounded w-55">Excel</button>
                <button class="btn btn-info btn-rounded w-55">PDF</button>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
            </div>
        </div>
    </div>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div10">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No. /<br />
                                                        सरल संख्या</th>
                                                    <th scope="col">Teacher Name: /<br />
                                                        अध्यापक/अध्यापिका का नाम</th>
                                                    <th scope="col">Class /<br />
                                                        कक्षा</th>
                                                    <th scope="col">Subject/<br />
                                                        विषय</th>
                                                    <th scope="col">No. of Students /<br />
                                                        छात्रों की संख्या</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>1</span></td>
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>Sumit Chandrawanshi</span></td>
                                                    <td align="center" valign="middle"><span>11th</span></td>
                                                    <td align="center" valign="middle"><span>Chemistry</span></td>
                                                    <td align="center" valign="middle">55</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="middle"><span>12th</span></td>
                                                    <td align="center" valign="middle"><span>Physics</span></td>
                                                    <td align="center" valign="middle">33</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div id="divteachingclass11" runat="server" class="d-none">
                <fieldset>
                    <legend>Teacher and Class Mapping Report</legend>
                        <div class="row justify-content-end">
        <div class="col-md-4 text-end">
            <div class="form-group">
                <button class="btn btn-info btn-rounded w-55">Excel</button>
                <button class="btn btn-info btn-rounded w-55">PDF</button>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
            </div>
        </div>
    </div>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div11">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No. /<br />
                                                        सरल संख्या</th>
                                                    <th scope="col">Teacher Name: /<br />
                                                        अध्यापक/अध्यापिका का नाम</th>
                                                    <th scope="col">Class /<br />
                                                        कक्षा</th>
                                                    <th scope="col">Subject/<br />
                                                        विषय</th>
                                                    <th scope="col">No. of Students /<br />
                                                        छात्रों की संख्या</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>1</span></td>
                                                    <td align="center" valign="middle" rowspan="2" class="align-middle"><span>Pallav Patel</span></td>
                                                    <td align="center" valign="middle"><span>12th</span></td>
                                                    <td align="center" valign="middle"><span>hindi</span></td>
                                                    <td align="center" valign="middle">45</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="middle"><span>11th</span></td>
                                                    <td align="center" valign="middle"><span>Accounts</span></td>
                                                    <td align="center" valign="middle">53</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div id="divteachingclass12" runat="server" class="d-none">
                <fieldset>
                    <legend>Teacher and Class Mapping Report</legend>
                        <div class="row justify-content-end">
        <div class="col-md-4 text-end">
            <div class="form-group">
                <button class="btn btn-info btn-rounded w-55">Excel</button>
                <button class="btn btn-info btn-rounded w-55">PDF</button>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
            </div>
        </div>
    </div>

                    <div class="row align-items-end">
                        <div class="col-lg-12" runat="server" id="Div12">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr role="row">
                                                    <th scope="col">Sr.No. /<br />
                                                        सरल संख्या</th>
                                                    <th scope="col">Teacher Name: /<br />
                                                        अध्यापक/अध्यापिका का नाम</th>
                                                    <th scope="col">Class /<br />
                                                        कक्षा</th>
                                                    <th scope="col">Subject/<br />
                                                        विषय</th>
                                                    <th scope="col">No. of Students /<br />
                                                        छात्रों की संख्या</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td align="center" valign="middle" rowspan="3" class="align-middle"><span>1</span></td>
                                                    <td align="center" valign="middle" rowspan="3" class="align-middle"><span>Arvind Mishra</span></td>
                                                    <td align="center" valign="middle"><span>1th</span></td>
                                                    <td align="center" valign="middle"><span>Mathes</span></td>
                                                    <td align="center" valign="middle">45</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="middle"><span>2th</span></td>
                                                    <td align="center" valign="middle"><span>hindi</span></td>
                                                    <td align="center" valign="middle">33</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="middle"><span>3rd</span></td>
                                                    <td align="center" valign="middle"><span>hindi</span></td>
                                                    <td align="center" valign="middle">33</td>
                                                </tr>

                                            </tbody>
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


            var divteachingclass6 = document.getElementById('<%= divteachingclass6.ClientID %>');
            divteachingclass6.classList.add('d-none');


            var divteachingclass7 = document.getElementById('<%= divteachingclass7.ClientID %>');
            divteachingclass7.classList.add('d-none');


            var divteachingclass8 = document.getElementById('<%= divteachingclass8.ClientID %>');
            divteachingclass8.classList.add('d-none');


            var divteachingclass9 = document.getElementById('<%= divteachingclass9.ClientID %>');
            divteachingclass9.classList.add('d-none');

            var divteachingclass10 = document.getElementById('<%= divteachingclass10.ClientID %>');
            divteachingclass10.classList.add('d-none');

            var divteachingclass11 = document.getElementById('<%= divteachingclass11.ClientID %>');
            divteachingclass11.classList.add('d-none');

            var divteachingclass12 = document.getElementById('<%= divteachingclass12.ClientID %>');
            divteachingclass12.classList.add('d-none');


            var selectedValue = document.getElementById('class_select').value;




            if (selectedValue === "6") {
                var divteachingclass6 = document.getElementById('<%= divteachingclass6.ClientID %>');
                divteachingclass6.classList.remove('d-none'); // Show the div by removing the 'd-none' class
            } else if (selectedValue === "7") {
                var divteachingclass7 = document.getElementById('<%= divteachingclass7.ClientID %>');
                divteachingclass7.classList.remove('d-none'); // Show the div by removing the 'd-none' class
            } else if (selectedValue === "8") {
                var divteachingclass8 = document.getElementById('<%= divteachingclass8.ClientID %>');
                divteachingclass8.classList.remove('d-none'); // Show the div by removing the 'd-none' class
            } else if (selectedValue === "9") {
                var divteachingclass9 = document.getElementById('<%= divteachingclass9.ClientID %>');
                divteachingclass9.classList.remove('d-none'); // Show the div by removing the 'd-none' class
            } else if (selectedValue === "10") {
                var divteachingclass10 = document.getElementById('<%= divteachingclass10.ClientID %>');
                divteachingclass10.classList.remove('d-none'); // Show the div by removing the 'd-none' class
            } else if (selectedValue === "11") {
                var divteachingclass11 = document.getElementById('<%= divteachingclass11.ClientID %>');
                divteachingclass11.classList.remove('d-none'); // Show the div by removing the 'd-none' class
            }
            else if (selectedValue === "12") {
                var divteachingclass12 = document.getElementById('<%= divteachingclass12.ClientID %>');
                divteachingclass12.classList.remove('d-none');
            }



        }



    </script>

    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true,
            orientation: 'bottom'
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });

        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear);
            $(".datepickerYear").val(financialYear);
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });


    </script>

</asp:Content>

