<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_PayrollSetHeadwiseChallanDetails.aspx.cs" Inherits="mis_Payroll_SetHeadwiseChallanDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
   <%-- <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Set Head wise Challan Details</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                   
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=Masters&SubID=PayrollMaster" title="click to go on">Payroll Masters</a></li>
                   
                    <li class="breadcrumb-item active">Set Head wise Challan Details</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">--%>
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
                        <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#PayrollMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>Payroll Master</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Set Head wise Challan Details</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="marqueecontainer">
    <div class="headertext">Set Head wise Challan Details / पेज के बारे में विवरण</div>
    <div>
        <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
            इस पेज के माध्यम से नए Set Head wise Challan Details  को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
        </marquee>
    </div>
</div>
<div class="card card-border-primary">
    <div class="card-header">
        <div class="row align-items-end">
            <div class="col-lg-12">
                <h4 class="card-title">Set Head wise Challan Details/हेडवार चालान विवरण सेट करें</h4>
            </div>
        </div>
    </div>
    <div class="card-body">
        <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Set Head wise Challan Details/हेडवार चालान विवरण सेट करें</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Office Type/<br />कार्यालय का प्रकार<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                   		
								 <option value="Bhopal">Head Office</option>
                                <option value="Bhopal">JOINT DIRECTORS</option>
                                <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                <option value="Bhopal">SANKUL/AEO</option>
                                <option value="Bhopal">SCHOOL</option>
                                <option value="Principal Secretary">Principal Secretary</option>
                                <option value="Secretary">Secretary</option>
                                <option value="Deputy Secretary">Deputy Secretary</option>
                                <option value="CPI">CPI</option>
                                <option value="CRSK">CRSK</option>
                                <option value="DPI">DPI</option>
                                <option value="Collector">Collector</option>
                                <option value="CEO, ZP">CEO, ZP</option>
                                <option value="DPC">DPC</option>
                                <option value="BRC">BRC</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Type of Post/<br /> पोस्ट का प्रकार<span style="color: red;">*</span></label>
                            <select class="form-control select2 ">
                                <option value="--Select--">--Select--</option>
                   								<option value="Bhopal">All</option>
                                <option value="Regular/Permanent">Regular/Permanent</option>
                                <option value="Fixed Employee">Fixed Employee</option>
                                <option value="Contigent Employee">Contigent Employee</option>
                                <option value="Samvida Employee">Samvida Employee</option>
                                <option value="Theka Shramik">Theka Shramik</option>
                                <option value="Outsource Employee">Outsource Employee</option>
                                <option value="Deputation Employee">Deputation Employee</option>
                                <option value="Contractual Employee">Contractual Employee</option>
                                <option value="Daily Wage's Employee">Daily Wage's Employee</option>
                                <option value="Dally Wages Federation">Dally Wages Federation</option>
                                <option value="Job Rate Employee">Job Rate Employee</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Year/<br />वर्ष<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2023</option>
                                <option value="Bhopal">2024</option>
                                <option value="Bhopal">2025</option>
                                <option value="Bhopal">2026</option>
                                <option value="Bhopal">2027</option>
                                <option value="Bhopal">2028</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Month/<br />महा <span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">January</option>
                                <option value="2">February</option>
                                <option value="3">March</option>
                                <option value="4">April</option>
                                <option value="5">May</option>
                                <option value="6">June</option>
                                <option value="7">July</option>
                                <option value="8">August</option>
                                <option value="9">September</option>
                                <option value="10">October</option>
                                <option value="11">November</option>
                                <option value="12">December</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee Name/<br />कर्मचारी का नाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Ramji">Ramji</option>
                                <option value="Bharat">Bharat</option>
                                <option value="Poonam">Poonam</option>
                            </select>
                        </div>
                    </div>
                  <%--  <div class="col-md-1 mt-4">
                        <div class="form-group">
                            <button type="button" onclick="myFunction()" class="btn btn-success  btn-rounded">Search</button>
                        </div>
                    </div>
                    <div class="col-md-1 mt-4">
                        <div class="form-group">
                            <a href="SetHeadwiseChallanDetails.aspx" class=" btn-block btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                                        <hr />
<div class="col-md-12">
    <button type="button"  onclick="myFunction()"  class=" btn btn-outline-success w-lg btn-border">Search</button>
    <a href="SetHeadwiseChallanDetails.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
</div>
                </div>
            </fieldset>
            <fieldset id="ContentBody_dcp">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Office Type (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select the  <strong>Office Type</strong> from the dropdown which will automatically reflect from <strong>Office Type Master.</strong></li>
                                </ul>
                            </li>
                            <li><strong>Type of Post  (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Type of Post  </strong>from dropdown. Data populated from <strong>Designation Type Master</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Year (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Year </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Month (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Month </strong>from dropdown. Data populated from <strong>Database Table</strong>. </li>

                                </ul>
                            </li>
                            <li><strong>Employee Name (Dropdown)</strong>
                                <ul>
                                    <li>User will be able to select <strong>Employee Name </strong>from dropdown. Data populated from <strong>Employee Registration </strong>. </li>
                                </ul>
                            </li>
                            <li><strong>Search </strong>
                                <ul>
                                    <li>User will Search data as per selected field.</li>
                                    <li>After click on Search button data will be visible in grid view.</li>
                                </ul>
                            </li>
                            <li><strong>Clear (Button)</strong>
                                <ul>
                                    <li>User should be able to click on Clear button.</li>
                                    <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                </ul>
                            </li>
                            <li><strong>Excel (Button)</strong>
                                <ul>
                                    <li>Excel button should be visible and user should be able to click.</li>
                                    <li>After clicking on the Excel button, showing the data will be export to Excel.</li>
                                </ul>
                            </li>
                            <li><strong>PDF (Button)</strong>
                                <ul>
                                    <li>PDF button should be visible and user should be able to click.</li>
                                    <li>After clicking on PDF button grid view data export in PDF.</li>
                                </ul>
                            </li>
                            <li><strong>Searchbox (searchable box)</strong>
                                <ul>
                                    <li>Users can search for any text value, and only the relevant text related to the search will be displayed .</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

