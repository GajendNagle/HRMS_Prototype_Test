<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentReport.aspx.cs" Inherits="mis_Student_StudentReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />

    <style>
        .multiselect.dropdown-toggle.btn-block {
            border: 1px solid #7c4baf;
        }

        .multiselect-container.dropdown-menu {
            border: 1px solid #7c4baf !important;
        }

        legend {
            padding: 2px 8px !important;
            border-radius: 10px !important;
            width: auto !important;
            float: inline-start !important;
            background: white !important;
            margin-top: -1.4em !important;
            margin-bottom: 1rem !important;
            border: 2px solid var(--vz-dark) !important;
            font-size: 1rem !important;
            font-weight: 600 !important;
            color: var(--vz-primary) !important;
            box-sizing: border-box !important;
            margin-bottom: 0.5rem !important;
            display: block !important;
            max-width: 100% !important;
            white-space: normal !important;
            padding-inline: 8px !important;
            font-size: 15px !important;
        }

        fieldset {
            border: 2px solid var(--vz-dark) !important;
            padding: 0.35em 1.625em 0.825em 0 !important;
            margin-top: 1.1rem !important;
            margin-bottom: 1.5rem !important;
            border-radius: 5px !important;
            padding-left: 20px !important;
            width: 100% !important;
        }

        .profileimage {
            display: block;
            height: 6.2rem;
            margin-left: 5rem;
        }

        html body .m-t-30 {
            margin-top: 0px;
        }

        .tab-menu {
            color: #313132;
            font-weight: 600 !important;
            margin-left: 1px !important;
            border: 1px solid #a5a3a3 !important;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out !important;
        }

        .color {
            border: 1px solid #7c4baf !important;
        }

        .dropdown {
            position: relative
        }

        .dropdown-toggle:focus {
            outline: 0
        }

        .dropdown-menu {
            position: absolute;
            top: 100%;
            left: 0;
            z-index: 1000;
            display: none;
            float: left;
            min-width: 160px;
            padding: 5px 0;
            margin: 2px 0 0;
            font-size: 14px;
            text-align: left;
            list-style: none;
            background-color: #fff;
            -webkit-background-clip: padding-box;
            background-clip: padding-box;
            border: 1px solid #ccc;
            border: 1px solid rgba(0,0,0,.15);
            border-radius: 4px;
            -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
            box-shadow: 0 6px 12px rgba(0,0,0,.175)
        }

            .dropdown-menu.pull-right {
                right: 0;
                left: auto
            }

            .dropdown-menu .divider {
                height: 1px;
                margin: 9px 0;
                overflow: hidden;
                background-color: #e5e5e5
            }

            .dropdown-menu > li > a {
                display: block;
                padding: 3px 20px;
                clear: both;
                font-weight: 400;
                line-height: 1.42857143;
                color: #333;
                white-space: nowrap
            }

                .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
                    color: #262626;
                    text-decoration: none;
                    background-color: #f5f5f5
                }

            .dropdown-menu > .active > a, .dropdown-menu > .active > a:hover, .dropdown-menu > .active > a:focus {
                color: #fff;
                text-decoration: none;
                background-color: #428bca;
                outline: 0
            }

            .dropdown-menu > .disabled > a, .dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
                color: #777
            }

                .dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
                    text-decoration: none;
                    cursor: not-allowed;
                    background-color: transparent;
                    background-image: none;
                    filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
                }

        .open > .dropdown-menu {
            display: block
        }

        .open > a {
            outline: 0
        }

        .dropdown-menu-right {
            right: 0;
            left: auto
        }

        .dropdown-menu-left {
            right: auto;
            left: 0
        }

        .dropdown-header {
            display: block;
            padding: 3px 20px;
            font-size: 12px;
            line-height: 1.42857143;
            color: #777;
            white-space: nowrap
        }

        .dropdown-backdrop {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 990
        }

        .pull-right > .dropdown-menu {
            right: 0;
            left: auto
        }

        .dropup .caret, .navbar-fixed-bottom .dropdown .caret {
            content: "";
            border-top: 0;
            border-bottom: 4px solid
        }

        .dropup .dropdown-menu, .navbar-fixed-bottom .dropdown .dropdown-menu {
            top: auto;
            bottom: 100%;
            margin-bottom: 1px
        }
    </style>



    <%--<script>
      function myFunction() {
          var x = document.getElementById("show");
          var y = document.getElementById("gridid");
          y.style.display = "block";
          if (x.style.display === "none") {
              x.style.display = "block";
              /* y.style.display = "block";*/
          } else {
              x.style.display = "block";
              /* y.style.display = "block";*/
          }
      }
  </script>--%>
    <style>
        .topbar .top-navbar {
            min-height: 50px;
            padding: 27px;
        }

        .caret {
            display: none;
        }

        .btn .caret {
            display: none;
            /* margin-left: 0; */
        }

        .btn-default {
            background-color: #fff !important;
        }

            .btn-default:hover {
                background-color: #fff !important;
            }


        #show {
            display: none;
        }

        span.multiselect-native-select {
            position: relative
        }

            span.multiselect-native-select select {
                border: 0 !important;
                clip: rect(0 0 0 0) !important;
                height: 1px !important;
                margin: -1px -1px -1px -3px !important;
                overflow: hidden !important;
                padding: 0 !important;
                position: absolute !important;
                width: 1px !important;
                left: 50%;
                top: 30px
            }

        .multiselect-container {
            position: absolute;
            list-style-type: none;
            margin: 0;
            padding: 0
        }

            .multiselect-container .input-group {
                margin: 5px
            }

            .multiselect-container > li {
                padding: 0
            }

                .multiselect-container > li > a.multiselect-all label {
                    font-weight: 700
                }

                .multiselect-container > li.multiselect-group label {
                    margin: 0;
                    padding: 3px 20px 3px 20px;
                    height: 100%;
                    font-weight: 700
                }

                .multiselect-container > li.multiselect-group-clickable label {
                    cursor: pointer
                }

                .multiselect-container > li > a {
                    padding: 0
                }

                    .multiselect-container > li > a > label {
                        margin: 0;
                        height: 100%;
                        cursor: pointer;
                        font-weight: 400;
                        padding: 3px 0 3px 30px
                    }

                        .multiselect-container > li > a > label.radio, .multiselect-container > li > a > label.checkbox {
                            margin: 0
                        }

                        .multiselect-container > li > a > label > input[type=checkbox] {
                            margin-bottom: 5px
                        }

        .btn-group > .btn-group:nth-child(2) > .multiselect.btn {
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px
        }

        .form-inline .multiselect-container label.checkbox, .form-inline .multiselect-container label.radio {
            padding: 3px 20px 3px 40px
        }

        .form-inline .multiselect-container li a label.checkbox input[type=checkbox], .form-inline .multiselect-container li a label.radio input[type=radio] {
            margin-left: -20px;
            margin-right: 0
        }

        #gridid {
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
                            <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                        <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                            <span>ACR</span></a>
                    </li>--%>
                        <li class="breadcrumb-item"><span>Student Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Student Report/छात्र रिपोर्ट
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Student Report/छात्र रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Academic Year<br />
                                शैक्षणिक वर्ष का चयन करें<span style="color: red">*</span></label>
                            <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="a2" class="form-control datepickerYear2" type="text" data-val="true" required="required" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select District Name<br />
                                ज़िला  का नाम चुनें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">

                                <option value="Select">Select</option>
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
                            <label>
                                Select  Block Name
              <br />
                                विकासखण्ड  का नाम चुनें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl03" class="form-control select2">

                                <option value="Select">Select</option>
                                <option value="Hujoor">Hujoor</option>
                                <option value="Agar">Agar</option>
                                <option value="Barod">Barod</option>
                                <option value="Nalkheda">Nalkheda</option>
                                <option value="Susner">Susner</option>
                                <option value="Alirajpur">Alirajpur</option>
                                <option value="Bhabra">Bhabra</option>
                                <option value="Katthiwara">Katthiwara</option>
                                <option value="Sondwa">Sondwa</option>
                                <option value="Udaygarh">Udaygarh</option>
                                <option value="Jobat">Jobat</option>
                                <option value="Anuppur">Anuppur</option>
                                <option value="Jaithari">Jaithari</option>
                                <option value="Kotma">Kotma</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Village Name
              <br />
                                गाँव  का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2">

                                <option value="Select">Select</option>
                                <option value="Rajgarh">Rajgarh</option>
                                <option value="Bhopal">Dhakraura</option>
                                <option value="Indore">Napakhedi</option>
                                <option value="Gwalior">Magarpat</option>
                                <option value="Jabalpur">Patan</option>
                                <option value="Ujjain">Chouraiya</option>
                                <option value="Sagar">Kalkua</option>
                                <option value="Rewa">DHIMARI</option>
                                <option value="Chambal">HARDUA VYARMA</option>
                                <option value="Shahdol">AMGHAT</option>
                                <option value="Hoshangabad">KATARRA</option>
                                <option value="Narmadapuram">Jhikri Bori</option>
                            </select>

                        </div>
                    </div>

                </div>
                <hr />
                <div class="col-md-12">
                    <div class="form-group">
                        <!-- Search button triggers search and toggles divs -->
                        <button type="button" class="btn btn-success w-lg btn-border" id="btn1">
                            Search</button>
                        <!-- Clear button (link) -->
                        <a href="StudentReport.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>

            <%--  <div class="dx-widget dx-button dx-button-mode-contained dx-button-normal dx-button-has-text dx-button-has-icon dx-datagrid-toolbar-button dx-datagrid-column-chooser-button" role="button" aria-label="Select Fields" aria-haspopup="dialog" tabindex="0" title="Select Fields"><div class="dx-button-content"><i class="dx-icon dx-icon-column-chooser"></i><span class="dx-button-text">Select Fields</span></div></div>--%>


            <div id="showAll" class="row">
                <div class="col-md-12">
                    <fieldset>
                        <legend>Details / विवरण</legend>
                        <div class="row justify-content-end">

                            <div class="col-md-2 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    <%--</div>--%>
                                </div>
                            </div>
                            <div class="col-md-3 text-end">
                                <div class="form-group">

                                  
                                    <select id="dates-field2" class="multiselect-ui" multiple="multiple" onchange="DDLGrid() ">
                                        <option value="1">Sr.No.</option>
                                        <option value="2">Academic Year</option>
                                        <option value="3">District Name</option>
                                        <option value="4">Block Name</option>
                                        <option value="5">Village Name</option>
                                        <option value="6">Student Name</option>
                                        <option value="7">Samagra ID</option>
                                        <option value="8">Gender</option>
                                        <option value="9">Date of Birth</option>
                                        <option value="10">Category</option>
                                        <option value="11">Father's Name</option>
                                        <option value="12">Mother's Name</option>
                                        <option value="13">Mobile No</option>
                                        <option value="14">BPL</option>
                                        <option value="15">Physical Disability</option>
                                        <option value="16">Is there a Freed/Nomadic/Semi-Nomadic Caste</option>
                                        <option value="17">Only Girl Child</option>
                                        <option value="18">Father Dead</option>
                                        <option value="19">Students Unparented</option>
                                        <option value="20">Current School UDISE Code</option>
                                        <option value="21">Current Class</option>
                                        <option value="22">Account No.</option>
                                        <option value="23">IFSC Code</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive" >
                                   <table class="table" id="hideshowTable">
    <thead>
        <tr style="white-space: nowrap">
            <th class="Sr">Sr.No.<br /> सरक क्र. </th>
            <th class="Academic">Academic Year<br /> शैक्षणिक वर्ष </th>
            <th class="District">District Name<br /> ज़िला का नाम </th>
            <th class="Block">Block Name<br /> विकासखण्ड का नाम </th>
            <th class="Village">Village Name<br /> गाँव का नाम</th>
            <th class="Student">Student Name<br /> विद्यार्थी का नाम</th>
            <th class="Samagra">Samagra ID<br /> समग्र आईडी </th>
            <th class="Gender">Gender<br /> लिंग </th>
            <th class="Birth">Date of Birth<br /> जन्म तिथि</th>
            <th class="Category">Category<br /> श्रेणी</th>
            <th class="Father">Father's Name<br /> पिता का नाम</th>
            <th class="Mother">Mother's Name<br /> माता का नाम</th>
            <th class="Mobile">Mobile No<br /> मोबाइल नंबर</th>
            <th class="BPL">BPL<br /> गरीबी रेखा से नीचे</th>
            <th class="Physical">Physical Disability<br /> शारीरिक विकलांगता</th>
            <th class="Freed">Is there a Freed/Nomadic/Semi-Nomadic Caste<br /> क्या विमुक्त/घुमक्कड़/अर्ध घुमक्कड़ जाति है</th>
            <th class="Child">Only Girl Child<br /> एकमात्र बालिका</th>
            <th class="Dead">Father Dead?<br /> पिता स्वर्गवासी हैं ?</th>
            <th class="Unparented">Students Unparented ?<br /> विद्यार्थी अनाथ हैं ? </th>
            <th class="School">Current School UDISE Code<br /> वर्तमान स्कूल UDISE कोड </th>
            <th class="Class">Current Class<br /> वर्तमान कक्षा  </th>
            <th class="Account">Account No.<br /> खाता नंबर</th>
            <th class="IFSC">IFSC Code<br /> आई.एफ.एस.सी कोड</th>
        </tr>
    </thead>
    <tbody>
        <tr class="text-center">
            <td class="Sr">Sr.No.>1</td>
            <td class="Academic">2024-2025</td>
            <td class="District">Bhopal</td>
            <td class="Block">Hujoor</td>
            <td class="Village">Rajgarh</td>
            <td class="Student">Rina Gupta</td>
            <td class="Samagra">989305529512</td>
            <td class="Gender">Female</td>
            <td class="Birth">12/07/1998</td>
            <td class="Category">>OBC</td>
            <td class="Father">Rajesh Gupta</td>
            <td class="Mother">Radha Gupta</td>
            <td class="Mobile">963258741</td>
            <td class="BPL">Yes</td>
            <td class="Physical">Yes</td>
            <td class="Freed">No</td>
            <td class="Child">No</td>
            <td class="Dead">No</td>
            <td class="Unparented">No</td>
            <td class="School">23145484551-Sarasvati Gyan Mandir</td>
            <td class="Class">11th</td>
            <td class="Account">9910110011189</td>
            <td class="IFSC">IBKID0009536</td>
        </tr>
        <!-- Add more rows here -->
    </tbody>
                                      
                                       
