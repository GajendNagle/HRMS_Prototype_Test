<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_DeoCompassionateApproval.aspx.cs" Inherits="mis_HRMS_GajendraTrn_CompassionateAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .profileimage {
            display: block;
            height: 6.2rem;
            margin-left: 5rem;
        }

        html body .m-t-30 {
            margin-top: 0px;
        }

        .tab-menu {
            color: #313132;
            font-weight: 600 !important;
            margin-left: 1px !important;
            border: 1px solid #a5a3a3 !important;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out !important;
        }

        .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
            background-color: #16603ae3;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--   <div class="row">--%>
    <%--       <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <span>HRMS</span>
                        </li>
                        <li class="breadcrumb-item">Compassionate Appointment</li>
                        <li class="breadcrumb-item">Register Application For Compassionate Appointment on DEO Level</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>--%>
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
                            <a href="#DEOCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>DEO Compassionate Appointment </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Register Application For Compassionate Appointment on DEO Level</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5" style="position: relative; bottom: 20px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
            <img src="../../img/Anukampa Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill " style="padding-top: 11px;">
                            अनुकंपा नियुक्ति
						विवरण
				
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                अनुकंपा नियुक्ति का आवेदन और आवेदन को अपडेट करने हेतु सम्बंधित पेज का उपयोग किया जाता हैं |
					
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset id="divoftextBox" runat="server">
                <legend>Search Employee/कर्मचारी खोंजे
                </legend>
                <div class="row">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Deceased Employee Code /<br />
                                दिवंगत अधिकारी / कर्मचारी कोड दर्ज करें<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" ID="txtEmployeeId" CssClass="form-control" placeholder="Search" AutoComplete="off">
                            </asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <asp:Button type="button" ID="showDataBtn" OnClick="showDataBtn_Click" Text="Search" runat="server" class="btn w-lg btn-success btn-border" />
                        <a href="Trn_DeoCompassionateApproval.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <div class="row" id="divDataofAU5693" runat="server" visible="false">
                <div class="col-md-12">
                    <ul class="nav nav-pills m-t-30 m-b-30 ">
                        <li class=" nav-item"><a href="#navpills-1" class="nav-link active tab-menu " data-bs-toggle="tab" aria-expanded="false">Personal Information</a></li>
                        <li class="nav-item"><a href="#navpills-4" class="nav-link tab-menu" id="NavUploadCertificate" data-bs-toggle="tab" aria-expanded="true">Upload Certificate</a> </li>
                    </ul>
                </div>

                <div class="col-md-12">
                    <div class="tab-content br-n pn">
                        <div id="navpills-1" class="tab-pane active">
                            <fieldset>
                                <legend>Details of Deceased Officer/Employee /
   
                                    दिवंगत अधिकारी / कर्मचारी का विवरण  </legend>
                                <div class="row align-items-end">
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Deceased Officer/Employee Code /<br />
                                                दिवंगत अधिकारी / कर्मचारी कोड<span style="color: red">*</span></label>
                                            <input placeholder="दिवंगत अधिकारी / कर्मचारी कोड" id="Code" readonly name="ename" value="AU5693" type="text" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">


                                        <div class="form-group">
                                            <label>
                                                Full name of Deceased Government servant /<br />
                                                दिवंगत शासकीय सेवक का पूर्ण नाम<span style="color: red">*</span></label>
                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname" value="Rohan Singh" readonly />
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Gender /
                                                <br />
                                                लिंग<span style="color: red">*</span></label>
                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname1" value="Male" readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Caste/
                                                <br />
                                                जाति<span style="color: red">*</span></label>
                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname2" value="OBC" readonly />
                                        </div>
                                    </div>


                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Last Posting District Name /<br />
                                                अंतिम पोस्टिंग जिला का चयन करे<span style="color: red">*</span></label>
                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname3" value="Bhopal" readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Deceased Officer / Staff Cadre /
                                                <br />
                                                दिवंगत अधिकारी / कर्मचारी कैडर<span style="color: red" id="ddlcader">*</span></label>
                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname4" value="Class 3" readonly />
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Deceased Officer/Employee Designation /
                                                <br />
                                                दिवंगत अधिकारी/कर्मचारी पदनाम<span style="color: red">*</span></label>
                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname5" value="Teacher (UDT)" readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Department Name /
                                                <br />
                                                विभाग का नाम <span style="color: red">*</span></label>
                                            <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" readonly="readonly" value="Education" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Select Date of Death /
                                                <br />
                                                मृत्यु दिनांक<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" placeholder=" मृत्यु दिनांक (दिनांक DD/MM/YYYY के प्रारूप मे दर्ज करे) ." />
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Cause of Death /
                                                <br />
                                                मृत्यु कारण का चयन करें <span style="color: red">*</span></label>
                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="मृत्यु का कारण" id="txtname6" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Select Number of Surviving Family Members /
                                                <br />
                                                परिवार के जीवित सदस्यों की संख्या का चयन करें <span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlFamelyMemberCount">
                                                <option value="----">--Select--</option>
                                                <option value="----">1</option>
                                                <option value="----">2</option>
                                                <option value="----">3</option>
                                                <option value="----">4</option>
                                                <option value="----">5</option>
                                                <option value="----">6</option>
                                                <option value="----">7</option>
                                                <option value="----">8</option>
                                                <option value="----">9</option>
                                                <option value="----">10 </option>
                                            </select>
                                        </div>
                                    </div>


                                </div>

                            </fieldset>
                            <fieldset>
                                <legend>Details of Family Members of Deceased Public Servant/ Teacher /<br />
                                    दिवंगत लोकसेवक/ शिक्षक के परिवार के सभी सदस्यों की जानकारी|</legend>


                                <fieldset style="margin-top: 5rem!important;">
                                    <legend>Nominee Details /<br>
                                        उम्मीदवार की जानकारी</legend>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <table class="table table-bordered table-responsive-lg">
                                                <thead>
                                                    <tr>
                                                        <th>Sr.No. /<br>
                                                            सरल क्रं</th>
                                                        <th>Nominee Name /<br>
                                                            उम्मीदवार का नाम</th>
                                                        <th>Relation With Employee /<br>
                                                            कर्मचारी के साथ संबंध</th>
                                                        <th>Nominee Percentage /<br>
                                                            उम्मीदवार प्रतिशत</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbodyNominee">
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Kumar singh</td>
                                                        <td>Freind</td>
                                                        <td>100 </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                </fieldset>



                                <div class="row align-items-end">
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Name of Member /<br />
                                                सदस्य का नाम दर्ज करें<span style="color: red">*</span></label>
                                            <input type="text" class="form-control" autocomplete="off" placeholder="सदस्य का नाम" id="Name" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Select Date of Birth/
                                                <br />
                                                जन्म दिनांक का चयन करें<span style="color: red">*</span></label>
                                            <input type="date" class="form-control" autocomplete="off" placeholder="जन्म दिनांक" id="date" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Select Gender/
                                                <br />
                                                लिंग चयन करें<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlgender">
                                                <option value="">--Select--</option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                                <option value="Other">Other</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Select Relation with Deceased Public Servant /<br />
                                                दिवंगत लोकसेवक के साथ संबंध का चयन करें<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlRelation">
                                                <option value="">--Select--</option>
                                                <option value="Wife Husband">Wife Husband</option>
                                                <option value="Son">Son</option>
                                                <option value="Daughter">Daughter</option>
                                                <option value="Mother">Mother</option>
                                                <option value="Father">Father</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Occupation /<br />
                                                व्यवसाय दर्ज करें <span style="color: red">*</span></label>
                                            <input type="text" class="form-control" autocomplete="off" placeholder="व्यवसाय" id="TxtWorkStatus" />
                                        </div>
                                    </div>


                                    <div class="col-md-2 mt-4">
                                        <div class="form-group">
                                            <input type="button" id="btnAdd" class="btn w-lg btn-success btn-border" value="Add" onclick="AddRow();" />
                                        </div>
                                    </div>

                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="mytable" style="display: none;">
                                                <tbody>
                                                    <tr class="card-header">
                                                        <th>Sr.No.<br />
                                                            सरल क्र.</th>
                                                        <th>CheckBox</th>
                                                        <th>Name of Member<br />
                                                            सदस्य का नाम</th>
                                                        <th>Relationship with The Deceased<br />
                                                            दिवंगत के साथ संबंध</th>
                                                        <th>Business<br />
                                                            व्यवसाय</th>
                                                        <th>Gender<br />
                                                            लिंग</th>
                                                        <th>Date of Birth<br />
                                                            जन्म दिनांक</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Details of the Family Member Who has Applied for Compassionate Appointment /<br />
                                    परिवार के सदस्य का विवरण जिन्होंने अनुकंपा नियुक्ति के लिए आवेदन किया है</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Name of the Applicant /<br />
                                                आवेदक का नाम <span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="अनुकंपा नियुक्ति हेतु परिवार के आवेदक सदस्य का नाम" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Date of Birth /
                                                <br />
                                                जन्म दिनांक<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="जन्म की तारीख (DD/MM/YYYY)" />
                                        </div>

                                    </div>


                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Gender /
                                                <br />
                                                लिंग<span style="color: red">*</span></label>
                                            <select class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="Bhopal">Male</option>
                                                <option value="Indore">Female</option>
                                                <option value="Gwalior">Other</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Applicant's Relation with Deceased Public Servant /<br />
                                                आवेदक का दिवंगत लोकसेवक के साथ संबंध <span style="color: red">*</span></label>
                                            <select class="form-control select2" id="">
                                                <option value="----">--Select--</option>
                                                <option value="----">Wife Husband</option>
                                                <option value="----">Son</option>
                                                <option value="----">Daughter</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Occupation /<br />
                                                व्यवसाय<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Select Marital Status/
                                                <br />
                                                वैवाहिक स्थिति का चयन करें <span style="color: red">*</span></label>
                                            <select class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="married">married</option>
                                                <option value="Un-married">Un-married</option>
                                                <option value="Widow">Widow</option>

                                            </select>
                                        </div>

                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Mobile No. /<br />
                                                मोबाइल नंबर दर्ज करें</label><span style="color: red">*</span>
                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="मोबाइल नंबर" />
                                        </div>

                                    </div>

                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Select Applicant's Qualification/<br />
                                                आवेदक की योग्यता का चयन करें<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlQualification" onchange="hideshowPosition()">

                                                <option value="0">-Select-</option>
                                                <option value="1">Secondary</option>
                                                <option value="2">Higher Secondary</option>
                                                <option value="3">Graduation</option>
                                                <option value="4">Post Graduation</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3" style="display: none;" id="divSapthpatr">
                                        <div class="form-group">
                                            <label>
                                                Select the Position for which Applicant wants to Apply /<br />
                                                आवेदक किस पद पर आवेदन करना चाहता है चयन करें<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlSapthpatr5" onchange="ShowHide()">
                                                <option value="">--Select--</option>
                                                <%--<option value="1">शैक्षणिक संवर्ग</option>--%>
                                                <option value="3">चतुर्थ श्रेणी</option>
                                                <%-- <option value="2">लिपिक संवर्ग</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3" style="display: none;" id="divSapthpatr1">
                                        <div class="form-group">
                                            <label>
                                                Select the Position for which Applicant wants to Apply /<br />
                                                आवेदक किस पद पर आवेदन करना चाहता है चयन करें<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlSapthpatr11" onchange="ShowHide()">
                                                <option value="">--Select--</option>
                                                <%--<option value="1">शैक्षणिक संवर्ग</option>--%>
                                                <option value="3">चतुर्थ श्रेणी</option>
                                                <option value="2">लिपिक संवर्ग</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3" style="display: none;" id="divSapthpatr2">
                                        <div class="form-group">
                                            <label>
                                                Select the Position for which Applicant wants to Apply /<br />
                                                आवेदक किस पद पर आवेदन करना चाहता है चयन करें<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlSapthpatr22" onchange="ShowHide11()">
                                                <option value="0">--Select--</option>
                                                <option value="1">शैक्षणिक संवर्ग</option>
                                                <option value="2">चतुर्थ श्रेणी</option>
                                                <option value="3">लिपिक संवर्ग</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3" style="display: none;" id="divSapthpatr3">
                                        <div class="form-group">
                                            <label>
                                                Select the Position for which Applicant wants to Apply /<br />
                                                आवेदक किस पद पर आवेदन करना चाहता है चयन करें<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlSapthpatr33" onchange="ShowHide12()">
                                                <option value="0">--Select--</option>
                                                <option value="1">शैक्षणिक संवर्ग</option>
                                                <option value="2">चतुर्थ श्रेणी</option>
                                                <option value="3">लिपिक संवर्ग</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3" style="display: none" id="DivDesignation">
                                        <div class="form-group">
                                            <label>
                                                Designation/<br />
                                                पदनाम<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlSapthpatr6" onchange="ShowHide1()">
                                                <option value="0">--Select--</option>
                                                <option value="1">325- Prathmik Shikshak</option>
                                                <option value="2">328- Prayogshala Shikshak</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3" style="display: none" id="DivQualificationStatus">
                                        <div class="form-group">
                                            <label>
                                                Have Passed the PTET? /<br />
                                                क्या प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की है?<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlSapthpatr1" onchange="ShowHide2()">
                                                <option value="">--Select--</option>
                                                <option value="1">हाँ</option>
                                                <option value="2">नहीं</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3" style="display: none" id="Divyear">
                                        <div class="form-group">
                                            <label>
                                                Year of Eligibility Test/<br />
                                                पात्रता परीक्षा का वर्ष<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="पात्रता परीक्षा का वर्ष" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3" style="display: none" id="DivQualification">
                                        <div class="form-group">
                                            <label>
                                                Professional Qualification
                            <br />
                                                व्यावसायिक योग्यता/<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlSapthpatr2">
                                                <option value="">--Select--</option>
                                                <option value="D.Ed">D.Ed</option>
                                                <option value="B.Ed">B.Ed</option>
                                                <option value="D.Ed + B.Ed Both">D.Ed + B.Ed Both</option>
                                                <option value="कोई नहीं">कोई नहीं</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="form-group">
                                            <label>
                                                Have Family Members Given Consent for Compassionate Appointment? /<br />
                                                क्या परिवार के सदस्यों ने अनुकंपा नियुक्ति के लिए सहमति पत्र दिया है?<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="ddlSapthpatr3" onchange="ShowHide3()">
                                                <option value="0">--Select--</option>
                                                <option value="1">Yes</option>
                                                <option value="2">No</option>
                                            </select>
                                        </div>
                                    </div>



                                </div>
                                <div class="row">
                                    <div class="col-md-12" style="display: none" id="DivNote">
                                        <p style="color: brown; font-size: large; font-weight: bolder">विज्ञान संकाय में 10+2 परीक्षा 50% अंक के साथ उत्तीर्ण होने पर पात्रता होगी</p>
                                    </div>
                                </div>
                            </fieldset>
                            <b>
                                <div class="text-danger mb-3">नोट:- परिवार के सभी सदस्यों का सहमति पत्र होना अनिवार्य है|</div>
                                <div style="color: brown; display: none;" id="lbl">
                                    <p>नोट:-प्राथमिक शिक्षक (D.ed + पात्रता परीक्षा)</p>

                                </div>
                            </b>
                            <div class="row">
                                <div class="col-md-12" id="button" style="display: block;">
                                    <button type="button" class="Alert-Confirmation2 btn w-lg btn-success btn-border">Save & Next</button>
                                    <a href="Trn_DeoCompassionateApproval.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
                            </div>
                        </div>
                        <div id="navpills-4" class="tab-pane">
                            <fieldset style="margin-top: 1.1rem;">
                                <legend>Document/<br />
                                    दस्तावेज़</legend>
                                <div class="row">
                                    <div>
                                        <h5 style="font-weight: 500;">Note :<span style="color: red;"> Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
                                    </div>
                                    <div class="col-md-12 mt-3">
                                        <table class="table table-bordered table-responsive-lg">
                                            <thead class="fw-bold">
                                                <tr style="white-space:nowrap">
                                                    <th><b>Sr.No./<br>
                                                        क्रमांक</b></th>
                                                    <th><b>Documents Name/<br>
                                                        दस्तावेज का नाम</b></th>
                                                    <th><b>Upload Documents/<br>
                                                        दस्तावेज अपलोड</b></th>
                                                    <th><b>View Documents/<br>
                                                        दस्तावेज देंखे</b></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td><b>Death Certificate of Deceased Government Servant /<br>
                                                        दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र <span style="color: red">*</span></b></td>
                                                    <td>
                                                        <input type="file" class="form-control getfileinfo">

                                                    <td>
                                                        <a href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td><b>Birth Certificate of the Applicant /<br>
                                                        आवेदक का जन्म तिथि का प्रमाण पत्र <span style="color: red">*</span></b></td>
                                                    <td>
                                                        <input type="file" class="form-control getfileinfo">

                                                    <td>
                                                        <a href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td><b>Certificate of Residence/Domicile /<br>
                                                        निवास/मूल निवासी होने का प्रमाण पत्र <span style="color: red">*</span></b></td>
                                                    <td>
                                                        <input type="file" class="form-control getfileinfo">

                                                    <td>
                                                        <a href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td><b>Caste Certificate /<br>
                                                        जाती प्रमाण पत्र <span style="color: red">*</span></b></td>
                                                    <td>
                                                        <input type="file" class="form-control getfileinfo">

                                                    <td>
                                                        <a href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td><b>Certificate of Passing Higher Secondary/Graduation or Other Examination /<br>
                                                        हायर सेकेण्डरी / स्नातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र <span style="color: red">*</span></b></td>
                                                    <td>
                                                        <input type="file" class="form-control getfileinfo">

                                                    <td>
                                                        <a href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td><b>Consent Certificate from the Head of the Family /<br>
                                                        परिवार के मुखिया द्वारा सहमति प्रमाण पत्र <span style="color: red">*</span></b></td>
                                                    <td>
                                                        <input type="file" class="form-control getfileinfo">

                                                    <td>
                                                        <a href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>7</td>
                                                    <td><b>Applicant's Photo /<br>
                                                        आवेदक का फोटो <span style="color: red">*</span></b></td>
                                                    <td>
                                                        <input type="file" class="form-control getfileinfo">

                                                    <td>
                                                        <a href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>8</td>
                                                    <td><b>Family Samagra Id /<br>
                                                        परिवार की समग्र आईडी <span style="color: red">*</span></b></td>
                                                    <td>
                                                        <input type="file" class="form-control getfileinfo">

                                                    <td>
                                                        <a href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                                <%-- <div class="row align-items-end">
                                    <div>
                                        <h5 style="font-weight: 500;">Note :<span style="color: red;">Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
                                    </div>
                                    <br />
                                    <br />
                                </div>
                                <div class="row align-items-end">
                                    <div id="DocAppointment" class="col-md-6">
                                        <label>
                                            Death Certificate of Deceased Government Servant<br />
                                            दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र :<span style="color: red">*</span></label>
                                    </div>
                                    <div id="DocAppointment1" class="col-md-4">
                                        <input type="file" id="fileInput1" class="form-control" onchange="displayImage(this)">
                                    </div>
                                    <div id="DocAppointment2" class="col-md-2">
                                        <button type="submit" class="btn btnEye view-but"><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div id="DocBirth" class="col-md-6">
                                        <label>
                                            Birth Certificate of the Applicant
                        <br />
                                            आवेदक का जन्म तिथि का प्रमाण पत्र :<span style="color: red">*</span></label>
                                    </div>
                                    <div id="DocBirth1" class="col-md-4">
                                        <input type="file" id="fileInput3" class="form-control" onchange="displayImage(this)">
                                    </div>
                                    <div id="DocBirth2" class="col-md-2">
                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div id="DocCaste" class="col-md-6">
                                        <label>
                                            Certificate of Residence/Domicile<br />
                                            निवास/मूल निवासी होने का प्रमाण पत्र :<span style="color: red">*</span></label>
                                    </div>
                                    <div id="DocCaste1" class="col-md-4">
                                        <input type="file" id="fileInput2" class="form-control" onchange="displayImage(this)">
                                    </div>
                                    <div id="DocCaste2" class="col-md-2">
                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div id="DocPresentpost" class="col-md-6 mt-1">
                                        <label>
                                            Caste Certificate<br />
                                            जाती प्रमाण पत्र :
                                        </label>
                                    </div>
                                    <div id="DocPresentpost1" class="col-md-4">
                                        <input type="file" id="fileInput4" class="form-control" onchange="displayImage(this)">
                                    </div>
                                    <div id="DocPresentpost2" class="col-md-2">
                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div id="Dochandicapped" class="col-md-6">
                                        <label>
                                            Certificate of Passing Higher Secondary/Graduation or Other Examination<br />
                                            हायर सेकेण्डरी / स्नातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र :<span style="color: red">*</span></label>
                                    </div>
                                    <div id="Dochandicapped1" class="col-md-4">
                                        <input type="file" id="fileInput6" class="form-control" onchange="displayImage(this)">
                                    </div>
                                    <div id="Dochandicapped2" class="col-md-2">
                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div id="CriticalIllness" class="col-md-6">
                                        <label>
                                            Consent Certificate from the Head of the Family<br />
                                            परिवार के मुखिया द्वारा सहमति प्रमाण पत्र :<span style="color: red">*</span></label>
                                    </div>
                                    <div id="CriticalIllness1" class="col-md-4">
                                        <input type="file" id="fileInput010" class="form-control" onchange="displayImage(this)">
                                    </div>
                                    <div id="CriticalIllness3" class="col-md-2">
                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div id="DocMarried" class="col-md-6 mt-1">
                                        <label>
                                            Applicant's photo<br />
                                            आवेदक का फोटो :<span style="color: red">*</span></label>
                                    </div>
                                    <div id="DocMarried1" class="col-md-4">
                                        <input type="file" id="fileInput5" class="form-control" onchange="displayImage(this)">
                                    </div>
                                    <div id="DocMarried2" class="col-md-2">
                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div id="CriticalIllness10" class="col-md-6 mt-1">
                                        <label>
                                            Ration Card<br />
                                            राशन कार्ड :<span style="color: red">*</span></label>
                                    </div>
                                    <div id="CriticalIllness11" class="col-md-4">
                                        <input type="file" id="fileInput0101" class="form-control" onchange="displayImage(this)">
                                    </div>
                                    <div id="CriticalIllness12" class="col-md-2">
                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div class="col-md-6 mt-1">
                                        <label>
                                            Affidavit<br />
                                            शपथ पत्र :<span style="color: red">*</span></label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="file" class="form-control" onchange="displayImage(this)">
                                    </div>
                                    <div class="col-md-2">
                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>
                                    </div>
                                </div>--%>
                            </fieldset>
                            <div class="row">
                                <div class="col-md-12" id="">
                                    <div class="form-group">
                                        <h5 id="exampleModalLabel10" style="font-size: 30px; text-align: center; font-weight: bolder"><b style="text-decoration: underline; font-family: Aparajita;">सत्यापन</b></h5>
                                        <label>
                                            <span style="color: red; font-size: 15px; font-family: Aparajita; color: #00BCD4">
                                                <input type="checkbox" id="Check" onchange="toggleDivVisibility()" />
                                                &ensp;1. में एतद् द्वारा घोषणा करता करती हूँ कि मेरे द्वारा दी गई उपरोक्त जानकारी मेरे ज्ञान एवं विश्वास के अनुसार सत्य हैं, यदि मेरे द्वारा दी गई जानकारी नियुक्ति के पूर्व या बाद में असत्य गलत पायी जाती है अथवा नियुक्ति 
