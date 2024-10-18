<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Gradation.aspx.cs" Inherits="mis_HRMS_Gradation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#HRIMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRIMS</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Gradation</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Gradation / पदक्रम
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Gradation / पदक्रम</legend>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Enter Unique ID<br />
                                यूनिक आईडी दर्ज करें<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Unique ID." id="txtuniqueId" autocomplete="off" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('Detailfield').style.display = 'block'">Search</button>
                            <a href="Gradation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>
                <fieldset id="Detailfield" style="display: none">
                    <legend>Details</legend>
                    <div class="row align-items-end">

                        <div class="col-md-4">
                            <label>
                                Name<br />
                                नाम<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="Mamta Kori" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                Category<br />
                                श्रेणी<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="Obc" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                Gender<br />
                                लिंग<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="Female" readonly="readonly" />
                        </div>
                    </div>

                    <div class="row align-items-end">
                        <div class="col-md-4">
                            <label>
                                Date Of Birth<br />
                                जन्म तिथि<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="1962-07-25" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                Appointment Type<br />
                                नियुक्ति का प्रकार<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="DIR" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                Subject Panel<br />
                                विषय पैनल<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="HS-5 Science" readonly="readonly" />
                        </div>

                    </div>

                    <div class="row align-items-end">

                        <div class="col-md-4">
                            <label>
                                Home District
          <br />
                                गृह ज़िला<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="Katni" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                Date Of First Appointment in Gov Service
        <br />
                                सरकारी सेवा में प्रथम नियुक्ति की तिथि<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="2024-02-05" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                First Appointment Designation
                                <br />
                                पहला नियुक्ति पदनाम<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="UDT" readonly="readonly" />
                        </div>
                    </div>

                    <div class="row align-items-end">

                        <div class="col-md-4">
                            <label>
                                Inter Division/Local Body Samvillion/Transfer Date
         <br />
                                इंटर डिवीजन/स्थानीय निकाय सैमविलियन/ट्रांसफर तिथि<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="Nil" readonly="readonly" />
                        </div>

                        <div class="col-md-4" style="display: none">
                            <label>
                                Present Posting Place
          <br />
                                वर्तमान पोस्टिंग स्थान<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="MS Bargwan" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                Present DDO/Sankul Name Code
                                <br />
                                वर्तमान डीडीओ/संकुल नाम कोड<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="Govt.HSS KERPANI SARSALA-23380200101" readonly="readonly" />
                        </div>
                        <div class="col-md-4">
                            <label>
                                Present OIS Name Code
                                <br />
                                वर्तमान OIS नाम कोड<span style="color: red">*</span>

                            </label>
                            <input type="text" class="form-control" value="GMS GIRSLS MALHARGARH-23802OS345" readonly="readonly" />
                        </div>
                    </div>

                    <div class="row align-items-end">



                        <div class="col-md-4">
                            <label>
                                Present Posting District
                                <br />
                                वर्तमान पोस्टिंग जिला<span style="color: red">*</span>

                            </label>
                            <input type="text" class="form-control" value="katni" readonly="readonly" />
                        </div>
                        <div class="col-md-4">
                            <label>
                                Employee Qualification<br />
                                कर्मचारी योग्यता<span style="color: red">*</span>
                            </label>
                            <select id="Education" class="form-control select2">
                                <option value="----">--Select--</option>
                                <option value="BALLB">BALLB</option>
                                <option value="BachelorOfArts">Bachelor of Arts</option>
                                <option value="BachelorOfCommerce">Bachelor of Commerce</option>
                                <option value="Architecture">Architecture</option>
                                <option value="BCA">BCA</option>
                                <option value="ComputerScience">Computer Science</option>
                                <option value="Education">Education</option>
                                <option value="BBA">BBA</option>
                                <option value="MBBS">MBBS</option>
                                <option value="BachelorOfScience">Bachelor of Science</option>
                                <option value="Biotechnology">Biotechnology</option>
                                <option value="BScIT">BSc IT</option>
                                <option value="Engineering">Engineering</option>
                                <option value="Humanities">Humanities</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Date Of Appointment in UDT By Promotion
        <br />
                                यू.डी.टी में पदोन्नति द्वारा नियुक्ति की तिथि<span style="color: red">*</span>

                            </label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                  





                    
                    

                    <div class="row align-items-end">
                                     <div class="col-md-4">
                 <label>
                     Date Of Appointment in Present Cadre
