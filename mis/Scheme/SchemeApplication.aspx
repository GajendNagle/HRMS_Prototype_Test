<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchemeApplication.aspx.cs" Inherits="mis_Scheme_SchemeApplication" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                    filter: progid:DXImageTransform.Microsoft.gradient(enabled=false)
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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Scheme Master Final</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Scheme Application / योजना आवेदन</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div id="divDataofAU5693" runat="server">
                <ul class="nav nav-pills" style="margin-top: -7px; margin-bottom: 28px;">
                    <li class=" nav-item"><a href="#navpills-1" class="nav-link active tab-menu " data-bs-toggle="tab" aria-expanded="false">Scheme Details</a></li>
                    <li class="nav-item"><a href="#navpills-4" class="nav-link tab-menu" id="NavUploadCertificate" data-bs-toggle="tab" aria-expanded="true">Eligibility and Conditions</a> </li>
                </ul>
                <div class="tab-content br-n pn">
                    <div id="navpills-1" class="tab-pane active">
                        <%--  <fieldset>
                            <legend>Scheme Details / योजना का विवरण  </legend>--%>
                        <fieldset>
                            <legend>Scheme Details / योजना का विवरण </legend>
                            <div class="row align-items-end">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Scheme Applicable From
                                        <br />
                                            योजना लागू<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="General">2023-2024</option>
                                            <option value="General">2024-2025</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Scheme Owned Department
                                            <br />
                                            योजना स्वामित्व विभाग<span style="color: red">*</span></label>
                                        <select id="dates-field2" class="multiselect-ui " multiple="multiple">
                                            <option value="School Educstion Department">School Educstion Department</option>
                                            <option value="Scheduled Cast Welfare Department">Scheduled Cast Welfare Department</option>
                                            <option value="Tribal Affairs Department">Tribal Affairs Department</option>
                                            <option value="GOVT BEEJ NIGAM">GOVT BEEJ NIGAM</option>
                                            <option value="Backward Classes and Minorities Department">Backward Classes and Minorities Department</option>
                                        </select>
                                    </div>
                                </div>
                                <%--  <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Scheme Owned Department
                                        <br />
                                            योजना स्वामित्व विभाग<span style="color: red">*</span></label>
                                        <select id="dates-field2" class="multiselect-ui color" multiple="multiple" style="border: 1px solid #7c4baf;" >
                                            <option value="School Educstion Department">School Educstion Department</option>
                                            <option value="Scheduled Cast Welfare Department">Scheduled Cast Welfare Department</option>
                                            <option value="Tribal Affairs Department">Tribal Affairs Department</option>
                                            <option value="GOVT BEEJ NIGAM">GOVT BEEJ NIGAM</option>
                                            <option value="Backward Classes and Minorities Department">Backward Classes and Minorities Department</option>
                                        </select>
                                    </div>
                                </div>--%>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Scheme Name (In English)<br />
                                            योजना का नाम (अंग्रेजी में)<span style="color: red">*</span></label>
                                        <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="Enetr Scheme Name (In English)" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Scheme Name (In Hindi)<br />
                                            योजना का नाम (हिंदी में)<span style="color: red">*</span></label>
                                        <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="Enetr Scheme Name (In Hindi)" />

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Eligible for Category
                                        <br />
                                            पात्र श्रेणी <span style="color: red">*</span></label>
                                        <select id="dates-field2" class="multiselect-ui " multiple="multiple">
                                            <option value="General">General</option>
                                            <option value="OBC">OBC</option>
                                            <option value="SC">SC</option>
                                            <option value="ST">ST</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Eligible for Minority Community<br />
                                            अल्पसंख्यक समुदाय के लिए पात्र<span style="color: red">*</span></label>
                                        <select id="dates-field2" class="multiselect-ui form-control" multiple="multiple">
                                            <option value="Jain">Jain</option>
                                            <option value="Muslim">Muslim</option>
                                            <option value="Sikh">Sikh</option>
                                            <option value="Others">Others</option>
                                            <option value="None">None</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for BPL Status<br />
                                            बीपीएल स्थिति के लिए लागू
                                        <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>Yes</option>
                                            <option>No</option>
                                        </select>


                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for Vimukt<br />
                                            विमुक्त के लिए लागू<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>Yes</option>
                                            <option>No</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for Maximum Sibling Count<br />
                                            अधिकतम भाई-बहन की संख्या के लिए लागू
                                        <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4" id="ApplicableforDisability">
                                    <div class="form-group">
                                        <label>
                                            Applicable for Disability<br />
                                            विकलांगता के लिए लागू<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="disabilityChooser">
                                            <option>--Select--</option>
                                            <option>Yes</option>
                                            <option>No</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4" id="ApplicableforDisabilityType" style="display: none;">
                                    <div class="form-group">
                                        <label>
                                            Applicable for Disability Type<br />
                                            विकलांगता प्रकार के लिए लागू
                                        <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>Blindness</option>
                                            <option>Low Vision</option>
                                            <option>Hearing Impairment</option>
                                            <option>Locomotor Disability</option>
                                            <option>Speech and Language Disability</option>
                                            <option>Hearing Impairment</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4" id="SelectDisabilityPercentage" style="display: none;">
                                    <div class="form-group">
                                        <label>
                                            Select Disability Percentage<br />
                                            विकलांगता प्रतिशत चुनें
                                        <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>10 %</option>
                                            <option>20 %</option>
                                            <option>30 %</option>
                                            <option>40 %</option>
                                            <option>50 %</option>
                                            <option>60 %</option>
                                            <option>70 %</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for Single Girl Child<br />
                                            इकलौती बेटी के लिए लागू
                                        <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>Yes</option>
                                            <option>No</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for Father-less Students<br />
                                            पिता रहित छात्रों के लिए लागू
                                        <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>Yes</option>
                                            <option>No</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Select Father-less Student<br />
                                            पिता-विहीन विद्यार्थी का चयन करें
                                        <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>Boy</option>
                                            <option>Girl</option>
                                            <option>Both</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4" id="ApplicableforFamily">
                                    <div class="form-group">
                                        <label>
                                            Applicable for Family Income Range<br />
                                            पारिवारिक आय सीमा<span style="color: red">*</span></label>
                                        <select id="dates-field2" class="multiselect-ui" multiple="multiple">
                                            <option value="0-50000">0-50000</option>
                                            <option value="50001-100000">50001-100000</option>
                                            <option value="100001-350000">100001-300000</option>
                                            <option value="300000-500000">300000-500000</option>
                                            <option value="more than 500000">more than 500000</option>
                                        </select>
                                        <div id="errorMessage" class="error-message" style="display: none;">Please upload Income Tax Certificate for more than 300000.</div>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Select Family Occupation<br />
                                            पारिवारिक व्यवसाय चुनें<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>Teacher</option>
                                            <option>Labour</option>
                                            <option>Farmer</option>
                                            <option>Business</option>
                                            <option>Govt. Employee</option>
                                            <option>Pvt. Employee</option>
                                            <option>Retired</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Select Family Residence<br />
                                            पारिवारिक निवास का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option>--Select--</option>
                                            <option>Within State</option>
                                            <option>Outside State</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row justify-content-center">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <button type="button" class="Alert-Confirmation2 btn btn-outline-success btn-border w-lg">Save & Next</button>

                                        <a href="SchemeApplication.aspx" class=" btn btn-outline-danger btn-border w-lg">Clear</a>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <%--</fieldset>--%>

                    <div id="navpills-4" class="tab-pane">
                        <fieldset>
                            <legend>Eligibility and Conditions / पात्रता एवं शर्तें</legend>
                            <div class="row align-items-end">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for School Management Group<br />
                                            लागू स्कूल प्रबंधन समूह <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="State Government">State Government</option>
                                            <option value="Central Government">Central Government</option>
                                            <option value="Government">Government Aided</option>
                                            <option value="Other">Other</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for School Management Group Details<br />
                                            लागू स्कूल प्रबंधन समूह के लिए विवरण<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Department of Education">Department of Education</option>
                                            <option value="Ministory of Labour">Ministory of Labour</option>
                                            <option value="Local Body">Local Body</option>
                                            <option value="Others">Others</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for Board Type<br />
                                            लागू बोर्ड प्रकार<span style="color: red">*</span></label>
                                        <select id="dates-field2" class="multiselect-ui " multiple="multiple">
                                            <option value="MP Board">MP Board</option>
                                            <option value="CBSE">CBSE</option>
                                            <option value="ICSE">ICSE</option>
                                            <option value="Madras Board">Madras Board</option>
                                            <option value="Others State University">Others State University</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            School Type<br />
                                            स्कूल का प्रकार <span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Government">Government</option>
                                            <option value="Private">Private</option>
                                            <option value="Both">Both</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for School Category<br />
                                            लागू स्कूल श्रेणी <span style="color: red">*</span></label>
                                        <select id="dates-field2" class="multiselect-ui " multiple="multiple">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Primary">Primary</option>
                                            <option value="Upper Primary">Upper Primary</option>
                                            <option value="Middle School">Middle School</option>
                                            <option value="High School">High School</option>
                                            <option value="Higher Secondary School">Higher Secondary School</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Applicable for School Category Details<br />
                                            लागू स्कूल श्रेणी विवरण<span style="color: red">*</span></label>
                                        <select id="dates-field2" class="multiselect-ui " multiple="multiple">
                                            <option value="1-5">1-5</option>
                                            <option value="6-8">6-8</option>
                                            <option value="9-10">9-10</option>
                                            <option value="9-12">9-12</option>
                                            <option value="11-12">11-12</option>
                                            <option value="1-8">1-8</option>
                                            <option value="1-10">1-10</option>
                                            <option value="1-12">1-12</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Maximum Education Gap of<br />
                                            अधिकतम शिक्षा अंतर<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="1 Years">1 Years</option>
                                            <option value="2 Years">2 Years</option>
                                            <option value="3 Years">3 Years</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Select Applicable for Student Residence<br />
                                            छात्र निवास के लिए लागू का चयन करें<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="StudentResidence">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Day Scholar">Day Scholar</option>
                                            <option value="Hosteller">Hosteller</option>
                                            <option value="Both">Both</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-4" id="SelectApplicableGender">
                                    <div class="form-group">
                                        <label>
                                            Select Applicable Gender
                   <br />
                                            लागू लिंग चुनें<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="GenderChooser">
                                            <option value="Select">Select</option>
                                            <option value="Boys">Boys</option>
                                            <option value="Girls">Girls</option>
                                            <option value="Both">Both</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4" id="forBoys" style="display: none;">
                                    <div class="form-group">
                                        <label>
                                            Scheme Beneficiary Amount (for Boys)<br />
                                            योजना लाभार्थी राशि (लड़कों के लिये)<span style="color: red">*</span></label>
                                        <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="Enter Scheme Beneficiary Amount" />
                                    </div>
                                </div>
                                <div class="col-md-4" id="forGirls" style="display: none;">
                                    <div class="form-group">
                                        <label>
                                            Scheme Beneficiary Amount (for Girls)<br />
                                            योजना लाभार्थी राशि(लड़कियों के लिये)<span style="color: red">*</span></label>
                                        <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="Enter Scheme Beneficiary Amount" />
                                    </div>
                                </div>

                                <div class="col-md-4" style="display: none" id="Hostller">
                                    <div class="form-group">
                                        <label>
                                            Enter Beneficiary Amount (Hostller)<br />
                                            लाभार्थी राशि दर्ज करें (छात्रावास)<span style="color: red">*</span></label>
                                        <input name="ename" id="Amount" type="text" class="form-control" autocomplete="off" placeholder="Enter Beneficiary Amount" />
                                    </div>
                                </div>
                                <div class="col-md-4" id="AdditionalBenefitAmount" style="display: none;">
                                    <div class="form-group">
                                        <label>
                                            Additional Benefit Amount for Physically Challanged<br />
                                            शारीरिक रूप से विकलांगों के लिए अतिरिक्त लाभ राशि<span style="color: red">*</span></label>
                                        <select class="form-control select2" id="GenderChooser">
                                            <option value="Select">Select</option>
                                            <option value="10%">10%</option>
                                            <option value="20%">20%</option>
                                            <option value="30%">30%</option>
                                            <option value="40%">40%</option>
                                            <option value="50%">50%</option>
                                            <option value="60%">60%</option>
                                            <option value="70%">70%</option>
                                            <option value="80%">80%</option>
                                        </select>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Select Applicable for Student's DOB<br />
                                            छात्र की लागू जन्मतिथि का चयन करें<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" value="Education" />

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>
                                            Scheme Valid Upto<br />
                                            योजना वैध<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" value="Education" />
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row justify-content-center">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <button type="button" onclick="myFunction()" class=" Alert-Confirmation2 btn btn-outline-success  btn-border w-lg">Save</button>
                                        <button type="button" class=" btn btn-outline-warning  btn-border w-lg">Update</button>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        document.getElementById('disabilityChooser').addEventListener('change', function () {
            var selectedValue = this.value;
            var disabilityType = document.getElementById('ApplicableforDisabilityType');
            var disabilityPercentage = document.getElementById('SelectDisabilityPercentage');
            var AdditionalBenefitAmount = document.getElementById('AdditionalBenefitAmount');

            if (selectedValue === 'Yes') {
                disabilityType.style.display = 'block';
                disabilityPercentage.style.display = 'block';
                AdditionalBenefitAmount.style.display = 'block';
            } else {
                disabilityType.style.display = 'none';
                disabilityPercentage.style.display = 'none';
                AdditionalBenefitAmount.style.display = 'none';
            }
        });
    </script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/js/bootstrap-multiselect.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/css/bootstrap-multiselect.min.css" />


    <script>
        document.getElementById('GenderChooser').addEventListener('change', function () {
            var selectedValue = this.value;
            var forBoys = document.getElementById('forBoys');
            var forGirls = document.getElementById('forGirls');

            if (selectedValue === 'Boys') {
                forBoys.style.display = 'block';
                forGirls.style.display = 'none';
            } else if (selectedValue === 'Girls') {
                forBoys.style.display = 'none';
                forGirls.style.display = 'block';

            } else if (selectedValue === 'Both') {
                forBoys.style.display = 'block';
                forGirls.style.display = 'block';

            } else if (selectedValue === 'Select') {
                forBoys.style.display = 'none';
                forGirls.style.display = 'none';
            }
            else {
                forBoys.style.display = 'none';
                forGirls.style.display = 'none';
            }
        });
    </script>


    <script>
        document.getElementById('StudentResidence').addEventListener('change', function () {
            var selectedValue = this.value;
            var Hostller = document.getElementById('Hostller');

            if (selectedValue === 'Both') {
                Hostller.style.display = 'block';
            }
            else {
                Hostller.style.display = 'none';
            }
        });
    </script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />--%>
    <script src="../dist/js/bootstrap-multiselect.js"></script>

    <script>
        $(function () {
            $('.multiselect-ui').multiselect({
                includeSelectAllOption: true
            });

        });
    </script>

    <script>
        //debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Confirmation2').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Saved Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            ).then(() => {
        // Redirect to another page after success message is closed
                            <%--    document.getElementById('<%= navpills-4.ClientID %>').style.display = "none";--%>
                                document.getElementById("NavUploadCertificate").click();
                            });
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <%--<script>
        document.getElementById('dates-field2').addEventListener('change', function () {
            var selectedValues = Array.from(this.selectedOptions).map(option => option.value);
            var uploadDiv = document.getElementById('UploadIncomeTax');
            var errorMessage = document.getElementById('errorMessage');

            if (selectedValues.includes('more than 300000')) {
                uploadDiv.style.display = 'block';
                errorMessage.style.display = 'none';
            } else {
                uploadDiv.style.display = 'none';
                errorMessage.style.display = 'block';
            }
        });
    </script>--%>
</asp:Content>
