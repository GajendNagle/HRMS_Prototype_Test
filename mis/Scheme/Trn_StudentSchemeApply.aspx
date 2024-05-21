<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_StudentSchemeApply.aspx.cs" Inherits="mis_Scheme_Trn_StudentSchemeApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #divScheme {
            display: none;
        }

        #divRules {
            display: none;
        }

        #btnApply {
            display: none;
        }

        #myModal {
            display: none;
        }

        .borderblack {
            border: 1px solid #636362;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Student Scheme Apply</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                        <li class="breadcrumb-item active">Student Scheme Apply</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Student List/छात्र सूची</legend>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Student Name-Code/विद्यार्थी का नाम व कोड<span style="color: red">*</span></label>
                                <select class="form-control" id="ddlSName" onchange="ShowHideDiv()">
                                    <option selected="selected" value="0">--Select--</option>
                                    <option value="3">Ramgopal Mishra/52652</option>
                                    <option value="1">Sravan Karare/54265</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="divScheme">
                    <fieldset>
                        <legend>Student Details/छात्र विवरण</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Father's Name/पिता का नाम</label>
                                    <input type="text" class="form-control" disabled placeholder="Shushil Mishra" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Name/विद्यालय का नाम</label>
                                    <input type="text" class="form-control" disabled placeholder="MVM High School" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Class/कक्षा</label>
                                    <input type="text" class="form-control" disabled placeholder="10th" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Samagra ID/समग्र आई.डी.</label>
                                    <input type="text" class="form-control" disabled placeholder="256320324" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Catagory/वर्ग</label>
                                    <input type="text" class="form-control" disabled placeholder="ST" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Gender/लिंग</label>
                                    <input type="text" class="form-control" disabled placeholder="Male" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Caste/जाति</label>
                                    <input type="text" class="form-control" disabled placeholder="Aadiwasi" />

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Caste Certificate/जाति प्रमाण पत्र</label>
                                    <div class="mt-2">
                                        <a onclick="openPDFCaste()" class="btn form-control" onclientclick="return false;"><i class="fas fa-eye"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Date of Birth/जन्म की तारीख</label>
                                    <input type="text" class="form-control" disabled placeholder="01/01/2010" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Disability/विकलांगता</label>
                                    <input type="text" class="form-control" disabled placeholder="Yes" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Disability Type/विकलांगता प्रकार</label>
                                    <input type="text" class="form-control" disabled placeholder="Handicapped" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Disability Certificate/विकलांग्‍ता प्रमाण पत्र</label>
                                    <div class="mt-2">
                                        <a onclick="openPDFDisability()" class="btn form-control" onclientclick="return false;"><i class="fas fa-eye"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Family Income-Yearly/पारिवारिक आय-वार्षिक</label>
                                    <input type="text" class="form-control" disabled placeholder="100000" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Income Certificate/आय प्रमाण पत्र</label>
                                    <div class="mt-4">
                                        <a onclick="openPDFIncome()" class="btn form-control" onclientclick="return false;"><i class="fas fa-eye"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Scheme/योजना</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Select Scheme/योजना का चयन करें<span style="color: red;">*</span></label>
                                    <select id="ddlScheme" onchange="ShowHideRules()" class="form-control select2">
                                        <option value="0">--Select--</option>
                                        <option value="1">सामान्‍य निर्धन वर्गछात्रवृत्ति (कक्षा 6 से 8) (केवल शास. विद्या. के लिये)</option>
                                        <option value="2">सुदामा प्री-मेट्रिकछात्रवृत्ति योजना (कक्षा 9वीं से 10वीं) (केवल शास विद्या. के लिये)</option>
                                        <option value="3">स्‍वामी विवेकानंद पोस्‍ट मेट्रिक प्रावीण्‍य छाात्रवृत्ति योजना (केवल शास विद्या. के लिये)</option>
                                    </select>
                                </div>
                            </div>
                            <div id="divRules" class="col-md-9">
                                <div class="form-group">
                                    <ul class="main-ul">
                                        <li><strong>Rules/नियम व शर्ते</strong>
                                            <ul class="radius borderblack">
                                                <li>1- पालक की वार्षिक आय हेतु पालक का स्‍व हस्‍ताक्षरित स्‍व प्रमाधित घोषणा पत्र।</li>
                                                <li>2- गरीबी रेखा से नीचे (वी.पी.एल. परिवार के लिये वी.पी.एल. कार्ड की छाया प्रति।</li>
                                                <li>3- गत वर्ष की कक्षा उत्‍तीर्ण होना चाहिये।</li>
                                            </ul>
                                        </li>
                                    </ul>
                               <%--     <div>
                                        <label>मेरे द्वारा दी गई जानकारी सत्‍यापित कर ली गयी है।<span style="color: red;">*</span> </label>
                                        <input type="checkbox" />
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div id="btnApply" class="col-md-3">
                                <button type="button" class="Alert-ApplyScheme btn btn-success btn-rounded">Apply Scheme</button>
                                <a href="Trn_StudentSchemeApply.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <fieldset>
                    <legend>Description/विवरण</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li><strong>Student Name/Code (dropdown)</strong>
                                    <ul>
                                        <li>User will be able to select the <strong>Student Name/Code</strong> from dropdown. which will automatically reflect from <strong>Student Registration Master.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Student Details</strong>
                                    <ul>
                                        <li>Student Details will automatically fill from (Student Name/Code) dropdown wise from <strong>Student Registration master</strong> </li>
                                        <li>In this Section View button is available for viewing Caste Certificate, Disability Certificate and Family Income Certificate</li>
                                        <li>If any of these Certificate is available, view button will be visible in from of these fields. else view button will be hide. </li>
                                    </ul>
                                </li>
                                <li><strong>Select Scheme (dropdown)</strong>
                                    <ul>
                                        <li>User will be able to select the <strong>Scheme </strong>from dropdown. which will automatically reflect from <strong>Scheme Master</strong>. </li>
                                        <li>On selection of Scheme, Scheme related <strong>rules</strong> and <strong>Apply Scheme button</strong> and <strong>Clear button</strong>will be visible.</li>
                                        <li>In the scheme dropdown, the scheme will be filtered according to their class, caste, disability, family income. </li>
                                    </ul>
                                </li>
                                <li><strong>Apply Scheme (button)</strong>
                                    <ul>
                                        <li>User should be able to click on Apply Scheme button.</li>
                                        <li>On Apply Scheme button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                        <li>If click on Yes – Data will be saved and a PopUp will apper. Student Name, Scheme Name and Scheme Application No. will show on PopUp</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>

                                <li><strong>Clear (Button)</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <div id="myModal" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="card">
                    <div class="card-header">
                        Registration Receipt/पंजीयन पावती
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label><u><b>आज दिनांक 11/12/2023 आपके द्वारा किये गए आवेदन को स्वीकार कर लिया गया है।</b></u></label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label  class="form-control">विद्यार्थी का नाम :- Ramgopal Mishra</label>
                                           
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label  class="form-control">योजना का नाम :- सामान्‍य निर्धन वर्गछात्रवृत्ति (कक्षा 6 से 8) (केवल शास. विद्या. के लिये)</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label  class="form-control">योजना आवेदन संख्‍या :- 021021222</label>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="row fa-pull-right">
                                    <div class="col-md-2">
                                        <input type="submit" class="btn btn-dark" value="Close" />
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
        function openPDFCaste() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/CasteCertificate.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
        function openPDFIncome() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/incomeCertificate.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
        function openPDFDisability() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/DisabilityCertificate.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
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
                $('.Alert-Success').click(function () {
                    Swal.fire({
                        type: 'success',
                        title: 'Good job!',
                        text: 'Something went wrong!',
                        timer: 2000
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    })
                });
                $('.Alert-ApplyScheme').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Apply on this Scheme ?",
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
                            //Swal.fire({
                            //    //type: 'success',
                            //    //title: 'Success!',
                            //    //text: 'Record Saved Successfully!',
                            //    //timer: 2000
                            //    // animation: false,
                            //    // customClass: {
                            //    //     popup: 'animated tada'
                            //    // }

                            //}

                            //)
                            $('#myModal').modal('show');
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

    <script type="text/javascript">
        function ShowHideDiv() {
            var ddlSName = document.getElementById("ddlSName");
            var divScheme = document.getElementById("divScheme");
            if (ddlSName.value == 0) {
                divScheme.style.display = "none";
            }
            else {
                divScheme.style.display = "block";
            }
        }

        function ShowHideRules() {
            var ddlScheme = document.getElementById("ddlScheme");
            var divRules = document.getElementById("divRules");
            if (ddlScheme.value == 0) {
                divRules.style.display = "none";
                btnApply.style.display = "none";
            }
            else {
                divRules.style.display = "block";
                btnApply.style.display = "block";
            }
        }
    </script>


</asp:Content>

