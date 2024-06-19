<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="HODetailsOfEmployee.aspx.cs" Inherits="mis_Transaction_HODetailsOfEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#EmployeeCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Compassionate Appointment
                                </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Decide on Pending Applications at H.O. Level</span></li>
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
                    <h5 class="card-title">Decide on Pending Applications at H.O. Level / एच.ओ. लेवल पर लंबित आवेदनों पर निर्णय करें </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>PERSONAL INFORMATION / व्यक्तिगत जानकारी</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Employee Code
                 <br />
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
                                Gender
                 <br />
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
                                Last Posting District
                 <br />
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
                                Deceased Officer/Employee Designation
                 <br />
                                दिवंगत अधिकारी/कर्मचारी पदनाम :<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">Accountant</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Last School/Office & Employee Address
                 <br />
                                अंतिम स्कूल/कार्यालय और कर्मचारी का पता:<span style="color: red">*</span></label>
                            <input class="form-control" type="text" value="BEO, SHAJAPUR" />
                        </div>
                    </div>
                    <div id="handipaceType" class="col-md-3">
                        <div class="form-group">
                            <label>
                                Cause of Death
                 <br />
                                मृत्यु का कारण <span style="color: red">*</span></label>
                            <input class="form-control" value="कोविड-19 संक्रमण" type="text" />
                        </div>
                    </div>
                    <div id="HandicapePercentage" class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date of Death
                 <br />
                                मृत्यु दिनाँक <span style="color: red">*</span></label>
                            <input class="form-control" value="27/04/2021" type="text" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Number of Family Members of Deceased Employee
                 <br />
                                दिवंगत कर्मचारी के परिवार के सदस्यों की संख्या <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>7</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="DivCriticalIllness">
                        <div class="form-group">
                            <label>
                                Name of Department
                 <br />
                                विभाग का नाम<span style="color: red">*</span></label>
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
                <legend>Details / विवरण</legend>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive table-bordered">
                            <table class="table text-center">
                                <tbody>
                                    <tr>
                                        <th class="text-center">Sr. No.<br>
                                            सरल क्र.</th>
                                        <th class="text-center">Member Name<br>
                                            सदस्य का नाम</th>
                                        <th class="text-center">Relation with Deceased<br>
                                            दिवंगत के साथ संबंध</th>
                                        <th class="text-center">Business<br>
                                            व्यवसाय</th>
                                        <th class="text-center">Date of Birth<br>
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
            </fieldset>
            <fieldset>
                <legend>Details of Family Member who has Applied for Appointment
        <br />
                    परिवार के सदस्य का विवरण जिन्होंने नियुक्ति के लिए आवेदन किया है
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive table-bordered">
                                    <table class="table text-center">
                                        <tbody>
                                            <tr>
                                                <th class="text-center">Sr. No.
                                                    <br>
                                                    सरल क्र.</th>
                                                <th class="text-center">Applicant Name<br>
                                                    आवेदक का नाम</th>
                                                <th class="text-center">Gender<br>
                                                    लिंग </th>
                                                <th class="text-center">Date of Birth<br>
                                                    जन्म तिथि</th>
                                                <th class="text-center">Mobile No.<br>
                                                    मोबाईल नं. </th>
                                                <th class="text-center">Applicant's Relation Deceased Teacher<br>
                                                    आवेदक का दिवंगत शिक्षक के साथ संबंध</th>
                                                <th class="text-center">Marital Status<br>
                                                    वैवाहिक स्थिति</th>
                                                <th class="text-center">Educational Qualification<br>
                                                    शैक्षिक योग्यता</th>
                                                <th class="text-center">Cadre for Appointment<br>
                                                    नियुक्ति हेतु संवर्ग</th>
                                                <th class="text-center">Cadre for  Designation<br>
                                                    नियुक्ति हेतु पदनाम</th>
                                                <th class="text-center">Status of Passing Primary Teacher Eligibility
                                                    <br>
                                                    Test for Primary Teacher<br>
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
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>आवेदन की स्थिति<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" value="आवेदन को संभागीय आयुक्त लोक शिक्षण फॉरवर्ड किया गया है" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>रेमार्क :<span style="color: red">*</span></label>
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
                                                <th>Sr. No.<br>
                                                    सरल क्र.</th>
                                                <th>Document<br>
                                                    दस्तावेज  </th>
                                                <th>View Document
                                                    <br>
                                                    दस्तावेज देखे</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र</td>
                                                <td><a class="btn btn-outline-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>जन्मतिथि के प्रमाणीकरण हेतु हाई स्कूल की अंक सूची अथवा सक्षम अधिकारी द्वारा जारी किया गया जन्म प्रमाण पत्र</td>
                                                <td><a class="btn btn-outline-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>स्थानीय / मूल निवासी होने का प्रमाण पत्र</td>
                                                <td><a class="btn btn-outline-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>यदि आवेदक अनुसूचित जाति/जनजाति तथा अन्य पिछड़े वर्ग का हो तो प्रमाण पत्र.</td>
                                                <td><a class="btn btn-outline-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>हायर सेकेण्डरी घातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र.</td>
                                                <td><a class="btn btn-outline-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>परिवार के सभी सदस्यों द्वारा आवेदक को अनुकंपा नियुक्ति का लाभ लेने की सहमति का शपथ पत्र</td>
                                                <td><a class="btn btn-outline-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>7</td>
                                                <td>आवेदक का फोटो अपलोड करे.</td>
                                                <td><a class="btn btn-outline-success">View</a></td>
                                            </tr>
                                            <tr>
                                                <td>8</td>
                                                <td>राशन कार्ड / सेवा पुस्तिका अथवा अन्य प्रमाणित दस्तावेज जिसमे परिवार के सदस्यों की जानकारी हो</td>
                                                <td><a class="btn btn-outline-success">View</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Action / कार्रवाई </legend>
                <div class="row form-group">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Take Action<br />
                                कार्रवाई करें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="Actionddl" onchange="ShowHideHandicape()">
                                <option>--Select--</option>
                                <option value="Appointment order issued">Appointment order issued</option>
                                <%--  <option value="Rejected and Return to DEO">Rejected and Return to DEO</option>--%>
                                <option value="Paid Amount">Paid Amount</option>
                                <option value="NOC has been released, the case has been sent to the District Collector">NOC has been released, the case has been sent to the District Collector</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="Mydocu" style="display: none;">
                        <div class="form-group">
                            <label>Upload Document<br />
                                दस्तावेज़ अपलोड करें</label>
                            <asp:FileUpload runat="server" CssClass="form-control"></asp:FileUpload>
                            <h5 style="font-weight: 500;">Note  :<span style="color: red;">Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end" id="div1">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Appointment Letter Number
                                <br />
                                नियुक्ति पत्र संख्या<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Appointment Order Number
                                <br />
                                नियुक्ति आदेश संख्या<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>
                                Date of Letter
                                <br />
                                पत्र की तारीख<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>
                                Position Appointed to Applicant
                                <br />
                                आवेदक को किस पद पर नियुक्त किया गया है<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>
                                Place of Posting
                                <br />
                                पोस्टिंग की जगह<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                </div>
                <div class="row" id="div2">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>स्वीकार के कारण <span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                </div>
                <div class="row" id="div3">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Order No.<br />
                                क्रम संख्या<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Check No.
                                <br />
                                चेक नंबर<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Payment Date
                                <br />
                                भुगतान तिथि<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Payment<br />
                                भुगतान<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <hr />
            <div class="row ">
                <div class="col-md-12">
                    <button id="Button2" type="button" class="fw-bold btn w-lg btn-outline-success btn-border Alert-Save" onclick="myFunction()">Update</button>
                    <a href="HODetailsOfEmployee.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                </div>
            </div>
        </div>
    </div>
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
                        text: "Do you want to Update This Record?",
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
        }
    </script>
</asp:Content>