के पश्चात् अपात्रता पाई जाती है तो मैं पूर्ण रूप से जानता जानती हूँ कि मेरी नियुक्ति  निरस्त कर दी जाएगी और इस संबंध में प्रावधानित विधि एवं नियमों के अधीन मेरे द्वारा की जाने वाली कार्यवाही के लिए मैं उत्तरदायी रहूंगा रहूंगी।<br />
                                                <input type="checkbox" id="Checks" onchange="toggleDivVisibility()" />
                                                 &ensp; 2. में यह भी वचन देता हूँ देती हूँ कि में स्व. श्री KRISHNAVATI PARTE के आश्रित परिवार के अन्य सदस्यों का समुचित भरण पोषण करूंगा करूंगी. बाद में किसी भी समय यदि यह प्रमाणित हो जाए कि मेरे द्वारा परिवार के सदस्यों को अनदेखा किया जा रहा है, अथवा उनका 
सही ढंग से भरण पोषण नहीं किया जा रहा है तो मेरी अनुकंपा नियुक्ति समाप्त की जा सकेगी।</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div id="Divbutton">
                                <div class="row">
                                    <div class="col-md-12">
                                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Final Submit</button>
                                        <a runat="server" id="clearfirst" href="Trn_DeoCompassionateApproval.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel" style="font-size: 25px;"><b>सत्यापन</b></h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <input type="checkbox" />
                                            कार्यालय द्वारा कर्मचारी का समस्त जानकारी का अवलोकन करने के
                    पश्चात कर्मचारी पंजीयन को अनुमोदन के लिए भेजा जा रहा है |
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="Alert-Confirmation  btn btn-success btn-rounded" data-bs-dismiss="modal">Approve</button>
                                            <button type="button" class="btn btn-danger btn-rounded" data-bs-dismiss="modal">Reject</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function hideshowPosition() {
            var ddlQualification = document.getElementById("ddlQualification");
            var divSapthpatr = document.getElementById("divSapthpatr");
            var divSapthpatr1 = document.getElementById("divSapthpatr1");
            var divSapthpatr2 = document.getElementById("divSapthpatr2");
            var divSapthpatr3 = document.getElementById("divSapthpatr3");

            if (ddlQualification.value === "0") {
                divSapthpatr.style.display = "none";
                divSapthpatr1.style.display = "none";
                divSapthpatr2.style.display = "none";
                divSapthpatr3.style.display = "none";
            }
            else if (ddlQualification.value === "1") {
                divSapthpatr.style.display = "block";
                divSapthpatr1.style.display = "none";
                divSapthpatr2.style.display = "none";
                divSapthpatr3.style.display = "none";
            }
            else if (ddlQualification.value === "2") {
                divSapthpatr.style.display = "none";
                divSapthpatr1.style.display = "block";
                divSapthpatr2.style.display = "none";
                divSapthpatr3.style.display = "none";
            }
            else if (ddlQualification.value === "3") {
                divSapthpatr.style.display = "none";
                divSapthpatr1.style.display = "none";
                divSapthpatr2.style.display = "block";
                divSapthpatr3.style.display = "none";
            }
            else if (ddlQualification.value === "4") {
                divSapthpatr.style.display = "none";
                divSapthpatr1.style.display = "none";
                divSapthpatr2.style.display = "none";
                divSapthpatr3.style.display = "block";
            }

        }
        function ShowHide11() {

            var ddlSapthpatr22 = document.getElementById("ddlSapthpatr22");
            var DivDesignation = document.getElementById("DivDesignation");
            var ddlSapthpatr33 = document.getElementById("ddlSapthpatr33");

            if (ddlSapthpatr22.value === "0") {
                DivDesignation.style.display = "none";
            }
            else if (ddlSapthpatr22.value === "1" || ddlSapthpatr33.value === "1") {
                DivDesignation.style.display = "block";
            }
            else {
                DivDesignation.style.display = "none";
            }
        }
        function ShowHide12() {

            var ddlSapthpatr33 = document.getElementById("ddlSapthpatr33");
            var DivDesignation = document.getElementById("DivDesignation");

            if (ddlSapthpatr33.value === "0") {
                DivDesignation.style.display = "none";
            }
            else if (ddlSapthpatr33.value === "1") {
                DivDesignation.style.display = "block";
            }
            else {
                DivDesignation.style.display = "none";
            }
        }
        function ShowHide1() {

            var ddlSapthpatr6 = document.getElementById("ddlSapthpatr6");
            var DivQualificationStatus = document.getElementById("DivQualificationStatus");
            var lbl = document.getElementById("lbl");

            if (ddlSapthpatr6.value === "0") {
                DivQualificationStatus.style.display = "none";
                lbl.style.display = "none";
            }
            else if (ddlSapthpatr6.value === "1") {
                DivQualificationStatus.style.display = "block";
                lbl.style.display = "block";
            }
            else {
                DivQualificationStatus.style.display = "none";
                lbl.style.display = "none";
            }
        }
        function ShowHide2() {

            var ddlSapthpatr1 = document.getElementById("ddlSapthpatr1");
            var DivQualification = document.getElementById("DivQualification");
            var Divyear = document.getElementById("Divyear");

            if (ddlSapthpatr1.value === "0") {
                DivQualification.style.display = "none";
                Divyear.style.display = "none";
            }
            else if (ddlSapthpatr1.value === "1") {
                Divyear.style.display = "block";
                DivQualification.style.display = "block";
            }
            else {
                DivQualification.style.display = "none";
                Divyear.style.display = "none";
            }
        }
        function ShowHide3() {

            var ddlSapthpatr3 = document.getElementById("ddlSapthpatr3");
            var button = document.getElementById("button");

            if (ddlSapthpatr3.value === "0") {

                button.style.display = "block";
            }
            else if (ddlSapthpatr3.value === "1") {
                button.style.display = "block";
            }
            else if (ddlSapthpatr3.value === "2") {
                button.style.display = "none";
            }
        }
        function toggleDivVisibility() {
            var checkbox = document.getElementById("Check");
            var checkboxs = document.getElementById("Checks");
            var divButton = document.getElementById("Divbutton");

            if (checkbox.checked && checkboxs.checked ) {
                divButton.style.display = "block"; // Show the Divbutton
            }
            
            else {
                divButton.style.display = "none"; // Hide the Divbutton
            }
        }
        function DeleteConfirmation() {
            Swal.fire({
                title: 'Are you sure?',
                text: "Do you want to Delete Details?",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085D6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes'
            }).then((result) => {
                if (result.value) {
                    Swal.fire({
                        type: 'success',
                        title: 'Success!',
                        text: 'Details Deleted Successfully!',
                        timer: 2000
                    }
                    )
                }
            })
        }
        function EditConfirmation() {
            Swal.fire({
                title: 'Are you sure?',
                text: "Do you want to Edit Details?",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085D6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes'
            }).then((result) => {
            })
        }
        function AddRow() {
            // debugger;
            var mytable = document.getElementById("mytable");
            mytable.style.display = "inline-table";
            if ((mytable.rows.length - 1) == 10) {
                alert('Maximum three entries allowed !!');
            }
            else {
                var rows = mytable.rows.length;
                var r = mytable.insertRow(rows);
                var checkbox = document.createElement("input");
                checkbox.type = "checkbox";
                var Name = document.getElementById("Name");
                var ddlRelation = document.getElementById("ddlRelation");
                var TxtWorkStatus = document.getElementById("TxtWorkStatus");
                var ddlgender = document.getElementById("ddlgender");
                var date = document.getElementById("date");
                var c1 = r.insertCell(0);
                c1.innerHTML = mytable.rows.length - 1;
                var c7 = r.insertCell(1);
                c7.appendChild(checkbox);
                var c2 = r.insertCell(2);
                c2.innerHTML = Name.value;
                var c3 = r.insertCell(3);
                c3.innerHTML = ddlRelation.value;
                var c4 = r.insertCell(4);
                c4.innerHTML = TxtWorkStatus.value;
                var c6 = r.insertCell(5);
                c6.innerHTML = ddlgender.value;
                var c5 = r.insertCell(6);
                c5.innerHTML = date.value;
                var c9 = r.insertCell(7);
                c9.innerHTML = "<a class='Alert-Edit' onclick='DeleteRow(this)'><a class='Alert-Delete'onclick='DeleteRow(this)' ><i class='fa fa-trash'></i></a>";
            }
        }
        function DeleteRow(row) {
            var i = row.parentNode.parentNode.rowIndex;
            document.getElementById("mytable").deleteRow(i);
        }
        function showddlSapthpatr() {
            var ddlHandicape = document.getElementById("ddlSapthpatr");
            var HandicapePercentage = document.getElementById("fileInput");

            if (ddlHandicape.value === "Yes") {
                HandicapePercentage.style.display = "block";
                handipaceType.style.display = "block";
            } else if (ddlHandicape.value === "No") {
                HandicapePercentage.style.display = "none";
                handipaceType.style.display = "none";
            }
            else {
                HandicapePercentage.style.display = "none";
                handipaceType.style.display = "none";
            }
        }
        //function ShowHide() {
        //    var div1 = document.getElementById("ddlSapthpatr5");
        //    var div11 = document.getElementById("DivDesignation");
        //    var Div2 = document.getElementById("DivQualificationStatus");
        //    var div3 = document.getElementById("DivNote");
        //    var Div5 = document.getElementById("Divyear");
        //    var div6 = document.getElementById("DivQualification");
        //    if (div1.value === '1') {
        //        div11.style.display = "block"; // Show the Divbutton
        //    }
        //    else {
        //        DivDesignation.style.display = "none";
        //        Div2.style.display = "none";
        //        div3.style.display = "none";
        //        div11.style.display = "none";// Hide the Divbutton
        //        div6.style.display = "none";
        //        Div5.style.display = "none";
        //    }
        //}
        //function ShowHide1() {
        //    var Div2 = document.getElementById("DivQualificationStatus");
        //    var div3 = document.getElementById("DivNote");
        //    var Div4 = document.getElementById("ddlSapthpatr6");
        //    var Div5 = document.getElementById("Divyear");
        //    var div6 = document.getElementById("DivQualification");
        //    if (Div4.value === '1') {
        //        div3.style.display = "block";
        //        Div2.style.display = "none";
        //        div6.style.display = "none";
        //        Div5.style.display = "none";
        //    }
        //    else if (Div4.value === '2') {
        //        Div2.style.display = "block";
        //        div3.style.display = "block";
        //        div6.style.display = "none";
        //        Div5.style.display = "none";
        //    }
        //    else {
        //        Div2.style.display = "none";
        //        div3.style.display = "block";
        //        div6.style.display = "none";
        //        Div5.style.display = "none";
        //        Div5.style.display = "none";
        //    }
        //}
        //function ShowHide2() {
        //    var Div5 = document.getElementById("Divyear");
        //    var div6 = document.getElementById("DivQualification");
        //    var Div7 = document.getElementById("ddlSapthpatr1");
        //    /* var Div5 = document.getElementById("Divbutton");*/
        //    if (Div7.value === '1') {
        //        div6.style.display = "block";
        //        Div5.style.display = "block";
        //    }
        //    else {
        //        div6.style.display = "none";
        //        Div5.style.display = "none";
        //    }
        //}
    </script>

    <script>
        document.getElementById('disabilityChooser').addEventListener('change', function () {
            var selectedValue = this.value;
            var disabilityType = document.getElementById('ApplicableforDisabilityType');
            var disabilityPercentage = document.getElementById('SelectDisabilityPercentage');
            var AdditionalBenefitAmount = document.getElementById('AdditionalBenefitAmount');

            if (selectedValue === 'Yes') {
                disabilityType.style.display = 'block';
                disabilityPercentage.style.display = 'block';
                AdditionalBenefitAmount.style.display = 'block';
            } else {
                disabilityType.style.display = 'none';
                disabilityPercentage.style.display = 'none';
                AdditionalBenefitAmount.style.display = 'none';
            }
        });
    </script>


    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Confirmation2').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Saved Successfully!',
                                timer: 2000
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                document.getElementById("NavUploadCertificate").click();
                            });
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
            }(window.jQuery);
    </script>
</asp:Content>
