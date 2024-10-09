<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="LedgerOfficeMapping.aspx.cs" Inherits="mis_Finance_LedgerOfficeMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table > thead {
            vertical-align: top !important;
        }

        .table tr:nth-child(even) {
            background-color: none !important; /*Striped rows */
        }

        .table tbody tr:hover {
            background: none !important;
        }

        .table td, .table th {
            border:none !important;
        }

        .table th {
            background-color: none !important;
            color: none !important;
        }

        .table tbody {
            border-top: none !important;
        }

        .table thead {
            border-bottom: none !important;
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
                            <a href="#Finance" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Finance</span></a>
                        </li>
                        <li class="breadcrumb-item"> <a href="#FinanceACMaster" data-bs-toggle="collapse" onclick="SidebarToggle('Finance')" role="button" aria-expanded="false"><span>Finance A/C Master</span></a></li>
                    <li class="breadcrumb-item active"><a title="click to go on"> Ledger Office Mapping</a></li>
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
                            <h4 class="card-title">Ledger Office Mapping /
                                बहीखाता कार्यालय मानचित्रण</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Ledger Office Mapping /
                                बहीखाता कार्यालय मानचित्रण</legend>
                        <div class="row align-items-end">
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
                                     Select Created Office Name <br />
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
                                     Select Created School Name<br />
                                     स्कूल का नाम चुनें</label>
                                 <select class="form-control select2">
                                      <option>Select</option>
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
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Select Created Ledger Name<br />
                                        बहीखाता नाम का चयन करें<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option selected="selected" value="0">--Select --</option>
                                        <option value="1">Basic Pay/Special Pay/Dearness Allowance(10.00.01)</option>
                                        <option value="2">Gratuity Premium Payment(10.00.02)</option>
                                        <option value="3">Medical Expense Reimbursement(10.00.03)</option>
                                        <option value="4">Stationery, Font Copy, Bidding(10.00.04)</option>
                                    </select>
                                </div>
                            </div>
              
                        </div>
                      
                    </fieldset>
                    <fieldset>
                        <legend>For Office Mapping</legend>
                                               <div class="row align-items-end">
                                                                            <div class="col-md-3">
                             <div class="form-group">
                                 <label>
                                     Select OIS Type
                                     <br />
                                     OIS प्रकार चुनें<span style="color: red;">*</span>
                                 </label>
                                 <select class="form-control select2" id="OIS1" onchange="OisType1()">
                                     <option selected="selected" value="0">--Select --</option>
                                     <option value="1">Office</option>
                                     <option value="2">Institute</option>
                                     <option value="3">School</option>

                                 </select>
                             </div>
                         </div>
                         <div class="col-md-3" id="OfficeType1" style="display: none;">
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
                       
                         <div class="col-md-3" id="Division1" style="display: none;">
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
                         <div class="col-md-3" id="District1" style="display: none;">
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
                         <div class="col-md-3" id="Block1" style="display: none;">
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
                    
                         <div class="col-md-3" id="Sankul1" style="display: none;">
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
                      
                                               </div>
                          <hr />
  <div class="col-md-12 justify-content-center">
      <div class="form-group text-center">
          <button type="button" class="btn btn-outline-success btn-border w-lg Alert-Save" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
          <a id="clearfirst" href="LedgerOfficeMapping.aspx" class="btn w-lg btn-outline-danger btn-rounded">Clear</a>
      </div>
  </div>

                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>Applicable On
                        </legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-sm">
                                        <%-- <thead>
                                            <tr align="center" valign="middle">
                                                <th>Sr. No. /<br />
                                                    क्र.सं.
                                                </th>
                                                <th>Head Type /<br />
                                                    हेड प्रकार </th>
                                                <th>Head Code /
                                            <br />
                                                    हेड कोड</th>
                                                <th>Head (Ledger)Name /
                                            <br />
                                                    हेड(बहीखाता) नाम
                                                </th>
                                                <th>Amount Request /
                                            <br />
                                                    राशि मांग
                                                </th>
                                                <th>Action /
                                            <br />
                                                    कार्रवाई
                                                </th>
                                            </tr>
                                        </thead>--%>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>All</span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Vidisha-(VDS)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Sehore-(SHR)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Raisen-(RSN)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Bhopal-(BPL)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Obedullaganj-(OBD)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Rajgarh-(RJG)</span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Hoshangabad-(HSB)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Harda-(HRD)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Betul-(BT)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Jabalpur(JBR)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Indore-(IDE)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Ujjain-(UJN)</span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Narsinghpur-(NRS)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Balaghat-(BG)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Chhindwara-(CH)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Gwalior-(GWR)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Seoni-(SE)</span>
                                                </td>
                                                <td>
                                                    <input id="" type="checkbox" name="ctl00$ContentBody$chck1" /><span>Dewas-(DW)</span>
                                                </td>

                                            </tr>
                                            <!-- Add more rows as needed -->
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <div class="form-group text-center">

                                    <button type="button" class="Alert-Confirmation btn btn-outline-success w-lg btn-border">Save</button>
                                    <a href="LedgerOfficeMapping.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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

    <script>
        function OisType1() {
            var ForwordTo = document.getElementById("OIS1").value;
            if (ForwordTo == "1") {
                document.getElementById('OfficeType1').style.display = "block";
             
                document.getElementById('Division1').style.display = "none";
                document.getElementById('District1').style.display = "none";
                document.getElementById('Block1').style.display = "none";

               
                document.getElementById('Sankul1').style.display = "none";
                document.getElementById('school1').style.display = "none";
            }
            else if (ForwordTo == "2") {

                document.getElementById('Division1').style.display = "block";
                document.getElementById('District1').style.display = "block";
                document.getElementById('Block1').style.display = "block";
              
                document.getElementById('OfficeType1').style.display = "none";
           
                document.getElementById('Sankul1').style.display = "none";
             
            } else if (ForwordTo == "3") {

                document.getElementById('Division1').style.display = "block";
                document.getElementById('District1').style.display = "block";
                document.getElementById('Block1').style.display = "block";
                document.getElementById('Sankul1').style.display = "block";
              
                document.getElementById('OfficeType1').style.display = "none";
               
              
            }
            else {

                document.getElementById('Division1').style.display = "none";
                document.getElementById('District1').style.display = "none";
                document.getElementById('Block1').style.display = "none";
                document.getElementById('OfficeType1').style.display = "none";
               
               
                document.getElementById('Sankul1').style.display = "none";
               
            }
        }
    </script>
</asp:Content>


