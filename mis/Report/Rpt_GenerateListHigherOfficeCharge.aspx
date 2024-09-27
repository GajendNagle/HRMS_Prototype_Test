<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_GenerateListHigherOfficeCharge.aspx.cs" Inherits="mis_Report_Rpt_GenerateListHigherOfficeCharge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        th {
            white-space: nowrap;
        }

        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 120%;
            }

            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">


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
                            <a href="#ApprovalByHeadOffice" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Transfer Approval by HO</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Generate List Higher Designation Charge</span></li>
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
                        <div class="col-lg-6">
                            <h4 class="card-title">Generate List Higher Designation Charge<br />
                                उच्च पदनाम शुल्क की सूची तैयार करें</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">

                    <fieldset>
                        <legend>Higher Designation Charge / उच्चतर पदनाम प्रभार 
                        </legend>
                        <div class="row">


                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        District
                                        <br />
                                        ज़िला<span style="color: red">*</span></label>
                                    <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">All</option>
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


                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="myFunction()">Search</button>
                                    <a class="btn btn-outline-danger btn-border w-lg" href="HeadOfficFinalVoluntaryTransferApprove.aspx">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="vacaniesDetail" style="display: none;">
                        <legend>Higher Designation Charge Detail / उच्चतर पदनाम प्रभार विवरण
                        </legend>
                        <div class="row justify-content-end">

                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered">
                                        <tr class="card-header">
                                            <th>Sr.No.
                                                <br />
                                                सरल क्र.</th>


                                            <th>Employee Name/Code
                                                <br />
                                                कर्मचारी का नाम/कोड</th>
                                            <th>District 
       <br />
                                                जिला</th>
                                            <th>Current Designation
        <br />
                                                वर्तमान मूल पदनाम</th>
                                            <th>Higher Designation Charge
                                                <br />
                                                कर्मचारी उच्च पद प्रभार</th>

                                            <th>Currect OIS Code
                                                <br />
                                                वर्तमान ओ.आई.एस</th>
                                            <th>New OIS Code
                                                <br />
                                                नवीन ओ.आई.एस कोड</th>
                                            <th>Order Print
     <br />
                                                आदेश प्रिंट   </th>
                                        </tr>

                                        <tr>
                                            <td>1</td>


                                            <td>Arjun Talwar/BT9489</td>
                                            <td>Bhopal</td>
                                            <td>माध्यमिक शिक्षा</td>
                                            <td>उच्च माध्यमिक शिक्षा</td>
                                            <td>1236547895-Gov.Hs School</td>
                                            <td>1258963478-Model High Secondary School</td>
                                            <td>
                                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">Print</button></td>

                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Ajay Verma/BT9785</td>
                                            <td>Betul</td>
                                            <td>माध्यमिक शिक्षा</td>
                                            <td>उच्च माध्यमिक शिक्षा</td>
                                            <td>1656547895- Primary Gov.Hs School</td>
                                            <td>1458963478-Cambrege High Secondary School</td>
                                            <td>
                                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">Print</button></td>

                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Rajesh Talwar/BT9455</td>
                                            <td>Dewas</td>
                                            <td>माध्यमिक शिक्षा</td>
                                            <td>उच्च माध्यमिक शिक्षा</td>
                                            <td>1236547895-Umeya vidhya mandir </td>
                                            <td>1258963478-Model High Secondary School</td>
                                            <td>
                                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">Print</button></td>

                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Ramesh Talwar/BT9448</td>
                                            <td>Betul</td>
                                            <td>माध्यमिक शिक्षा</td>
                                            <td>उच्च माध्यमिक शिक्षा</td>
                                            <td>1236547895-Goverment Imprimes Hs School</td>
                                            <td>1258963478-Model High Secondary School</td>
                                            <td>
                                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">Print</button></td>

                                        </tr>
                                    </table>
                                </div>


                            </div>

                        </div>
                    </fieldset>
                    <div class="row" id="generateorder" style="display: none">
                        <div class="col-md-12 text-center">

                            <button type="button" class="btn btn-outline-danger btn-border w-lg">Delete</button>
                        </div>

                    </div>
                    <!-- Modal -->

                    <%--adesg--%>
                    <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">

                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset>
                                        <div class="row mt-2">
                                            <div class="col-sm-2">
                                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 100px; height: auto; background: none" class="responsive" />
                                            </div>
                                            <div class="col-sm-8 text-center">
                                                <h3><strong><b>लोक शिक्षण संचालनालय मध्य प्रदेश</b></strong></h3>
                                                <h4><strong><b>गौतम नगर, भोपाल - 462021</b></strong></h4>
                                                <h5><strong><b>:: आदेश ::</b></strong></h5>

                                            </div>
                                            <div class="col-sm-2">
                                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                            </div>
                                           <%-- <div class="row">
                                                <span>भोपाल,दिनांक 14/08/2024</span>
                                            </div>--%>
                                        </div>
                                        <hr />
                                        <div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div>

                                                        <%--   <div>
                                         <table class="table">
                                             <tr>
                                                 <th>क्र./स्थानांतरण</th>
                                                 <td>Ad_mutual/2023/20-01/140526</td>
                                                 <th>दिनाँक:-</th>
                                                 <td>09-03-2024</td>
                                             </tr>
                                         </table>
                                         <h4 class="text-center mt-4 mb-4 font-bold"><u>:: आदेश ::</u></h4>

                                         <p class="text-center">मध्यप्रदेश शासन स्कूल शिक्षा विभाग के परिपत्र 01-09/2022/20-1 दिनांक 08/09/2022 के द्वारा स्कूल शिक्षा विभाग अंतर्गत कार्यरत अमले के स्थानान्तरण हेतु निर्धारित नीति के तहत निस्रांकित लोक सेवक को उनके नाम के मम्मुख तालिका के कॉलम क्रमांक 7 एवं 8 में अंकित संस्था एवं जिले में समान सामर्थ्य एवं वेतनमान में स्थानान्तरित कर अस्थायी रूप से आगामी आदेश तक पदस्थ किया जाता है।</p>
                                     </div>--%>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <p class="font-16 font-bold">
                                                                    क्रमांक एफ 01/01/CPI/आयुक्त/3663407499/2023/20-1::<br />
                                                                    उच्च पद प्रभार हेतु निम्रानुसार तालिका के कॉलम क्रमांक-02 में दर्शाए गए लोकसेवक को अस्थाई रूप में आगामी आदेश तक कॉलम क्रमांक-06 अनुसार उच्च पद का प्रभार स्वेच्छिक आधार पर सोपते हुए कॉलम क्रमांक-07 में दर्शायी गई संस्था में तत्काल प्रभाव से पदस्थ किया जाता है। 
                                                                    &nbsp&nbsp (संशोधित)
                                                                </p>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>सरल क्र.</th>
                                                                            <th>यूनिक आई.डी</th>
                                                                            <th>नाम एवं पद</th>
                                                                            <th>विषय </th>
                                                                            <th>कार्यरत संस्था एवं<br />
                                                                                डाइम कोड</th>
                                                                            <th>कार्यरत जिला</th>
                                                                            <th>प्रभार का पदनाम</th>
                                                                            <th>प्रभार की नवीन संस्था का<br />
                                                                                नाम एवं डाइस कोड</th>
                                                                            <th>नवीन पदस्थापना<br />
                                                                                का जिला</th>
                                                                            <th>ग्रेडेशन
                                                                                <br />
                                                                                नंबर</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1</td>
                                                                            <td>2</td>
                                                                            <td>3</td>
                                                                            <td>4</td>
                                                                            <td>5</td>
                                                                            <td>6</td>
                                                                            <td>7</td>
                                                                            <td>8</td>
                                                                            <td>9</td>
                                                                            <td>10</td>

                                                                        </tr>
                                                                        <tr>
                                                                            <td>1</td>
                                                                            <td>BT7956</td>
                                                                            <td>Anil Kumar Chaturvedi<br />
                                                                                [BA4994]<br />
                                                                                Madhymik Shikshak
                                                                            </td>
                                                                            <td>Chemistry (HS/HSS Teach)</td>
                                                                            <td>2327100059 2 - Brc.Susner</td>
                                                                            <td></td>
                                                                            <td>Ucch Madhya milk Shikshak (New Cadre)</td>
                                                                            <td>2327100059 - Ghss Suigaon</td>
                                                                            <td>Agar Malwa </td>
                                                                            <td>17202</td>
                                                                        </tr>

                                                                    </table>
                                                                </div>
                                                            </div>
                                                            <div>

                                                                <p class="font-16 font-bold">
                                                                    1. इस आदेश के आधार पर संबंधित लोकसेवक उच्चतर पद श्रेणी के वेतन पर कोई दावा नहीं कर सकेगा और न ही इस आदेश के आधार पर उच्चतर पद हेतु वरिष्ठता एवं अन्य स्वत्वों की मांग कर सकेगा। उपरोक्तानुसार उच्च पद पर कार्य करने वाले किसी भी लोकसेवक को भविष्य में पदोन्नति के विचारण में वरीयता का कोई अधिकार एवं किसी भी प्रकार के अतिरिक्त भत्तें आदि की पात्रता नहीं होगी |<br />
                                                                    2. संबंधित लोकसेवक, प्रभारित उच्च पद की समस्त शक्तियों का प्रयोग कर सकेगा जिस पद पर वह स्थानापन्न रूप में पदस्थ किया गया है। प्रभारी प्राचार्य समस्त वित्तीय एवं प्रशासनिक शक्तियों का नियमानुसार उपयोग कर सकेंगे |
                                                                    <br />
                                                                    3. उच्च श्रेणी शिक्षक/माध्यमिक शिक्षक के उच्च पद प्रभार के लिए डी. एड/बी.टी.आई/बी.टी.मी. योग्यता तथा व्याख्याता/उच
