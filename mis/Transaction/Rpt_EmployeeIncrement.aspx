<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EmployeeIncrement.aspx.cs" Inherits="mis_Transaction_Rpt_EmployeeIncrement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showdetails {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
<%--    <div id="dv_Masters_LocationMasters" runat="server">
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
                                    <span>Reports</span></a>
                            </li>
                            <li class="breadcrumb-item">Employee Increment Report</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-7">
                        <h4 class="card-title">Employee Increment Report / कर्मचारी वेतन वृद्धि रिपोर्ट</h4>
                    </div>
                </div>
            </div>
            <div class="card-body">--%>
      
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
                        <a href="#Payroll" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Payroll</span></a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#Increment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                            <span>Increment</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Employee Increment Report </span></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="card card-border-primary">
    <div class="card-header">
        <div class="row">
            <div class="col-lg-12">
                <h5 class="card-title">Employee Increment Report / कर्मचारी वेतन वृद्धि रिपोर्ट
                </h5>
            </div>
        </div>
    </div>
    <div class="card-body">
                <fieldset>
                    <legend>Employee Increment Report / कर्मचारी वेतन वृद्धि रिपोर्ट</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>
                                Select Division Name <br />
                                संभाग का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Indore">Indore</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Ujjain">Ujjain</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Chambal">Chambal</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Narmadapuram">Narmadapuram</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label>
                                Select District<br />
                                जिला का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Raisen">Raisen</option>
                                <option value="Rajgarh">Rajgarh</option>
                                <option value="Sehore">Sehore</option>
                                <option value="Vidisha">Vidisha</option>
                                <option value="Ashoknagar">Ashoknagar</option>
                                <option value="Shivpuri">Shivpuri</option>
                                <option value="Datia">Datia</option>
                                <option value="Guna">Guna</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Harda">Harda</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Betul">Betul</option>
                                <option value="Morena">Morena</option>
                                <option value="Sheopur">Sheopur</option>
                                <option value="Bhind">Bhind</option>
                                <option value="Barwani">Barwani</option>
                                <option value="Burhanpur">Burhanpur</option>
                                <option value="Dhar">Dhar</option>
                                <option value="Indore">Indore</option>
                                <option value="Jhabua">Jhabua</option>
                                <option value="Khandwa">Khandwa</option>
                                <option value="Khargone">Khargone</option>
                                <option value="Alirajpur">Alirajpur</option>
                                <option value="Balaghat">Balaghat</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Katni">Katni</option>
                                <option value="Mandla">Mandla</option>
                                <option value="Narsinghpur">Narsinghpur</option>
                                <option value="Seoni">Seoni</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Satna">Satna</option>
                                <option value="Sidhi">Sidhi</option>
                                <option value="Singroli">Singroli</option>
                                <option value="Chhatarpur">Chhatarpur</option>
                                <option value="Damoh">Damoh</option>
                                <option value="Panna">Panna</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Tikamgarh">Tikamgarh</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Umaria">Umaria</option>
                                <option value="Dindori">Dindori</option>
                                <option value="Anuppur">Anuppur</option>
                                <option value="Dewas">Dewas</option>
                                <option value="Mandsaur">Mandsaur</option>
                                <option value="Neemuch">Neemuch</option>
                                <option value="Ratlam">Ratlam</option>
                                <option value="Shajapur">Shajapur</option>
                                <option value="Ujjain">Ujjain</option>

                            </select>
                        </div>
                        <div class="col-md-3">
                            <label>Select Block Name <br /> विकासखंड का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Agar">Agar</option>
                                <option value="Alirajpur">Alirajpur</option>
                                <option value="Anuppur">Anuppur</option>
                                <option value="Ashoknagar">Ashoknagar</option>
                                <option value="Balaghat">Balaghat</option>
                                <option value="Barwani">Barwani</option>
                                <option value="Betul">Betul</option>
                                <option value="Bhind">Bhind</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Burhanpur">Burhanpur</option>
                                <option value="Chhatarpur">Chhatarpur</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Damoh">Damoh</option>
                                <option value="Datia">Datia</option>
                                <option value="Dewas">Dewas</option>
                                <option value="Dhar">Dhar</option>
                                <option value="Dindori">Dindori</option>
                                <option value="Guna">Guna</option>
                                <option value="Gwalior">Gwalior</option>



                            </select>
                        </div>
                        <div class="col-md-3">
                            <label>Select School UDISE Code<br /> स्कूल कोड का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Yes">1214548455-Sarasvati Gyan Mandir</option>
                                <option value="Yes">1014632121-Gyan Ganga Vidhya Mandir</option>
                                <option value="Yes">0124587465-Reema Gyan Mandir</option>
                                <option value="Yes">1315473465-Sarasvati Vidhya Mandir</option>
                                <option value="Yes">1224876546-Bal Bharti Higher Secondary School</option>
                            </select>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>
                                From Date <br />
                                तिथि से<span style="color: red">*</span></label>
                            <input name="ename" id="firstDate" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                        </div>
                        <div class="col-md-3">
                            <label>
                                To Date <br />
                                तिथि तक<span style="color: red">*</span></label>
                            <input name="ename" id="firstDate1" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button onclick="Hideshow()" type="button" class=" btn btn-success btn w-lg btn-border">Search</button>
                            <a href="Rpt_EmployeeIncrement.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
                <!-- sample modal content -->
                <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header" id="myDIV">
                                <h4 class="modal-title" id="myLargeModalLabel1">Registration Details / पंजीकरण का विवरण</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">

                                <fieldset>
                                    <legend>PERSONAL INFORMATION / व्यक्तिगत जानकारी</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Employee Unique ID <br />
                                                कर्मचारी यूनिक आईडी<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="5859685" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                First Name <br />
                                                पहला नाम<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Shyam" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Middle Name <br />
                                                मध्य नाम<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Kumar" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Last Name <br />
                                                उपनाम<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Verma" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Father's/Husband Name <br />
                                                पिता/पति का नाम<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Kunal Verma" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Designation <br />
                                                पद का नाम<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Administrator" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Subject <br />
                                                विषय<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Chemistry" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                School name /<br />
                                                स्कूल का नाम<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="GB Convent School" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Sankul <br />
                                                संकुल<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Reema Vidhya" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Date of Birth <br />
                                                जन्म की तारीख<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/07/1999" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Gender <br />
                                                जेंडर<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Male" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Height <br />
                                                ऊंचाई<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="6.4" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Caste <br />
                                                जाति<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="General" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Sub Caste <br />
                                                उप जाति<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="General" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Identification Mark <br />
                                                पहचान चिह्न<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Mole on Face" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Blood Group <br />
                                                ब्लड ग्रुप<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="O+" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Handicapped (PWD) <br />
                                                विकलांग (पीडब्ल्यूडी)<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="No" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Critical Illness <br />
                                                गंभीर बीमारी<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="No" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                GPF NO <br />
                                                जीपीएफ नं<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="PLKK5695L" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                PAN No(E) <br />
                                                पैन नंबर(ई)<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="SDEKK5695G" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Aadhaar No(E) <br />
                                                आधार नंबर(ई)<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="362596836495" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Employee Treasury Code <br />
                                                कर्मचारी कोष कोड<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="56958369" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Hobbies <br />
                                                शौक़<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Dancing, Singing" />
                                        </div>

                                        <div class="col-md-3">
                                            <label>
                                                Certification Date <br />
                                                प्रमाणीकरण तिथि<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/01/2023" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                whether the first Page of E-Service Book is certified /<br />
                                                क्या ई-सेवा पुस्तिका का प्रथम पृष्ठ प्रमाणित है<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Address / पता</legend>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <fieldset>
                                                <legend>Present Address / वर्तमान पता
                                                </legend>
                                                <div class="row align-items-end">

                                                    <div class="col-md-3">
                                                        <label>
                                                            Address line 1 <br />
                                                            पता लाइन 1<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                    </div>
                                                    <div class="col-md-3">
                                                        <label>
                                                            Address line 2 <br />
                                                            पता लाइन 2<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                    </div>
                                                    <div class="col-md-3">
                                                        <label>
                                                            City <br />
                                                            शहर<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                    </div>
                                                    <div class="col-md-3">
                                                        <label>
                                                            Pincode <br />
                                                            पिन कोड<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="462010" />
                                                    </div>
                                                </div>
                                                <div class="row align-items-end">
                                                    <div class="col-md-3">
                                                        <label>
                                                            State <br />
                                                            राज्य<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Madhya Pradesh" />
                                                    </div>
                                                    <div class="col-md-3">
                                                        <label>
                                                            District <br />
                                                            ज़िला<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                    </div>
                                                </div>


                                            </fieldset>
                                        </div>

                                        <div class="col-md-8">

                                            <div class="form-group">
                                                <input type="checkbox" id="vehicle1" name="vehicle1" checked value="Bike">
                                                <b>Permanent Address same as Present Address / स्थायी पता वर्तमान पता के समान है</b>
                                                <%--<label><span style="color: red">*</span></label>--%>
                                            </div>
                                        </div>


                                        <div class="col-md-12">
                                            <fieldset>
                                                <legend>Permanent Address / स्थायी पता
                                                </legend>
                                                <div class="row align-items-end">

                                                    <div class="col-md-3">
                                                        <label>
                                                            Address line 1 <br />
                                                            पता लाइन 1<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                    </div>

                                                    <div class="col-md-3">
                                                        <label>
                                                            Address line 2 <br />
                                                            पता लाइन 2<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="42, Arera Colony" />
                                                    </div>
                                                    <div class="col-md-3">
                                                        <label>
                                                            City <br />
                                                            शहर<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                    </div>

                                                    <div class="col-md-3">
                                                        <label>
                                                            Pincode <br />
                                                            पिन कोड<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="462010" />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <label>
                                                            State
                                                                <br />
                                                            राज्य<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Madhya Pradesh" />
                                                    </div>
                                                    <div class="col-md-3">
                                                        <label>
                                                            District <br />
                                                            ज़िला<span style="color: red">*</span></label>
                                                        <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Mobile No
                                                    <br />
                                                मोबाइल नंबर<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="8596859586" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Email <br />
                                                ईमेल<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="ABC@GMAIL.COM" />
                                        </div>
                                    </div>

                                </fieldset>

                                <fieldset>
                                    <legend>Marital Status and Spouse Details /<br />
                                        वैवाहिक स्थिति और जीवनसाथी का विवरण</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Married
                                                    <br />
                                                विवाहित<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Spouse Name <br />
                                                जीवनसाथी का नाम<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Ruchita " />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Is Spouse Government Employee<br />
                                                क्या पति/पत्नी सरकारी कर्मचारी हैं?<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="No" />
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Education Qualification  शैक्षणिक योग्यता</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Qualification Type <br />
                                                योग्यता प्रकार<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Post Graduate" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Degree / Diploma <br />
                                                डिग्री / प्रमाणपत्र<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="MCA" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Board / Univercity name <br />
                                                बोर्ड/यूनिवर्सिटी का नाम<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Makhanlal Chaturvedi" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Passing Year <br />
                                                पासिंग ईयर<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="2022" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Grade / Percentage <br />
                                                ग्रेड / प्रतिशत<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="99%" />
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>First Appointment Details /<br />
                                        प्रथम नियुक्ति विवरण</legend>
                                    <div class="row align-items-end">

                                        <%--   <div class="col-md-3">
                                <div class="form-group">
                                    <label>Employee Unique ID<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Employee Unique ID" />
                                </div>
                            </div>--%>


                                        <div class="col-md-3">
                                            <label>
                                                First Appointment Department <br />
                                                प्रथम नियुक्ति विभाग<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="IT" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Employee’s Designation Type <br />
                                                कर्मचारी का पदनाम प्रकार<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Permanent" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                First Appointment Designation <br />
                                                प्रथम नियुक्ति पदनाम<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Administrator" />
                                        </div>

                                        <div class="col-md-3">
                                            <label>
                                                First Appointment Order Date <br />
                                                प्रथम नियुक्ति आदेश दिनांक<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/01/2022" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3 mt-4">
                                            <label>
                                                First Appointment Pay scale <br />
                                                प्रथम नियुक्ति वेतनमान<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="20600" />
                                        </div>
                                        <div class="col-md-3 mt-4">
                                            <label>
                                                Parent Department <br />
                                                मूल विभाग<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="-" />
                                        </div>

                                        <div class="col-md-3">
                                            <label>
                                                School/Institute/Office Address of first Posting <br />
                                                पहली पोस्टिंग का स्कूल/संस्थान/कार्यालय का पता<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="101 Arera Hills, Bhopal" />
                                        </div>

                                        <div class="col-md-3">
                                            <label>
                                                Recent Appointment Department 
                                                    <br />
                                                नया नियुक्ति विभाग<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="IT" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <label>
                                                Pay Scale <br />
                                                वेतनमान<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="20600" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Samvilian Order No <br />
                                                संविलियन आदेश क्रमांक<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="569894545" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Samvilian Order Date <br />
                                                संविलियन ऑर्डर दिनांक<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/11/2022" />
                                        </div>
                                        <div class="col-md-3">
                                            <label>
                                                Employee Retirement Date <br />
                                                कर्मचारी सेवानिवृत्ति तिथि<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="27/11/2082" />
                                        </div>
                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-4">
                                            <label>
                                                Whether working/Posted in other department on Deputation/transfer <br />
                                                क्या प्रतिनियुक्ति पर अन्य विभाग में कार्यरत/नियुक्त है<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                        </div>
                                        <div class="col-md-4">
                                            <label>
                                                Working in other Department/Organization on Deputation Transfer <br />
                                                प्रतिनियुक्ति स्थानान्तरण पर अन्य विभाग/संगठन में कार्य करना<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" readonly autocomplete="off" placeholder="Yes" />
                                        </div>
                                    </div>

                                </fieldset>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->

                </div>
                <!-- /.modal -->
                <div id="showdetails">
                    <fieldset>
                        <legend>Employee Details / कर्मचारी का विवरण</legend>
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

                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.<br />
                                                सरल क्र.</th>
                                            <th>Employee Name <br />
                                                कर्मचारी का नाम</th>
                                            <th>Order No. <br />
                                                आदेश संख्या</th>
                                            <th>Order Date <br />
                                                आदेश की तारीख</th>
                                            <th>Existing Level <br />
                                                मौजूदा स्तर</th>
                                            <th>Existing Basic Salary <br />
                                                मौजूदा मूल वेतन</th>
                                            <th>New Level <br />
                                                नया स्तर</th>
                                            <th>New Basic Salary <br />
                                                नया मूल वेतन</th>
                                            <th>Effective Date<br />
                                                प्रभावी तिथि</th>
                                            <th>View<br />
                                                देखे</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Shri Rajesh Tiwari</td>
                                            <td>58965</td>
                                            <td>04/04/2023</td>
                                            <td>Level-1</td>
                                            <td>9650</td>
                                            <td>Level-2</td>
                                            <td>15000</td>
                                            <td>01/04/2023</td>
                                            <td><a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Shri S.S. Soni</td>
                                            <td>58963</td>
                                            <td>05/04/2023</td>
                                            <td>Level-3</td>
                                            <td>25000</td>
                                            <td>Level-6</td>
                                            <td>30000</td>
                                            <td>05/04/2023</td>
                                            <td><a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Description / विवरण</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">

                                    <li><strong>Division Name</strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Division Name</strong> from dropdown and the data will be populated from <strong>Division master </strong>.</li>
                                        </ul>
                                    </li>

                                    <li><strong>District Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>District Name </strong>from dropdown and data will be populated from <strong>District master </strong>and data cascade from <strong>Division Master.</strong> </li>

                                        </ul>
                                    </li>
                                    <li><strong>Block Name</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Block Name</strong> from the dropdown and the data will be populated from the <strong>Block Master</strong> and data cascade from <strong>Division Master </strong>and<strong> District Master.</strong></li>

                                        </ul>
                                    </li>
                                    <li><strong>School Name / UDISE Code</strong>
                                        <ul>
                                            <li>User will be able to enter the <strong>UDISE Code </strong>and the text field will accept <strong>only numerical values.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>From Date  </strong>
                                        <ul>
                                            <li>User should be able to enter or select the <strong>From Date</strong> and the calendar field should accept <strong>only date format.</strong></li>
                                            <li>Enter the date from which you require details into the <strong>"from date"</strong> field.</li>
                                        </ul>
                                    </li>

                                    <li><strong>To Date </strong>
                                        <ul>
                                            <li>User should be able to enter or select the <strong>To Date</strong> and the calendar field should accept <strong>only date format</strong>.</li>
                                            <li>Enter the date up to which you require details in the <strong>“To Date”</strong> field.</li>
                                        </ul>
                                    </li>


                                    <li><strong>Search </strong>
                                        <ul>
                                            <li>User should be able to click on Search button.</li>
                                            <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                        </ul>

                                    </li>
                                    <li><strong>Clear</strong>
                                        <ul>
                                            <li>User should be able to click on Clear button.</li>
                                            <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Excel</strong>
                                        <ul>
                                            <li>Excel button should be visible and user should be able to click.</li>
                                            <li>After clicking on Excel button grid view data export in Excel.</li>
                                        </ul>
                                    </li>
                                    <li><strong>PDF</strong>
                                        <ul>
                                            <li>PDF button should be visible and user should be able to click.</li>
                                            <li>After clicking on PDF button grid view data export in PDF.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Searchbox</strong>
                                        <ul>
                                            <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> . </li>
                                        </ul>
                                    </li>

                                    <li><strong>View</strong>
                                        <ul>
                                            <li>User should be able to click on View button.</li>
                                            <li>After clicking on the View button selected <strong>Employee's</strong> details will be shown on the pop up screen.</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
    </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function Hideshow() {

            var x = document.getElementById("showdetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>

</asp:Content>


