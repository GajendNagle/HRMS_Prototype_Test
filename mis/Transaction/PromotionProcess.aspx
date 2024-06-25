<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PromotionProcess.aspx.cs" Inherits="mis_Transaction_PromotionProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #div1 {
            display: none;
        }

        #div2 {
            display: none;
        }

        #div3 {
            display: none;
        }

        #sel1 {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%-- <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Promotion Process<br />पदोन्नति प्रक्रिया</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Promotion" title="click to go on">Promotion</a></li>
                        <li class="breadcrumb-item active">Promotion Process</li>
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Promotion" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Promotion</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Promotion Process</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <%--  <div class="row page-titles mb-4">--%>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Promotion Process /
                  पदोन्नति प्रक्रिया
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">


            <fieldset>
                <legend>Employee Promotion / कर्मचारी का पदोन्नति
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Promotion with Transfer<br />
                                स्थानांतरण के साथ पदोन्नति<span style="color: red">*</span></label>
                            <select id="dropdown" class="form-control">
                                <option value="0">Select</option>
                                <option value="1">Yes</option>
                                <option value="2">No</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee Unique ID
                                <br />
                                कर्मचारी का यूनिक आई.डी<span style="color: red">*</span></label>
                            <input class="form-control" id="txtempluniqueid" autocomplete="off" maxlength="11" required data-msg="Enter Unique Id" type="text" name="EmpUniqueId" value="" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="button" value="Search" class=" btn w-lg btn-success btn-border" id="searchButton" onclick="checkDropdown(); return false;" />
                            <%--  <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>--%>
                            <a href="PromotionProcess.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>


                    <%--  <div class="col-md-3" style="margin-top: 2.9rem !important;">
                            <div class="form-group ">
                                <input type="button" value="Search" class="btn btn-success btn-rounded" id="searchButton" onclick="checkDropdown(); return false;" />
                                <a href="PromotionProcess.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>--%>
                </div>

            </fieldset>
            <div id="div1">
                <fieldset>
                    <legend>CURRENT PAYSCALE / वर्तमान वेतनमान</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Name 
                                    <br />
                                    कर्मचारी का नाम<span style="color: red">*</span>
                                    <br />
                                </label>
                                <input name="ename" type="text" value="AU4336-Ashok Patidar" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Class<br />
                                    श्रेणी<span style="color: red">*</span></label>
                                <input name="eclass" type="text" value="Class 1" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Type of Post<br />
                                    पद का प्रकार<span style="color: red">*</span></label>
                                <input name="epost" type="text" value="Regular" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation Type<br />
                                    पदनाम का प्रकार<span style="color: red">*</span></label>
                                <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="" value="Teaching" />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation<br />
                                    पद<span style="color: red">*</span></label>
                                <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="" value="Prathmik Shikshak" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Department<br />
                                    विभाग<span style="color: red">*</span></label>
                                <input name="txtdepartment" type="text" class="form-control" readonly autocomplete="off" placeholder="" value="Department of Education" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Pay Commission 
                                    <br />
                                    वेतन आयोग<span style="color: red">*</span></label>
                                <input name="ename" type="text" value="Seventh Pay Commission" disabled class="form-control" autocomplete="off" placeholder="Seventh Pay Commission" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Pay Scale<br />
                                    वेतनमान<span style="color: red">*</span></label>
                                <input name="ename" type="text" value="5200-20200" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Level 
                                    <br />
                                    स्तर<span style="color: red">*</span></label>
                                <input name="ename" type="text" value="Level-7" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Current Office 
                                    <br />
                                    वर्तमान कार्यालय<span style="color: red">*</span></label>
                                <input name="ename" type="text" value="Govt MS UNDRAI" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Basic Salary<br />
                                    मूल वेतन<span style="color: red">*</span></label>
                                <input name="ename" type="text" value="43500.00" disabled class="form-control" autocomplete="off" placeholder="" />
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div id="div2">
                <fieldset>
                    <legend>NEW PROMOTION DETAILS / नई पदोन्नति विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Class<br />
                                    श्रेणी<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Yes">Class I</option>
                                    <option value="Yes">Class II</option>
                                    <option value="Yes">Class III</option>
                                    <option value="Yes">Class IV</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Type of Post<br />
                                    पद का प्रकार<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">Regular/Permanent</option>
                                    <option value="2">Fixed Employee</option>
                                    <option value="3">Contigent Employee</option>
                                    <option value="4">Samvida Employee</option>
                                    <option value="5">Theka Shramik</option>
                                    <option value="6">Outsource Employee</option>
                                    <option value="7">Deputation Employee</option>
                                    <option value="8">Contractual Employee</option>
                                    <option value="9">Daily Wages Employee</option>
                                    <option value="10">Dally Wages Federation</option>
                                    <option value="11">Job Rate Employee</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation 

                                    <br />
                                    पद<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">Commissioner</option>
                                    <option value="2">Director</option>
                                    <option value="3">Additional Director</option>
                                    <option value="4">Joint Director</option>
                                    <option value="5">Deputy Director</option>
                                    <option value="6">Asstt Director</option>
                                    <option value="7">Regional Librarian</option>
                                    <option value="8">Planning Officer</option>
                                    <option value="9">Director (ELTI)</option>
                                    <option value="10">Director(SISE)</option>
                                    <option value="11">CPI</option>
                                    <option value="12">DEO</option>
                                    <option value="13">Sankul Principal</option>
                                    <option value="14">Principal HS</option>
                                    <option value="15">Lecturer</option>
                                    <option value="16">HM(MS)</option>
                                    <option value="17">Teacher (UDT)</option>
                                    <option value="18">Music Teacher</option>
                                    <option value="19">Tabla Teacher</option>
                                    <option value="20">Craft Teacher</option>
                                    <option value="21">HM(PS)</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Department 
                                    <br />
                                    विभाग<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">Department of Education </option>
                                    <option value="2">Tribal Welfare Department</option>
                                    <option value="3">Local Body</option>
                                    <option value="4">Other State Govt Managed</option>
                                    <option value="5">Minority Affairs Dept</option>
                                    <option value="6">Social Welfare Department</option>
                                    <option value="7">Ministry of Labour</option>
                                    <option value="8">Government Aided</option>
                                    <option value="9">Partially Govt Aided</option>
                                    <option value="10">Private Unaided  Recognized</option>
                                    <option value="11">Kendriya Vidyalaya</option>
                                    <option value="12">Jawahar Navodaya Vidyalaya</option>
                                    <option value="13">Sainik School</option>
                                    <option value="14">Railway School</option>
                                    <option value="15">Central Tibetan School</option>
                                    <option value="16">Other Central Govt PSU Schools</option>
                                    <option value="17">Unrecognized</option>
                                    <option value="18">Madrasa Private Unaided Recognized</option>
                                    <option value="19">Madrasa Aided Recognized</option>
                                    <option value="20">Madarsa Unrecognized</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Pay Commission 
                                    <br />
                                    वेतन आयोग<span style="color: red">*</span></label>
                                <select class="form-control select2" name="PayCommissionId" id="PayCommissionId" onchange="return ShowHidePayDiv()" required data-msg="Select Pay Commission">
                                    <option value="--Select--">--Select--</option>
                                    <option value="1">Fourth Pay Commission</option>
                                    <option value="1">Fifth Pay Commission</option>
                                    <option value="1">Sixth Pay Commission</option>
                                    <option value="2">Seventh Pay Commission</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="sel1">
                            <div class="form-group">
                                <label>Level<br />
                                    स्तर<span style="color: red">*</span></label>
                                <select class="form-select select2" name="LevelId">
                                    <option value="0">Select</option>
                                    <option value="1">Level-1</option>
                                    <option value="2">Level-2</option>
                                    <option value="3">Level-3</option>
                                    <option value="4">Level-4</option>
                                    <option value="5">Level-5</option>
                                    <option value="6">Level-6</option>
                                    <option value="7">Level-7</option>
                                    <option value="8">Level-8</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="sel2">
                            <div class="form-group">
                                <label>Pay Scale<br />
                                    वेतनमान<span style="color: red">*</span></label>
                                <select class="form-select select2" name="PayScaleId">
                                    <option value="0">Select</option>
                                    <option value="1">4440-7440</option>
                                    <option value="2">5200-20200</option>
                                    <option value="3">9300-34800</option>
                                    <option value="4">15600-39100</option>
                                    <option value="5">37400-67000</option>
                                    <option value="6">4440-7440&#x9;</option>
                                    <option value="7">5200-20200&#x9;&#x9;&#x9;&#x9;</option>
                                    <option value="8">9300-34800&#x9;</option>
                                    <option value="9">15600-39100&#x9;</option>
                                    <option value="10">37400-67000&#x9;</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3" id="sel3">
                            <div class="form-group">
                                <label>Grade Pay<br />
                                    ग्रेड पे<span style="color: red">*</span></label>
                                <select class="form-select select2" name="GradePayId">
                                    <option value="0">Select</option>
                                    <option value="1">1300</option>
                                    <option value="2">1400</option>
                                    <option value="3">1800</option>
                                    <option value="4">1900</option>
                                    <option value="5">2100</option>
                                    <option value="6">2400</option>
                                    <option value="7">2800</option>
                                    <option value="8">3200</option>
                                    <option value="9">3600</option>
                                    <option value="10">4200</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3" id="sel4">
                            <div class="form-group">
                                <label>Basic Pay 
                                    <br />
                                    मूल वेतन<span style="color: red">*</span></label>
                                <select class="form-select select2" name="BasicPayId">
                                    <option value="0">Select</option>
                                    <option value="1">15500.00</option>
                                    <option value="2">16000.00</option>
                                    <option value="3">16500.00</option>
                                    <option value="4">17000.00</option>
                                    <option value="5">17500.00</option>
                                    <option value="6">18000.00</option>
                                    <option value="7">18500.00</option>
                                    <option value="8">19100.00</option>
                                    <option value="9">19700.00</option>
                                    <option value="10">20300.00</option>
                                </select>
                            </div>
                        </div>



                        <div class="col-md-3">
                            <div class="form-group">
                                <label>File No.<br />
                                    दस्तावेज संख्या<span style="color: red">*</span></label>
                                <input type="text" autocomplete="off" class="form-control" placeholder="Enter File No." name="name" />
                            </div>
                        </div>

                    </div>
                </fieldset>


                <div id="div3">
                    <fieldset>
                        <legend>Select Transfer Location / स्थानांतरण स्थान का चयन करें </legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Division<br />
                                        संभाग<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
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
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>District<br />
                                        जिला<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Ujjain">Ujjain</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Morena">Morena</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Block<br />
                                        ब्लॉक<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
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
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Sankul<br />
                                        संकुल<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="BILHA">BILHA</option>
                                        <option value="BELTARA">BELTARA</option>
                                        <option value="BITKULI">BITKULI</option>
                                        <option value="DAGANIYA">DAGANIYA</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School<br />
                                        विद्यालय<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="1">HS GOVT.GIRLS BAIMA(22070304405)</option>
                                        <option value="2">GOVT. HIGH SCHOOL BIRKONA(22070304710)</option>
                                        <option value="3">H S SHRI SAI, SILPAHARI(22070305303)</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Postal Code<br />
                                        पोस्टल कोड<span style="color: red">*</span></label>
                                    <select id="ddlpostalcode" class="form-control select2">
                                        <option value="0">--Select--</option>
                                        <option value="1">43512 - AAMAI HS NEW JSK</option>
                                        <option value="2">2312 - AKBARPUR GOVT. HS</option>
                                        <option value="3">23231 - B.HSS BISTAN</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Panel Name<br />
                                        पैनल का नाम<span style="color: red">*</span></label>
                                    <select id="ddlpanelname" class="form-control select2">
                                        <option value="0">--Select--</option>
                                        <option value="1">JSK</option>
                                        <option value="2">BISTAN </option>
                                        <option value="3">B.HSS </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Vacant Post 
                                        <br />
                                        रिक्त पद<span style="color: red">*</span></label>
                                    <select id="ddlvacantpost" class="form-control select2">
                                        <option value="0">--Select--</option>
                                        <option value="1">43512 - AAMAI HS NEW JSK</option>
                                        <option value="2">2312 - AKBARPUR GOVT. HS</option>
                                        <option value="3">23231 - B.HSS BISTAN</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>

                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="form-group">

                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="PromotionProcess.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>

                <%--                        <div class="row justify-content-center">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <button type="button" class="Alert-Confirmation btn btn-success  btn-rounded">Save</button>
                                    <a href="PromotionProcess.aspx" class=" btn btn-danger  btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                --%>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function toggleDivs() {
            var checkbox1 = document.getElementById("customRadio1");
            var checkbox2 = document.getElementById("customRadio2");
            var customRadio3 = document.getElementById("customRadio3");
            var customRadio4 = document.getElementById("customRadio4");
            var divNewPromotion = document.getElementById("divNewPromotion");
            var radioCode = document.getElementById("radioCode");
            var OfficeCode = document.getElementById("OfficeCode");
            var SchoolCode = document.getElementById("SchoolCode");
            var fileno = document.getElementById("fileno");
            var checkbox = document.getElementById("checkbox");

            if (checkbox1.checked) {
                divNewPromotion.style.display = "block"
                radioCode.style.display = "block"
            } else if (checkbox2.checked) {
                divNewPromotion.style.display = "none";
                radioCode.style.display = "none";
                OfficeCode.style.display = "none";
                fileno.style.display = "none";
                checkbox.style.display = "none";
                SchoolCode.style.display = "none";
                customRadio3.checked = false;
                customRadio4.checked = false;
            } else {
                divNewPromotion.style.display = "none";
                radioCode.style.display = "none";
                OfficeCode.style.display = "none";
                fileno.style.display = "none";
                checkbox.style.display = "none";
                SchoolCode.style.display = "none";
            }
        }

        function toggleDropdown() {
            var checkbox1 = document.getElementById("customRadio3");
            var checkbox2 = document.getElementById("customRadio4");
            var OfficeCode = document.getElementById("OfficeCode");
            //var fileno = document.getElementById("fileno");
            var checkbox = document.getElementById("checkbox");
            var SchoolCode = document.getElementById("SchoolCode");

            if (checkbox1.checked) {
                OfficeCode.style.display = "block"
                //fileno.style.display = "block"
                checkbox.style.display = "block"
                SchoolCode.style.display = "none"
            } else if (checkbox2.checked) {
                OfficeCode.style.display = "none"
                SchoolCode.style.display = "block"
                //fileno.style.display = "block"
                checkbox.style.display = "block"
            }
            else {
                OfficeCode.style.display = "none"
                SchoolCode.style.display = "none"
                //fileno.style.display = "none"
                checkbox.style.display = "none"
            }
        }

        function ShowPopUP() {
            var OfficeCode = document.getElementById("ddlOfficeCode");
            var SchoolCode = document.getElementById("ddlSchoolCode");
            if (OfficeCode.value > 0 || SchoolCode.value > 0) {
                $('#popup').modal('show');
            } else if (OfficeCode.value == 0 || SchoolCode.value === 0) {
                $('#popup').modal('hide');
            }
            else {
                $('#popup').modal('hide');
            }
        }

        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/E-Service Book.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }

        function openPDF1() {
            var pdfUrl = '../Document/Promotion-1.pdf';
            window.open(pdfUrl, '_blank');
        }

        function checkClick() {
            var chckTransfer = document.getElementById("chckTransfer");
            var divTransfer = document.getElementById("divTransfer");

            if (chckTransfer.checked) {
                divTransfer.style.display = "block";
            } else {
                divTransfer.style.display = "none";
            }
        }
    </script>
    <script>
        function Hideshow() {

            var x = document.getElementById("showdetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    //Swal.fire({
                    //    title: 'Are you sure?',
                    //    text: "Do you want to save this record ?",
                    //    type: 'warning',
                    //    showCancelButton: true,
                    //    confirmButtonColor: '#3085D6',
                    //    cancelButtonColor: '#d33',
                    //    confirmButtonText: 'Yes'
                    //    // animation: false,
                    //    // customClass: {
                    //    //     popup: 'animated tada'
                    //    // }
                    //}).then((result) => {
                    //    if (result.value) {
                    //        Swal.fire({
                    //            type: 'success',
                    //            title: 'Success!',
                    //            text: 'Record Saved Successfully!',
                    //            timer: 2000
                    //            // animation: false,
                    //            // customClass: {
                    //            //     popup: 'animated tada'
                    //            // }
                    //        }
                    //        )
                    //        var x = document.getElementById("divEnteredDetails");
                    //        if (x.style.display === "none") {
                    //            x.style.display = "block";
                    //        } else {
                    //            x.style.display = "block";
                    //        }
                    //    }
                    //})

                    var x = document.getElementById("divEnteredDetails");
                    if (x.style.display === "none") {
                        x.style.display = "block";
                    } else {
                        x.style.display = "block";
                    }

                });

                $('.Alert-Save2').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
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
                                text: 'Record Saved Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery)

    </script>
    <script>
        function checkDropdown() {
            var selectedValue = document.getElementById("dropdown").value;
            //console.log(selectedValue);
            var div1 = document.getElementById("div1");
            var div2 = document.getElementById("div2");
            var div3 = document.getElementById("div3");


            if (selectedValue == "1") {
                div1.style.display = "block";
                div2.style.display = "block";
                div3.style.display = "block";

            } else if (selectedValue == "2") {
                div1.style.display = "block";
                div2.style.display = "block";
                div3.style.display = "none";

            }
            else {
                div1.style.display = "none";
                div2.style.display = "none";
                div3.style.display = "none";
            }
        }

        function ShowHidePayDiv() {


            var selectElement = document.getElementById("PayCommissionId").value;
            var sel1 = document.getElementById("sel1");
            var sel3 = document.getElementById("sel3");
            //console.log(selectElement);
            if (selectElement == "2") {
                sel1.style.display = "block";
                sel3.style.display = "none";
            }
            else if (selectElement == "1") {
                sel1.style.display = "none";
                sel3.style.display = "block";
            }
            else {
                sel1.style.display = "none";
                sel3.style.display = "block";
            }


            //// Clear required attributes and data-msg for affected fields
            //clearRequiredMessages(["LevelId", "PayScaleId", "BasicPayId", "GradePayId", "BasicPay"]);
            //var selectElement = document.getElementById("PayCommissionId");
            //var selectedText = selectElement.options[selectElement.selectedIndex].text;
            //var divLevel = document.getElementById("divLevel");
            //var divPayScale = document.getElementById("divPayScaleSeventh");
            //var divBasicPay = document.getElementById("divBasicPay");
            //var divGradePay = document.getElementById("divGradePay");
            //var divBasicPayText = document.getElementById("divBasicPayText");

            //if (selectedText === "Seventh Pay Commission") {
            //    divLevel.style.display = "block";
            //    divPayScale.style.display = "block";
            //    divBasicPay.style.display = "block";
            //    divGradePay.style.display = "none";
            //    divBasicPayText.style.display = "none";
            //    // Set required attributes and data-msg for visible fields
            //    setRequiredMessage("LevelId", "Select Level");
            //    setRequiredMessage("PayScaleId", "Select Pay Scale");
            //    setRequiredMessage("BasicPayId", "Select Basic Pay");
            //} else {
            //    divLevel.style.display = "none";
            //    divPayScale.style.display = "block";
            //    divBasicPay.style.display = "none";
            //    divGradePay.style.display = "block";
            //    divBasicPayText.style.display = "block";
            //    // Set required attributes and data-msg for visible fields
            //    setRequiredMessage("GradePayId", "Select Grade Pay");
            //    setRequiredMessage("PayScaleId", "Select Pay Scale");
            //    setRequiredMessage("BasicPay", "Enter Basic Pay");
            //}
        }

    </script>

</asp:Content>


