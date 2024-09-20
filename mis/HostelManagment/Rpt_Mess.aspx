<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_Mess.aspx.cs" Inherits="mis_HostelManagment_Rpt_Mess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <script src="https://schooledutest.tserver.co.in/assets/js/multiselect-dropdown.js"></script>

    <style>
        .placeholder {
            background-color: transparent;
            opacity: 1;
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
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Hostel Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HostelReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HostelManagement')" aria-expanded="false"><span>Hostel Management Report</span></a>
                        </li>
                        <li class="breadcrumb-item">Mess Report</li>
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
                            Mess Report / मेस रिपोर्ट
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
                <legend>Mess Report / मेस रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <label>
                            Select Office Type<br />
                            कार्यालय प्रकार का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>School</option>
                            <option>Institude</option>
                        </select>
                    </div>

                    <div class="col-md-4">
                        <label>
                            Select School Name<br />
                            स्कूल नाम का चयन करें<span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option value="3">GOVT HSS MAHARANA PRATAP(23320400117)</option>
                            <option value="3">GOVT HSS BOYS, KOTRA SULTANABAD(23320303134)</option>
                            <option value="3">GOVT HSS EX, SUBHASH,SHIVAJI(23320212709)</option>
                            <option value="3">GOVT HSS KHAJURI KALAN(23320110008)</option>
                        </select>
                    </div>

                    <div class="col-md-4">
                        <label>
                            Select Hostel Type<br />
                            छात्रावास प्रकार का चयन करें<span style="color: red">*</span>
                        </label>
                        <select multiple="" multiselect-search="true" multiselect-select-all="true" multiselect-max-items="0" class="form-select" id="DestinationDistrictId" name="DestinationDistrictId">
                            <option>Boys School(01)</option>
                            <option>Girls School(02)</option>
                            <option>Co-Education</option>
                        </select>
                    </div>
                    </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Hostel Name<br />
                            छात्रावास नाम का चयन करें<span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option value="3">All</option>
                            <option value="3">Bright Star Hostel</option>
                            <option value="3">Academic Boys Hostel</option>
                            <option value="3">Balaji Girls Hostel</option>
                        </select>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display = 'block'">Search</button>
                        <a href="Rpt_Mess.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none;">
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
                                        <th>Hostel Type
                    <br />
                                            छात्रावास का प्रकार
                                        </th>
                                        <th>Hostel Name<br />
                                            छात्रावास का नाम
                                        </th>
                                        <th>Mess Fees<br />
                                            मेस शुल्क</th>
                                        <th>Student Name<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Class<br />
                                            कक्षा</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Girls School</td>
                                        <td>Balaji Girls Hostel</td>
                                        <td>5000</td>
                                        <td>Rekha Yadav</td>
                                        <td>7823456790</td>
                                        <td>12th</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

