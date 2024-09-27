<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_WardenRegistration.aspx.cs" Inherits="mis_HostelManagment_Rpt_WardenRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        .profileimage {
            display: block;
            height: 8.5rem;
            margin-left: 2rem;
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
                        <li class="breadcrumb-item">Warden Registration Report</li>
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
                            Warden Registration Report / वार्डन पंजीकरण रिपोर्ट
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
                <legend>Warden Registration Report / वार्डन पंजीकरण रिपोर्ट</legend>

                <div class="row align-items-end ">
      <%--              <div class="col-md-4">
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
                            Is Warden Teacher ?
                            <br />
                            क्या वार्डन शिक्षक है?<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2" id="ddlSelect">
                            <option value="1">All</option>
                            <option value="2">Yes</option>
                            <option value="3">No</option>
                        </select>
                    </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="showHideRemarkView()">Search</button>
                        <a href="Rpt_WardenRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
                                        <th>School Name
                                <br />
                                            स्कूल का नाम
                                        </th>
                                        <th>Hostel Name
                                            <br />
                                            छात्रावास का नाम
                                        </th>
                                        <th>Is Warden Teacher<br />
                                            क्या वार्डन शिक्षक है?
                                        </th>
                                        <th>Warden Name<br />
                                            वार्डन का नाम</th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Action<br />
                                            कार्यवाही</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>GOVT HSS MAHARANA PRATAP(23320400117)</td>
                                        <td>Kanha Shri Boys and Girls Hostel</td>
                                        <td>Yes</td>
                                        <td>Sneha Thakur</td>
                                        <td>7823456790</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></span></td>
                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>GOVT HSS BOYS, KOTRA SULTANABAD(23320303134)</td>
                                        <td>Bright Star Hostel</td>
                                        <td>Yes</td>
                                        <td>Simran Yadav</td>
                                        <td>6564896734</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></span></td>
                                    </tr>

                                    <tr>
                                        <td>3</td>
                                        <td>GOVT HSS EX, SUBHASH,SHIVAJI(23320212709)</td>
                                        <td>Ma Narmada Girls Hostel</td>
                                        <td>No</td>
                                        <td>Tanuja Sharma</td>
                                        <td>9089234567</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></span></td>
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
                                        <th>School Name
                    <br />
                                            स्कूल का नाम
                                        </th>
                                        <th>Is Warden Teacher<br />
                                            क्या वार्डन शिक्षक है?
                                        </th>
                                        <th>Warden Name<br />
                                            वार्डन का नाम</th>
                                        <th>Contact No.<br />
                                            संपर्क नंबर</th>
                                        <th>Action<br />
                                            कार्यवाही</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>GOVT HSS MAHARANA PRATAP</td>
                                        <td>Kanha Shri Boys and Girls Hostel</td>
                                        <td>Yes</td>
                                        <td>Sneha Thakur</td>
                                        <td>7823456790</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></span></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" id="myDIV3">
                            <h4 class="modal-title" id="myLargeModalLabel3">Warden Details / वार्डन विवरण</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Warden Details / वार्डन विवरण</legend>

                                <div class="row align-items-end mb-0 p-0">
                                    <div class="col-md-9 col-sm-2">

                                        <table class="table-bordered table">
                                            <tr class="h-25">
                                                <td colspan="2" class="align-content-center">
                                                        Warden Name
                                                   <br />
                                                        वार्डन का नाम
                                                </td>
                                                <td colspan="2" class="align-content-center">Radhika Arora
                                                </td>
                                            </tr>
                                            <tr class="h-25">
                                                <td colspan="2" class="align-content-center">
                                                        Date of Birth
                                                      <br />
                                                        जन्म तिथि
                                                </td>
                                                <td colspan="2" class="align-content-center">01-05-1990
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-md-3 col-sm-3">
                                        <img class="profileimage" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available" />
                                        <br />
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered text-center">
                                        <thead class="nowrap">
                                            <tr>
                                                <th>Age<br />
                                                    उम्र
                                                </th>
                                                <td>34</td>
                                                <th>Gender<br />
                                                    जेंडर</th>
                                                <td>Female</td>
                                                <th>Mobile Number<br />
                                                    मोबाइल नंबर</th>
                                                <td>6845878902</td>
                                            </tr>
                                            <tr>
                                                <th>Email Id<br />
                                                    ईमेल आई.डी.</th>
                                                <td>radhika@gmail.com</td>
                                                <th>PAN No.
                                                            <br />
                                                    पैन नंबर
                                                </th>
                                                <td>XXXXXX234D</td>
                                                <th>Aadhaar No
                                                            <br />
                                                    आधार नंबर
                                                </th>
                                                <td>XXXXXXXX0987</td>
                                            </tr>
                                            <tr>
                                                <th>ID Proof Type
                                                            <br />
                                                    आईडी प्रूफ प्रकार 
                                                </th>
                                                <td>Aadhar Card</td>
                                                <th>Upload Document
                                                            <br />
                                                    दस्तावेज़ अपलोड
                                                </th>
                                                <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye"></i></span></td>
                                                <th>Work Exeperience
                                             <br />
                                                    कार्य अनुभव
                                                </th>
                                                <td>5 Years</td>
                                            </tr>
                                            <tr>

                                                <th>Highest Qualification
                                                            <br />
                                                    उच्चतम योग्यता
                                                </th>
                                                <td>Bachelor of Science</td>
                                                <th>Address
                                                            <br />
                                                    पता
                                                </th>
                                                <td>Mr John Smith. 132, My Street,
                                                    <br />
                                                    Kingston, Bhopal</td>
                                                <td colspan="2"></td>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>

                                <button type="button" class="btn btn-outline-info w-lg btn-border">Print Card</button>
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
            var ddlSelect = document.getElementById('ddlSelect');
            //var remarkView = document.getElementById("RemarkView");

            if (ddlSelect.value == "1") {
                //remarkView.style.display = "initial";
                table1.style.display = "block";
                table2.style.display = "none";
            }
            else if (ddlSelect.value == "2") {
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

