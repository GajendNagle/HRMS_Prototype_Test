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
                            <input type="text" class="form-control" value="2000-02-03" readonly="readonly" />
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
                                Profession ai Qualification<br />
                                प्रोफेशन एआई योग्यता पर<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="BED" readonly="readonly" />
                        </div>
                    </div>

                    <div class="row align-items-end">


                        <div class="col-md-4">
                            <label>
                                UG Subject<br />
                                यूजी विषय<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="Social Science" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                PG Subject-1
                                <br />
                                पीजी विषय-1<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="Political Science" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                PG Subject-2
        <br />
                                पीजी विषय-2<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="Physics" readonly="readonly" />
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
                                Inter division/local body samvillion/Transfer Date
                                <br />
                                इंटर डिवीजन/स्थानीय निकाय सैमविलियन/ट्रांसफर तिथि<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="2024-02-05" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                Present Posting Place
                                <br />
                                वर्तमान पोस्टिंग स्थान<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="MS Bargwan" readonly="readonly" />
                        </div>

                        <div class="col-md-4">
                            <label>
                                UDISE in Case of School
          <br />
                                यू-डायस<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" value="23380200101" readonly="readonly" />
                        </div>
                    </div>

                    <div class="row align-items-end">
                        <div class="col-md-4">
                            <label>
                                Present Posting District
                                <br />
                                वर्तमान पोस्टिंग जिला<span style="color: red">*</span>

                            </label>
                            <input type="text" class="form-control" value="23380200101" readonly="readonly" />
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-4">
                            <label>
                                Date Of Appointment in UDT By Promotion
                                <br />
                                यूडीटी में पदोन्नति द्वारा नियुक्ति की तिथि<span style="color: red">*</span>

                            </label>
                            <input type="date" class="form-control" />
                        </div>

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
                    </div>

                    <div class="row align-items-end">


                        <div class="col-md-4">
                            <label>
                                Date Of Appointment
         <br />
                                नियुक्ति की तिथि<span style="color: red">*</span>

                            </label>
                            <input type="date" class="form-control" />
                        </div>
                        <div class="col-md-4">
                            <label>
                                Remark
                                <br />
                                टिप्पणी<span style="color: red">*</span>

                            </label>
                            <input type="text" class="form-control" placeholder="Enter Remark"/>
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
                                            <th>Profession Ai Qualification On<br />
                                                प्रोफेशन एआई योग्यता पर</th>
                                            <th>UG Subject
                                                <br />
                                                यूजी विषय
                                            </th>
                                            <th>PG Subject-1
                                                <br />
                                                पीजी विषय-2
                                            </th>
                                            <th>PG Subject-2
                                                <br />
                                                पीजी विषय-2
                                            </th>
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
                                                यूडीटी में पदोन्नति द्वारा नियुक्ति की तिथि
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
                                            <th>Present Posting Place
                                                <br />
                                                वर्तमान पोस्टिंग स्थान
                                            </th>
                                            <th>Udise Code
                                                <br />
                                                यू डायस कोड 
                                            </th>
                                            <th>Present Posting District
                                                <br />
                                                वर्तमान पोस्टिंग जिला
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
                                        <td>25-02-2024</td>
                                        <td>Dir</td>
                                        <td>BED</td>
                                        <td>Social Science</td>
                                        <td>Political Science</td>
                                        <td>Physics</td>
                                        <td>Katni</td>
                                        <td>24-02-2000</td>
                                        <td>UDT</td>
                                        <td>Nil</td>
                                        <td>20-04-2001</td>
                                        <td>02-06-2022</td>
                                        <td>05-07-2023</td>
                                        <td>Nil</td>
                                        <td>MS Kishanpur</td>
                                        <td>23380200101</td>
                                        <td>Panna</td>
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

