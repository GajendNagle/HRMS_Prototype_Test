<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudWiseCountReport.aspx.cs" Inherits="mis_Student_StudWiseCountReport" %>

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
                            <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                        <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                            <span>ACR</span></a>
                    </li>--%>
                        <li class="breadcrumb-item"><span>Student Registration</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <%--  <div class="col-md text-end">
              <div class="form-group">

    <button id="BtnBack" class="btn-info rounded-2" type="button" onclick="Backclickfn()" style=" display:none;">BACK</button>
</div>
        </div>--%>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">छात्रवार गणना रिपोर्ट</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                Student Wise Counting Report /
छात्रवार गणना रिपोर्ट
                            </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end" id="BtnBack" style="display: none;"><a class="btn btn-primary btn-label waves-effect waves-light rounded-pill" onclick="Backclickfn()"><i class="ri-arrow-go-back-line label-icon align-middle fs-14 me-1"></i>BACK</a> </div>

            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Student Wise Counting Report /
छात्रवार गणना रिपोर्ट</legend>
                <div class="row align-content-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial Year<br />
                                वित्तीय वर्ष चुनें<span style="color: red">*</span></label>
                            <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Division<br />
                                संभाग का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlDivision">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal(भोपाल)</option>
                                <option value="Gwalior">Gwalior(ग्वालियर)</option>
                                <option value="Narmadapuram">Narmadapuram(नर्मदापुरम)</option>
                                <option value="Indore">Indore(इंदौर)</option>
                                <option value="Jabalpur">Jabalpur(जबलपुर)</option>
                                <option value="Rewa">Rewa(रीवा)</option>
                                <option value="Sagar">Sagar(सागर)</option>
                                <option value="Shahdol">Shahdol(शाहडोल)</option>
                                <option value="Ujjain">Ujjain(उज्जैन)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select District<br />
                                जिले का नाम चुनें<span style="color: red">*</span></label>
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
                                Select Block<br />
                                विकासखंड का नाम चुनें <span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlBlock">
                                <option value="--Select--">--Select--</option>
                                <option value="Agar">Agar(आगर)</option>
                                <option value="Barod">Barod(बड़ौद)</option>
                                <option value="Nalkheda">Nalkheda(नलखेड़ा)</option>
                                <option value="Susner">Susner(सुसनेर)</option>
                                <option value="Alirajpur">Alirajpur(आलीराजपुर)</option>
                                <option value="Bhabra">Bhabra(भाबरा)</option>
                                <option value="Katthiwara">Katthiwara(कट्ठीवाड़ा)</option>
                                <option value="Sondwa">Sondwa(सोंडवा)</option>
                                <option value="Udaygarh">Udaygarh(उदयगढ़)</option>
                                <option value="Jobat">Jobat(जोबट)</option>
                                <option value="Anuppur">Anuppur(अनुपपुर)</option>
                                <option value="Jaithari">Jaithari(जैतहरी)</option>
                                <option value="Kotma">Kotma(कोतमा)</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select  Sankul
              <br />
                                संकुल चुनें<span style="color: red">*</span></label>
                            <select class="form-select select2">
                                <option value="--Select--">--Select--</option>

                                <option value="--Select--">0512003001 - MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</option>
                                <option value="--Select--">0512003007 - M.L.B. BHEL, BARKHEDA, BHOPAL, PRINCIPAL, GOVT. HSS</option>
                                <option value="--Select--">0502003027 - PHANDA, PRINCIPAL, GOVT. HS</option>
                                <option value="--Select--">0532003003 - GUNGA, BERASIA, PRINCIPAL, GOVT. HSS</option>
                                <option value="--Select--">2912003045 - BADI- Govt. Girls H.S.S BADI</option>
                                <option value="--Select--">2922003023 - BEGUMGANJ- Girls H.S.S. BEGUMGANJ</option>
                                <option value="--Select--">2932003031 - GAIRATGANJ Govt. Boys H.S.S. GAIRATGANJ</option>
                                <option value="--Select--">2942003041 - OBEDULLAGANJ-Govt. H.S.S. UMRAOGANJ</option>
                                <option value="--Select--">2902003003 - SANCHI- Girls H.S.S. RAISEN</option>
                                <option value="--Select--">2952003030 - SILWANI- Govt.H.S.S. BIKALPUR</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select School Name<br />
                                स्कूल का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-select select2">
                                <option>--Select--</option>
                                <option>23320400117/GOVT HSS AHAMDABAD</option>
                                <option>23320303134/GOVT HSS KHAJURI KALAN</option>
                                <option>23320212709/GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</option>
                                <option>23320110008/GOVT HSS GUNGA</option>
                                <option>23340101207/M.P. CONVENT BADI</option>
                                <option>23340202202/GMS BERKHEDI BARAMAD GADHI</option>
                                <option>23340300401/UEGS KUSNAGAR AMGAWAN</option>
                                <option>23340402101/GGPS BAMULIYA DANGI</option>
                                <option>23340502509/GHSS BANGAWAN</option>
                                <option>23340603802/GAYANDEEP M S CHANDAN PIPALIYA</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Class<br />
                                कक्षा का चयन करें<span style="color: red">*</span></label>
                            <select class="form-select select2">
                                <option value="0">Select</option>
                                <option value="1">1st Class</option>
                                <option value="2">2nd Class</option>
                                <option value="3">3rd Class</option>
                                <option value="4">4th Class</option>
                                <option value="5">5th Class</option>
                                <option value="6">6th Class</option>
                                <option value="7">7th Class</option>
                                <option value="8">8th Class</option>
                                <option value="9">9th Class</option>
                                <option value="10">10th Class</option>
                                <option value="11">11th Class</option>
                                <option value="12">12th Class</option>
                            </select>
                        </div>
                    </div>



                </div>
                <hr />
                <div class="col-md-12" id="search">
                    <div class="form-group">
                        <!-- Search button triggers search and toggles divs -->
                        <button type="button" class="btn btn-success w-lg btn-border" onclick="DivHide()" id="btn1">
                            Search</button>
                        <a href="StudWiseCountReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>

                    </div>
                </div>

            </fieldset>
            <fieldset id="show1" style="display: none;">
                <legend>Details/
