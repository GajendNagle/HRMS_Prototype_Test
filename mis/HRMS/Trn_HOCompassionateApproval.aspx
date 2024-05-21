<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_HOCompassionateApproval.aspx.cs" Inherits="mis_HRMS_Trn_HOCompassionateApproval" %>

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

            .tab-menu:hover {
                color: #16603ae3;
            }

        .btn {
            margin-top: 1.875rem;
        }

        .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
            background-color: #16603ae3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles" style="margin-bottom: -30px">
            <div class="col-md-5 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                    <img src="../../img/Anukampa Logo.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                    </u>
                </p>
            </div>
            <%-- <div class="col-md-4 mt-4 ">
            <p style="font-style: oblique; color: brown; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; text-align: center">अनुकंपा नियुक्ति प्रबंधन प्रणाली</p>
        </div>--%>
            <div class="col-md-7 align-self-center">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="AnukampaNuktiMainPage.aspx" title="click to go on">Compassionate Appointment</a></li>
                        <li class="breadcrumb-item active">Register Application For Compassionate Appointment</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <nav class="navbar navbar-expand-lg topbar" style="position: relative; bottom: 26px;">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">


                                <li class="nav-item">
                                    <a class="nav-link text-warning  font-16 text-white" href="../Transaction/DisposeApplicationCaseForHO.aspx" role="button" aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                                </li>
                                <li class="nav-item">
                                    <div class="collapse navbar-collapse">
                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>अनुकंपा नियुक्ति </b>
                                                </a>
                                                <ul class="dropdown-menu">

                                                    <li><a class="dropdown-item" href="Trn_HOCompassionateApproval.aspx">अनुकंपा नियुक्ति के लिए आवेदन पंजीयन/सुधार करें</a></li>
                                                    <li><a class="dropdown-item" href="HOPrintApplicationReport.aspx">प्रिंट आवेदन </a></li>

                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="nav-item" style="position: relative; right: 20px;">
                                    <a class="nav-link text-warning font-16 text-white" href="Trn_ProcessApplicationListHO.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति पर कार्यवाही </b></strong></a>

                                </li>
                                <li class="nav-item mr-4">
                                    <a class="nav-link  text-white " href="../Transaction/AvedanperNirnayKareForHO.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>आवेदन पर निर्णय करें</b></a></li>

                                <li class="nav-item mr-3">
                                    <a class="nav-link  text-white " href="../HRMS/NocSendByDistrictCollectorHO.aspx" role="button" style="font-size: 1.0em"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>NOC जिला  कलेक्टर को भेजी गई</b></a></li>

                                <li class="nav-item">
                                    <div class="collapse navbar-collapse">
                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report </b>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="../Transaction/HOLevelReportSection.aspx?ID=DisposeCasesNOC">Dispose Cases</a></li>
                                                    <li><a class="dropdown-item" href="../Transaction/HOLevelReportSection.aspx?ID=BlockWiseCounting">ब्लॉक वार सांख्यिकी</a></li>
                                                    <li><a class="dropdown-item" href="../Transaction/HOLevelReportSection.aspx?ID=DistrictWiseCounting">जिला वार सांख्यिकी</a></li>
                                                    <li><a class="dropdown-item" href="../HRMS/NocReportHO.aspx">NOC Report</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>

                            <%--<li class="nav-item">
                                    <a class="nav-link text-warning font-16 text-white" href="Trn_DeoCompassionateApproval.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> कर्मचारी
 के लिए आवेदन पंजीकृत /सुधार करें</b></strong></a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link text-warning font-16 text-white" href="CompassionateAppointmentPrintApplication.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति प्रिंट आवेदन</b></strong></a>
                                </li>--%>
                        </div>
                    </div>
                </nav>

                <br />


                <%-- My Code Start--%>
                <fieldset id="divoftextBox" runat="server">
                    <legend>अनुकंपा नियुक्ति के लिए आवेदन पंजीयन/सुधार करें</legend>
                    <div class="row mt-3 ms-2" >
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="fw-bold">कर्मचारी आईडी प्रविष्ट करें<span style="color: red"></span></label>
                                <%-- <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                    ErrorMessage="कर्मचारी आईडी अनिवार्य है।" ForeColor="Red"
                                    Text="<i class='fa fa-exclamation-circle' title='कर्मचारी आईडी अनिवार्य है। !'></i>"
                                    ControlToValidate="txtEmployeeId" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>--%>
                                <asp:TextBox runat="server" ID="txtEmployeeId" CssClass="form-control" placeholder="Search" AutoComplete="off">
                            
                                </asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-2">
                            <asp:Button type="button" ID="showDataBtn" OnClick="showDataBtn_Click" Text="Search" runat="server" class="btn btn-success btn-rounded w-100 btn-block" />
                        </div>
                    </div>
                </fieldset>
                <%--  My Code End --%>
                <div class="row" id="divDataofAU5693" runat="server" visible="false">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <ul class="nav nav-pills m-t-30 m-b-30 ">
                                    <li class=" nav-item"><a href="#navpills-1" class="nav-link active tab-menu " data-bs-toggle="tab" aria-expanded="false">Personal Information</a></li>
                                    <li class="nav-item"><a href="#navpills-4" class="nav-link tab-menu" id="NavUploadCertificate" data-bs-toggle="tab" aria-expanded="true">Upload Certificate</a> </li>
                                </ul>
                                <div class="tab-content br-n pn">
                                    <div id="navpills-1" class="tab-pane active">
                                        <div class="row">
                                            <fieldset>
                                                <legend>दिवंगत अधिकारी / कर्मचारी का विवरण</legend>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>दिवंगत अधिकारी / कर्मचारी कोड <span style="color: red">*</span></label>
                                                            <input placeholder="दिवंगत अधिकारी / कर्मचारी कोड" id="Code" readonly name="ename" value="AU5693" type="text" class="form-control" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>दिवंगत शासकीय सेवक का पूर्ण नाम<span style="color: red">*</span></label>
                                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname" value="Rohan Singh" readonly />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>लिंग<span style="color: red">*</span></label>
                                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname1" value="Male" readonly />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>जाति<span style="color: red">*</span></label>
                                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname2" value="OBC" readonly />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>अंतिम पोस्टिंग जिला का चयन करे<span style="color: red">*</span></label>
                                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname3" value="Bhopal" readonly />

                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>दिवंगत अधिकारी / कर्मचारी कैडर<span style="color: red" id="ddlcader">*</span></label>
                                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname4" value="Class 3" readonly />

                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>दिवंगत अधिकारी/कर्मचारी पदनाम<span style="color: red">*</span></label>
                                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="दिवंगत शासकीय सेवक का पूर्ण नाम" id="txtname5" value="Teacher (UDT)" readonly />

                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>मृत्यु दिनांक (दिनांक DD/MM/YYYY के प्रारूप मे दर्ज करे) <span style="color: red">*</span></label>
                                                            <input name="ename" type="date" class="form-control" autocomplete="off" placeholder=" मृत्यु दिनांक (दिनांक DD/MM/YYYY के प्रारूप मे दर्ज करे) ." />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>मृत्यु का कारण <span style="color: red">*</span></label>
                                                            <input name="Ecode" type="text" class="form-control" autocomplete="off" placeholder="मृत्यु का कारण" id="txtname6" />

                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>परिवार के जीवित सदस्यों की संख्या <span style="color: red">*</span></label>
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
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>विभाग का नाम<span style="color: red">*</span></label>
                                                            <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" readonly="readonly" value="Education" />
                                                        </div>
                                                    </div>

                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <legend>दिवंगत लोकसेवक/ शिक्षक के परिवार के सभी सदस्यों की जानकारी दर्ज करें</legend>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>सदस्य का नाम<span style="color: red">*</span></label>
                                                            <input type="text" class="form-control" autocomplete="off" placeholder="सदस्य का नाम" id="Name" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>
                                                                दिवंगत के साथ संबंध<span style="color: red">*</span></label>
                                                            <select class="form-control select2" id="ddlRelation">
                                                                <option value="">--Select--</option>
                                                                <option value="Wife Husband">Wife Husband</option>
                                                                <option value="Son">Son</option>
                                                                <option value="Daughter">Daughter</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>व्यवसाय<span style="color: red">*</span></label>
                                                            <input type="text" class="form-control" autocomplete="off" placeholder="व्यवसाय" id="TxtWorkStatus" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>लिंग </label>
                                                            <select class="form-control select2" id="ddlgender">
                                                                <option value="">--Select--</option>
                                                                <option value="Male">Male</option>
                                                                <option value="Female">Female</option>
                                                                <option value="Other">Other</option>

                                                            </select>
                                                        </div>
                                                    </div>


                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>जन्म दिनांक<span style="color: red">*</span></label>
                                                            <input type="date" class="form-control" autocomplete="off" placeholder="जन्म दिनांक" id="date" />
                                                        </div>
                                                    </div>





                                                    <div class="col-md-2 mt-4">
                                                        <div class="form-group">
                                                            <input type="button" id="btnAdd" class="btn btn-info btn-rounded btn-block" value="जोडे़" onclick="AddRow();" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <div class="table-responsive">
                                                            <table class="table" id="mytable" style="display: none;">
                                                                <tbody>
                                                                    <tr>
                                                                        <th>Sr.No./सरल क्र.</th>
                                                                        <th>CheckBox</th>
                                                                        <th>सदस्य का नाम</th>
                                                                        <th>दिवंगत के साथ संबंध</th>
                                                                        <th>व्यवसाय</th>
                                                                        <th>लिंग</th>
                                                                        <th>जन्म दिनांक</th>
                                                                        <th>Action</th>
                                                                    </tr>

                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <legend>परिवार के सदस्य का विवरण जिन्होंने नियुक्ति के लिए आवेदन किया है</legend>
                                                <div class="row">
                                                    <div class="12">
                                                        <div class="row">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>अनुकंपा नियुक्ति हेतु परिवार के आवेदक सदस्य का नाम<span style="color: red">*</span></label>
                                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="अनुकंपा नियुक्ति हेतु परिवार के आवेदक सदस्य का नाम" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>लिंग </label>
                                                                    <select class="form-control select2">
                                                                        <option value="--Select--">--Select--</option>
                                                                        <option value="Bhopal">Male</option>
                                                                        <option value="Indore">Female</option>
                                                                        <option value="Gwalior">Other</option>

                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>वैवाहिक स्थिति </label>
                                                                    <select class="form-control select2">
                                                                        <option value="--Select--">--Select--</option>
                                                                        <option value="married">married</option>
                                                                        <option value="Un-married">Un-married</option>
                                                                        <option value="Widow">Widow</option>

                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>जन्म की तारीख (DD/MM/YYYY)<span style="color: red">*</span></label>
                                                                    <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="जन्म की तारीख (DD/MM/YYYY)" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3" style="margin-top: 22px">
                                                                <div class="form-group">
                                                                    <label>
                                                                        आवेदक का दिवंगत लोकसेवक/ शिक्षक के साथ संबंध<span style="color: red">*</span></label>
                                                                    <select class="form-control select2" id="">
                                                                        <option value="----">--Select--</option>
                                                                        <option value="----">Wife Husband</option>
                                                                        <option value="----">Son</option>
                                                                        <option value="----">Daughter</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3" style="margin-top: 22px">
                                                                <div class="form-group">
                                                                    <label>आवेदक की योग्यता<span style="color: red">*</span></label>
                                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="आवेदक की योग्यता" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>
                                                                        क्या परिवार के सभी सदस्यों ने आवेदक को अनुकंपा नियुक्ति का लाभ लेने की सहमति / शपथ पत्र दिया है ?<span style="color: red">*</span></label>
                                                                    <select class="form-control select2" id="ddlSapthpatr" onchange="showddlSapthpatr();">
                                                                        <option value="">--Select--</option>
                                                                        <option value="Yes">Yes</option>
                                                                        <option value="No">No</option>
                                                                    </select>
                                                                </div>
                                                            </div>


                                                            <div class="col-md-3" style="margin-top: 22px">
                                                                <div class="form-group">
                                                                    <label>मोबाइल नंबर</label><span style="color: red">*</span>
                                                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="मोबाइल नंबर" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3" id="fileInput" style="display: none;">
                                                                <div class="form-group">
                                                                    <label>शपथ पत्र</label>
                                                                    <input type="file" id="upload" class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>आवेदक किस पद पर नियुक्ति चाहता है</label><span style="color: red">*</span>
                                                                    <select class="form-control select2" id="ddlSapthpatr5" onchange="ShowHide()">
                                                                        <option value="">--चयन करें--</option>
                                                                        <option value="1">शैक्षणिक संवर्ग</option>
                                                                        <option value="2">लिपिक संवर्ग</option>
                                                                        <option value="3">चतुर्थ श्रेणी</option>

                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3" style="display: none" id="DivDesignation">
                                                                <div class="form-group">
                                                                    <label>पदनाम</label><span style="color: red">*</span>
                                                                    <select class="form-control select2" id="ddlSapthpatr6" onchange="ShowHide1()">
                                                                        <option value="">--चयन करें--</option>
                                                                        <option value="1">प्रयोगशाला शिक्षक</option>
                                                                        <option value="2">प्राथमिक शिक्षक</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3" style="display: none" id="DivQualificationStatus">
                                                                <div class="form-group">
                                                                    <label>
                                                                        क्या प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की है<span style="color: red">*</span></label>
                                                                    <select class="form-control select2" id="ddlSapthpatr1" onchange="ShowHide2()">
                                                                        <option value="">--Select--</option>
                                                                        <option value="1">हाँ</option>
                                                                        <option value="2">नहीं</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3" style="display: none" id="Divyear">
                                                                <div class="form-group">
                                                                    <label>पात्रता परीक्षा का वर्ष<span style="color: red">*</span></label>
                                                                    <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="पात्रता परीक्षा का वर्ष" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3" style="display: none" id="DivQualification">
                                                                <div class="form-group">
                                                                    <label>
                                                                        व्यावसायिक योग्यता<span style="color: red">*</span></label>
                                                                    <select class="form-control select2" id="ddlSapthpatr2">
                                                                        <option value="">--Select--</option>
                                                                        <option value="D.Ed">D.Ed</option>
                                                                        <option value="B.Ed">B.Ed</option>
                                                                        <option value="D.Ed + B.Ed Both">D.Ed + B.Ed Both</option>
                                                                        <option value="कोई नहीं">कोई नहीं</option>
                                                                    </select>
                                                                </div>
                                                            </div>


                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6" style="display: none" id="DivNote">
                                                                <p style="color: brown; font-size: large; font-weight: bolder">विज्ञान संकाय में 10+2 परीक्षा 50% अंक के साथ उत्तीर्ण होने पर पात्रता होगी</p>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <%-- <div class="row">
                                                       
                                                    </div>--%>
                                                </div>
                                            </fieldset>

                                            <div class="row justify-content-center mt-4">
                                                <div class="col-md-2">
                                                    <button type="button" class="Alert-Confirmation2 btn btn-success btn-rounded w-100 btn-block" onclick="">Update & Next</button>
                                                </div>
                                                <div class="col-md-2">
                                                    <a runat="server" id="A1" href="Trn_DeoCompassionateApproval.aspx" class="btn btn-block btn-danger btn-rounded">Clear</a>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div id="navpills-4" class="tab-pane">
                                        <fieldset>
                                            <legend>Document</legend>
                                            <div class="row">

                                                <div>
                                                    <h5 style="font-weight: 500;">Note :<span style="color: red;">Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
                                                </div>
                                                <br />
                                                <br />

                                                <div id="DocAppointment" class="col-md-4 mt-1">
                                                    <div class="form-group">
                                                        <label>दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र :<span style="color: red">*</span></label>
                                                    </div>
                                                </div>

                                                <div id="DocAppointment1" class="col-md-2">

                                                    <input type="file" id="fileInput1" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocAppointment2" class="col-md-4">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>

                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">

                                                <div id="DocBirth" class="col-md-4 mt-1">
                                                    <div class="form-group">
                                                        <label>आवेदक का जन्म तिथि का प्रमाण पत्र :<span style="color: red">*</span></label>
                                                    </div>
                                                </div>

                                                <div id="DocBirth1" class="col-md-2">

                                                    <input type="file" id="fileInput3" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocBirth2" class="col-md-4">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">

                                                <div id="DocCaste" class="col-md-4 mt-1">
                                                    <div class="form-group">
                                                        <label>निवास/मूल निवासी होने का प्रमाण पत्र :<span style="color: red">*</span></label>
                                                    </div>
                                                </div>

                                                <div id="DocCaste1" class="col-md-2">

                                                    <input type="file" id="fileInput2" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocCaste2" class="col-md-4">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>

                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">

                                                <div id="DocPresentpost" class="col-md-4 mt-1">
                                                    <div class="form-group">
                                                        <label>जाती प्रमाण पत्र : </label>
                                                    </div>
                                                </div>

                                                <div id="DocPresentpost1" class="col-md-2">

                                                    <input type="file" id="fileInput4" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocPresentpost2" class="col-md-4">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">

                                                <div id="Dochandicapped" class="col-md-4 mt-1">
                                                    <div class="form-group">
                                                        <label>हायर सेकेण्डरी / स्नातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र :<span style="color: red">*</span></label>
                                                    </div>
                                                </div>

                                                <div id="Dochandicapped1" class="col-md-2">

                                                    <input type="file" id="fileInput6" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="Dochandicapped2" class="col-md-4">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div id="CriticalIllness" class="col-md-4 mt-1">
                                                    <div class="form-group">
                                                        <label>परिवार के मुखिया द्वारा सहमति प्रमाण पत्र :<span style="color: red">*</span></label>
                                                    </div>
                                                </div>

                                                <div id="CriticalIllness1" class="col-md-2">

                                                    <input type="file" id="fileInput010" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="CriticalIllness3" class="col-md-4">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>

                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">

                                                <div id="DocMarried" class="col-md-4 mt-1">
                                                    <div class="form-group">
                                                        <label>आवेदक का फोटो :<span style="color: red">*</span></label>
                                                    </div>
                                                </div>
                                                <div id="DocMarried1" class="col-md-2">

                                                    <input type="file" id="fileInput5" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="DocMarried2" class="col-md-4">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">

                                                <div id="CriticalIllness10" class="col-md-4 mt-1">
                                                    <div class="form-group">
                                                        <label>राशन कार्ड :<span style="color: red">*</span></label>
                                                    </div>
                                                </div>

                                                <div id="CriticalIllness11" class="col-md-2">

                                                    <input type="file" id="fileInput0101" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)">
                                                </div>

                                                <div id="CriticalIllness12" class="col-md-4">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn view-but "><i class="fas fa-eye"></i></button>

                                                    </div>
                                                </div>

                                            </div>
                                        </fieldset>


                                        <div class="row">
                                            <div class="col-md-12" id="">
                                                <div class="form-group">
                                                    <h5 id="exampleModalLabel10" style="font-size: 30px; text-align: center; font-weight: bolder"><b style="text-decoration: underline;">सत्यापन</b></h5>

                                                    <label>
                                                        <span style="color: red; font-size: 15px; font-family: Aparajita;">
                                                            <input type="checkbox" id="Check" onchange="toggleDivVisibility()" />
                                                            &ensp;1. में एतद् द्वारा घोषणा करता करती हूँ कि मेरे द्वारा दी गई उपरोक्त जानकारी मेरे ज्ञान एवं विश्वास के अनुसार सत्य हैं, यदि मेरे द्वारा दी गई जानकारी नियुक्ति के पूर्व या बाद में असत्य गलत पायी जाती है अथवा नियुक्ति 
                                    के पश्चात् अपात्रता पाई जाती है तो मैं पूर्ण रूप से जानता जानती हूँ कि मेरी नियुक्ति  निरस्त कर दी जाएगी और इस संबंध में प्रावधानित विधि एवं नियमों के अधीन मेरे द्वारा की जाने वाली कार्यवाही के लिए मैं उत्तरदायी रहूंगा रहूंगी।<br />
                                                            &ensp; &ensp; 2. में यह भी वचन देता हूँ देती हूँ कि में स्व. श्री KRISHNAVATI PARTE के आश्रित परिवार के अन्य सदस्यों का समुचित भरण पोषण करूंगा करूंगी. बाद में किसी भी समय यदि यह प्रमाणित हो जाए कि मेरे द्वारा परिवार के सदस्यों को अनदेखा किया जा रहा है, अथवा उनका 
                                    सही ढंग से भरण पोषण नहीं किया जा रहा है तो मेरी अनुकंपा नियुक्ति समाप्त की जा सकेगी।</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="Divbutton">
                                            <div class="row justify-content-center">
                                                <div class="col-md-2">
                                                    <button type="button" class="Alert-Confirmation btn btn-success btn-rounded w-100 btn-block">Final Submit</button>
                                                </div>
                                                <div class="col-md-2">
                                                    <a runat="server" id="clearfirst" href="Trn_DeoCompassionateApproval.aspx" class="btn btn-block btn-danger btn-rounded">Clear</a>
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
                // animation: false,
                // customClass: {
                //     popup: 'animated tada'
                // }
            }).then((result) => {
                if (result.value) {
                    Swal.fire({
                        type: 'success',
                        title: 'Success!',
                        text: 'Details Deleted Successfully!',
                        timer: 2000
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
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
                // animation: false,
                // customClass: {
                //     popup: 'animated tada'
                // }
            }).then((result) => {
                //if (result.value) {
                //    Swal.fire({
                //        type: 'success',
                //        title: 'Success!',
                //        text: 'Salary Generated Successfully!',
                //        timer: 2000
                //        // animation: false,
                //        // customClass: {
                //        //     popup: 'animated tada'
                //        // }
                //    }
                //    )
                //}
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

                //var c6 = r.insertCell(5);
                //c6.innerHTML = "<button onclick='DeleteRow(this)' class='fa fa-trash'></button>";

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