माध्यमिक शिक्षक के उच्च पद प्रभार के लिए बी.एड योग्यता अनिवार्य है |<br />
                                                                    4. शिक्षक के लिए खातकोत्तर उपाधि मान्यता प्राप्त संस्थान से नियमानुसार प्राप्त की हो |<br />
                                                                    5. यदि लोकसेवक बिन्दु क. 3 एवं 4 अनुसार योग्यता धारित नहीं करता है तो आदेश स्वतः निरस्त माना जाएगा |<br />
                                                                    6. लोकसेवक की कार्यमुत्तिः कार्यभार ग्रहण कराने की कार्यवाही, लोकसेवक के उच्च पद प्रभार की पात्रता परीक्षण उपरांत जिला शिक्षा अधिकारी द्वारा की जाएगी। संबंधित की वरिष्ठता के संबंध में यदि पूर्व में बचन पत्र नहीं लिया गया है तो बचन पत्र प्राप्त कर परीक्षण उपरांत कार्यवाही की जाए|<br />
                                                                    7. संबंधित लोकसेवक को नवीन पदांकित संस्था में उच्च पद का प्रभार 07 कार्य दिवसों में ग्रहण करना अनिवार्य होगा|<br />
                                                                    8. नवीन पदांकित संस्था में प्रभार ग्रहण करने की सूचना संबंधित कार्यालय प्रमुख जिला शिक्षा अधिकारी के माध्यम से आयुक्त लोक शिक्षण को देनी होगी |<br />

                                                                </p>
                                                                <div class="row">
                                                                    <div class="col-md-12 text-center">
                                                                        <span>यह आदेश तत्काल प्रभाव से लागू होगा|</span>

                                                                    </div>
                                                                </div>
                                                                <br />

                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td class="text-end font-16 font-weight-bold ">(शिल्पा गुप्ता)<br />
                                                                            <span class="text-center ">आयुक्त<br />
                                                                            </span>
                                                                            लोक शिक्षण, मध्यप्रदेश<br />
                                                                            <span style="font-weight: 100">भोपाल,दिनांक 14/08/2024</span>

                                                                        </td>

                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-start font-16">Digitally Signed By 
                                            <br />
                                                                            Shilpa Gupta<br />
                                                                            Date: 2024.04.5 +05:30<br />
                                                                            Reason :<br />
                                                                            Location:
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <div class="modal-footer text-center">
                                        <button type="button" class="btn btn-outline-success w-lg btn-border" onclick="window.print()">Print</button>
                                        <button type="button" class="btn btn-outline-warning w-lg btn-border" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>

        function toggleDivVisibility() {
            var chk1 = document.getElementById("chk1");
            var chk2 = document.getElementById("chk2");
            var chk3 = document.getElementById("chk3");
            var chk4 = document.getElementById("chk4");
            var div1 = document.getElementById("generateorder");
            // Checking the state of each checkbox and displaying/hiding div1 accordingly
            if (chk1.checked || chk2.checked || chk3.checked || chk4.checked) {
                div1.style.display = "block";
            } else {
                div1.style.display = "none";
            }
        }
    </script>

    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
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
                        text: "Do you want to Approve This Record?",
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
                                text: 'Approve  Successfully!',
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



</asp:Content>


