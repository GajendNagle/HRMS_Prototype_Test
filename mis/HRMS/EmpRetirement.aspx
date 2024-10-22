<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmpRetirement.aspx.cs" Inherits="mis_HRMS_EmpRetirement" %>

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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">Employee Retirement</li>
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
                            Employee Retirement / कर्मचारी सेवानिवृत्ति
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
                <legend>Employee Retirement / कर्मचारी सेवानिवृत्ति</legend>

                <div class="row align-items-end">

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Academic year<br />
                                शैक्षणिक वर्ष का चयन करें <span style="color: red">*</span></label>
                            <input type="text" class="form-control" value="2024-25" readonly="readonly" />

                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Month<br />
                                माह का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlSelect">
                                <option>Select</option>
                                <option value="1">January</option>
                                <option value="2">February</option>
                                <option value="3">March</option>
                                <option value="4">April</option>
                                <option>May</option>
                                <option>June</option>
                                <option>July</option>
                                <option>August</option>
                            </select>
                        </div>
                    </div>

                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="showHideRemarkView()">Search</button>
                            <a href="EmpRetirement.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none;">
                <legend>Details Of January Month / जनवरी माह का विवरण</legend>
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
                                        <th>Academic Year/<br />
                                            शैक्षणिक वर्ष</th>
                                        <th>Employee Name/Code<br />
                                            कर्मचारी का नाम/कोड</th>
                                        <th>Employee OIS/Code
                                            <br />
                                            कर्मचारी OIS/कोड</th>
                                        <th>Panel/<br />
                                            पैनल
                                        </th>
                                        <th>DDO/Sankul Name-Code/
    <br />
                                            डीडीओ/संकुल नाम-कोड
                                        </th>
                                        <th>Employee Date Of Birth/
    <br />
                                            कर्मचारी की जन्म तिथि</th>
                                        <th>First Joining Date/
                               <br />
                                            प्रथम ज्वाइनिंग तिथि</th>
                                        <th>Retirement Date/
                               <br />
                                            सेवानिवृत्ति तिथि</th>
                                        <th>Action/
                                           <br />
                                            कार्येवाही
                                        </th>

                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>2024-25</td>
                                    <td>Ankit Verma-E00587</td>
                                    <td>B.HSS BISTAN-2380245356</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>02-06-1940</td>
                                    <td>09-07-1962</td>
                                    <td>31-01-2024</td>
                                    <td><a class="btn btn-outline-info" style="white-space: nowrap" data-bs-toggle="modal" data-bs-target="#examplesModal">Retirement Or Separation</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2024-25</td>
                                    <td>Ankit Verma-E00231</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>02-06-1940</td>
                                    <td>04-07-1962</td>
                                    <td>30-01-2024</td>
                                    <td><a class="btn btn-outline-info" style="white-space: nowrap" data-bs-toggle="modal" data-bs-target="#examplesModal">Retirement Or Separation</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table2" style="display: none;">
                <legend>Details OF February Month / फरवरी माह का विवरण</legend>
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
                                        <th>Academic Year/<br />
                                            शैक्षणिक वर्ष</th>
                                        <th>Employee Name/Code<br />
                                            कर्मचारी का नाम/कोड</th>
                                        <th>Employee OIS/Code
                                        <br />
                                            कर्मचारी OIS/कोड</th>
                                        <th>Panel/<br />
                                            पैनल
                                        </th>
                                        <th>DDO/Sankul Name-Code/
                                            <br />
                                            डीडीओ/संकुल नाम-कोड
                                        </th>
                                        <th>Employee Date Of Birth/
                                            <br />
                                            कर्मचारी की जन्म तिथि</th>
                                        <th>First Joining Date/
                           <br />
                                            प्रथम ज्वाइनिंग तिथि</th>
                                        <th>Retirement Date/
                           <br />
                                            सेवानिवृत्ति तिथि</th>
                                        <th>Action/
                                       <br />
                                            कार्येवाही
                                        </th>

                                    </tr>
                                </thead>

                                <tr>
                                    <td>3</td>
                                    <td>2024-25</td>
                                    <td>Saksham Modi-E00549</td>
                                    <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>02-03-1941</td>
                                    <td>05-12-1962</td>
                                    <td>29-02-2024</td>
                                    <td><a class="btn btn-outline-info" style="white-space: nowrap" data-bs-toggle="modal" data-bs-target="#examplesModal">Retirement Or Separation</a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>2024-25</td>
                                    <td>Nirmala Ahirwar-E00897</td>
                                    <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>01-05-1941</td>
                                    <td>11-07-1962</td>
                                    <td>28-02-2024</td>
                                    <td><a class="btn btn-outline-info" style="white-space: nowrap" data-bs-toggle="modal" data-bs-target="#examplesModal">Retirement Or Separation</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table3" style="display: none;">
                <legend>Details OF March Month / मार्च माह का विवरण</legend>
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
                                        <th>Academic Year/<br />
                                            शैक्षणिक वर्ष</th>
                                        <th>Employee Name/Code<br />
                                            कर्मचारी का नाम/कोड</th>
                                        <th>Employee OIS/Code
                                        <br />
                                            कर्मचारी OIS/कोड</th>
                                        <th>Panel/<br />
                                            पैनल
                                        </th>
                                        <th>DDO/Sankul Name-Code/
                                            <br />
                                            डीडीओ/संकुल नाम-कोड
                                        </th>
                                        <th>Employee Date Of Birth/
                                            <br />
                                            कर्मचारी की जन्म तिथि</th>
                                        <th>First Joining Date/
                           <br />
                                            प्रथम ज्वाइनिंग तिथि</th>
                                        <th>Retirement Date/
                           <br />
                                            सेवानिवृत्ति तिथि</th>
                                        <th>Action/
                                       <br />
                                            कार्येवाही
                                        </th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>5</td>
                                    <td>2024-25</td>
                                    <td>E00798-Seema Yadav</td>
                                    <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>08-12-1940</td>
                                    <td>05-02-1963</td>
                                    <td>31-03-2024</td>
                                    <td><a class="btn btn-outline-info" style="white-space: nowrap" data-bs-toggle="modal" data-bs-target="#examplesModal">Retirement Or Separation</a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>2024-25</td>
                                    <td>E00160-Akhilesh Verma</td>
                                    <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>04-04-1942</td>
                                    <td>07-07-1962</td>
                                    <td>31-03-2024</td>
                                    <td><a class="btn btn-outline-info" style="white-space: nowrap" data-bs-toggle="modal" data-bs-target="#examplesModal">Retirement Or Separation</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table4" style="display: none;">
                <legend>Details OF April Month/ अप्रैल माह का विवरण</legend>
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
                                        <th>Academic Year/<br />
                                            शैक्षणिक वर्ष</th>
                                        <th>Employee Name/Code<br />
                                            कर्मचारी का नाम/कोड</th>
                                        <th>Employee OIS/Code
                                        <br />
                                            कर्मचारी OIS/कोड</th>
                                        <th>Panel/<br />
                                            पैनल
                                        </th>
                                        <th>DDO/Sankul Name-Code/
                                            <br />
                                            डीडीओ/संकुल नाम-कोड
                                        </th>
                                        <th>Employee Date Of Birth/
                                            <br />
                                            कर्मचारी की जन्म तिथि</th>
                                        <th>First Joining Date/
                           <br />
                                            प्रथम ज्वाइनिंग तिथि</th>
                                        <th>Retirement Date/
                           <br />
                                            सेवानिवृत्ति तिथि</th>
                                        <th>Action/
                                       <br />
                                            कार्येवाही
                                        </th>

                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>2024</td>
                                    <td>E00902-Vishal Saksena</td>
                                    <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>09-10-1940</td>
                                    <td>11-12-1963</td>
                                    <td>31-04-2024</td>
                                    <td><a class="btn btn-outline-info" style="white-space: nowrap" data-bs-toggle="modal" data-bs-target="#examplesModal">Retirement Or Separation</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2024</td>
                                    <td>E00231-Ankit Verma</td>
                                    <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>02-06-1942</td>
                                    <td>15-07-1962</td>
                                    <td>31-04-2024</td>
                                    <td><a class="btn btn-outline-info" style="white-space: nowrap" data-bs-toggle="modal" data-bs-target="#examplesModal">Retirement Or Separation</a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>2024</td>
                                    <td>E00231-Ankit Verma</td>
                                    <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>02-06-1942</td>
                                    <td>08-07-1962</td>
                                    <td>30-04-2024</td>
                                    <td><a class="btn btn-outline-info" style="white-space: nowrap" data-bs-toggle="modal" data-bs-target="#examplesModal">Retirement Or Separation</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="modal fade" id="examplesModal" tabindex="-1" aria-labelledby="examplesModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl ">
            <div class="modal-content">
                <div class="modal-header">

                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Generate List / जनरेट सूची</legend>

                        <div class="row align-items-end">

                            <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                <div class="form-group">
                                    <label>
                                        Select Employee Retirement & Saperation Type /
                               <br />
                                        कर्मचारी सेवानिवृत्ति और विभाजन प्रकार का चयन करें
                               <span style="color: red">*</span></label>
                                    <select class="form-control select2" id="OIS" onchange="SeparationType()">
                                        <option>Select</option>
                                        <option value="1">Retirement</option>
                                        <option value="2">Deputation</option>
                                        <option value="3">Termination</option>
                                        <option value="4">Voluntary Retirement</option>
                                        <option value="5">Death</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3 mt-3" id="DOR" style="display: none">
                                <div class="form-group">
                                    <label>
                                        Date Of Retirement /
                                        <br />
                                        सेवानिवृत्ति की दिनांक
                                    </label>
                                    <input type="text" class="form-control" placeholder="2024-12-31" autocomplete="off" readonly />

                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3 mt-3" id="DOR1" style="display: none">
                                <div class="form-group">
                                    <label>
                                        Date Of Deputation From /
                                   <br />
                                        प्रतिनियुक्ति की दिनांक 
                                    </label>
                                    <input type="date" class="form-control" />

                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3 mt-3" id="DOR2" style="display: none">
                                <div class="form-group">
                                    <label>
                                        Date Of Termination From  /
        <br />
                                        बरखास्त की दिनांक
                                    </label>
                                    <input type="date" class="form-control" />

                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3 mt-3" id="DOR3" style="display: none">
                                <div class="form-group">
                                    <label>
                                        Date Of Voluntary Retirement From /
        <br />
                                        स्वैच्छिक सेवानिवृत्ति की दिनांक
                                    </label>
                                    <input type="date" class="form-control" />

                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3 mt-3" id="DOR4" style="display: none">
                                <div class="form-group">
                                    <label>
                                        Date oF Death /
        <br />
                                        मृत्यु की दिनांक
                                    </label>
                                    <input type="date" class="form-control" />

                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                <div class="form-group">
                                    <label>
                                        Enter Notesheet Order No. /
                               <br />
                                        नोटशीट आदेश संख्या का दर्ज करें<span style="color: red">*</span>
                                    </label>
                                    <input id="NotesheetOrderNo." placeholder="Notesheet Order No." type="number" class="form-control" />

                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                <div class="form-group">
                                    <label>
                                        Select Notesheet Order Date  / 

                               <br />
                                        नोटशीट आदेश की तारीख का चयन करें<span style="color: red">*</span>
                                    </label>
                                    <input id="NotesheetOrderDate" type="date" class="form-control" />

                                </div>
                            </div>

                            <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                <div class="form-group">
                                    <label>
                                        Upload Notesheet Order / 
                               <br />
                                        नोटशीट ऑर्डर अपलोड करें<span style="color: red">*</span>
                                    </label>
                                    <input id="NotesheetOrderUpload" type="file" class="form-control" />

                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12 ">
                                <button type="button" class="btn btn-success  btn-border Alert-Confirmation" data-bs-dismiss="modal">Save</button>
                                <a href="EmpRetirement.aspx" class="btn btn-outline-danger  w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </fieldset>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlSelect = document.getElementById('ddlSelect');
            //var remarkView = document.getElementById("RemarkView");

            if (ddlSelect.value == "1") {
                //remarkView.style.display = "initial";
                table1.style.display = "block";
                table2.style.display = "none";
                table3.style.display = "none";
                table4.style.display = "none";
            }
            else if (ddlSelect.value == "2") {
                table2.style.display = "block";
                table1.style.display = "none";
                table4.style.display = "none";
                table3.style.display = "none";
            }

            else if (ddlSelect.value == "3") {
                table3.style.display = "block";
                table1.style.display = "none";
                table2.style.display = "none";
                table4.style.display = "none";
            }

            else if (ddlSelect.value == "4") {
                table4.style.display = "block";
                table1.style.display = "none";
                table2.style.display = "none";
                table3.style.display = "none";
            }
            else {
                table1.style.display = "none";
                table2.style.display = "none";
                table3.style.display = "none";
                table4.style.display = "none";
            }
        }
    </script>

    <script>
        function SeparationType() {
            var ForwordTo = document.getElementById("OIS").value;
            if (ForwordTo == "1") {
                document.getElementById('DOR').style.display = "block";
                document.getElementById('DOR1').style.display = "none";
                document.getElementById('DOR2').style.display = "none";
                document.getElementById('DOR3').style.display = "none";
                document.getElementById('DOR4').style.display = "none";
            }
            else if (ForwordTo == "2") {

                document.getElementById('DOR1').style.display = "block";
                document.getElementById('DOR').style.display = "none";
                document.getElementById('DOR2').style.display = "none";
                document.getElementById('DOR3').style.display = "none";
                document.getElementById('DOR4').style.display = "none";
            }
            else if (ForwordTo == "3") {

                document.getElementById('DOR2').style.display = "block";
                document.getElementById('DOR1').style.display = "none";
                document.getElementById('DOR').style.display = "none";
                document.getElementById('DOR3').style.display = "none";
                document.getElementById('DOR4').style.display = "none";
            } else if (ForwordTo == "4") {

                document.getElementById('DOR3').style.display = "block";
                document.getElementById('DOR').style.display = "none";
                document.getElementById('DOR1').style.display = "none";
                document.getElementById('DOR2').style.display = "none";
                document.getElementById('DOR4').style.display = "none";
            } else if (ForwordTo == "5") {

                document.getElementById('DOR4').style.display = "block";
                document.getElementById('DOR').style.display = "none";
                document.getElementById('DOR1').style.display = "none";
                document.getElementById('DOR2').style.display = "none";
                document.getElementById('DOR3').style.display = "none";
            }
            else {
                document.getElementById('DOR').style.display = "none";
                document.getElementById('DOR1').style.display = "none";
                document.getElementById('DOR2').style.display = "none";
                document.getElementById('DOR3').style.display = "none";
                document.getElementById('DOR4').style.display = "none";
            }
        }
    </script>
</asp:Content>

