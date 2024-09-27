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
             <%--       <div class="col-md-4">
                        <div class="form-group">
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
                    </div>--%>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Division<br />
                                संभाग का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlDivision">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal(भोपाल)</option>
                                <option value="Gwalior">Gwalior(ग्वालियर)</option>
                                <option value="Narmadapuram">Narmadapuram(नर्मदापुरम)</option>
                                <option value="Indore">Indore(इंदौर)</option>
                                <option value="Jabalpur">Jabalpur(जबलपुर)</option>
                                <option value="Rewa">Rewa(रीवा)</option>
                                <option value="Sagar">Sagar(सागर)</option>
                                <option value="Shahdol">Shahdol(शाहडोल)</option>
                                <option value="Ujjain">Ujjain(उज्जैन)</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select District<br />
                                जिले का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlDistrict">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal(भोपाल)</option>
                                <option value="Raisen">Raisen(रायसेन)</option>
                                <option value="Rajgarh">Rajgarh(राजगढ़)</option>
                                <option value="Sehore">Sehore(सीहोर)</option>
                                <option value="Vidisha">Vidisha(विदिशा)</option>
                                <option value="Ashoknagar">Ashoknagar(अशोकनगर)</option>
                                <option value="Shivpuri">Shivpuri(शिवपुरी)</option>
                                <option value="Datia">Datia(दतिया)</option>
                                <option value="Guna">Guna(गुना)</option>
                                <option value="Gwalior">Gwalior(ग्वालियर)</option>
                                <option value="Harda">Harda(हरदा)</option>
                                <option value="Hoshangabad">Hoshangabad(होशंगाबाद)</option>
                                <option value="Betul">Betul(बेतुल)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Block<br />
                                विकासखंड का नाम चुनें <span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlBlock">
                                <option value="--Select--">--Select--</option>
                                <option value="Agar">Agar(आगर)</option>
                                <option value="Barod">Barod(बड़ौद)</option>
                                <option value="Nalkheda">Nalkheda(नलखेड़ा)</option>
                                <option value="Susner">Susner(सुसनेर)</option>
                                <option value="Alirajpur">Alirajpur(आलीराजपुर)</option>
                                <option value="Bhabra">Bhabra(भाबरा)</option>
                                <option value="Katthiwara">Katthiwara(कट्ठीवाड़ा)</option>
                                <option value="Sondwa">Sondwa(सोंडवा)</option>
                                <option value="Udaygarh">Udaygarh(उदयगढ़)</option>
                                <option value="Jobat">Jobat(जोबट)</option>
                                <option value="Anuppur">Anuppur(अनुपपुर)</option>
                                <option value="Jaithari">Jaithari(जैतहरी)</option>
                                <option value="Kotma">Kotma(कोतमा)</option>
                            </select>
                        </div>
                    </div>

                        <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select  Sankul
              <br />
                                संकुल चुनें<span style="color: red">*</span></label>
                            <select class="form-select select2">
                                <option value="--Select--">--Select--</option>

                                <option value="--Select--">0512003001 - MAHARANA PRATAP, JAHANGIRABAD, BHOPAL, PRINCIPAL, GOVT. HSS</option>
                                <option value="--Select--">0512003007 - M.L.B. BHEL, BARKHEDA, BHOPAL, PRINCIPAL, GOVT. HSS</option>
                                <option value="--Select--">0502003027 - PHANDA, PRINCIPAL, GOVT. HS</option>
                                <option value="--Select--">0532003003 - GUNGA, BERASIA, PRINCIPAL, GOVT. HSS</option>
                                <option value="--Select--">2912003045 - BADI- Govt. Girls H.S.S BADI</option>
                                <option value="--Select--">2922003023 - BEGUMGANJ- Girls H.S.S. BEGUMGANJ</option>
                                <option value="--Select--">2932003031 - GAIRATGANJ Govt. Boys H.S.S. GAIRATGANJ</option>
                                <option value="--Select--">2942003041 - OBEDULLAGANJ-Govt. H.S.S. UMRAOGANJ</option>
                                <option value="--Select--">2902003003 - SANCHI- Girls H.S.S. RAISEN</option>
                                <option value="--Select--">2952003030 - SILWANI- Govt.H.S.S. BIKALPUR</option>
                            </select>
                        </div>
                    </div>

                             <div class="col-md-4">
                         <div class="form-group">
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
                    </div>
                    <div class="col-md-4">
                         <div class="form-group">
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

           
               
             
                    <div class="col-md-4">
                         <div class="form-group">
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

                    <div class="col-md-4">
                         <div class="form-group">
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
                                        <td>2</td>
                                        <td>Co-Education</td>
                                        <td>St</td>
                                        <td>Kanha Shri Boys and Girls Hostel</td>
                                        <td>7823456790</td>
                                        <td>Not Available</td>
                                        <td>160</td>
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
                        <h4 class="modal-title" id="myLargeModalLabel3">Hostel Details / छात्रावास का विवरण</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body">
                        <fieldset>
                            <legend>Hostel Details / छात्रावास का विवरण</legend>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead class="nowrap">
                                                <tr>
                                                    <th>Hostel Type
                 <br />
                                                        छात्रावास का प्रकार
                                                    </th>
                                                    <td>Girls</td>
                                                    <th>Hostel Name<br />
                                                        छात्रावास का नाम </th>
                                                    <td>Kanha Shri Boys and
                                                            <br />
                                                        Girls Hostel</td>
                                                    <th>Category<br />
                                                        श्रेणी</th>
                                                    <td>Obc</td>
                                                </tr>
                                                <tr>

                                                    <th>Total Number of Rooms
                 <br />
                                                        कक्ष की कुल संख्या 
                                                    </th>
                                                    <td>150</td>
                                                    <th>Intake Capacity of Students
                                                           <br />
                                                        छात्रों की प्रवेश क्षमता</th>
                                                    <td>100</td>
                                                    <th>Hostel Address
                                                            <br />
                                                        छात्रावास का पता
                                                    </th>
                                                    <td>Kanha Shri Boys and Girls<br />
                                                        Hostel near by Shivaji Nagar</td>
                                                </tr>
                                                <tr>
                                                    <th>Mess Facility Availability
                                                            <br />
                                                        मेस सुविधा की उपलब्धता
                                                    </th>
                                                    <td>Yes</td>
                                                    <th>Mess Fees
                                                            <br />
                                                        मेस शुल्क
                                                    </th>
                                                    <td>5000</td>
                                                    <th>Applicable From
                                                            <br />
                                                        दिनांक से लागू
                                                    </th>
                                                    <td>05/07/2022</td>
                                                </tr>
                                                <tr>
                                                    <th>Police Station Name
                                                            <br />
                                                        पुलिस स्टेशन का नाम
                                                    </th>
                                                    <td>ASHOKA GARDEN
                                                            <br />
                                                        Police Station</td>
                                                    <th>Incharge Name
                                                            <br />
                                                        प्रभारी का नाम
                                                    </th>
                                                    <td>Devendra Thakur</td>
                                                    <th>Incharge Contact No.
                                                            <br />
                                                        प्रभारी संपर्क नंबर</th>
                                                    <td>9823546798</td>
                                                </tr>
                                                <tr>
                                                    <th>Police station Full Address:
                                                            <br />
                                                        पुलिस स्टेशन का पूरा पता
                                                    </th>
                                                    <td>ASHOKA GARDEN Police Station<br />
                                                        near by Arera Colony</td>
                                                    <td colspan="4"></td>
                                                </tr>
                                            </thead>
                                        </table>
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

