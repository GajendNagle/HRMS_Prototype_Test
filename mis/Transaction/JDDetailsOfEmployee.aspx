﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="JDDetailsOfEmployee.aspx.cs" Inherits="mis_Transaction_JDDetailsOfEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        #empDetail {
            display: none;
        }

        th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #1b5a5b !important;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">
        <%-- <div class="col-md-4 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>--%>

        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/Anukampa Logo.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center">



            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=CompassionateAppointment" title="click to go on">Compassionate Appointment </a></li>
                    <%--<li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Employee" title="click to go on">Employee</a></li>--%>
                    <li class="breadcrumb-item active">Details of deceased employee</li>
                </ol>
            </div>
        </div>
    </div>
    <%-- Navbar --%>

    <%-- Navbar --%>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar " style="position: relative; bottom: 26px;">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">


                            <a class="nav-link  text-white " href="DisposeApplicationCaseForJD.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>

                            <li class="nav-item">
                                <div class="collapse navbar-collapse">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>अनुकंपा नियुक्ति </b>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="../HRMS/Trn_JDCompassionateApproval.aspx">अनुकंपा नियुक्ति के लिए आवेदन पंजीयन/सुधार करें</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/JDPrintApplicationReport.aspx">प्रिंट आवेदन </a></li>
                                            </ul>
                                        </li>

                                    </ul>
                                </div>

                            </li>
                            <li class="nav-item" style="position: relative; right: 20px;">
                                <a class="nav-link font-16 text-white" href="../HRMS/Trn_ProcessApplicationListJD.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i> अनुकंपा नियुक्ति पर कार्यवाही </b></strong></a>
                            </li>
                            <li class="nav-item mr-4">
                                <a class="nav-link  text-white " href="../Transaction/AvedanperNirnayKareForJD.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>आवेदन पर निर्णय करें</b></a></li>

                            <li class="nav-item mr-3">
                                <a class="nav-link  text-white " href="../HRMS/NocSendByDistrictCollectorJD.aspx" role="button" style="font-size: 1.0em"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>NOC जिला  कलेक्टर को भेजी गई</b></a></li>

                            <li class="nav-item">
                                <div class="collapse navbar-collapse">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>रिपोर्ट</b>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="JDLevelReportSection.aspx?ID=DisposeCasesNOC">Dispose Cases</a></li>
                                                <li><a class="dropdown-item" href="JDLevelReportSection.aspx?ID=BlockWiseCounting">Block-Wise Statistics</a></li>
                                                <li><a class="dropdown-item" href="JDLevelReportSection.aspx?ID=DistrictWiseCounting">District-Wise Statistics</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/NocReportDeo.aspx">NOC Report</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>



            <fieldset>
                <legend>PERSONAL INFORMATION / व्यक्तिगत जानकारी</legend>

                <div class="row align-items-end">


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Employee Code<br />
                                कर्मचारी कोड :<span style="color: red">*</span></label>
                            <input name="ename" value="BA3784" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Name of Deceased Employee
                                <br />
                                दिवंगत कर्मचारी का नाम: <span style="color: red">*</span></label>
                            <input name="ename" value="Iqbal Husain Mansuri" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Gender<br />
                                लिंग :<span style="color: red">*</span></label>
                            <select class="form-control select2">

                                <option value="--Select--">Male</option>
                                <option value="--Select--">Female</option>
                                <option value="--Select--">Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Category
                                <br />
                                कैटेगरी:<span style="color: red">*</span></label>
                            <select class="form-control select2">

                                <option value="--Select--">OBC</option>
                                <option value="--Select--">GENERAL</option>
                                <option value="--Select--">SC</option>
                                <option value="--Select--">ST</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Last posting district<br />
                                अंतिम पोस्टिंग जिला:<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">Shajapur</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Deceased Staff Cadre
                                <br />
                                दिवंगत कर्मचारी कैडर:<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">Regular Class-III</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Deceased Officer / Employee Designation<br />
                                दिवंगत अधिकारी/कर्मचारी पदनाम :<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">Accountant</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Last School / Office & Employee Address<br />
                                अंतिम स्कूल / कार्यालय और कर्मचारी का पता:<span style="color: red">*</span></label>
                            <input class="form-control" type="text" value="BEO, SHAJAPUR" />
                        </div>
                    </div>
                    <div id="handipaceType" class="col-md-3">
                        <div class="form-group">
                            <label>
                                Cause of Death<br />
                                मृत्यु का कारण :<span style="color: red">*</span></label>
                            <input class="form-control" value="कोविड-19 संक्रमण" type="text" />
                        </div>
                    </div>
                    <div id="HandicapePercentage" class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date of Death<br />
                                मृत्यु दिनाँक :<span style="color: red">*</span></label>
                            <input class="form-control" value="27/04/2021" type="text" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Number of Family Members of Deceased Employee<br />
