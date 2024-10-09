<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BudgetUtilizationReport.aspx.cs" Inherits="mis_Finance_BudgetUtilizationReport" %>

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
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#BudgetProcess" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Budget Process</span></a></li>
                        <li class="breadcrumb-item active"><a title="click to go on">Budget Utilization Report</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="card-title">Budget Utilization Report /
                                बजट उपयोगिता रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Budget Utilization Report /
                                बजट उपयोगिता रिपोर्ट</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Financial Year
                                        <br />
                                        वित्तीय वर्ष का चयन करें<span style="color: red;"> *</span></label>
                                    <input maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Month
                                        <br />
                                        माह का चयन करें<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="6">June </option>
                                        <option value="1">January </option>
                                        <option value="2">February</option>
                                        <option value="3">March </option>
                                        <option value="4">April</option>
                                        <option value="5">May </option>
                                        <option value="7">July </option>
                                        <option value="8">August </option>
                                        <option value="9">September </option>
                                        <option value="10">October </option>
                                        <option value="11">November  </option>
                                        <option value="12">December  </option>

                                    </select>
                                </div>
                            </div>
                                                  <div class="col-md-3">
                             <div class="form-group">
                                 <label>
                                     Head Type
                                     <br />
                                     हेड का प्रकार  <span style="color: red;">*</span></label>
                                 <select class="form-control select2">
                                     <option value="2">Expense</option>
                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3">
                             <div class="form-group">
                                 <label>
                                     Select OIS Type
                                     <br />
                                     OIS प्रकार चुनें<span style="color: red;">*</span>
                                 </label>
                                 <select class="form-control select2" id="OIS" onchange="OisType()">
                                     <option selected="selected" value="0">--Select --</option>
                                     <option value="1">Office</option>
                                     <option value="2">Institute</option>
                                     <option value="3">School</option>

                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3" id="OfficeType" style="display: none;">
                             <div class="form-group">
                                 <label>
                                     Select Office Type
