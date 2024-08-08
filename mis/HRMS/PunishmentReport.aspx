<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PunishmentReport.aspx.cs" Inherits="mis_HRMS_PunishmentReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .profileimage {
            display: block;
            height: 100%;
            margin-left: auto;
            margin-right: auto;
        }
        .mfont,.Fhead{
            font-size: 125%;
        }
        #show {
            display: none;
        }

        fieldset {
            border: 0.8px solid #021d3a8c /*#ffa500*/;
        }

        legend {
            border-radius: 7px;
            border: 1.5px solid #021d3a78 /*#ffa500*/;
        }

        .select2-container .select2-selection--single, .form-control {
            border-radius: 0.2rem !important;
        }

        .select2-container .select2-selection--single, .form-control {
            border: 1px solid #1b5b5c47;
        }

            .form-control:disabled, .form-control[readonly] {
                background-color: #f5f5f538 !important;
            }

        .table-bordered > :not(caption) > * > * {
            border-width: 1px !important;
        }

        .table > :not(caption) > * > * {
            padding: 0.3rem 0.5rem !important;
        }

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
                            <a href="#Reports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>HRMS Reports</span></a>
                        </li>
                        <li class="breadcrumb-item">Punishment Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">Punishment Report / निलंबित  रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>Punishment Report / निलंबित  रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Punishment Status 
                                <br />
                                निलंबित स्थिति का चयन करें <span>*</span></label>
                            <select class="form-control select2">
                                <option value="0">--Select--</option>
                                <option value="1">Punishment Order Report </option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <button type="button" onclick="myFunction()" class=" btn btn-success btn w-lg btn-border">Search</button>
                        <a href="PunishmentReport.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset id="show">
                <legend>Punishment Order Details / निलंबित आदेश का विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2" id="searchbtn">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                        <br>
                                            सरल क्र.</th>
                                        <th>Employee Name &amp; Code /<br>
                                            कर्मचारी का नाम और कोड</th>
                                        <th>OIS Name &amp; Code /
                                        <br>
                                            ओआईएस नाम एवं कोड</th>
                                        <th>Designation<br>
                                            पद का नाम</th>
                                        <th>Punishment Type 
                                        <br>
                                            निलंबित का प्रकार </th>
                                        <th>Remark
                                                    <br>
                                            टिप्पणी</th>

                                        <th>Punishment Order No .
                                                    <br>
                                            निलंबित आदेश संख्या </th>
                                        <th>Punishment Order Date
                                                    <br>
                                            निलंबित आदेश दिनांक</th>


                                        <th>View Document
                                                    <br>
                                            दस्तावेज़ देखें</th>
                                        <th>View Punishment Order
                                                    <br>
                                            आदेश देखें</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Arjun Talwar (AR4781) </td>
                                        <td>HSS School Raisen 021234S010</td>
                                        <td>Teacher SS1-Hindi</td>
                                        <td>पदोन्नति रोकना </td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button>
                                        </td>
                                        <td>SUS242012 </td>
                                        <td>29/07/2024</td>



                                        <td id="Document1">
                                            <a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a>

                                        </td>
                                        <td id="Document4"><a data-bs-toggle="modal" data-bs-target="#staticBackdrop" role="button" class="btn btn-info btn-rounded"><i class="fa fa-file"></i></a></td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Keshav Maharaj (KR2385) </td>
                                        <td>HSS School Sehore  021234S010</td>
                                        <td>Teacher SS1-English</td>
                                        <td>वेतन-वृद्धि रोकना</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button>
                                        </td>
                                        <td>SUS242013</td>
                                        <td>29/07/2024</td>


                                        <td id="Document3">
                                            <a role="button" class="btn btn-info btn-rounded" href="../../img/Finance.pdf" target="_blank"><i class="fa fa-file"></i></a>
                                        </td>
                                        <td id="Document5"><a data-bs-toggle="modal" data-bs-target="#staticBackdrop" role="button" class="btn btn-info btn-rounded"><i class="fa fa-file"></i></a></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <%-- pop Model --%>
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">

                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title w-100 text-center"></h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <div class="row text-center">
                                    <div class="col-sm-12 text-center">
                                        <br>

                                        <div class="col-lg-12">
                                            <%--<img src="../../img/Service%20Book%20Logo.png" width="35%" />--%>
                                            <img src="../../img/ComplainLogo.png" width="35%" />
                                        </div>
                                    </div>
                                </div>
                                <hr style="height: 3px; border-width: 10px; color: black; background-color: black">
                                <div class="row">
                                    <div class="col-md-12">

                                        <div class="row">
                                            <div class="col text-start Fhead">
                                                <span class="fw-bold">वार्षिक प्रतिवेदन अवधि वर्ष :-</span>

                                                <span class="fw-bold">2023-2024</span>
                                            </div>
                                            <div class="col text-end Fhead">
                                                <span class="fw-bold">आवेदन दिनाँक:-</span>
                                                <span class="fw-bold">09-03-2024</span>
                                            </div>
                                        </div>
                                        <div class="row" style="margin-top: 4rem ">
                                            <div class="table-responsive">
                                                <table class="table table-bordered ">
                                                    <tbody>
                                                        <tr class="text-center mfont">
                                                            <th>Employee Name/Code / Husband Name :</th>
                                                            <td>Ashok Patidar-AU8336</td>
                                                            <th>Designation </th>
                                                            <td>Teacher SS1-Hindi</td>
                                                            <th>District :</th>
                                                            <td>Bhopal</td>
                                                        </tr>
                                                        <tr class="text-center mfont">

                                                            <th>Bolck :</th>
                                                            <td>Berasia </td>
                                                            <th>Sankul Code/Name:</th>
                                                            <td></td>
                                                            <th>Scholr No./Code :</th>
                                                            <td></td>
                                                        </tr>
                                                        <tr class="text-center mfont">
                                                            <th>Punishment Type :</th>
                                                            <td>वेतन-वृद्धि रोकना</td>
                                                            <th>From Date </th>
                                                            <td>25/07/2024</td>
                                                            <th>To Date :</th>
                                                            <td>29/07/2024</td>
                                                        </tr>
                                                        <tr class="text-center mfont">
                                                            <th>Order No  :</th>
                                                            <td>33/02/2024</td>
                                                            <th>Order Date:</th>
                                                            <td>29/07/2024</td>
                                                            <th>Remark :</th>
                                                            <td></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="row mt-3" id="sign">
                                            <div class="col-md-12 text-end">
                                                <h6><b>अधिकारी हस्ताक्षर
                                                        <br />
                                                    ........................</b></h6>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12 mt-3">
                                                <p class="font-15 text-justify text-danger">
                                                    आज दिनांक  06/08/24  को कर्मचारी द्वारा प्राप्त  Unique Id No. AB2248 को विभाग  द्वारा संबधित कर्मचारी द्वारा  संबंधित कर्मचारी पर कार्यवाही की जा रही हैं /
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-primary" onclick="printModalContent('staticBackdrop')">Print</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>

    <%--qijwfefk--%>
    <%--<div class="modal fade show" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-modal="true" role="dialog" style="display: block; padding-left: 0px;">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title w-100 text-center"></h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>

                                <div class="row text-center">
                                    


                                    <div class="col-sm-12 text-center">
                                        <br>
                                        <h3><strong><b>Directorate of Public Instructions</b></strong></h3>
                                        <h4><strong><b>मध्य प्रदेश शासन</b></strong></h4>
                                        <h4><strong><b>जिला:- भोपल</b></strong></h4>
                                    </div>
                                    
                                </div>
                                <hr style="height: 3px; border-width: 10px; color: black; background-color: black">
                                <div class="row">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="">
                                                <div class="">
                                                    <div class="row">
                                                        <div class="col text-start">
                                                            <span class="fw-bold">वार्षिक प्रतिवेदन अवधि वर्ष :-</span>

                                                            <span class="fw-bold">2023-2024</span>
                                                        </div>

                                                        <div class="col text-end">
                                                            <span class="fw-bold">आवेदन दिनाँक:-</span>
                                                            <span class="fw-bold">09-03-2024</span>
                                                        </div>
                                                        <div class="col-md-12 mb-5">
                                                            <h4 class="text-center mt-3 font-bold"><u>: :Utilization Certificate  : :</u></h4>
                                                            <h6 class="text-center mt-2 font-bold"><u>: : उपयोगिता प्रमाणपत्र : :</u></h6>
                                                        </div>
                                                        <table class="table table-bordered modal-table table-st fs-5">
                                                            <tbody><tr class="text-center">

                                                                <th>OIS Code<br>
                                                                    OIS कोड</th>
                                                                <td class="text-center ">Delhi Public School_44561</td>
                                                                <th>Project Code<br>
                                                                    परियोजना क्रमांक</th>
                                                                <td class="text-center ">P00019</td>
                                                            </tr>
                                                            <tr class="text-center">
                                                                <th>Project Date<br>
                                                                    परियोजना दिनांक</th>
                                                                <td class="text-center ">22/05/2023</td>

                                                                <th>Work Category<br>
                                                                    कार्य की श्रेणी</th>
                                                                <td class="text-center ">स्कूल मरम्मत/निर्माण</td>
                                                            </tr>
                                                            <tr class="text-center">
                                                                <th>Milestone<br>
                                                                    माइल स्टोन</th>
                                                                <td>Foundation</td>
                                                                <th>Installment<br>
                                                                    किस्त</th>
                                                                <td>1st Installment</td>
                                                            </tr>
                                                            <tr class="text-center">
                                                                <th>Work Subcategory<br>
                                                                    कार्य उपश्रेणी</th>
                                                                <td class="text-center ">इमारत मरम्मत</td>
                                                                <th>Approved Amount(In Rs)<br>
                                                                    स्वीकृत राशि</th>
                                                                <td class="text-center ">60000</td>
                                                            </tr>
                                                            <tr class="text-center">
                                                                <th>1st Installment Utilization Amount<br>
                                                                    पहली किस्त उपयोग राशि</th>
                                                                <td>5000</td>
                                                                <th>Remaining Amount<br>
                                                                    बाकी अमाउंट</th>
                                                                <td>55000</td>

                                                            </tr>
                                                            
                                                        </tbody></table>
                                                    </div>



                                                    <div class="row ms-0 me-0">
                                                        <div class="col-12">

                                                            <h4 class="text-center font-bold">: : <u>Self Verified/