दिवंगत कर्मचारी के परिवार के सदस्यों की संख्या :<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>7</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="DivCriticalIllness">

                        <div class="form-group">
                            <label>
                                Name of Department<br />
                                विभाग का नामः<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Education</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date of Receiving Application
                                <br />
                                आवेदन प्राप्त तिथि:<span style="color: red">*</span></label>
                            <input class="form-control" type="text" value="12/06/2021" />
                        </div>
                    </div>
                </div>

            </fieldset>
            <fieldset>
                <legend>Details</legend>

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive table-bordered">
                            <table class="table text-center">
                                <tbody>
                                    <tr>
                                        <th class="text-center">Sr. No.<br />
                                            सरल क्र.</th>
                                        <th class="text-center">Member Name<br />
                                            सदस्य का नाम</th>
                                        <th class="text-center">Relation with Deceased<br />
                                            दिवंगत के साथ संबंध</th>
                                        <th class="text-center">Business<br />
                                            व्यवसाय</th>
                                        <th class="text-center">Date of Birth<br />
                                            जन्म दिनांक</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>NASREEN MANSURI</td>
                                        <td>Wife Husband</td>
                                        <td>कोई व्यवसाय नहीं</td>
                                        <td>23/04/1968</td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>ARSHAD MANSURI</td>
                                        <td>Son</td>
                                        <td>कोई व्यवसाय नहीं</td>
                                        <td>06/05/1993</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>ASHRAF MANSURI</td>
                                        <td>Son</td>
                                        <td>कोई व्यवसाय नहीं</td>
                                        <td>21/09/1993</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>AAJAM MANSURI</td>
                                        <td>Son</td>
                                        <td>कोई व्यवसाय नहीं</td>
                                        <td>03/07/1997</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="card-header bg-success">परिवार के सदस्य का विवरण जिन्होंने नियुक्ति के लिए आवेदन किया हे</div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive table-bordered">
                                    <table class="table text-center">
                                        <tbody>
                                            <tr>
                                                <th class="text-center">Sr. No.
                                                    <br />
                                                    सरल क्र.</th>
                                                <th class="text-center">Applicant Name<br />
                                                    आवेदक का नाम</th>
                                                <th class="text-center">Gender<br />
                                                    लिंग </th>
                                                <th class="text-center">Date of Birth<br />
                                                    जन्म तिथि</th>
                                                <th class="text-center">Mobile No.<br />
                                                    मोबाईल नं. </th>
                                                <th class="text-center">Applicant's Relation Deceased Teacher<br />
                                                    आवेदक का दिवंगत शिक्षक के साथ संबंध</th>
                                                <th class="text-center">Marital Status<br />
                                                    वैवाहिक स्थिति</th>
                                                <th class="text-center">Educational Qualification<br />
                                                    शैक्षिक योग्यता</th>
                                                <th class="text-center">Cadre for Appointment<br />
                                                    नियुक्ति हेतु संवर्ग</th>
                                                <th class="text-center">Cadre for  Designation<br />
                                                    नियुक्ति हेतु पदनाम</th>
                                                <th class="text-center">Status of Passing Primary Teacher Eligibility
                                                    <br />
                                                    Test for Primary Teacher<br />
                                                    प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की स्थिति</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>AAMIR MANSURI</td>
                                                <td>M</td>
                                                <td>23/02/1994</td>
                                                <td>6261985501</td>
                                                <td>Son</td>
                                                <td>वैवाहिक</td>
                                                <td>12th MATHS.B.sc cs.D.El.Ed</td>
                                                <td>शैक्षणिक संवर्ग</td>
                                                <td>प्रयोगशाला शिक्षक</td>
                                                <td></td>


                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end">


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Application Status <br /> आवेदन की स्थिति<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" value="आवेदन को संभागीय आयुक्त लोक शिक्षण फॉरवर्ड किया गया है" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Remark <br /> टिप्पणी :<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" value="शाजापुर जिले एवं संभाग में पद रिक्त नहीं होने से" autocomplete="off" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive table-bordered">
                                    <table class="table ">
                                        <tbody>
                                            <tr>
                                                <th>Sr. No.<br />
                                                    सरल क्र.</th>
                                                <th>Document<br />
                                                    दस्तावेज  </th>
                                                <th>View Document
                                                    <br />
                                                    दस्तावेजट देखे</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र</td>
                                                <td><a class="btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>जन्मतिथि के प्रमाणीकरण हेतु हाई स्कूल की अंक सूची अथवा सक्षम अधिकारी द्वारा जारी किया गया जन्म प्रमाण पत्र</td>
                                                <td><a class="btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>स्थानीय / मूल निवासी होने का प्रमाण पत्र</td>
                                                <td><a class="btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>यदि आवेदक अनुसूचित जाति/जनजाति तथा अन्य पिछड़े वर्ग का हो तो प्रमाण पत्र.</td>
                                                <td><a class="btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>हायर सेकेण्डरी घातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र.</td>
                                                <td><a class="btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>परिवार के सभी सदस्यों द्वारा आवेदक को अनुकंपा नियुक्ति का लाभ लेने की सहमति का शपथ पत्र</td>
                                                <td><a class="btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>7</td>
                                                <td>आवेदक का फोटो अपलोड करे.</td>
                                                <td><a class="btn btn-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>8</td>
                                                <td>राशन कार्ड / सेवा पुस्तिका अथवा अन्य प्रमाणित दस्तावेज जिसमे परिवार के सदस्यों की जानकारी हो</td>
                                                <td><a class="btn btn-success">View</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="card-header bg-success">आवेदन पर निर्णय करे :</div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Take Action / कार्रवाई करें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="Actionddl" onchange="ShowHideHandicape()">
                                <option>--Select--</option>
                                <option value="Appointment order issued">Appointment order issued</option>
                                <option value="Rejected and Return to DEO">Rejected and Return to DEO</option>
                                <option value="Paid Amount">Paid Amount</option>
                                <option value="NOC has been released, the case has been sent to the District Collector">NOC has been released, the case has been sent to the District Collector</option>
                            </select>
                        </div>
                    </div>

                    <%--gajendra--%>

                    <div class="col-md-3" id="Mydocu" style="display: none;">
                        <div class="form-group">
                            <label>Upload Document / दस्तावेज अपलोड करें :</label>
                            <asp:FileUpload runat="server" CssClass="form-control"></asp:FileUpload>
                            <h5 style="font-weight: 500;">Note  :<span style="color: red;">Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
                        </div>
                    </div>


                    <%--gajendra--%>
                </div>
                <div class="row" id="div1">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Appointment Letter Number
                                <br />
                                नियुक्ति पत्र संख्या :<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Appointment Order Number<br />
                                नियुक्ति आदेश संख्या:<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>
                                Date of Letter<br />
                                पत्र का दिनांक :<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Position Appointed to Applicant<br />
                                आवेदक नियुक्त पद:<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2 ">
                        <div class="form-group">
                            <label>Place of Posting
                                <br />
                                पोस्टिंग की जगह:<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                </div>
                <div class="row" id="div2">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Reason of Rejectance / Return <br /> अस्वीकार्य / वापसी के कारण :<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                </div>
                <div class="row" id="div3">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Order No.<br />
                                क्रम संख्या:<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Check No.<br />
                                चेक नंबर:<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Payment Date
                                <br />
                                भुगतान दिनांक:<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Payment
                                <br />
                                भुगतान :<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                </div>
            </fieldset>

            <div class="row justify-content-center">


                <div class="col-md-2">

                    <button id="Button2" type="button" class="btn btn-success btn-rounded Alert-Save btn-block" onclick="myFunction()">Save</button>
                </div>


            </div>
        </div>
    </div>

    <script>
        function myFunction() {
            document.getElementById("empDetail").style.display = "block";

        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save This Record?",
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
                                text: 'Tour Apply Successfully!',
                                timer: 2000
                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");

                            if (x.style.display === "none") {
                                x.style.display = "block";
                            }
                            else {
                                x.style.display = "block";
                            }
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
        div1.style.display = "none";
        div2.style.display = "none";
        div3.style.display = "none";
        Mydocu.style.display = "none";
        function ShowHideHandicape() {
            debugger
            var ddlHandicape = document.getElementById("Actionddl");
            var div1 = document.getElementById("div1");
            var div2 = document.getElementById("div2");
            var div3 = document.getElementById("div3");
            var Mydocu = document.getElementById("Mydocu");
            div1.style.display = "none";
            div2.style.display = "none";
            div3.style.display = "none";
            Mydocu.style.display = "none";


            if (ddlHandicape.value == "Paid Amount") {
                div1.style.display = "none";
                div2.style.display = "none";
                Mydocu.style.display = "none";
                div3.style.display = "flex";
            }
            else if (ddlHandicape.value == "Rejected and Return to DEO") {
                div1.style.display = "none";
                div2.style.display = "flex";
                div3.style.display = "none";
                div3.style.display = "none";
            }
            else if (ddlHandicape.value == "Appointment order issued") {
                div1.style.display = "flex";
                div2.style.display = "none";
                div3.style.display = "none";
                Mydocu.style.display = "none";

            }
            else if (ddlHandicape.value == "NOC has been released, the case has been sent to the District Collector") {
                div1.style.display = "none";
                div2.style.display = "none";
                div3.style.display = "none";
                Mydocu.style.display = "flex";
            }
            else {
                div1.style.display = "none";
                div2.style.display = "none";
                div3.style.display = "none";
                Mydocu.style.display = "none";
            }
            //if (ddlHandicape.value === "Appointment order issued") {
            //    HandicapePercentage.style.display = "block";
            //    handipaceType.style.display = "block";
            //} else if (ddlHandicape.value === "No") {
            //    HandicapePercentage.style.display = "none";
            //    handipaceType.style.display = "none";
            //}
        }
    </script>
</asp:Content>