विवरण</legend>
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
                                    <tr valign="middle" style="background-color: #1B5B5C; white-space: nowrap;" class="text-white">
                                        <th>S.No.<br />
                                            क्र.सं</th>
                                        <th>Financial Year<br />
                                            वित्तीय वर्ष</th>

                                        <th>Division<br />
                                            संभाग </th>
                                        <th>District<br />
                                            जिला </th>
                                        <th>Block<br />
                                            ब्लॉक </th>

                                        <th>Sankul<br />
                                            संकुल </th>
                                        <th>School Name<br />
                                            स्कूल का नाम </th>
                                        <th>Class<br />
                                            कक्षा </th>
                                        <th>Total Number of Student<br />
                                            विद्यार्थी की कुल संख्या</th>
                                        <th>Total Number of Students Passed<br />
                                            कुल उत्तीर्ण छात्रों की संख्या</th>
                                        <th>Total Number of Students Fail<br />
                                            कुल अनुत्तीर्ण छात्रों की संख्या</th>
                                        <th>Total Number of Students Release Transfer Certificate<br />
                                            स्थानांतरण प्रमाणपत्र जारी करने वाले छात्रों की कुल संख्या</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="text-center">
                                        <td>1</td>
                                        <td>2024-2025</td>
                                        <td>Bhopal</td>
                                        <td>Vidisha</td>
                                        <td>Sironj</td>
                                        <td>MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS/23320400117</td>
                                        <td>GOVT HSS Sironj/23340603802</td>
                                        <td>10th</td>
                                        <td>50</td>
                                        <td class="text-info">20</td>
                                        <td class="text-info">10</td>
                                        <td class="text-info">10</td>

                                    </tr>
                                    <tr class="text-center">
                                        <td>2</td>
                                        <td>2024-2025</td>
                                        <td>Bhopal</td>
                                        <td>Sehore</td>
                                        <td>Ashta</td>
                                        <td>M.L.B. BHEL, BARKHEDA, BHOPAL, PRINCIPAL, GOVT. HSS/0512003007</td>
                                        <td>GOVT HSS KHAJURI KALAN/23320303134</td>
                                        <td>11th</td>
                                        <td>45</td>
                                        <td class="text-info">15</td>
                                        <td class="text-info">10</td>
                                        <td class="text-info">5</td>

                                    </tr>
                                    <tr class="text-center">
                                        <td>3</td>
                                        <td>2024-2025</td>
                                        <td>Bhopal</td>
                                        <td>Raisen</td>
                                        <td>Bareilly</td>
                                        <td>PHANDA, PRINCIPAL, GOVT. HS/0502003027</td>
                                        <td>PHANDA, PRINCIPAL, GOVT. HS/0502003027 </td>
                                        <td>9th</td>
                                        <td>70</td>
                                        <td class="text-info">10</td>
                                        <td class="text-info">5</td>
                                        <td class="text-info">5</td>

                                    </tr>
                                    <tr class="text-center">
                                        <td>4</td>
                                        <td>2024-2025</td>
                                        <td>Bhopal</td>
                                        <td>Vidisha</td>
                                        <td>Sironj</td>
                                        <td>Geetanjali Public School/23320400117</td>
                                        <td>GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)/23320212709</td>
                                        <td>9th</td>
                                        <td>20</td>
                                        <td class="text-info">10</td>
                                        <td class="text-info">10</td>
                                        <td class="text-info">5</td>

                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
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
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });


    </script>
    <script>
        function DivHide() {


            show1.style.display = "block";
        }
    </script>

    
</asp:Content>