</table>

                                </div>
                            </div>
                        </div>



                    </fieldset>
                </div>
            </div>
        </div>



    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">

    </script>
    <%--<script>
    function DDLGrid() {
    var forwardto = document.getElementById("dates-field2").value;
    var elements = [
        { id: 'No', display: 'none' },
        { id: 'Sr', display: 'none' },
        { id: 'Year', display: 'none' },
        { id: 'Academic', display: 'none' },
        { id: 'District', display: 'none' },
        { id: 'Dist', display: 'none' },
        { id: 'Blocks', display: 'none' },
        { id: 'Block', display: 'none' },
        { id: 'Villag', display: 'none' },
        { id: 'Village', display: 'none' },
        { id: 'Student', display: 'none' },
        { id: 'StuName', display: 'none' },
        { id: 'Samagra', display: 'none' },
        { id: 'SSMId', display: 'none' },
        { id: 'Gender', display: 'none' },
        { id: 'TxtGen', display: 'none' },
        { id: 'Category', display: 'none' },
        { id: 'Txtcateg', display: 'none' },
        { id: 'taxtDob', display: 'none' },
        { id: 'DOB', display: 'none' },
        { id: 'Txtfather', display: 'none' },
        { id: 'Father', display: 'none' },
        { id: 'txtMother', display: 'none' },
        { id: 'Mother', display: 'none' },
        { id: 'Mobile', display: 'none' },
        { id: 'TxtMob', display: 'none' },
        { id: 'BPL', display: 'none' },
        { id: 'txtBPL', display: 'none' },
        { id: 'Disability', display: 'none' },
        { id: 'txtDisability', display: 'none' },
        { id: "Nomadic", display:"none" }, 
        {id:"Child",display:"none"},
        {id:"Childs",display:"none"},
        {id:"Dead",display:"none"},
        {id:"txtDead",display:"none"},
        {id:"Unparented",display:"none"},
        {id:"txtUnparented",display:"none"},
        
    ];

    switch (forwardto) {
      case "1":
          elements.forEach((element) => {
              if (element.id === "No" || element.id === "Sr") {
                  element.display = "block";
              } else {
                  element.display = "none";
              }
          });
          break;
      case "2":
          elements.forEach((element) => {
              if (element.id === "Year" || element.id === "Academic") {
                  element.display = "block";
              } else {
                  element.display = "none";
              }
          });
          break;
      case "3":
          elements.forEach((element) => {
              if (element.id === "District" || element.id === "Dist") {
                  element.display = "block";
              } else {
                  element.display = "none";
              }
          });
          break;
      case "4":
          elements.forEach((element) => {
              if (element.id === "Blocks" || element.id === "Block") {
                  element.display = "block";
              } else {
                  element.display = "none";
              }
          });
          break;
      case "5":
          elements.forEach((element) => {
              if (element.id === "Villag" || element.id === "Village") {
                  element.display = "block";
              } else {
                  element.display = "block";
              }
          });
          break;
      case "6":
          elements.forEach((element) => {
              if (element.id === "Student" || element.id === "StuName") {
                  element.display = "block";
              } else {
                  element.display = "block";
              }
          });
          break;
      case "7":
          elements.forEach((element) => {
              if (element.id === "Samagra" || element.id === "SSMId") {
                  element.display = "block";
              } else {
                  element.display = "block";
              }
          });
          break;
      case "8":
          elements.forEach((element) => {
              if (element.id === "Gender" || element.id === "TxtGen" || element.id === "Category" || element.id === "Txtcateg") {
                  element.display = "block";
              } else {
                  element.display = "block";
              }
          });
          break;
      case "9":
          elements.forEach((element) => {
              if (element.id === "taxtDob" || element.id === "DOB") {
                  element.display = "block";
              } else {
                  element.display = "block";
              }
          });
          break;
      case "10":
          elements.forEach((element) => {
              if (element.id === "Txtfather" || element.id === "Father" || element.id === "txtMother" || element.id === "Mother") {
                  element.display = "block";
              } else {
                  element.display = block;
                }
            });
            break;
      case 11:
            elements.forEach((element) => {
                if (element.id === 11){
                    //no conditions to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 12:
            elements.forEach((element) => {
                if(element.id==="txtMobile"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 13:
            elements.forEach((element) => {
                if(element.id==="BPL"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 14:
            elements.forEach((element) => {
                if(element.id==="Disability"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 15:
            elements.forEach((element) => {
                if(element.id==="Nomadic"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 16:
            elements.forEach((element) => {
                if(element.id==="Child"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 17:
            elements.forEach((element) => {
                if(element.id==="Dead"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 18:
            elements.forEach((element) => {
                if(element.id==="Unparented"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 19:
            elements.forEach((element) => {
                if(element.id==="School"|| element.id==="UDISE"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 20:
            elements.forEach((element) => {
                if(element.id==="Class"|| element.id==="txtclass"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 21:
            elements.forEach((element) => {
                if(element.id==="Account"|| element.id==="txtAccunt"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
            break;
      case 22:
            elements.forEach((element) => {
                if(element.id==="IFCE"|| element.id==="IFSC"){
                    //no condition to be applied, just keep it as it is
                }else{
                    //no condition applied
                }
            });
             default:
             elements.forEach((element)=>{
                 if(element.id=="No"||element.id=="Sr")
                 element.display="block"
                 else 
                 element.display="block"
             })
    }

    // Add this to set the initial state of the elements
    elements.forEach((element)=>{
         document.getElementById(element.id).style.display=elements[element].display; 
    }); </script>--%>
    <%-- <script>
        function DDLGrid() {
            var multiselect = document.getElementById("multiselect-ui"); // assuming the ID of your multiselect element

            for (var i = 1; i <= 22; i++) {
                document.getElementById(elements[i][0]).style.display = 'block';
                document.getElementById(elements[i][1]).style.display = 'block';
            }

            // add an event listener to the multiselect to change the display of fields based on selection
            multiselect.addEventListener("change", function () {
                var selectedValue = multiselect.value;
                for (var i = 1; i <= 22; i++) {
                    if (selectedValue == i) {
                        document.getElementById(elements[i][0]).style.display = 'block';
                        document.getElementById(elements[i][1]).style.display = 'block';
                    } else {
                        document.getElementById(elements[i][0]).style.display = 'none';
                        document.getElementById(elements[i][1]).style.display = 'none';
                    }
                }
            });
        }
    </script>--%>
    <script>
        function DDLGrid() {
            debugger;
            var multiselect = document.getElementById("multiselect-ui"); // assuming the ID of your multiselect element

            var elements = {
                "1": ["1"],
                "2": ["2"],
                "3": ["3"],
                "4": ["4"],
                "5": ["5"],
                "6": ["6"],
                "7": ["7"],
                "8": ["8"],
                "9": ["9"],
                "10": ["10"],
                "11": ["11"],
                "12": ["12"],
                "13": ["13"],
                "14": ["14"],
                "15": ["15"],
                "16": ["16"],
                "17": ["17"],
                "18": ["18"],
                "19": ["19"],
                "20": ["20"],
                "21": ["21"],
                "22": ["22"],
                "23": ["23"]
            };

            // hide all columns initially
            for (var i = 1; i <= 23; i++) {
                document.getElementById(elements[i][0]).style.display = 'none';
                document.getElementById(elements[i][1]).style.display = 'none';
            }

            // add an event listener to the multiselect to change the display of fields based on selection
            multiselect.addEventListener("change", function () {
                var selectedValues = multiselect.value.split(','); // assuming the values are comma separated
                for (var i = 1; i <= 23; i++) {
                    if (selectedValues.includes(i.toString())) {
                        document.getElementById(elements[i][0]).style.display = 'table-cell';
                        document.getElementById(elements[i][1]).style.display = 'table-cell';
                    } else {
                        document.getElementById(elements[i][0]).style.display = 'none';
                        document.getElementById(elements[i][1]).style.display = 'none';
                    }
                }
            });
        }
    </script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear2").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            //setDefaultFinancialYear();
        });</script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery.multiselect@1.15.0/dist/jquery.multiselect.js">

    </script>

    <script>
        const dropdownList = document.querySelector('select.form-control');
        const checkboxes = document.querySelectorAll('.ckkBox');


        checkboxes.forEach((checkbox) => {
            checkbox.addEventListener('change', (event) => {
                const selectedOptions = [];
                checkboxes.forEach((checkbox) => {
                    if (checkbox.checked) {
                        selectedOptions.push(checkbox.value);
                    }
                });
                // Update the dropdown list
                dropdownList.options[0].selected = false;
                selectedOptions.forEach((value) => {
                    const option = dropdownList.querySelector(`option[value="${value}"]`);
                    if (option) {
                        option.selected = true;
                    }
                });
            });
        });

    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/js/bootstrap-multiselect.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/css/bootstrap-multiselect.min.css" />
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />--%>
    <script src="../dist/js/bootstrap-multiselect.js"></script>

    <script>
        $(document).ready(function () {
            $('.multiselect-ui').multiselect({
                includeSelectAllOption: true
            })
        });
    </script>
</asp:Content>