<br />
                                     कार्यालय प्रकार का चयन करें<span style="color: red;">*</span>
                                 </label>
                                 <select class="form-control select2">
                                     <option selected="selected" value="0">--Select --</option>
                                     <option value="1">DPI</option>
                                     <option value="2">CPI</option>
                                     <option value="3">JD Office</option>
                                     <option value="4">DEO</option>
                                     <option value="5">BEO</option>
                                     <option value="6">School</option>
                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3" id="Office" style="display: none;">
                             <div class="form-group">
                                 <label>
                                     Select Office Name<br />
                                     कार्यालय नाम का चयन करें<span style="color: red;">*</span></label>
                                 <select class="form-control select2">
                                     <option selected="selected" value="0">--Select --</option>
                                     <option value="1">Jabalpur</option>
                                     <option value="2">Indore</option>
                                     <option value="3">Bhopal</option>
                                     <option value="4">Gwalior</option>
                                     <option value="5">Hoshangabad</option>
                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3" id="Division" style="display: none;">
                             <div class="form-group">
                                 <label>
                                     Select  Division Name
           <br />
                                     संभाग  का नाम चुनें
                                 </label>
                                 <select class="form-control select2">

                                     <option value="Select">Select</option>
                                     <option value="Bhopal">Bhopal</option>
                                     <option value="Indore">Indore</option>
                                     <option value="Gwalior">Gwalior</option>
                                     <option value="Jabalpur">Jabalpur</option>
                                     <option value="Ujjain">Ujjain</option>
                                     <option value="Sagar">Sagar</option>
                                     <option value="Rewa">Rewa</option>
                                     <option value="Chambal">Chambal</option>
                                     <option value="Shahdol">Shahdol</option>
                                     <option value="Hoshangabad">Hoshangabad</option>
                                     <option value="Narmadapuram">Narmadapuram</option>
                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3" id="District" style="display: none;">
                             <div class="form-group">
                                 <label>
                                     Select District Name<br />
                                     ज़िला  का नाम चुनें<span style="color: red">*</span></label>
                                 <select name="ctl00$ContentBody$ctl02" class="form-control select2">

                                     <option value="Select">Select</option>
                                     <option value="Bhopal">Bhopal</option>
                                     <option value="Raisen">Raisen</option>
                                     <option value="Rajgarh">Rajgarh</option>
                                     <option value="Sehore">Sehore</option>
                                     <option value="Vidisha">Vidisha</option>
                                     <option value="Ashoknagar">Ashoknagar</option>
                                     <option value="Shivpuri">Shivpuri</option>
                                     <option value="Datia">Datia</option>
                                     <option value="Guna">Guna</option>
                                     <option value="Gwalior">Gwalior</option>
                                     <option value="Harda">Harda</option>
                                     <option value="Hoshangabad">Hoshangabad</option>
                                     <option value="Betul">Betul</option>
                                     <option value="Morena">Morena</option>
                                     <option value="Sheopur">Sheopur</option>
                                     <option value="Bhind">Bhind</option>
                                     <option value="Barwani">Barwani</option>
                                     <option value="Burhanpur">Burhanpur</option>
                                     <option value="Dhar">Dhar</option>
                                     <option value="Indore">Indore</option>
                                     <option value="Jhabua">Jhabua</option>
                                     <option value="Khandwa">Khandwa</option>
                                     <option value="Khargone">Khargone</option>
                                     <option value="Alirajpur">Alirajpur</option>
                                     <option value="Balaghat">Balaghat</option>
                                     <option value="Chhindwara">Chhindwara</option>
                                     <option value="Jabalpur">Jabalpur</option>
                                     <option value="Katni">Katni</option>
                                     <option value="Mandla">Mandla</option>
                                     <option value="Narsinghpur">Narsinghpur</option>
                                     <option value="Seoni">Seoni</option>
                                     <option value="Rewa">Rewa</option>
                                     <option value="Satna">Satna</option>
                                     <option value="Sidhi">Sidhi</option>
                                     <option value="Singroli">Singroli</option>
                                     <option value="Chhatarpur">Chhatarpur</option>
                                     <option value="Damoh">Damoh</option>
                                     <option value="Panna">Panna</option>
                                     <option value="Sagar">Sagar</option>
                                     <option value="Tikamgarh">Tikamgarh</option>
                                     <option value="Shahdol">Shahdol</option>
                                     <option value="Umaria">Umaria</option>
                                     <option value="Dindori">Dindori</option>
                                     <option value="Anuppur">Anuppur</option>
                                     <option value="Dewas">Dewas</option>
                                     <option value="Mandsaur">Mandsaur</option>
                                     <option value="Neemuch">Neemuch</option>
                                     <option value="Ratlam">Ratlam</option>
                                     <option value="Shajapur">Shajapur</option>
                                     <option value="Ujjain">Ujjain</option>
                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3" id="Block" style="display: none;">
                             <div class="form-group">
                                 <label>
                                     Select  Block Name
           <br />
                                     विकासखण्ड  का नाम चुनें<span style="color: red">*</span></label>
                                 <select name="ctl00$ContentBody$ctl03" class="form-control select2">

                                     <option value="Select">Select</option>
                                     <option value="Agar">Agar</option>
                                     <option value="Barod">Barod</option>
                                     <option value="Nalkheda">Nalkheda</option>
                                     <option value="Susner">Susner</option>
                                     <option value="Alirajpur">Alirajpur</option>
                                     <option value="Bhabra">Bhabra</option>
                                     <option value="Katthiwara">Katthiwara</option>
                                     <option value="Sondwa">Sondwa</option>
                                     <option value="Udaygarh">Udaygarh</option>
                                     <option value="Jobat">Jobat</option>
                                     <option value="Anuppur">Anuppur</option>
                                     <option value="Jaithari">Jaithari</option>
                                     <option value="Kotma">Kotma</option>

                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3" id="Institute" style="display: none;">
                             <div class="form-group">
                                 <label>
                                     Select Institute Name<br />
                                     संस्था नाम का चयन करें<span style="color: red;">*</span></label>
                                 <select class="form-control select2">
                                     <option selected="selected" value="0">--Select --</option>
                                     <option value="1">Jabalpur</option>
                                     <option value="2">Indore</option>
                                     <option value="3">Bhopal</option>
                                     <option value="4">Gwalior</option>
                                     <option value="5">Hoshangabad</option>
                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3" id="Sankul" style="display: none;">
                             <div class="form-group">
                                 <label>
                                     Select Sankul Name<br />
                                     संकुल नाम का चयन करें<span style="color: red;">*</span></label>
                                 <select class="form-control select2">
                                     <option selected="selected" value="0">--Select --</option>
                                     <option>234502OBS02-Maharshi Pathanjali Sanskrit Sansthan,Bhop</option>
                                     <option>234507OBS01-DIET,Bhopal</option>
                                     <option>234510OBT01-Other  Institute/ College,Bhopal</option>
                                     <option>232807OBS02-Libraives,Bhopal</option>
                                     <option>232816OBS02-Kasturba Gandhi Balika  Vidyalaya,Bhopal</option>
                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3" id="school" style="display: none;">
                             <div class="form-group">
                                 <label>
                                     Select School Name<br />
                                     स्कूल का नाम चुनें</label>
                                 <select class="form-control select2">

                                     <option>GOVT HSS AHAMDABAD</option>
                                     <option>GOVT HSS KHAJURI KALAN</option>
                                     <option>GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</option>
                                     <option>GOVT HSS GUNGA</option>
                                     <option>M.P. CONVENT BADI</option>
                                     <option>GMS BERKHEDI BARAMAD GADHI</option>
                                     <option>UEGS KUSNAGAR AMGAWAN</option>
                                     <option>GGPS BAMULIYA DANGI</option>
                                     <option>GHSS BANGAWAN</option>
                                     <option>GAYANDEEP M S CHANDAN PIPALIYA</option>
                                 </select>
                             </div>
                         </div>
                        </div>
                        <div class="row">
                            
                            <div class="col-md-12">
                                <hr />
                                <div class="form-group">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                    <a id="clearfirst" href="BudgetUtilizationReport.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Budget Utilization Report /
                                बजट उपयोगिता जानकारी</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <button class="btn btn-outline-secondary btn-border" onclick="openPDF()">Print</button>
                                    <button class="btn btn-outline-success btn-border" onclick="exportFile()">Export</button>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <h5>Budget Utilization Report(April -24-25)<br />
                                [Head Office]
                            </h5>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered nowrap" id="mainTable">
                                        <thead>
                                            <tr align="center" valign="middle">
                                                <th>Sr. No.
                                                    <br />
                                                    क्रमांक
                                                </th>
                                                <th>Budget Head Code 
                                            <br />
                                                  बजट हेड कोड
                                                <th>Budget Head Name
                                                    <br />
                                                   बजट हेड का नाम</th>
                                                <th>Budget Allocation Amount
                                            <br />
                                                   बजट आवंटन राशि 
                                                </th>
                                                <th>Utilization Amount
                                            <br />
                                                    उपयोग की गई राशि
                                                </th>
                                                <th>Percentage of Utilization
                                        
                                                   
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>1</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>10.01.01</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Basic Pay/Special Pay/Dearness Allowance</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>58745783.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>9913187.50</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>16.87%</a>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>2</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>10.01.02</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Medical Expense Reimbursement</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>12985757.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00%</a>
                                                </td>
                                            </tr>
                                            <tr role="row" class="odd">
                                                <td align="center" valign="middle"><span>3</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <span>10.01.03</span>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>Stationery, Font Copy, Bidding</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>12985757.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00</a>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <a>0.00%</a>
                                                </td>
                                            </tr>
                                            <!-- Add more rows as needed -->
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear2").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
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
            //setDefaultFinancialYear();
        });

        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/HRMS_Document%20(1).pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }

        function exportFile() {
            var fileUrl = '../Document/HRMS_Document%20(1).pdf';
            var a = document.createElement('a');
            a.href = fileUrl;
            a.download = 'HRMS_Document.pdf';  // Replace with the desired file name
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
        }

    </script>
    <script>
        function OisType() {
            var ForwordTo = document.getElementById("OIS").value;
            if (ForwordTo == "1") {
                document.getElementById('OfficeType').style.display = "block";
                document.getElementById('Office').style.display = "block";
                document.getElementById('Division').style.display = "none";
                document.getElementById('District').style.display = "none";
                document.getElementById('Block').style.display = "none";

                document.getElementById('Institute').style.display = "none";
                document.getElementById('Sankul').style.display = "none";
                document.getElementById('school').style.display = "none";
            }
            else if (ForwordTo == "2") {

                document.getElementById('Division').style.display = "block";
                document.getElementById('District').style.display = "block";
                document.getElementById('Block').style.display = "block";
                document.getElementById('Institute').style.display = "block";
                document.getElementById('OfficeType').style.display = "none";
                document.getElementById('Office').style.display = "none";
                document.getElementById('Sankul').style.display = "none";
                document.getElementById('school').style.display = "none";
            } else if (ForwordTo == "3") {

                document.getElementById('Division').style.display = "block";
                document.getElementById('District').style.display = "block";
                document.getElementById('Block').style.display = "block";
                document.getElementById('Sankul').style.display = "block";
                document.getElementById('school').style.display = "block";
                document.getElementById('OfficeType').style.display = "none";
                document.getElementById('Office').style.display = "none";
                document.getElementById('Institute').style.display = "none";
            }
            else {

                document.getElementById('Division').style.display = "none";
                document.getElementById('District').style.display = "none";
                document.getElementById('Block').style.display = "none";
                document.getElementById('OfficeType').style.display = "none";
                document.getElementById('Office').style.display = "none";
                document.getElementById('Institute').style.display = "none";
                document.getElementById('Sankul').style.display = "none";
                document.getElementById('school').style.display = "none";
            }
        }
    </script>
</asp:Content>

