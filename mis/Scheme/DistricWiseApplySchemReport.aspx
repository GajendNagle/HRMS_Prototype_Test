<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistricWiseApplySchemReport.aspx.cs" Inherits="mis_Scheme_DistricWiseApplySchemReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
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
                            <a href="#SchemeManagement " data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                        <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                            <span>ACR</span></a>
                    </li>--%>
                        <li class="breadcrumb-item"><span>District Wise Apply Scheme Report</span></li>
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
                        <div class="headertext btn btn-primary rounded-pill">
                            जिलेवार लागू योजना रिपोर्ट
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                District Wise Apply Scheme Report /
जिलेवार लागू योजना रिपोर्ट
                            </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end" id="BtnBack" style="display: none;"><a class="btn btn-primary btn-label waves-effect waves-light rounded-pill" onclick="Backclickfn()"><i class="ri-arrow-go-back-line label-icon align-middle fs-14 me-1"></i>BACK</a> </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>District Wise Apply Scheme Report /जिलेवार लागू योजना रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial Year<br />
                                वित्तीय वर्ष चुनें<span style="color: red">*</span></label>
                            <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-2025" type="text" data-val="true" value="2024-2025" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                District  Name<br />
                                जिले का नाम <span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlDistrict">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal(भोपाल)</option>
                                <option value="Raisen">Raisen(रायसेन)</option>
                                <option value="Rajgarh">Rajgarh(राजगढ़)</option>
                                <option value="Sehore">Sehore(सीहोर)</option>
                                <option value="Vidisha">Vidisha(विदिशा)</option>
                                <option value="Ashoknagar">Ashoknagar(अशोकनगर)</option>
                                <option value="Shivpuri">Shivpuri(शिवपुरी)</option>
                                <option value="Datia">Datia(दतिया)</option>
                                <option value="Guna">Guna(गुना)</option>
                                <option value="Gwalior">Gwalior(ग्वालियर)</option>
                                <option value="Harda">Harda(हरदा)</option>
                                <option value="Hoshangabad">Hoshangabad(होशंगाबाद)</option>
                                <option value="Betul">Betul(बेतुल)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Scheme Name<br />
                                योजना  का नाम <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>सामान्य निर्धन वर्ग छात्रवृति </option>
                                <option>सुदामा प्री-मैट्रिक छात्रवृत्ति योजना</option>
                                <option>स्वामी विवेकानंद पोस्ट मेट्रिक प्रावीण्य छात्रवृत्ति योजना</option>
                                <option>सुदाना शिष्यवृत्ति योजना</option>
                            </select>

                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" onclick="div()" class="btn w-lg btn-success btn-border">Search</button>
                            <a href="DistricWiseApplySchemReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="Show" style="display: none;">
                <legend>Scheme Details / योजना विवरण</legend>
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
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table id="Table1" class="table table-bordered text-center">
                                <thead>
                                    <tr class="nowrap">
                                        <th rowspan="2">Sr.No<br />
                                            सं.क्र.</th>
                                        <th rowspan="2">Financial Year<br />
                                            वित्तीय वर्ष</th>
                                        <th rowspan="2">District<br />
                                            जिला</th>
                                          <th rowspan="2">Department<br />
      विभाग का नाम</th>
                                           <th rowspan="2">Type of Scholarship<br />
       छात्रवृत्ति का प्रकार</th>
                                   <%--     <th rowspan="2">Sankul<br />
                                            संकुल</th>
                                        <th rowspan="2">School Name<br />
                                            स्कूल का नाम</th>--%>
                                        <%--    <th>Student ID/Name<br />
                                            विद्यार्थी आईडी/नाम</th>--%>
                                        <th colspan="2">Rate Annual (10 months)<br />
                                            वार्षिक दर (10 माह)</th>
                                        <th rowspan="2">Total Paid Amount<br />
                                            कुल भुगतान की गई राशि</th>
                                      <%--  <th rowspan="2">Scheme Name<br />
                                            योजना का नाम </th>
                                        <th rowspan="2">Scheme Benefit<br />
                                            योजना के लाभ</th>
                                        <th rowspan="2">Scheme Department<br />
                                            योजना विभाग</th>--%>

                                    </tr>
                                    <tr valign="middle" class="text-white">
                                        <th>Boy
         <br />

                                            बालक</th>
                                        <th>Girl<br />
                                            बालिका</th>
                                       

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2024</td>
                                        <td>Bhopal</td>
                                         <td>School Education Department</td>
                                    <td class="text-center">सामान्य निर्धन वर्ग छात्रवृति</td>
                                         
                                       <%-- <td>MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS/23320400117</td>
                                        <td>GOVT HSS Sironj/23340603802</td>--%>
                                        <td>200</td>
                                        <td>300</td>
                                        <td>1.00लाख</td>

                                      <%--  <td>Scholarship Schemes</td>
                                        <td>Apply Scholarship Benefit</td>--%>
                                      
                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>2024</td>
                                        <td>Betul</td>
                                       

                                          <td>School Education Department</td>
                                         <td>सुदामा प्री-मैट्रिक छात्रवृत्ति योजना</td>
                                   <%--     <td>MAHARANA PRATAP, JAHANGIRABAD, Betul, PRINCIPAL, GOVT. HSS/23320400117</td>
                                        <td>GOVT HSS Betul/23340603802</td>--%>
                                        <td>300</td>
                                        <td>400</td>
                                        <td>1.00लाख</td>
                                       <%-- <td>Scholarship Schemes</td>
                                        <td>Apply Scholarship Benefit</td>
                                        <td>School Education Department</td>--%>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            </div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
   
    <%--<script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Search this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Search Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            document.getElementById("Show").style.display = "";

                        }
                    })
                });
            },

                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>--%>
    <script>
        function div() {

            document.getElementById("Show").style.display = "";

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
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
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
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });


    </script>
</asp:Content>