स्वयं सत्यापित</u> : :</h4>
                                                        </div>

                                                        <div class="col-12">
                                                            <p class="font-15 text-justify text-danger">
                                                                Certified That I Have Personally Verified That The Work For Which The Grant-In-Aid Was Sanctioned Has Been Duly Completed And That I Have Made The Following Checks To See That The Money Is Actually Utilized For The Purpose For Which It Was Approved.<br>
                                                                प्रमाणित किया जाता है कि मेरे द्वारा स्वयं सत्यापित किया गया हैं की  जिस कार्य के लिए अनुदान सहायता स्वीकृत की गई थी, उसे विधिवत पूरा किया गया है, और मैंने यह देखने के लिए निम्नलिखित जांच की है कि पैसा वास्तव में उसी उद्देश्य के लिए उपयोग किया गया था जिसके लिए इसे मंजूरी दी गई थी।

                                                            </p>
                                                        </div>
                                                        <div class="col-md-7"></div>

                                                        <div class="col-md-5 justify-content-end">
                                                            <div class="text-end d-flex flex-column gap-3 justify-content-end">
                                                                <h6><b>अधिकारी एवं पदेन प्रबन्ध संचालक........................</b></h6>
                                                                <h6><b>स्कूल शिक्षा विभाग..........................................</b></h6>
                                                                <h6><b>Bhopal- ( BPL ) (म.प्र.)
......................................</b></h6>
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <br>
                                <br>
                                <br>


                            </fieldset>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-primary" onclick="printModalContent('staticBackdrop')">Print</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                        </div>
                    </div>
                </div>


            </div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            var x = document.getElementById("show");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
</asp:Content>
