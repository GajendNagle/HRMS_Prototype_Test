<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_HostelRegistration.aspx.cs" Inherits="mis_HostelManagment_Rpt_HostelRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <script src="https://schooledutest.tserver.co.in/assets/js/multiselect-dropdown.js"></script>

    <style>
        .placeholder {
            background-color: transparent;
            opacity: 1;
        }

        /* th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }*/

        #workdescription1 {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
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
                        <li class="breadcrumb-item">Hostel Registration Report</li>
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
                            Hostel Registration Report / छात्रावास पंजीकरण रिपोर्ट
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
                <legend>Hostel Registration Report / छात्रावास पंजीकरण रिपोर्ट</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Office Type<br />
                            कार्यालय प्रकार का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>School</option>
                            <option>Office</option>
                            <option>Institude</option>
                        </select>
                    </div>

                    <div class="col-md-3">
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

                    <div class="col-md-3">
                        <label>
                            Select Office Name<br />
                            कार्यालय नाम का चयन करें<span style="color: red">*</span></label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option value="3">GOVT HSS MAHARANA PRATAP</option>
                            <option value="3">GOVT HSS BOYS, KOTRA SULTANABAD</option>
                            <option value="3">GOVT HSS EX, SUBHASH,SHIVAJI</option>
                            <option value="3">GOVT HSS KHAJURI KALAN</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Category<br />
                            श्रेणी का चयन करें<span style="color: red">*</span></label>
                        <select multiple="" multiselect-search="true" multiselect-select-all="true" multiselect-max-items="0" class="form-select" id="DestinationDistrictId1" name="DestinationDistrictId">
                            <option>Select</option>
                            <option>St</option>
                            <option>Sc</option>
                            <option>Obc</option>
                            <option>Gen</option>
                        </select>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Mess Facility<br />
                            मेस सुविधा का चयन करें<span style="color: red">*</span></label>
                        <select class="form-control select2" id="ddlMess">
                            <option value="1">Both</option>
                            <option value="2">Available</option>
                            <option value="3">Not Available</option>
                        </select>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="showHideRemarkView()">Search</button>
                        <a href="Rpt_HostelRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
                                        <th>Category<br />
                                            श्रेणी
                                        </th>
                                        <th>Hostel Name<br />
                                            छात्रावास का नाम </th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Mess Facility
                                <br />
                                            मेस सुविधा
                                        </th>
                                        <th>No. Of Rooms<br />
                                            कमरों की संख्या
                                        </th>
                                        <th>Action<br />
                                            कार्यवाही</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Girls School</td>
                                        <td>Obc</td>
                                        <td>Jagrti Hostel</td>
                                        <td>7823456790</td>
                                        <td>Available</td>
                                        <td>150</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></span></td>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Co-Education</td>
                                        <td>Obc</td>
                                        <td>Kanha Shri Boys and Girls Hostel</td>
                                        <td>7823456790</td>
                                        <td>Not Available</td>
                                        <td>150</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></span></td>
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
                                        <th>Hostel Type
                                            <br />
                                            छात्रावास का प्रकार
                                        </th>
                                        <th>Category<br />
                                            श्रेणी
                                        </th>
                                        <th>Hostel Name<br />
                                            छात्रावास का नाम </th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Mess Facility
                                            <br />
                                            मेस सुविधा
                                        </th>
                                        <th>No. Of Room<br />
                                            कमरों की संख्या
                                        </th>
                                        <th>Action<br />
                                            कार्यवाही</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Boys School</td>
                                        <td>Obc</td>
                                        <td>Blis Hostel</td>
                                        <td>7823456790</td>
                                        <td>Available</td>
                                        <td>150</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></span></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table3" style="display: none;">
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
                                        <th>Category<br />
                                            श्रेणी
                                        </th>
                                        <th>Hostel Name<br />
                                            छात्रावास का नाम </th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Mess Facility
                                <br />
                                            मेस सुविधा
                                        </th>
                                        <th>No. Of Room<br />
                                            कमरों की संख्या
                                        </th>
                                        <th>Action<br />
                                            कार्यवाही</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Boys School</td>
                                        <td>Obc</td>
                                        <td>Bliss hostel</td>
                                        <td>7823456790</td>
                                        <td>Not Available</td>
                                        <td>150</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg3"></i></span></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <div class="modal bs-example-modal-lg3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV3">
                            <h4 class="modal-title" id="myLargeModalLabel3">Hostel Registration / छात्रावास पंजीकरण</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Hostel Registration / छात्रावास पंजीकरण</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>
                                                    Select Hostel Type<br />
                                                    छात्रावास प्रकार का चयन करें<span style="color: red;">*</span></label>
                                                <select class="form-control select2" disabled="disabled">
                                                    <option selected="selected" value="0">--Select --</option>
                                                    <option value="1" selected="selected">Girls </option>
                                                    <option value="2">Boys </option>
                                                    <option value="3">Combine </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Hostel Name<br />
                                                छात्रावास का नाम दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="Kanha Shri Boys and Girls Hostel" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select Category<br />
                                                वर्ग का चयन करें<span style="color: red;">*</span></label>
                                            <select class="form-control select2" disabled="disabled">
                                                <option selected="selected" value="0">-Select-</option>
                                                <option value="1">General </option>
                                                <option value="2">OBC </option>
                                                <option value="3" selected="selected">SC </option>
                                                <option value="4">ST </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Total Number of Rooms<br />
                                                कक्ष की कुल संख्या दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="200" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Intake Capacity of Students<br />
                                                छात्रों की प्रवेश क्षमता दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="100" readonly="readonly"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Hostel Address<br />
                                                छात्रावास पता दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="Kanha Shri Boys and Girls Hostel near by Shivaji Nagar" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select Mess Facility Availability
                    <br />
                                                मेस सुविधा उपलब्धता का चयन करें<span style="color: red;">*</span></label>
                                            <select class="form-control select2" disabled="disabled">
                                                <option value="1" selected="selected">Yes</option>
                                                <option value="2">No</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Mess Fees<br />
                                                मेस शुल्क दर्ज करें
                                            </label>
                                            <input type="text" class="form-control" value="3000" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Applicable From<br />
                                                दिनांक से लागू
                                            </label>
                                            <input name="ename" id="DOB" type="date" class="form-control" autocomplete="off" value="2021-01-05" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Police Station Name<br />
                                                पुलिस स्टेशन का नाम दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="ASHOKA GARDEN Police Station" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Incharge Name<br />
                                                प्रभारी का नाम दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="Devendra Thakur" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Incharge Contact No.<br />
                                                प्रभारी संपर्क नंबर दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="9176874356" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Police station Full Address<br />
                                                पुलिस स्टेशन पता दर्ज करें दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="ASHOKA GARDEN Police Station near by Arera Colony" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <hr />
                                        <div class="form-group">
                                            <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" data-bs-dismiss="modal">Save</button>
                                            <a href="Rpt_HostelRegistration.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                            <button type="button" class="btn btn-outline-info w-lg btn-border">Print Card</button>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlMess = document.getElementById('ddlMess');
            //var remarkView = document.getElementById("RemarkView");

            if (ddlMess.value == "1") {
                //remarkView.style.display = "initial";
                table1.style.display = "block";
                table2.style.display = "none";
                table3.style.display = "none";
            }
            else if (ddlMess.value == "2") {
                table2.style.display = "block";
                table1.style.display = "none";
                table3.style.display = "none";
            }
            else if (ddlMess.value == "3") {
                table3.style.display = "block";
                table1.style.display = "none";
                table2.style.display = "none";
            }
            else {
                table1.style.display = "none";
                table2.style.display = "none";
            }
        }
    </script>
</asp:Content>

