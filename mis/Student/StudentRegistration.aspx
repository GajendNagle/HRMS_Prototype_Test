<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="mis_Student_StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <script>
        function toggleDisplay() {
            var dropdown = document.getElementById('options');
            var hiddenElement = document.getElementById('hiddenElement');

            if (dropdown.value === 'yes') {
                hiddenElement.classList.remove('hidden');
            } else {
                hiddenElement.classList.add('hidden');
            }
        }
    </script>

    <style>
        .hidden {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--  <div id="dv_Masters_LocationMasters" runat="server">--%>
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
                            <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                         <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                             <span>ACR</span></a>
                     </li>--%>
                        <li class="breadcrumb-item"><span>Student Registration</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Student Registration/छात्र पंजीकरण
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">

            <%--<div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Student Registration</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=StudentDirectory" title="click to go on">Student Directory</a></li>
                        <li class="breadcrumb-item active">Student Registration</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">--%>

            <fieldset>
                <legend>PERSONAL INFORMATION/व्यक्तिगत जानकारी</legend>
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Academic Year<br />
                                शैक्षणिक वर्ष<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">2015</option>
                                <option value="--Select--">2016</option>
                                <option value="--Select--">2017</option>
                                <option value="--Select--">2018</option>
                                <option value="--Select--">2019</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>First Name<br />
                                प्रथम नाम<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter First Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Middle Name<br />
                                मध्य नाम<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Middle Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Last Name<br />
                                उपनाम<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Last Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Class<br />
                                कक्षा<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">I Class</option>
                                <option value="--Select--">II Class</option>
                                <option value="--Select--">III Class</option>
                                <option value="--Select--">IV Class</option>
                                <option value="--Select--">V Class</option>
                                <option value="--Select--">VI Class</option>
                                <option value="--Select--">VII Class</option>
                                <option value="--Select--">VIII Class</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Scholar No.<br />
                                छात्रवृत्ति संख्या<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Scholar No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Enrollment No.<br />
                                उपस्थिति पंजी संख्या<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Enrollment No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Date of Birth<br />
                                जन्म तिथि<span style="color: red">*</span></label>
                            <input name="ename" id="DOB" type="date" class="form-control" autocomplete="off" onchange="updateSecondDate()" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Gender<br />
                                लिंग<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Boy</option>
                                <option value="Bhopal">Girl</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Caste<br />
                                जाति<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Hindu</option>
                                <option value="Bhopal">Muslim</option>
                                <option value="Bhopal">Sikh</option>
                                <option value="Bhopal">Christian</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Category<br />
                                वर्ग<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">General</option>
                                <option value="Bhopal">OBC</option>
                                <option value="Bhopal">SC</option>
                                <option value="Bhopal">ST</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Blood Group<br />
                                रक्त वर्ग<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>

                                <option value="Bhopal">A+ (A Positive)</option>
                                <option value="Bhopal">A- (A Negative)</option>
                                <option value="Bhopal">B+ (A Positive)</option>
                                <option value="Bhopal">B- (A Negative)</option>
                                <option value="Bhopal">O+ (A Positive)</option>
                                <option value="Bhopal">O- (A Negative)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Aadhaar No.<br />
                                आधार संख्या<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Aadhaar No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Samagra ID<br />
                                समग्र आई.डी<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Samagra ID" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Identification Mark<br />पहचान चिह्न<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Identification Mark" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Handicapped<br />विकलांग<span style="color: red">*</span></label>
                            <select id="options" onchange="toggleDisplay()" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="yes">Yes</option>
                                <option value="no">No</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3 hidden" id="hiddenElement">
                        <div class="form-group">
                            <label>Handicap type<br />विकलांगता प्रकार
<span style="color: red">*</span></label>
                            <input class="form-control select2" onchange="toggleDisplay()" placeholder="Enter Handicap Type" />


                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Mobile No<br />मोबाइल नंबर<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Mobile No" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Email ID<br />
ईमेल आई.डी<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Email" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Parent Name<br />अभिभावक का नाम<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Parent Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Relation Of Student<br />छात्र का संबंध<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">Parents</option>
                                <option value="--Select--">Guardian</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Family Income<br />पारिवारिक आय<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Family Income" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Account Information/
खाता संबंधी जानकारी</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Bank Name<br />बैंक का नाम<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Bank Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>IFSC Code<br />
आई.एफ.एस.सी कोड<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter IFSC Code" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Account No.<br />
खाता नंबर<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Account No." />
                        </div>
                    </div>

                </div>
            </fieldset>

            <fieldset>
                <legend>Address /पता</legend>
                <div class="row">
                    <div class="12">
                        <fieldset>
                            <legend>Present Address/
वर्तमान पता
                            </legend>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>State<br />राज्य<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Bhopal">Madhya Pradesh</option>
                                            <option value="Bhopal">Chhattisgarh</option>
                                            <option value="Rajasthan">Rajasthan</option>
                                            <option value="Maharashtra">Maharashtra</option>
                                            <option value="Nagaland">Nagaland</option>
                                            <option value="Nashik">Nashik</option>
                                            <option value="West">West</option>
                                            <option value="Bengal">Bengal</option>
                                            <option value="Telangana">Telangana</option>
                                            <option value="Assam">Assam</option>
                                            <option value="Tripura">Tripura</option>
                                            <option value="Tamil">Tamil</option>
                                            <option value="Nadu">Nadu</option>
                                            <option value="Gujarat">Gujarat</option>
                                            <option value="Sikkim">Sikkim</option>
                                            <option value="Andhra">Andhra Pradesh</option>
                                            <option value="Uttar">Uttar Pradesh</option>
                                            <option value="Punjab">Punjab</option>
                                            <option value="Karnataka">Karnataka</option>
                                            <option value="Meghalaya">Meghalaya</option>
                                            <option value="Uttarakhand">Uttarakhand</option>
                                            <option value="Goa">Goa</option>
                                            <option value="Haryana">Haryana</option>
                                            <option value="Mizoram">Mizoram</option>
                                            <option value="Arunachal">Arunachal Pradesh</option>
                                            <option value="Bihar">Bihar</option>
                                            <option value="Himachal">Himachal</option>
                                            <option value="Kerala">Kerala</option>
                                            <option value="Jharkhand">Jharkhand</option>
                                            <option value="Orissa">Orissa</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Division <BR />संभाग </label>
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
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>District<br />
ज़िला<span style="color: red">*</span></label>
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
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>City<br />
शहर<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter City" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Pincode<br />
पिन कोड<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Pincode" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Address line 1<br />पता पंक्ति 1<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 1" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Address line 2<br />पता पंक्ति 2<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 2" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <div class="col-md-4">
                            <div class="form-group">
                                <input type="checkbox" id="vehicle1" name="vehicle1" checked value="Bike">
                                <b>Permanent Address same as Present Address</b>
                                <%--<label><span style="color: red">*</span></label>--%>
                            </div>
                        </div>
                        <fieldset>
                            <legend>Permanent Address/
वर्तमान पता
                            </legend>
                            <div class="row">

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>State<br />राज्य<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Bhopal">Madhya Pradesh</option>
                                            <option value="Bhopal">Chhattisgarh</option>
                                            <option value="Rajasthan">Rajasthan</option>
                                            <option value="Maharashtra">Maharashtra</option>
                                            <option value="Nagaland">Nagaland</option>
                                            <option value="Nashik">Nashik</option>
                                            <option value="West">West</option>
                                            <option value="Bengal">Bengal</option>
                                            <option value="Telangana">Telangana</option>
                                            <option value="Assam">Assam</option>
                                            <option value="Tripura">Tripura</option>
                                            <option value="Tamil">Tamil</option>
                                            <option value="Nadu">Nadu</option>
                                            <option value="Gujarat">Gujarat</option>
                                            <option value="Sikkim">Sikkim</option>
                                            <option value="Andhra">Andhra Pradesh</option>
                                            <option value="Uttar">Uttar Pradesh</option>
                                            <option value="Punjab">Punjab</option>
                                            <option value="Karnataka">Karnataka</option>
                                            <option value="Meghalaya">Meghalaya</option>
                                            <option value="Uttarakhand">Uttarakhand</option>
                                            <option value="Goa">Goa</option>
                                            <option value="Haryana">Haryana</option>
                                            <option value="Mizoram">Mizoram</option>
                                            <option value="Arunachal">Arunachal Pradesh</option>
                                            <option value="Bihar">Bihar</option>
                                            <option value="Himachal">Himachal</option>
                                            <option value="Kerala">Kerala</option>
                                            <option value="Jharkhand">Jharkhand</option>
                                            <option value="Orissa">Orissa</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Division<br /> संभाग </label>
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
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>District<br />
ज़िला<span style="color: red">*</span></label>
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
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>City<br />
शहर<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter City" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Pincode<br />
पिन कोड<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Pincode" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Address line 1<br />पता पंक्ति 1<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 1" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Address line 2<br />पता पंक्ति 2<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Address line 2" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </fieldset>
          <%--  <div class="row justify-content-center">
                <div class="col-md-2">
                    <button type="button" class="Alert-Confirmation btn btn-success btn-rounded w-100 btn-block">Save</button>
                </div>
                <div class="col-md-2">
                    <a runat="server" id="clearfirst" href="StudentRegistration.aspx" class="btn btn-block btn-danger btn-rounded">Clear</a>
                </div>
            </div>--%>
            <hr />
             <div class="row">
     <div class="col-md-12">
         <div class="form-group">
             <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
             <a href="StudentRegistration.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
         </div>
     </div>
 </div>
            <fieldset id="Description">
                <legend>Description</legend>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="main-ul">
                            <li><strong>Academic Year</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Academic Year</strong> .</li>
                                </ul>
                            </li>
                            <li><strong>Student Name</strong>
                                <ul>
                                    <li>User will be able to Enter Student First/Middle/Last name in English and the text field will accept <strong>only English letters</strong> .</li>
                                </ul>
                            </li>

                            <li><strong>Class Name </strong>
                                <ul>
                                    <li>User should be able to select the <strong>Class Name</strong> from the dropdown and the data will be populated from the <strong>School Class Name Master</strong> .</li>
                                </ul>
                            </li>

                            <li><strong>Scholar No.</strong>
                                <ul>
                                    <li>User will be able to Enter Student Scholar Number and the text field will accept <strong>numeric number and special character</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Enrollment no.</strong>
                                <ul>
                                    <li>User will be able to Enter Student Enrollment Number and the text field will accept <strong>numeric number and special character</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Date of Birth</strong>
                                <ul>
                                    <li>User will be able to select or enter the date of birth and the field should accept <strong>Date Only</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Gender</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Gender</strong> for and data in dropdown should (Boy, Girl) only.</li>
                                </ul>
                            </li>
                            <li><strong>Caste</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Caste </strong>from the dropdown and the data will be populated from the<strong> Caste Master</strong>. </li>
                                </ul>
                            </li>

                            <li><strong>Category</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Category</strong>  from the dropdown and the data will be populated from the <strong>Category Master</strong>.</li>
                                </ul>
                            </li>


                            <li><strong>Blood Group</strong>
                                <ul>
                                    <li>User will be able to select the <strong>Blood Group</strong>  from the dropdown and the data will be populated from the <strong>Blood Group Master</strong> .</li>
                                </ul>
                            </li>
                            <li><strong>Aadhaar No.</strong>
                                <ul>
                                    <li>User will be able to Enter Student Aadhaar Number and the text field will accept <strong>numeric</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Samagra ID</strong>
                                <ul>
                                    <li>User will be able to Enter Samagra ID and the text field will accept <strong>numeric only</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Identification Mark</strong>
                                <ul>
                                    <li>User will be able to enter <strong>Identification Mark</strong>, and the text field will accept <strong>English character only</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Handicap</strong>
                                <ul>
                                    <li>User will be able to select the <strong>handicap detail</strong>, and data in dropdown should (Yes/No)</li>
                                    <li><strong>user will Choose Yes</strong> – then open remark column so user can enter the handicap type.</li>
                                </ul>
                            </li>

                            <li><strong>Mobile no.</strong>
                                <ul>
                                    <li>User will be able to Enter Student mobile Number and the text field will accept <strong>numeric only</strong>.</li>
                                </ul>
                            </li>

                            <li><strong>Email ID</strong>
                                <ul>
                                    <li>User will be able to Enter Student Email Id and the text field will accept <strong>Alphanumeric and special character only</strong> .</li>
                                </ul>
                            </li>
                            <!--There is heading of Parent information -->
                            <li><strong>Parent Name </strong>
                                <ul>
                                    <li>User will be able to Enter Student parent detail and the text field will accept <strong>English characters only</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Relation of Student</strong>
                                <ul>
                                    <li>The user will be able to select the relation for the student, and the dropdown should include options for 'Parents' and 'Guardian.</li>
                                </ul>
                            </li>
                            <li><strong>Family Income</strong>
                                <ul>
                                    <li>User will be able to Enter Student family income details and the text field will accept <strong>numbers only</strong>.</li>
                                </ul>
                            </li>

                            <li><strong>Bank Name</strong>
                                <ul>
                                    <li>User will be able to enter <strong>Bank name (First Time only)</strong>, the text field should accept <strong>English characters only</strong>.</li>
                                </ul>
                            </li>

                            <li><strong>IFSC Code</strong>
                                <ul>
                                    <li>User will be able to enter <strong>IFSC detail (First Time only)</strong>, the text field should accept in <strong>Alpha numeric</strong> .</li>
                                </ul>
                            </li>
                            <li><strong>Account No.</strong>
                                <ul>
                                    <li>User should be able to enter <strong>Account Detail</strong>, the text field should accept in Alpha Numeric</li>
                                </ul>
                            </li>

                            <!--For Address Heading  -->
                            <li><strong>Address (Line1/Line 2)</strong>
                                <ul>
                                    <li>User should be able to enter <strong>Student Address</strong> and the text field should accept in<strong> alphanumeric.</strong> </li>
                                </ul>
                            </li>
                            <li><strong>City</strong>
                                <ul>
                                    <li>User should be able to enter <strong>City</strong> and the text field should accept<strong> English charcter only</strong> .</li>
                                </ul>
                            </li>
                            <li><strong>Pin Code </strong>
                                <ul>
                                    <li>User should be able to enter <strong>Pin Code</strong> and the text field should accept in <strong>numeric</strong>. </li>
                                </ul>
                            </li>
                            <li><strong>State Name</strong>
                                <ul>
                                    <li>User should be able to select the <strong>State Name</strong> from the dropdown and the data will be populated from the <strong>State Master</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>District Name</strong>
                                <ul>
                                    <li>User should be able to select the <strong>District Name</strong> from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>State Master</strong>.</li>
                                </ul>
                            </li>
                            <li><strong>Permanent Address same as Present Address</strong>
                                <ul>
                                    <li>If the permanent address is the same as the present address, the user can check the <strong>checkbox </strong>, and all permanent address fields will be automatically filled based on the present address</li>
                                </ul>
                            </li>


                            <li><strong>Save</strong>
                                <ul>
                                    <li>User Can Click Save Button.</li>
                                    <li>On save button click form field should be validated.</li>
                                    <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?"). </li>
                                    <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!") </li>
                                    <li>If click on NO the data will not be saved and will return to the same page.</li>
                                </ul>

                            </li>
                            <li><strong>Clear</strong>
                                <ul>
                                    <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
   


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function updateSecondDate() {
            // Get the value of the first date textbox
            var firstDateValue = document.getElementById('firstDate').value;

            // If a date is selected in the first textbox
            if (firstDateValue) {
                // Create a Date object from the first date
                var firstDate = new Date(firstDateValue);

                // Add 62 years to the first date
                var secondDate = new Date(firstDate);
                secondDate.setFullYear(firstDate.getFullYear() + 62);

                // Format the second date as a string (YYYY-MM-DD)
                var formattedSecondDate = secondDate.toISOString().split('T')[0];

                // Update the value of the second date textbox
                document.getElementById('secondDate').value = formattedSecondDate;

                // Enable the second date textbox
                document.getElementById('secondDate').disabled = false;
            } else {
                // If no date is selected in the first textbox, disable and clear the second date textbox
                document.getElementById('secondDate').value = '';
                document.getElementById('secondDate').disabled = true;
            }
        }
    </script>
</asp:Content>

