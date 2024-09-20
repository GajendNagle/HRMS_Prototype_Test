<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_RoomHostelChange.aspx.cs" Inherits="mis_HostelManagment_Rpt_RoomHostelChange" %>

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
                        <li class="breadcrumb-item">Room/Hostel Change Report</li>
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
                            Room/Hostel Change Report / कमरा/छात्रावास परिवर्तन रिपोर्ट
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
                <legend>Room/Hostel Change Report / कमरा/छात्रावास परिवर्तन रिपोर्ट</legend>
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
                            Select Office Name<br />
                            कार्यालय नाम का चयन करें<span style="color: red">*</span></label>
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
                            Select Hostel Name<br />
                            छात्रावास नाम का चयन करें<span style="color: red">*</span></label>
                        <select multiple="" multiselect-search="true" multiselect-select-all="true" multiselect-max-items="0" class="form-select" id="DestinationDistrictId" name="DestinationDistrictId">
                            <option value="3">Bright Star Hostel</option>
                            <option value="3">Academic Boys Hostel</option>
                            <option value="3">Balaji Girls Hostel</option>
                        </select>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <label>
                            Select Type<br />
                            प्रकार का चयन करें<span style="color: red">*</span></label>
                        <select class="form-control select2" id="ddlType">
                            <option>Select</option>
                            <option value="1">Room Change</option>
                            <option value="2">Hostel Change</option>
                        </select>
                    </div>

                    <div class="col-md-4">
                        <label>
                            Select From Date<br />
                            प्रारंभिक दिनांक का चयन करें<span style="color: red">*</span></label>
                        <input type="date" class="form-control" />
                    </div>
                    <div class="col-md-4">
                        <label>
                            Select To Date<br />
                            अंतिम दिनांक का चयन करें<span style="color: red">*</span></label>
                        <input type="date" class="form-control" />
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="showHideRemarkView()">Search</button>
                        <a href="Rpt_RoomHostelChange.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
                                        <th>Hostel Name<br />
                                            छात्रावास का नाम
                                        </th>
                                        <th>Warden Name<br />
                                            वार्डन का नाम</th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Student Name<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Apply Date
                                            <br />
                                            आवेदन की तिथि
                                        </th>
                                        <th>Approval Date
                                            <br />
                                            स्वीकृति तिथि
                                        </th>
                                        <th>Old Room No. 
                                            <br />
                                            पुराना कमरा नंबर 
                                        </th>
                                        <th>New Room No.
                                            <br />
                                            नया कमरा नंबर
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Balaji Girls Hostel</td>
                                        <td>Rekha Shrivastav</td>
                                        <td>8905678934</td>
                                        <td>Smriti Sahu</td>
                                        <td>11/09/2020</td>
                                        <td>09/02/2021</td>
                                        <td>102</td>
                                        <td>203</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="table2" style="display: none;">
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
                                        <th>Hostel Name<br />
                                            छात्रावास का नाम
                                        </th>
                                        <th>Warden Name<br />
                                            वार्डन का नाम</th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Student Name<br />
                                            विद्यार्थी का नाम</th>
                                        <th>Apply Date
                                <br />
                                            आवेदन की तिथि
                                        </th>
                                        <th>Approval Date
                                <br />
                                            स्वीकृति तिथि
                                        </th>
                                        <th>Hostel Name Allocate
                                <br />
                                            छात्रावास का नाम आवंटित करें
                                        </th>
                                        <th>Room No.
                                <br />
                                            कमरा नंबर
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Balaji Girls Hostel</td>
                                        <td>Rekha Shrivastav</td>
                                        <td>8905678934</td>
                                        <td>Smriti Sahu</td>
                                        <td>11/09/2020</td>
                                        <td>09/02/2021</td>
                                        <td>Bright Star Hostel</td>
                                        <td>210</td>
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

    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlType = document.getElementById('ddlType');

            if (ddlType.value == "1") {
                //remarkView.style.display = "initial";
                table1.style.display = "block";
                table2.style.display = "none";
            }
            else if (ddlType.value == "2") {
                table2.style.display = "block";
                table1.style.display = "none";
            }
            else {
                table1.style.display = "none";
                table2.style.display = "none";
            }
        }
    </script>
</asp:Content>

