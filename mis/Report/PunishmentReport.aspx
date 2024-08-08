<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PunishmentReport.aspx.cs" Inherits="mis_Report_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .mfont, .Fhead {
            font-size: 125%;
        }

        #show {
            display: none;
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
                                        <div class="row" style="margin-top: 4rem">
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