<br />
                     वर्तमान कैडर में नियुक्ति की तिथि<span style="color: red">*</span>

                 </label>
                 <input type="date" class="form-control" />
             </div>

                        <div class="col-md-4">
                            <label>
                                Date Of Seniority in Present Cadre
                                <br />
                                वर्तमान कैडर में नियुक्ति की तिथि<span style="color: red">*</span>

                            </label>
                            <input type="date" class="form-control" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                Date Of Appointment
         <br />
                                नियुक्ति की तिथि<span style="color: red">*</span>

                            </label>
                            <input type="date" class="form-control" />
                        </div>
                      
                    </div>

                    <div class="row align-items-end">
                          <div class="col-md-4">
      <label>
          Remark
          <br />
          टिप्पणी<span style="color: red">*</span>

      </label>
      <input type="text" class="form-control" placeholder="Enter Remark" />
  </div>
                        <div class="col-md-4">
                            <label>
                                Seniority Sequence
          <br />
                                वरिष्ठता अनुक्रम<span style="color: red">*</span>

                            </label>
                            <input type="text" class="form-control" placeholder="Enter Seniority Sequence" />
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display = 'block'">Save</button>
                            <a href="Gradation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="table1" style="display: none">
                    <legend>Details / विवरण</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.
                                <br />
                                                क्रमांक</th>
                                            <th>Unique Id
                                                <br />
                                                यूनिक आईडी
                                            </th>
                                            <th>Name<br />
                                                नाम</th>
                                            <th>Category<br />
                                                श्रेणी</th>
                                            <th>Gender<br />
                                                लिंग
                                            </th>
                                            <th>Date Of Birth<br />
                                                जन्म तिथि</th>
                                            <th>Appointment Type<br />
                                                नियुक्ति का प्रकार</th>
                                            <th>Subject Panel t<br />
                                                विषय पैनल</th>
                                            <th>Home District
                                                <br />
                                                होम जिला
                                            </th>
                                            <th>Date Of First Appointment in Gov Service
                                                <br />
                                                सरकारी सेवा में प्रथम नियुक्ति की तिथि
                                            </th>
                                            <th>First Appointment Designation
                                                <br />
                                                प्रथम नियुक्ति पदनाम
                                            </th>
                                            <th>Date Of Appointment in UDT By Promotion
                                                <br />
                                                यू.डी.टी. में पदोन्नति द्वारा नियुक्ति की तिथि
                                            </th>
                                            <th>Date Of Appointment in Present Cadre
                                                <br />
                                                वर्तमान कैडर में नियुक्ति की तिथि
                                            </th>
                                            <th>Date Of Seniority in Present Cadre
                                                <br />
                                                वर्तमान कैडर में वरिष्ठता की तिथि
                                            </th>
                                            <th>Date Of Appointment in HM
                                                <br />
                                                एचएम में नियुक्ति की तिथि
                                            </th>
                                            <th>Inter Division/Local body Samvilion/Transfer Date
                                                <br />
                                                अंतर संभाग/स्थानीय निकाय संविलियन/स्थानांतरण तिथि
                                            </th>
                                            <%--  <th>Present Posting Place
                                                <br />
                                                वर्तमान पोस्टिंग स्थान
                                            </th>--%>
                                            <th>Present DDO/Sankul Name Code
                                                <br />
                                                वर्तमान डीडीओ/संकुल नाम कोड
                                            </th>
                                            <th>Present OIS Name Code
                                                <br />
                                                वर्तमान OIS नाम कोड 
                                            </th>
                                            <th>Present Posting District
                                                <br />
                                                वर्तमान पोस्टिंग जिला
                                            </th>
                                            <th>Employee Qualification
                                                <br />
                                                कर्मचारी योग्यता
                                            </th>
                                            <th>Remark
                                                <br />
                                                टिप्पणी
                                            </th>
                                            <th>Seniority Sequence
                                                <br />
                                                वरिष्ठता अनुक्रम
                                            </th>
                                            <th>Action
                                                <br />
                                                कार्येवाही
                                            </th>

                                        </tr>
                                    </thead>

                                    <tr>
                                        <td>1</td>
                                        <td>AN5449</td>
                                        <td>Mamta Kori</td>
                                        <td>Sc</td>
                                        <td>Female</td>
                                        <td>25-07-1962</td>
                                        <td>Dir</td>
                                        <td>HS-2 Science</td>
                                        <td>Katni</td>
                                        <td>24-02-1981</td>
                                        <td>UDT</td>
                                        <td>Nil</td>
                                        <td>24-02-1981</td>
                                        <td>20-04-1981</td>
                                        <td>02-06-1981</td>
                                        <td>Nil</td>
                                        <%--<td>MS BARGWAN</td>--%>
                                        <td>GHS ADARSH GIRLS SIDHI-23380200101</td>
                                        <td>Govt.HSS KERPANI SARSALA-23802OS356</td>
                                        <td>Panna</td>
                                        <td>Architecture</td>
                                        <td>NO</td>
                                        <td>2</td>
                                        <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>&nbsp<a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                    <button type="button" class="Alert-Save btn btn-outline-success btn-border w-lg">Generate List</button>
                </fieldset>

            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function showDetails() {
            var uniqueId = document.getElementById('txtuniqueId').value;
            var Detailfield = document.getElementById('Detailfield');

            if (uniqueId) {
                Detailfield.style.display = 'block'; // Fieldset ko dikhana
            } else {
                Detailfield.style.display = 'none'; // Fieldset ko chhupana
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
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Generate this List ?",
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
                                text: 'Generate List Successfully!',
                                timer: 2020,
                            }
                            ).
                                then(() => {
                                    /*var pdfUrl = '../../img/blankpdf.pdf';*/
                                    window.open(pdfUrl, '_blank');
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

