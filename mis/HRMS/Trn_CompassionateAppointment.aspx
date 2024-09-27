<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_CompassionateAppointment.aspx.cs" Inherits="mis_HRMS_Trn_CompassionateAppointment" %>

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
            /*            border: 1px solid #a5a3a3 !important;*/
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out !important;
        }



        td {
            font-weight: bold;
        }


     
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
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
                            <a href="#EmployeeCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Compassion </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Apply Compassion Appointment</span></li>
                    </ol>
                </div> 
            </div>
        </div>
    </div>

    <div class="card" style="margin-bottom: 4px; padding-bottom: -5px; height: 74px;">
        <div class="col-md-12 align-self-center">
            <div class="row">
                <div class="col-md-4">
                    <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem; background-color: white; display: block;">
                        <img src="../../img/Anukampa Logo.png" style="height: 70px" title="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u>
                        </u>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer" style="border: none;">
                        <div class="headertext btn btn-primary rounded-pill">
                            <h5 class="card-title" style="color: white; font-size: 15px; padding: 5px 5px 0 5px;">अनुकंपा नियुक्ति के लिए आवेदन करें विवरण</h5>
                        </div>
                        <marquee style="width: 100%; padding-top: 5px; color: black;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                            कर्मचारी इस पेज के माध्यम से अनुकंपा नियुक्ति के लिए आवेदन कर सकते हैं।
                        </marquee>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div id="divDataofAU5693" runat="server">
                <ul class="nav nav-pills" style="margin: 30px 0 50px 0">
                    <li class=" nav-item"><a href="#navpills-1" class="nav-link active tab-menu " data-bs-toggle="tab" aria-expanded="false">Personal Information</a></li>
                    <li class="nav-item"><a href="#navpills-4" class="nav-link tab-menu" id="NavUploadCertificate" data-bs-toggle="tab" aria-expanded="true">Upload Certificate</a> </li>
                </ul>
                <div class="tab-content br-n pn">
                    <div id="navpills-1" class="tab-pane active">
                        <fieldset style="margin-top: 1.1rem;">
                            <legend>Details of Deceased Officer-Employee /<br />
                                दिवंगत अधिकारी - कर्मचारी का विवरण  </legend>
                            <div class="row align-items-lg-end"><%-- data-select2-id="select2-data-30-e0tu--%>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Deceased Officer/Employee Code /<br />
                                            दिवंगत अधिकारी/कर्मचारी कोड</label>
                                        <input placeholder="दिवंगत अधिकारी / कर्मचारी कोड" id="Code" readonly name="ename" type="text" class="form-control" autocomplete="off" />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Full name of Deceased Government servant /
                                            <br />
                                            दिवंगत शासकीय सेवक का पूर्ण नाम</label><%--<span style="color: red">*</span>--%>
                                        <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="Full name of Deceased Government servant" id="txtname" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Gender /
                                            <br />
                                            लिंग</label>
                                        <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder=" लिंग" id="txtname1" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Caste /
                                            <br />
                                            जाति</label>
                                        <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="जाति" id="txtname2" readonly />
                                    </div>
                                </div>

                              
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Last Posting District Name /
                                            <br />
                                            अंतिम पोस्टिंग जिला का नाम</label>
                                        <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="अंतिम पोस्टिंग जिला का चयन करे" id="txtname3" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Deceased Officer/Staff Cadre /
                                            <br />
                                            दिवंगत अधिकारी / कर्मचारी कैडर</label>
                                        <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत अधिकारी / कर्मचारी कैडर" id="txtname4" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Deceased Officer/Employee Designation /
                                            <br />
                                            दिवंगत अधिकारी/कर्मचारी पदनाम</label>
                                        <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत अधिकारी/कर्मचारी पदनाम" id="txtname5" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Department Name /
             <br />
                                            विभाग का नाम
                                        </label>
                                        <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="विभाग का नाम" id="txtname_6" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="control-label mt-2" >
                                            Select Date of Death /
                                            <br />
                                            मृत्यु दिनांक का चयन करें <span style="color: red">*</span></label>
                                        <div class="input-group">
                                            <%--<input type="text" class="form-control datepicker is-invalid" onkeypress="return false;" data-date-end-date="0d" required="" data-msg="Field is required Field" id="txtDateOfDeath" autocomplete="off" placeholder="DD/MM/YYYY" data-val="true" data-val-required="The Date of Death(मृत्यु दिनांक) field is required." name="DateOfDeath" value="">--%>
                                            <%--<div class="input-group-text" aria-describedby="DateOfDeath"><i class="ri-calendar-2-fill"></i></div>--%>
                                            <%--<span class="text-danger field-validation-valid" data-valmsg-for="DateOfDeath" data-valmsg-replace="true"></span>--%>
                                            <span id="txtDateOfDeathError" class="invalid-feedback">Data Required.</span>
                                        </div>


                                        <input name="ename" type="date" class="form-control" autocomplete="off" placeholder=" मृत्यु दिनांक (दिनांक DD/MM/YYYY के प्रारूप मे दर्ज करे) ." />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-2">
                                    <div class="form-group">
                                        <label>
                                            Enter Cause of Death /
                                            <br />
                                            मृत्यु का कारण दर्ज करें<span style="color: red">*</span></label>
                                        <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="Cause of Death" id="txtname6" />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Select Number of Surviving Family Members /
                                            <br />
                                            परिवार के जीवित सदस्यों की संख्या का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="ddlFamelyMemberCount">
                                            <option value="----">Select</option>
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
                            <legend>Details of Family Members of Deceased Public Servant/ Teacher/ 
                                <br />
                                दिवंगत लोकसेवक/ शिक्षक के परिवार के सभी सदस्यों की जानकारी|</legend>
                            <div class="row align-items-end needs-validation">
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Enter Name of Member /<br />
                                            सदस्य का नाम दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Name of Member" id="Name" />

                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Select Date of Birth /
                                            <br />
                                            जन्म दिनांक चयन करें<span style="color: red">*</span></label>
                                        <input type="date" class="form-control" autocomplete="off" placeholder="जन्म दिनांक" id="date" />
                                    </div>
                                </div>


                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Select Gender /
                                            <br />
                                            लिंग चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="ddlgender">
                                            <option value="">Select</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                            <option value="transgender">Transgender</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Select Relation with Deceased Public Servant /
                                            <br />
                                            दिवंगत लोकसेवक के साथ संबंध का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="ddlRelation">
                                            <option value="">Select</option>
                                            <option value="Wife Husband">Wife Husband</option>
                                            <option value="Son">Son</option>
                                            <option value="Daughter">Daughter</option>
                                        </select>
                                    </div>
                                </div>


                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label  class="mt-2">
                                            Enter Occupation /
                                            <br />
                                            व्यवसाय दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Occupation" id="TxtWorkStatus" />
                                    </div>
                                </div>


                                <div class="col-md-6 col-lg-4 col-xl-3 mt-4">
                                    <div class="form-group">
                                        <input type="button" id="btnAdd" class="btn w-lg btn-success btn-border" value="Add" onclick="AddRow();" />
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group ">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="mytable" style="display: none;">
                                            <thead>
                                                <tr class="card-header">
                                                    <th style="font-weight: bold; vertical-align: inherit">Sr.No./<br />
                                                        क्रमांक.</th>
                                                    <th style="font-weight: bold; vertical-align: inherit">Select Applicant/<br />
                                                        आवेदक का चयन</th>
                                                    <th style="font-weight: bold; vertical-align: inherit">Name of Family Member/<br />
                                                        परिवार के सदस्य का नाम</th>
                                                    <th style="font-weight: bold; vertical-align: inherit">Date of Birth/<br />
                                                        जन्म दिनांक</th>
                                                    <th style="font-weight: bold; vertical-align: inherit">Gender/<br />
                                                        लिंग</th>
                                                    <th style="font-weight: bold; vertical-align: inherit">Occupati on/<br />
                                                        व्यवसाय</th>
                                                    <th style="font-weight: bold; vertical-align: inherit">Relationship With the Deceased/
                                                        <br />
                                                        दिवंगत के साथ संबंध</th>
                                                    <th style="font-weight: bold; vertical-align: inherit">Action/<br />
                                                        कार्यवाही
                                                    </th>
                                                </tr>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Details of the Family Member Who has Applied for Appointment /
                                <br />
                                परिवार के सदस्य का विवरण जिन्होंने नियुक्ति के लिए आवेदन किया है</legend>
                            <div class="row align-items-baseline ">
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Name of the Applicant for Compassionate Appointment /
                                            <br />
                                            अनुकंपा नियुक्ति हेतु परिवार के आवेदक का नाम<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="अनुकंपा नियुक्ति हेतु परिवार के आवेदक सदस्य का नाम" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Applicant's Relation with Deceased Public Servant/Teacher /
                                            <br />
                                            आवेदक का दिवंगत लोकसेवक/ शिक्षक के साथ संबंध <span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder=" आवेदक का दिवंगत लोकसेवक/ शिक्षक के साथ संबंध" readonly />

                                    </div>
                                </div>



                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Date of Birth
             <br />
                                            जन्म दिनांक<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="जन्म दिनांक" readonly />
                                    </div>
                                </div>


                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Gender
                                            <br />
                                            लिंग<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder=" लिंग" readonly />

                                    </div>
                                </div>


                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Occupation /
                                            <br />
                                            व्यवसाय <span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="व्यवसाय" readonly />

                                    </div>
                                </div>





                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Select Marital Status /
                                                <br />
                                            वैवाहिक स्थिति का चयन करें <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="Select">Select</option>
                                            <option value="married">married</option>
                                            <option value="Un-married">Un-married</option>
                                            <option value="Widow">Widow</option>
                                        </select>
                                    </div>
                                </div>


                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Enter Mobile No. /
                                            <br />
                                            मोबाइल नंबर दर्ज करें</label><span style="color: red">*</span>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="मोबाइल नंबर" />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Enter Applicant's Qualification /
                                            <br />
                                            आवेदक की योग्यता दर्ज करें<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="qualification" onchange="handleQualificationChange()">
                                            <option value="Select">Select</option>
                                            <option value="Secondary">Secondary</option>
                                            <option value="Higher Secondary">Higher Secondary</option>
                                            <option value="Graduation">Graduation</option>
                                            <option value="Post Graduation">Post Graduation</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3" id="visibledField1" style="display: none;">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Select the Position for which Applicant to Appointed? /
                                            <br />
                                            आवेदक किस पद पर नियुक्ति चाहता है का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                            <option value="">IV Category / चतुर्थ श्रेणी</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3" id="visibledField2" style="display: none;">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Select the Position for which Applicant to Appointed? /
                                        <br />
                                            आवेदक किस पद पर नियुक्ति चाहता है का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <%-- id="ddlSapthpatr5" onchange="ShowHide()"
                                            <option value="">Select</option>
                                            <%--<option value="1">शैक्षणिक संवर्ग</option>--%>
                                            <option value="2">लिपिक संवर्ग</option>
                                            <option value="3">चतुर्थ श्रेणी</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3" id="visibledField3" style="display: none;">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Select the Position for which Applicant to Appointed? /
              <br />
                                            आवेदक किस पद पर नियुक्ति चाहता है का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="applicant_position" onchange="handlePositionChange()">
                                            <%--id="ddlSapthpatr5" onchange="ShowHide()"--%>
                                            <option value="">Select</option>
                                            <option value="1">शैक्षणिक संवर्ग</option>
                                            <option value="2">लिपिक संवर्ग</option>
                                            <option value="3">चतुर्थ श्रेणी</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3" id="visibledField4" style="display: none;">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Select the Position for which Applicant to Appointed? /
            <br />
                                            आवेदक किस पद पर नियुक्ति चाहता है का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <%--id="ddlSapthpatr5" onchange="ShowHide()"--%>
                                            <option value="">Select</option>
                                            <option value="1">शैक्षणिक संवर्ग</option>
                                            <option value="2">लिपिक संवर्ग</option>
                                            <option value="3">चतुर्थ श्रेणी</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 " style="display: none" id="DivDesignation">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Enter Designation /
                                            <br />
                                            पदनाम का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="DesignationSelect" onchange="ChangeDivDesignation()">
                                            <option value="">Select</option>
                                            <option value="1">325- Prathmik Shiksha</option>
                                            <option value="2">328- Prayogshala Shikshak</option>
                                        </select>
                                    </div>
                                </div>



                                <div class="col-md-6 col-lg-4 col-xl-3" style="display: none" id="DivQualificationStatus">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Have Passed the PTET? /
                                            <br />
                                            क्या प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की है?<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="QualificationStatusSelect" onchange="ChangeDivQualificationStatus()">
                                            <%--id="ddlSapthpatr1" onchange="ShowHide2()"--%>
                                            <option value="">Select</option>
                                            <option value="1">Yes</option>
                                            <option value="2">No</option>
                                        </select>
                                    </div>
                                </div>


                                <div class="col-md-6 col-lg-4 col-xl-3" style="display: none" id="Divyear">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Select Year of Eligibility Test /
                                            <br />
                                            पात्रता परीक्षा वर्ष का चयन करें<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="YYYY" />
                                    </div>
                                </div>



                                <div class="col-md-6 col-lg-4 col-xl-3" style="display: none" id="DivQualification">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Select Professional Qualification /
                                            <br />
                                            व्यावसायिक योग्यता का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="ddlSapthpatr2">
                                            <option value="">--Select--</option>
                                            <option value="D.Ed">D.Ed</option>
                                            <option value="B.Ed">B.Ed</option>
                                            <option value="D.Ed + B.Ed Both">D.Ed + B.Ed Both</option>
                                            <option value="None">None</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label class="mt-2">
                                            Have Family Members Given Consent for Compassionate Appointment? /
                                        <br />
                                            क्या परिवार के सदस्यों ने अनुकंपा नियुक्ति के लिए सहमति पत्र दिया है?<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="CompassionApp" onchange="handleQualificationChange2()">
                                       
                                            <option value="0">Select</option>
                                            <option value="1">Yes</option>
                                            <option value="2">No</option>
                                        </select>

                                    </div>
                                        <div>
                                    <b class="text-danger">नोट:- परिवार के सभी सदस्यों का सहमति पत्र होना अनिवार्य है|</b>
                                    <b style="color: brown; display: none" id="note">नोट:-प्राथमिक शिक्षक (D.ed + पात्रता परीक्षा)</b>
                            </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lms-12" style="display: none" id="DivNote">
                                    <p style="color: brown; font-size: large; font-weight: bolder">विज्ञान संकाय में 10+2 परीक्षा 50% अंक के साथ उत्तीर्ण होने पर पात्रता होगी</p>
                                </div>
                            </div>

                            <div class="row">
                               
                                <div class="col-md-12" id="visibledField5">
                        <div class="form-group text-center">

                                    <button type="button" class="Alert-Confirmation2 btn w-lg btn-success btn-border">Save & Next</button>
                                    <a href="Trn_CompassionateAppointment.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>






                    <div id="navpills-4" class="tab-pane">
                        <fieldset style="margin-top: 1.1rem;">
                            <legend>Document /
                                <br />
                                दस्तावेज़</legend>
                            <div class="row align-items-end">
                                <div class="col-md-12">
                                    <h5 style="font-weight: 500;">Note : <span style="color: red;">Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
                                </div>

                                <br />
                            </div>

                            <div class="row">
                                <div class="col-md-12">


                                    <table class="table table-bordered table-responsive-lg">
                                        <thead>
                                            <tr>
                                                <th style="font-weight: bold; vertical-align: inherit">Sr.No. /<br />
                                                    क्रमांक
                                                </th>
                                                <th style="font-weight: bold; vertical-align: inherit">Documents Name /
                                            <br />
                                                    दस्तावेज का नाम
                                                </th>
                                                <th style="font-weight: bold; vertical-align: inherit">Upload Documents /
                                            <br />
                                                    दस्तावेज अपलोड
                                                </th>
                                                <th style="font-weight: bold; vertical-align: inherit">View Documents /
                                            <br />
                                                    दस्तावेज देंखे
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Death Certificate of Deceased Government Servant /
                                            <br />
                                                    दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र <span style="color: red">*</span></td>
                                                <td>
                                                    <input type="file" id="fileInput1" class="form-control" onchange="displayImage(this)">
                                                </td>
                                                <td>
                                                    <a id="lnkDeathofCertificate" href="#" class="hideanc btn btn-outline-primary" style="display: block;">
                                                        <i class="ri-eye-line"></i>
                                                    </a>

                                                    <%--<button type="submit" class="btn btnEye view-but"><i class="fas fa-eye"></i></button>--%>

                                                </td>
                                            </tr>

                                            <tr>
                                                <td>2</td>
                                                <td>Birth Certificate of the Applicant /
                                                <br />
                                                    आवेदक का जन्म तिथि का प्रमाण पत्र <span style="color: red">*</span></td>
                                                <td>
                                                    <input type="file" id="fileInput3" class="form-control" onchange="displayImage(this)">
                                                </td>
                                                <td>
                                                    <a id="lnkDob" href="#" class="hideanc btn btn-outline-primary" style="display: block;">
                                                        <i class="ri-eye-line"></i>
                                                    </a>

                                                </td>
                                            </tr>

                                            <tr>
                                                <td>3</td>
                                                <td>Certificate of Residence/Domicile /
                                                <br />
                                                    निवास/मूल निवासी होने का प्रमाण पत्र <span style="color: red">*</span></td>
                                                <td>
                                                    <input type="file" id="fileInput2" class="form-control" onchange="displayImage(this)">
                                                </td>
                                                <td>
                                                    <a id="lnkDomicile" href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>4</td>
                                                <td>Caste Certificate /
                                                <br />
                                                    जाती प्रमाण पत्र <span style="color: red">*</span></td>
                                                <td>
                                                    <input type="file" id="fileInput4" class="form-control" onchange="displayImage(this)">
                                                </td>
                                                <td>
                                                    <a id="lnkCaste" href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>5</td>
                                                <td>Certificate of Passing Higher Secondary/Graduation or Other Examination /
                                                <br />
                                                    हायर सेकेण्डरी / स्नातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र <span style="color: red">*</span></td>
                                                <td>
                                                    <input type="file" id="fileInput6" class="form-control" onchange="displayImage(this)">
                                                </td>
                                                <td>
                                                    <a id="lnkHSC" href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>6</td>
                                                <td>Consent Certificate from the Head of the Family /
                                                <br />
                                                    परिवार के मुखिया द्वारा सहमति प्रमाण पत्र <span style="color: red">*</span></td>
                                                <td>
                                                    <input type="file" id="fileInput010" class="form-control" onchange="displayImage(this)">
                                                </td>
                                                <td>
                                                    <a id="lnkAffidavit" href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>7</td>
                                                <td>Applicant's Photo /
                                                <br />
                                                    आवेदक का फोटो <span style="color: red">*</span></td>
                                                <td>
                                                    <input type="file" id="fileInput5" class="form-control" onchange="displayImage(this)">
                                                </td>
                                                <td>
                                                    <a id="lnkApplicantImage" href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>8</td>
                                                <td>Family Samagra Id /
                                                <br />
                                                    परिवार की समग्र आईडी <span style="color: red">*</span></td>
                                                <td>
                                                    <input type="file" id="fileInput0101" class="form-control" onchange="displayImage(this)">
                                                </td>
                                                <td>
                                                    <a id="lnkRationCard" href="#" class="hideanc btn btn-outline-primary" style="display: block;"><i class="ri-eye-line"></i></a>

                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>


                        </fieldset>
                        <div class="row">
                            <div class="col-md-12" id="">
                                <div class="form-group">
                                    <h5 id="exampleModalLabel10" style="font-size: 30px; text-align: center; font-weight: bolder"><b style="font-family: Aparajita;">स्वयं सत्यापन</b></h5>
                                    <label>
                                        <span style="color: red; font-size: 15px; font-family: Aparajita;">
                                            <input type="checkbox" id="ChkConfimation1" onchange="toggleDivVisibility()" value="true" disabled="disabled" />
                                            &ensp;मेरे द्वारा घोषणा करता /करती हूँ कि मेरे द्वारा दी गई उपरोक्त जानकारी मेरे ज्ञान एवं विश्वास के अनुसार सत्य हैं, यदि मेरे द्वारा दी गई जानकारी नियुक्ति के पूर्व या बाद में असत्य गलत पायी जाती है,अथवा नियुक्ति के पश्चात् अपात्रता पाई जाती है तो मैं पूर्ण रूप से जानता जानती हूँ कि मेरी नियुक्ति निरस्त कर दी जाएगी और इस संबंध में प्रावधानित विधि एवं नियमों के अधीन मेरे द्वारा की जाने वाली कार्यवाही के लिए मैं उत्तरदायी रहूंगा /रहूंगी।
                                            <br />
                                            <input type="checkbox" id="ChkConfimation2" onchange="toggleDivVisibility()" value="true" disabled="disabled" />
                                            &ensp;में यह भी वचन देता हूँ/ देती हूँ कि में स्व. श्री/श्रीमती Rajeshwarprasad Tiwari के आश्रित परिवार के अन्य सदस्यों का समुचित भरण पोषण करूंगा/ करूंगी. बाद में किसी भी समय यदि यह प्रमाणित हो जाए कि मेरे द्वारा परिवार के सदस्यों को अनदेखा किया जा रहा है, अथवा उनका सही ढंग से भरण पोषण नहीं किया जा रहा है तो मेरी अनुकंपा नियुक्ति समाप्त की जा सकेगी।

                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div id="Divbutton">
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Final Submit</button>
                                    <a runat="server" id="clearfirst" href="Trn_CompassionateAppointment.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function toggleDivVisibility() {
            var checkbox = document.getElementById("Check");
            var divButton = document.getElementById("Divbutton");
            if (checkbox.checked) {
                divButton.style.display = "block"; // Show the Divbutton
            } else {
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
        function ShowHide() {
            var div1 = document.getElementById("ddlSapthpatr5");
            var div11 = document.getElementById("DivDesignation");
            var Div2 = document.getElementById("DivQualificationStatus");
            var div3 = document.getElementById("DivNote");
            var Div5 = document.getElementById("Divyear");
            var div6 = document.getElementById("DivQualification");
            if (div1.value === '1') {
                div11.style.display = "block"; // Show the Divbutton
            }
            else {
                DivDesignation.style.display = "none";
                Div2.style.display = "none";
                div3.style.display = "none";
                div11.style.display = "none";// Hide the Divbutton
                div6.style.display = "none";
                Div5.style.display = "none";
            }
        }
        function ShowHide1() {
            var Div2 = document.getElementById("DivQualificationStatus");
            var div3 = document.getElementById("DivNote");
            var Div4 = document.getElementById("ddlSapthpatr6");
            var Div5 = document.getElementById("Divyear");
            var div6 = document.getElementById("DivQualification");
            if (Div4.value === '1') {
                div3.style.display = "block";
                Div2.style.display = "none";
                div6.style.display = "none";
                Div5.style.display = "none";
            }
            else if (Div4.value === '2') {
                Div2.style.display = "block";
                div3.style.display = "block";
                div6.style.display = "none";
                Div5.style.display = "none";
            }
            else {
                Div2.style.display = "none";
                div3.style.display = "block";
                div6.style.display = "none";
                Div5.style.display = "none";
                Div5.style.display = "none";
            }
        }
        function ShowHide2() {
            var Div5 = document.getElementById("Divyear");
            var div6 = document.getElementById("DivQualification");
            var Div7 = document.getElementById("ddlSapthpatr1");
            /* var Div5 = document.getElementById("Divbutton");*/
            if (Div7.value === '1') {
                div6.style.display = "block";
                Div5.style.display = "block";
            }
            else {
                div6.style.display = "none";
                Div5.style.display = "none";
            }
        }
    </script>
    <script>
        //debugger;
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




    <script>
        function handleQualificationChange() {
            // Get the select element
            var qualificationSelect = document.getElementById('qualification');

            // Get the new field container
            var visibledField1 = document.getElementById('visibledField1');
            var visibledField2 = document.getElementById('visibledField2');
            var visibledField3 = document.getElementById('visibledField3');
            var visibledField4 = document.getElementById('visibledField4');

            // Check the selected value and show/hide the new field

            if (qualificationSelect.value === 'select') {


                visibledField1.style.display = 'none';
                visibledField2.style.display = 'none';
                visibledField3.style.display = 'none';
                visibledField4.style.display = 'none';
            }
            else if (qualificationSelect.value === 'Secondary') {
                visibledField1.style.display = 'block';
                visibledField2.style.display = 'none';
                visibledField3.style.display = 'none';
                visibledField4.style.display = 'none';
            }
            else if (qualificationSelect.value === 'Higher Secondary') {
                visibledField2.style.display = 'block';
                visibledField1.style.display = 'none';
                visibledField3.style.display = 'none';
                visibledField4.style.display = 'none';

            }
            else if (qualificationSelect.value === 'Graduation' || qualificationSelect.value === 'Post Graduation') {
                visibledField3.style.display = 'block';
                visibledField1.style.display = 'none';
                visibledField2.style.display = 'none';
                visibledField4.style.display = 'none';

            }
            //else if (qualificationSelect.value === 'Post Graduation') {
            //    visibledField4.style.display = 'block';
            //    visibledField1.style.display = 'none';
            //    visibledField2.style.display = 'none';
            //    visibledField3.style.display = 'none';

            //}
            else if (qualificationSelect.value === 'Select') {
                visibledField1.style.display = 'none';
                visibledField2.style.display = 'none';
                visibledField3.style.display = 'none';
                visibledField4.style.display = 'none';


            }


        }
    </script>

    <script>
        //function handleQualificationChange2() {
        // Get the select element
        //var qualificationSelect = document.getElementById('qualification');
        //var CompassionAppSelect = document.getElementById('CompassionApp');

        // Get the new field container
        //var visibledField5 = document.getElementById('visibledField5');

        // Check the selected value and show/hide the new field

        //if (CompassionAppSelect.value === '0' || CompassionAppSelect.value ==='2') {

        //    visibledField5.style.display = 'none';
        //}
        //else if (CompassionAppSelect.value === 'Yes') {
        //    visibledField5.style.value = 'block';
        //}
        //else if (CompassionAppSelect.value === 'No') {
        //    visibledField5.style.display = 'none';
        //}

        //if (CompassionAppSelect.value == "Yes") {

        //    visibledField5.style.display = 'block';
        //}
        //else   {
        //    visibledField5.style.value = 'none';

        //}

    </script>

    <script>
        function handleQualificationChange2() {
            var CompassionAppSelect = document.getElementById('CompassionApp');
            var visibledField5 = document.getElementById('visibledField5');
            if (CompassionAppSelect.value == "1") {
                visibledField5.style.display = 'block';
            } else {
                visibledField5.style.display = 'none';
            }
        }
    </script>

    <script>
        function handlePositionChange() {
            var applicant_positionSelect = document.getElementById('applicant_position');
            var DivDesignation = document.getElementById('DivDesignation');
            if (applicant_positionSelect.value == "1") {
                DivDesignation.style.display = 'block';

            } else {
                DivDesignation.style.display = 'none';

            }
        }
    </script>

    <script>
        function ChangeDivDesignation() {
            var designationSelect = document.getElementById('DesignationSelect');
            var qualificationStatusDiv = document.getElementById('DivQualificationStatus');
            if (designationSelect.value == "1") {
                qualificationStatusDiv.style.display = 'block';
                //note.style.display = 'block';
            } else {
                qualificationStatusDiv.style.display = 'none';
                //note.style.display = 'none';
            }
        }
    </script>

    <script>
        function ChangeDivQualificationStatus() {
            // Get the select element inside DivQualificationStatus
            var QualificationStatusSelect = document.getElementById('QualificationStatusSelect');
            var divYear = document.getElementById('Divyear');

            // Check the selected value
            if (QualificationStatusSelect.value == "1") {
                divYear.style.display = 'block';
                DivQualification.style.display = 'block';
            } else {
                divYear.style.display = 'none';
                DivQualification.style.display = 'none';
            }
        }
    </script>


</asp:Content>
