<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_SchoolRegistration.aspx.cs" Inherits="mis_Masters_Mst_SchoolRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <link href="../dist/css/bootstrap-multiselect.css" rel="stylesheet" />
    <link href="../dist/css/bootstrap-select.css" rel="stylesheet" />
    <link href="../dist/css/multi-select.css" rel="stylesheet" />
    <link href="../dist/css/select2.min.css" rel="stylesheet" />
    <link href="../dist/css/site.css" rel="stylesheet" />
    <style>
        @media print {
            .noprint {
                display: none;
            }

            .table-responsive {
                overflow: hidden;
            }
        }
    </style>
    <style>
        .table-bordered > tbody > tr > th {
            text-align: center;
        }
    </style>

    <script>
        function showHideDiv() {
            var dropdown = document.getElementById("dropdown");
            var divnagarnigam = document.getElementById("divnagarnigam");
            var divnagarpalika = document.getElementById("divnagarpalika");
            var divward = document.getElementById("divward");
            var divZilapanchayat = document.getElementById("divZilapanchayat");
            var divjanpad = document.getElementById("divjanpad");
            var divgram = document.getElementById("divgram");
            var divvillage = document.getElementById("divvillage");
            var divhabitation = document.getElementById("divhabitation");
            var divdistance = document.getElementById("divdistance");
            var divdistanceByRoad = document.getElementById("divdistanceByRoad");

            if (dropdown.value === "1") {
                // If option 1 is selected, show div1 and hide div2
                divnagarnigam.style.display = "block";
                divnagarpalika.style.display = "block";
                divward.style.display = "block";

                divZilapanchayat.style.display = "none";
                divjanpad.style.display = "none";
                divgram.style.display = "none";
                divvillage.style.display = "none";
                divhabitation.style.display = "none";
                divdistance.style.display = "none";
                divdistanceByRoad.style.display = "none";

            } else if (dropdown.value === "2") {
                // If option 2 is selected, show div2 and hide div1
                divnagarnigam.style.display = "none";
                divnagarpalika.style.display = "none";
                divward.style.display = "none";

                divZilapanchayat.style.display = "block";
                divjanpad.style.display = "block";
                divgram.style.display = "block";
                divvillage.style.display = "block";
                divhabitation.style.display = "block";
                divdistance.style.display = "block";
                divdistanceByRoad.style.display = "block";
            }
            else if (dropdown.value === "3") {
                divnagarnigam.style.display = "none";
                divnagarpalika.style.display = "none";
                divward.style.display = "none";

                divZilapanchayat.style.display = "none";
                divjanpad.style.display = "none";
                divgram.style.display = "none";
                divvillage.style.display = "none";
                divhabitation.style.display = "none";
                divdistance.style.display = "none";
                divdistanceByRoad.style.display = "none";
            }
        }



    </script>
    <style>
        #divnagarnigam {
            display: none;
        }

        #divnagarpalika {
            display: none;
        }

        #divward {
            display: none;
        }

        #divZilapanchayat {
            display: none;
        }

        #divjanpad {
            display: none;
        }

        #divgram {
            display: none;
        }

        #divvillage {
            display: none;
        }

        #divhabitation {
            display: none;
        }

        #divdistance {
            display: none;
        }

        #divdistanceByRoad {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">OIS Registration</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item active">OIS Registration</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Office/Institute/School Registration</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Registration Type <span style="color: red">*</span></label>
                                <%--     <select class="form-control">
                                <option selected="selected" value="0">--Select--</option>
                                <option value="2">Office Registration</option>
                                <option value="3">Institute Registration</option>
                                <option value="1">School Registration</option>

                            </select>--%>
                                <asp:DropDownList runat="server" ID="ddlRegistrationType" OnSelectedIndexChanged="ddlFYear_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="2">Office Registration</asp:ListItem>
                                    <asp:ListItem Value="3">Institute Registration</asp:ListItem>
                                    <asp:ListItem Value="1">School Registration</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Financial Year <span style="color: red">*</span></label>

                                <asp:DropDownList runat="server" ID="ddlFinancialYear" CssClass="form-control">
                                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem>2024-25</asp:ListItem>
                                    <asp:ListItem>2023-24</asp:ListItem>
                                    <asp:ListItem>2022-23</asp:ListItem>
                                    <asp:ListItem>2021-22</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div runat="server" id="divOffice">
                    <fieldset>
                        <legend>Office Basic Details</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Office Type<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Head Office</option>
                                        <option value="Bhopal">JOINT DIRECTORS</option>
                                        <option value="Bhopal">DISTRICT EDUCATION OFFICERS</option>
                                        <option value="Bhopal">BLOCK EDUCATION OFFICERS</option>
                                        <option value="Bhopal">SANKUL/AEO</option>
                                        <option value="Bhopal">SCHOOL</option>
                                        <option value="Principal Secretary">Principal Secretary</option>
                                        <option value="Secretary">Secretary</option>
                                        <option value="Deputy Secretary">Deputy Secretary</option>
                                        <option value="CPI">CPI</option>
                                        <option value="CRSK">CRSK</option>
                                        <option value="DPI">DPI</option>
                                        <option value="Collector">Collector</option>
                                        <option value="CEO, ZP">CEO, ZP</option>
                                        <option value="DPC">DPC</option>
                                        <option value="BRC">BRC</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Office Name (In English)<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Office Name" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>कार्यालय नाम (हिंदी में)<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="कार्यालय का नाम दर्ज करे" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Office Code No.<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Office Code No." />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Division <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Narmadapuram">Narmadapuram</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Ujjain">Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>District<span style="color: red">*</span></label>
                                    <select class="form-control select2">
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
                                    <label>Block<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
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
                                    <label>Village<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="BARODI">BARODI</option>
                                        <option value="Agra">Agra</option>
                                        <option value="Amalya">Amalya</option>
                                        <option value="Arjunkhedi">Arjunkhedi</option>
                                        <option value="Babukhedi">Babukhedi</option>
                                        <option value="Barrai">Barrai</option>
                                        <option value="Bhesoda">Bhesoda</option>
                                        <option value="Garha Kalan">Garha Kalan</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Address (Line 1)<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter School Address (Line 1)" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Address (Line 2)</label>
                                    <input type="text" class="form-control" placeholder="Enter School Address (Line 2)" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pincode</label>
                                    <input type="text" class="form-control" placeholder="Enter Pincode" />
                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Office Landline Number<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Office Landline No." />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Office Email ID<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Office Email ID" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Office Establishment Date</label>
                                    <input type="date" class="form-control" placeholder="" />
                                </div>
                            </div>

                            <div class="col-md-1 mt-3">
                                <label>IsActive<i style="color: red;">*</i></label>
                                <br />
                                <asp:CheckBox Checked="true" runat="server" />
                            </div>

                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Office Bank Details</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Bank Type<span style="color: red;">*</span></label>
                                    <select class="form-control select2 " id="BankTypeId" name="BankTypeId" data-select2-id="BankTypeId" tabindex="-1" aria-hidden="true">
                                        <option value="" data-select2-id="64">Select</option>
                                        <option value="1" data-select2-id="147">Public Sector Commercial Banks</option>
                                        <option value="2" data-select2-id="148">Private  Sector  Commercial Banks</option>
                                        <option value="3" data-select2-id="149">Regional Rural Banks</option>
                                        <option value="4" data-select2-id="150">Co-operative Banks</option>
                                        <option value="5" data-select2-id="151">Small Finance Banks</option>
                                    </select>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>IFSC Code<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="">--Select--</option>
                                        <option value="SBIN0001308">SBIN0001308</option>
                                        <option value="SBIN0003099">SBIN0003099</option>
                                        <option value="HDFC0000062">HDFC0000062</option>
                                        <option value="UBIN0532525">UBIN0532525</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Bank Name<span style="color: red;">*</span></label>
                                    <%--<input type="text" class="form-control" placeholder="Enter Bank Name" />--%>
                                    <select class="form-control select2">
                                        <option value="">--Select--</option>
                                        <option value="sbi">State Bank of India (SBI)</option>
                                        <option value="boi">Bank of India (BOI)</option>
                                        <option value="central_bank">Central Bank of India</option>
                                        <option value="union_bank">Union Bank of India</option>
                                        <option value="hdfc">HDFC Bank</option>
                                    </select>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Account Number<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Account No." />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Office Geographical Details</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Latitude<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Latitude" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Longitude<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Longitude" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Office Incharge Details</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Unique Id<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter In Charge Unique ID" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Name<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter In Charge Name" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Mobile Number <span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter In Charge Mobile No." />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Email ID<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter In Charge Email ID" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="row justify-content-center">
                        <div class="col-md-3 mt-4 text-center">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="Mst_SchoolRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                    <%--<fieldset>
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>Office Type</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Office Type</strong> and data populated from <strong>Office Type Master</strong>. </li>
                                        </ul>

                                    </li>
                                    <li><strong>Office name (In English)</strong>

                                        <ul>
                                            <li>User will be able to enter the <strong>Office name in English</strong> and the text field will accept <strong>only English letters.</strong> </li>
                                        </ul>

                                    </li>
                                    <li><strong>कार्यालय  का नाम (हिंदी में)</strong>

                                        <ul>
                                            <li>User will be able to enter the <strong>Office name in Hindi </strong>and the text field will accept <strong>only Hindi letters.</strong> </li>
                                        </ul>

                                    </li>
                                    <li><strong>Office Code </strong>
                                        <ul>
                                            <li>User will be able to enter the <strong>Office Code </strong>and the text field will accept <strong>only numerical values.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Division Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Division name </strong>from dropdown. Data populated from <strong>Division master </strong>as cascade from <strong>state name.</strong> </li>
                                        </ul>
                                    </li>


                                    <li><strong>District Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>District name </strong>from dropdown. Data populated from <strong>District master </strong>as cascade from <strong>State and  Division Name.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Block Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Block name </strong>from dropdown. Data populated from <strong>Block master </strong>as cascade from <strong>State, Division and District name.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Village Name </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Village Name </strong>from the dropdown, the data will be populated from the <strong>Village Master </strong>and data cascade from <strong>Division Master, District Master, Block Master and Gram Panchayat Master. </strong></li>
                                        </ul>
                                    </li>

                                    <li><strong>Address (Line1/Line 2)  </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Office Address</strong> and the text field should accept in<strong> alphanumeric.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Pin Code </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Pin Code</strong> and the text field should accept in <strong>numeric</strong>. </li>
                                        </ul>
                                    </li>

                                    <li><strong>Office Landline No </strong>
                                        <ul>
                                            <li>User should be able to enter  <strong>Office Landline No.</strong> and the text field should accept <strong>in numeric.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Office Email ID </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Office Email Id</strong> and the text field should accept in <strong>alphanumeric with special character</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Office Establishment Date </strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Year of Establishment</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Bank Name </strong>
                                        <ul>
                                            <li>User will be able to enter <strong>Bank name (First Time only)</strong>, the text field should accept <strong>in character.</strong></li>
                                            <li>It will be Drop down selection.</li>
                                        </ul>
                                    </li>
                                    <li><strong>IFSC Code </strong>
                                        <ul>
                                            <li>User will be able to enter <strong>IFSC detail (First Time only)</strong>, the text field should accept <strong>in Alpha numeric.</strong></li>
                                            <li>It will be Drop down selection.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Account No. </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Account Detail</strong>, the text field should accept in Alpha Numeric.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Latitude </strong>
                                        <ul>
                                            <li>Text Field Accept <strong>decimal Numbers Only.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Longitude </strong>
                                        <ul>
                                            <li>Text Field Accept <strong>decimal Numbers Only.</strong></li>
                                        </ul>
                                    </li>

                                    <li><strong>In Charge Unique ID (Employee ID) </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>In Charge Unique ID (Employee ID) </strong>and the text field should accept <strong>in alphanumeric.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Name </strong>
                                        <ul>
                                            <li><strong>Name</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Mobile No </strong>
                                        <ul>
                                            <li><strong>Mobile No</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Email Id </strong>
                                        <ul>
                                            <li><strong>Email ID</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Is Active (Checkbox)</strong>
                                        <ul>
                                            <li>If <strong>Is Active (Checkbox)</strong> is checked then need to show in every dependent <strong>Report / Dropdown Field / In Calculations</strong>.</li>
                                            <li><strong>Is Active checkbox</strong> is always be <strong>Checked/Active</strong>.</li>
                                            <li>The user must have the right to check or uncheck the Is Active Checkbox. </li>
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
                                    <li><strong>PDF</strong>
                                        <ul>
                                            <li>PDF button should be visible and user should be able to click.</li>
                                            <li>After clicking on PDF button grid view data export in PDF.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Excel</strong>
                                        <ul>
                                            <li>Excel button should be visible and user should be able to click.</li>
                                            <li>After clicking on Excel button grid view data export in Excel.</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>--%>
                </div>
                <div runat="server" id="divInstitute">
                    <fieldset>
                        <legend>Institute Basic Information</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Institute Type<span style="color: red;"> *</span></label>
                                    <select class="form-select form-control select2">
                                        <option>-select-</option>
                                        <option>Maharshi Pathanjali Sanskrit Sansthan, Bhopal</option>
                                        <option>Other Institutes/Colleges</option>
                                        <option>District Institute of Education & Training/District resource coordinator</option>
                                        <option>Libraries</option>
                                        <option>Kasturba Gandhi Balika Vidyalaya</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Institute Code<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Institute Code" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Institute Name (In English)<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Institute Name (In English)" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>संस्थान का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="संस्थान का नाम दर्ज करे|" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Year of Establishment<span style="color: red;">*</span></label>

                                    <input type="date" class="form-control your-selector" />

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Management Group<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="A-State Govt">A-State Govt</option>
                                        <option value="B-Govt Aided">B-Govt Aided</option>
                                        <option value="C-Private UnAided ">C-Private UnAided </option>
                                        <option value="D-Central Govt">D-Central Govt</option>
                                        <option value="E-Other">E-Other</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Management Group Details<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="1-Department of Education">1-Department of Education</option>
                                        <option value="2-Tribal Welfare Department">2-Tribal Welfare Department</option>
                                        <option value="3-Local Body ">3-Local Body </option>
                                        <option value="4-Government Aided ">4-Government Aided </option>
                                        <option value="5-Private Unaided (Recognized)">5-Private Unaided (Recognized)</option>
                                        <option value="6-Other State Govt. Managed ">6-Other State Govt. Managed </option>

                                    </select>
                                </div>
                            </div>

                            <%--<div class="col-md-3">
                                <div class="form-group">
                                    <label>Minority Community <span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="1-Muslim">1-Muslim</option>
                                        <option value="2-Sikh">2-Sikh</option>
                                        <option value="3-Jain">3-Jain</option>
                                        <option value="4-Christian">4-Christian</option>
                                        <option value="5-Parsi">5-Parsi</option>

                                    </select>
                                </div>
                            </div>--%>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Institute Shift <span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Morning">Morning</option>
                                        <option value="Afternoon">Afternoon</option>
                                        <option value="Both">Both</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Is Institute Residential<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Yes">Yes</option>
                                        <option selected="selected" value="No">No</option>

                                    </select>
                                </div>
                            </div>
                            <%--<div class="col-md-3">
                                <div class="form-group">
                                    <label>Institute Status<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Functional">Functional</option>
                                        <option value="Closed">Closed</option>
                                        <option value="Merged">Merged</option>

                                    </select>
                                </div>
                            </div>--%>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Hostel Facility<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-1 mt-3">
                                <label>IsActive<i style="color: red;">*</i></label>
                                <br />
                                <asp:CheckBox Checked="true" runat="server" />
                            </div>

                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Institute Address Information</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Division <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Narmadapuram">Narmadapuram</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Ujjain">Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>District<span style="color: red">*</span></label>
                                    <select class="form-control select2">
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
                                    <label>Block<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
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
                                    <label>Parliament<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Vidisha">Vidisha</option>
                                        <option value="Morena">Morena</option>
                                        <option value="Bhind">Bhind</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Dhar">Dhar</option>
                                        <option value="Khandwa">Khandwa</option>
                                        <option value="Khargone">Khargone</option>
                                        <option value="Balaghat">Balaghat</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Mandla">Mandla</option>
                                        <option value="Betul">Betul</option>
                                        <option value="Narmadapuram">Narmadapuram</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sidhi">Sidhi</option>
                                        <option value="Khajuraho">Khajuraho</option>
                                        <option value="Damoh">Damoh</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Tikamgarh">Tikamgarh</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Mandsaur">Mandsaur</option>
                                        <option value="Ratlam">Ratlam</option>
                                        <option value="Ujjain">Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Assembly <span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Govindpura">Govindpura</option>
                                        <option value="Huzur">Huzur</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Area <span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="0">-Select-</option>
                                        <option value="1-Urban">1-Urban</option>
                                        <option value="2-Rural">2-Rural</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Nagar Nigam<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Ujjain">Ujjain</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Katni">Katni</option>
                                        <option value="Chhindwara">Chhindwara</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Nagar Palika<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Berasia">Berasia</option>
                                        <option value="Begumganj">Begumganj</option>
                                        <option value="Mandideep">Mandideep</option>
                                        <option value="Biaora">Biaora</option>
                                        <option value="Narsinghgarh">Narsinghgarh</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Sarangpur">Sarangpur</option>
                                        <option value="Sehore">Sehore</option>
                                        <option value="Ashta">Ashta</option>
                                        <option value="Vidisha">Vidisha</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Zila Panchayat<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Berasia">Berasia</option>
                                        <option value="Phanda">Phanda</option>
                                        <option value="ALIRAJPUR ">ALIRAJPUR </option>
                                        <option value="ASHOKNAGAR ">ASHOKNAGAR </option>
                                        <option value="JAITHARI ">JAITHARI </option>
                                        <option value="KOTMA ">KOTMA </option>
                                        <option value="PUSHPRAJ GARH">PUSHPRAJ GARH</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Janpad Panchayat<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="BARODI">BARODI</option>
                                        <option value="DEPALPUR ">DEPALPUR </option>
                                        <option value="MHOW ">MHOW </option>
                                        <option value="SANWER ">SANWER </option>
                                        <option value="BHANDER">BHANDER </option>
                                        <option value="DATIA ">DATIA </option>
                                        <option value="SEONDHA ">SEONDHA </option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Gram Panchayat<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="AMARPUR">AMARPUR</option>
                                        <option value="ANKIA">ANKIA</option>
                                        <option value="ARJUNKHEDI">ARJUNKHEDI</option>
                                        <option value="ARRAWATI">ARRAWATI</option>
                                        <option value="BABACHIYA">BABACHIYA</option>
                                        <option value="BADBELI KALAN">BADBELI KALAN</option>
                                        <option value="BAGSI">BAGSI</option>
                                        <option value="BAHRAWAL">BAHRAWAL</option>
                                        <option value="BAIRAGARH">BAIRAGARH</option>
                                        <option value="BANDARUA">BANDARUA</option>
                                        <option value="BARKHEDA">BARKHEDA</option>
                                        <option value="BARAMAD">BARAMAD</option>
                                        <option value="BARODI">BARODI</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Village<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="BARODI">BARODI</option>

                                        <option value="Agra">Agra</option>
                                        <option value="Amalya">Amalya</option>
                                        <option value="Arjunkhedi">Arjunkhedi</option>
                                        <option value="Babukhedi">Babukhedi</option>
                                        <option value="Barrai">Barrai</option>
                                        <option value="Bhesoda">Bhesoda</option>
                                        <option value="Garha Kalan">Garha Kalan</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Habitation </label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Berasia">Berasia</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Address (Line 1)<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Institute Address (Line 1)" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Address (Line 2)</label>
                                    <input type="text" class="form-control" placeholder="Enter Institute Address (Line 2)" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pincode</label>
                                    <input type="text" class="form-control" placeholder="Enter Pincode No." />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Institute Contact Details</legend>
                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Type<span style="color: red;"> *</span></label>
                                    <%--      <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="1-Head Master / Principal ">1-Head Master / Principal </option>
                                        <option value="2-Asst. head Master  / VP">2-Asst. head Master  / VP</option>
                                        <option value="3-Acting Head Teacher ">3-Acting Head Teacher </option>
                                        <option value="4-Other">4-Other</option>

                                    </select>--%>

                                    <asp:DropDownList ID="ddl_Inst_InchargeType" runat="server" CssClass="form-control select2">
                                        <asp:ListItem Value="">-Select-</asp:ListItem>
                                        <asp:ListItem Value="1">1-Head Master / Principal</asp:ListItem>
                                        <asp:ListItem Value="2">2-Asst. head Master  / VP</asp:ListItem>
                                        <asp:ListItem Value="3">3-Acting Head Teacher</asp:ListItem>
                                        <asp:ListItem Value="4">4-Other</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Unique Id<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" ID="InChargeUniqueId" class="form-control" placeholder="Enter In Charge Unique ID" OnTextChanged="InChargeUniqueId_TextChanged" AutoPostBack="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Name<span style="color: red;"> *</span></label>

                                    <asp:TextBox runat="server" ID="txtInst_InChargeName" class="form-control" placeholder="Enter In Charge Name"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Mobile Number <span style="color: red;">*</span></label>

                                    <asp:TextBox runat="server" ID="txtInst_InchargeMobile" class="form-control" placeholder="Enter In Charge Mobile No."></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Email ID<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" ID="txtInst_InchargeEmail" class="form-control" placeholder="Enter In Charge Email ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>In Charge Designation<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option selected value="1-Head Master / Principal ">1-Head Master / Principal </option>
                                        <option value="2-Asst. head Master  / VP">2-Asst. head Master  / VP</option>
                                        <option value="3-Acting Head Teacher ">3-Acting Head Teacher </option>
                                        <option value="4-Other">4-Other</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Institute Landline Number<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Institute Landline No." />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Institute Email ID<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Institute Email ID" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Institute Website</label>
                                    <input type="text" class="form-control" placeholder="Enter Institute Website" />
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Institute Bank Details</legend>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Bank Type<span style="color: red;">*</span></label>
                                    <select class="form-control select2 " id="BankTypeId" name="BankTypeId" data-select2-id="BankTypeId" tabindex="-1" aria-hidden="true">
                                        <option value="" data-select2-id="64">Select</option>
                                        <option value="1" data-select2-id="147">Public Sector Commercial Banks</option>
                                        <option value="2" data-select2-id="148">Private  Sector  Commercial Banks</option>
                                        <option value="3" data-select2-id="149">Regional Rural Banks</option>
                                        <option value="4" data-select2-id="150">Co-operative Banks</option>
                                        <option value="5" data-select2-id="151">Small Finance Banks</option>
                                    </select>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>IFSC Code<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="">--Select--</option>
                                        <option value="SBIN0001308">SBIN0001308</option>
                                        <option value="SBIN0003099">SBIN0003099</option>
                                        <option value="HDFC0000062">HDFC0000062</option>
                                        <option value="UBIN0532525">UBIN0532525</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Bank Name<span style="color: red;">*</span></label>
                                    <%--<input type="text" class="form-control" placeholder="Enter Bank Name" />--%>
                                    <select class="form-control select2">
                                        <option value="">--Select--</option>
                                        <option value="sbi">State Bank of India (SBI)</option>
                                        <option value="boi">Bank of India (BOI)</option>
                                        <option value="central_bank">Central Bank of India</option>
                                        <option value="union_bank">Union Bank of India</option>
                                        <option value="hdfc">HDFC Bank</option>
                                    </select>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Account Number<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Account No." />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Institute Geographical Data</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Latitude<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Latitude" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Longitude<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Longitude" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="row justify-content-center">
                        <div class="col-md-2 mt-4">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="Mst_SchoolRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                    <%--<fieldset>
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>Institute  Code</strong>

                                        <ul>
                                            <li>User will be able to enter the <strong>Institute Code </strong>and the text field will accept <strong>only numerical values.</strong> </li>
                                        </ul>

                                    </li>
                                    <li><strong>Institute name (In English)</strong>

                                        <ul>
                                            <li>User will be able to enter the <strong>Institute name in English</strong> and the text field will accept <strong>only English letters.</strong> </li>
                                        </ul>

                                    </li>
                                    <li><strong>संस्थान का नाम (हिंदी में)</strong>

                                        <ul>
                                            <li>User will be able to enter the <strong>Institute name in Hindi </strong>and the text field will accept <strong>only Hindi letters.</strong> </li>
                                        </ul>

                                    </li>

                                    <li><strong>Year of Establishment</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Year of Establishment.</strong>  </li>
                                        </ul>

                                    </li>

                                    <li><strong>Board Name</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Board Name</strong> and the data populated to <strong>Institute Board master.</strong>  </li>
                                        </ul>

                                    </li>
                                    <li><strong>Management Group</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Management Group </strong>and the data populated to <strong>Management Group master.</strong> </li>
                                        </ul>

                                    </li>
                                    <li><strong>Management Group Details</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Management Group Detail</strong> and the data populated to <strong>Management Group Detail</strong> and cascading from <strong>Management Group master.</strong> </li>
                                        </ul>

                                    </li>

                                    <li><strong>Minority Community</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Minority community type.</strong> </li>
                                        </ul>

                                    </li>
                                    <li><strong>Institute Shift</strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Institute shift </strong>in this field. </li>
                                        </ul>
                                    </li>
                                    <li><strong>Is Institute Residential</strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Institute residential</strong> status with the selection of <strong>Yes/No.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Institute Status</strong>
                                        <ul>
                                            <li>User will be able to select the<strong>Institute status  </strong>with the <strong>drop down selection.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Hostel Attach</strong>
                                        <ul>
                                            <li>User will be able to select the<strong> Hostel Attach </strong>with the selection of <strong>Yes/No. </strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Division Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Division name </strong>from dropdown. Data populated from <strong>Division master </strong>as cascade from <strong>state name.</strong> </li>
                                        </ul>
                                    </li>


                                    <li><strong>District Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>District name </strong>from dropdown. Data populated from <strong>District master </strong>as cascade from <strong>State and  Division Name.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Block Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Block name </strong>from dropdown. Data populated from <strong>Block master </strong>as cascade from <strong>State, Division and District name.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Parliament</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Parliament Name </strong>from the dropdown, the data will be populated from the <strong>Parliament Master </strong>and data cascade from <strong>Division Master, District Master.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Assembly </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Assembly Name</strong> from the dropdown, the data will be populated from the <strong>Assembly Master </strong>and data cascade from <strong>Division Master, District Master.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Area  </strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Area </strong>with the selection of <strong>Urban/Rural.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Nagar Nigam  </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Nagar Nigam Name</strong> from the dropdown, the data will be populated from the <strong>Nagar Nigam Master  </strong>and data cascade from  <strong>Division Master, District Master and Block Master.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Nagar Palika  </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Nagar Palika Name</strong> from the dropdown, the data will be populated from the <strong>Nagar Palika Master  </strong>and data cascade from  <strong>Division Master, District Master and Block Master.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Zila Panchayat  </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Zila Panchayat Name</strong> from the dropdown, the data will be populated from the <strong>Zila Panchayat Master  </strong>and data cascade from  <strong>Division Master, District Master.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Gram Panchayat Name  </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Gram Panchayat Name</strong> from the dropdown, the data will be populated from the <strong>Gram Panchayat Master  </strong>and data cascade from  <strong>Division Master, District Master and Block Master.</strong>  </li>
                                        </ul>
                                    </li>

                                    <li><strong>Village Name </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Village Name </strong>from the dropdown, the data will be populated from the <strong>Village Master </strong>and data cascade from <strong>Division Master, District Master, Block Master and Gram Panchayat Master. </strong></li>
                                        </ul>
                                    </li>

                                    <li><strong>Habitation Name (In English) </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Habitation Name (In English) </strong>from the dropdown, the data will be populated from the <strong>Habitation  Master </strong>and data cascade from <strong>Division Master, District Master, Block Master and Gram Panchayat Master and Village Master </strong></li>
                                        </ul>
                                    </li>

                                    <li><strong>Address (Line1/Line 2)  </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Institute Address</strong> and the text field should accept in<strong> alphanumeric.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Pin Code </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Pin Code</strong> and the text field should accept in <strong>numeric</strong>. </li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Type </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>In Charge Type </strong>from the dropdown and the data will be populated from the <strong>In Charge Type master</strong>. </li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Unique ID (Employee ID) </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>In Charge Unique ID (Employee ID) </strong>and the text field should accept <strong>in alphanumeric.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Name </strong>
                                        <ul>
                                            <li><strong>Name</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Mobile No </strong>
                                        <ul>
                                            <li><strong>Mobile No</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Email Id </strong>
                                        <ul>
                                            <li><strong>Email ID</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Designation </strong>
                                        <ul>
                                            <li><strong>Designation</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Institute Landline No </strong>
                                        <ul>
                                            <li>User should be able to enter Institute <strong>Landline No.</strong> and the text field should accept <strong>in numeric.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Institute Email ID </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Institute email id</strong> and the text field should accept in <strong>alphanumeric with special character</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Institute Website </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Institute website detail</strong> and the text field should accept <strong>in character.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Bank Name  </strong>
                                        <ul>
                                            <li>User will be able to enter <strong>Bank name (First Time only)</strong>, the text field should accept <strong>in character.</strong></li>
                                            <li>It will be Drop down selection.</li>
                                        </ul>
                                    </li>
                                    <li><strong>IFSC Code </strong>
                                        <ul>
                                            <li>User will be able to enter <strong>IFSC detail (First Time only)</strong>, the text field should accept <strong>in Alpha numeric.</strong></li>
                                            <li>It will be Drop down selection.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Account No. </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Account Detail</strong>, the text field should accept in Alpha Numeric.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Latitude </strong>
                                        <ul>
                                            <li>Text Field Accept <strong>decimal Numbers Only.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Longitude </strong>
                                        <ul>
                                            <li>Text Field Accept <strong>decimal Numbers Only.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Is Active (Checkbox)</strong>
                                        <ul>
                                            <li>If <strong>Is Active (Checkbox)</strong> is checked then need to show in every dependent <strong>Report / Dropdown Field / In Calculations</strong>.</li>
                                            <li><strong>Is Active checkbox</strong> is always be <strong>Checked/Active</strong>.</li>
                                            <li>The user must have the right to check or uncheck the Is Active Checkbox. </li>
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
                                    <li><strong>PDF</strong>
                                        <ul>
                                            <li>PDF button should be visible and user should be able to click.</li>
                                            <li>After clicking on PDF button grid view data export in PDF.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Excel</strong>
                                        <ul>
                                            <li>Excel button should be visible and user should be able to click.</li>
                                            <li>After clicking on Excel button grid view data export in Excel.</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>--%>
                </div>
                <div runat="server" id="divSchool">
                    <fieldset>
                        <legend>School Basic Information</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Enter UDISE Code<span style="color: red;"> *</span></label>
                                    <input type="text" id="ContentBody_ir" class="form-control" placeholder="Enter UDISE Code" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Name (In English)<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter School Name (In English)" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="स्कूल का नाम दर्ज करे|" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Year of Establishment<span style="color: red;">*</span></label>

                                    <%-- <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>

                                    </select>--%>
                                    <input type="date" class="form-control your-selector" />

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Board Type<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="1-CBSE">1-CBSE</option>
                                        <option value="2-State Board">2-State Board</option>
                                        <option value="3-ICSE ">3-ICSE </option>
                                        <option value="4-International">4-International</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Board Code</label>
                                    <input type="text" class="form-control" placeholder="Enter Board Code" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Type<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="1-Boy">1-Boy</option>
                                        <option value="2-Girls">2-Girls</option>
                                        <option value="3-Co-Ed">3-Co-Ed</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Category<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="1-Primary">1-Pre-Primary</option>
                                        <option value="1-Primary">2-Primary</option>
                                        <option value="2-Upper Primary">3-Upper Primary</option>
                                        <option value="3-Higher Secondary">4-Secondary</option>
                                        <option value="3-Higher Secondary">5-Higher Secondary</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Category Details<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                        <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                        <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                        <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                        <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">6-Secondary with grades 1 to 10 (PRY-UPR-SEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">7-Secondary with grades 6 to 10 (UPR-SEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">8-Secondary only with grades 9 & 10 (SEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">9-Higher Secondary  with grades 9 & 12 (SEC-HSEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">10-HR.Sec /Jr/Collageonly with grades 11 & 12 (HSEC)</option>
                                        <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">11-Pre-Primary Only (PRE)</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Management Group<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="A-State Govt">A-State Govt</option>
                                        <option value="B-Govt Aided">B-Govt Aided</option>
                                        <option value="C-Private UnAided ">C-Private UnAided </option>
                                        <option value="D-Central Govt">D-Central Govt</option>
                                        <option value="E-Other">E-Other</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Management Group Details<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="1">1-Department of Education</option>
                                        <option value="2">2-Tribal Welfare Department</option>
                                        <option value="3">3-Local Body </option>
                                        <option value="6">6-Other State Govt. Managed </option>
                                        <option value="89">89-Minority Affars Dept. </option>
                                        <option value="90">90-Social Welfare Department </option>
                                        <option value="91">91-Ministry of Labour </option>
                                        <option value="4">4-Government Aided </option>
                                        <option value="7">7-Partially Govt.Aided</option>
                                        <option value="5">5-Private Unaided (Recognized)</option>
                                        <option value="92">92-Kendriya Vidyalaya</option>
                                        <option value="93">93-Jawahar Navodaya Vidyalaya</option>
                                        <option value="94">94-Sainik School</option>
                                        <option value="95">95-Railway School</option>
                                        <option value="96">96-Central Tibetan School</option>
                                        <option value="101">101-Other Central Govt./PSU Schools**</option>
                                        <option value="8">8-Unrecognized</option>
                                        <option value="97">97-Madrasa Private Unaided (Recognized)</option>
                                        <option value="99">99-Madrasa Aided (Recognized)</option>
                                        <option value="98">98-Madrasa (Unrecognized)</option>


                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Recognition No. <span style="color: red;">*</span></label>
                                    <input class="form-control" type="text" placeholder="Enter Recognition No." />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Recognition  Valid From<span style="color: red;">*</span></label>
                                    <input class="form-control" type="date" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Recognition  Valid To<span style="color: red;">*</span></label>
                                    <input class="form-control" type="date" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Medium<span style="color: red;">*</span></label>
                                    <select class="form-control select2" data-live-search="true">
                                        <option value="0">Select</option>
                                        <option value="19">19-English</option>
                                        <option selected value="04">04-Hindi</option>
                                        <option value="18">18-Urdu</option>
                                        <option value="10">10-Marathi</option>
                                        <option value="99">99-Other</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Minority Community <span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="1-Muslim">1-Muslim</option>
                                        <option value="2-Sikh">2-Sikh</option>
                                        <option value="3-Jain">3-Jain</option>
                                        <option value="4-Christian">4-Christian</option>
                                        <option value="5-Parsi">5-Parsi</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Shift <span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Morning">Morning</option>
                                        <option value="Afternoon">Afternoon</option>
                                        <option value="Both">Both</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Is School Residential<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Yes">Yes</option>
                                        <option selected="selected" value="No">No</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Special School<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="CM Rise">01-CM Rise School</option>
                                        <option value="Model School">02-Model School</option>
                                        <option value="CM Rise / Model (Both) School">03-CM Rise / Model (Both) School	</option>
                                        <option value="District Excellence School">04-District Excellence School</option>
                                        <option value="Block Excellence School">05-Block Excellence School	</option>
                                        <option value="PM Shri School">06-PM Shri School</option>
                                        <option value="CWSN School">07-CWSN School</option>



                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>JSK<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>


                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Status<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Functional">Functional</option>
                                        <option value="Closed">Closed</option>
                                        <option value="Merged">Merged</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Hostel Attach<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Yes">Yes</option>
                                        <option selected value="No">No</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-1 ">
                                <div class="form-group">

                                    <label>IsActive<i style="color: red;">*</i></label>
                                    <br />
                                    <asp:CheckBox Checked="true" runat="server" />
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>School Address Information</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Division <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Narmadapuram">Narmadapuram</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Ujjain">Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>District<span style="color: red">*</span></label>
                                    <select class="form-control select2">
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
                                    <label>Block<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
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
                                    <label>Parliament<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Vidisha">Vidisha</option>
                                        <option value="Morena">Morena</option>
                                        <option value="Bhind">Bhind</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Dhar">Dhar</option>
                                        <option value="Khandwa">Khandwa</option>
                                        <option value="Khargone">Khargone</option>
                                        <option value="Balaghat">Balaghat</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Mandla">Mandla</option>
                                        <option value="Betul">Betul</option>
                                        <option value="Narmadapuram">Narmadapuram</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sidhi">Sidhi</option>
                                        <option value="Khajuraho">Khajuraho</option>
                                        <option value="Damoh">Damoh</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Tikamgarh">Tikamgarh</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Mandsaur">Mandsaur</option>
                                        <option value="Ratlam">Ratlam</option>
                                        <option value="Ujjain">Ujjain</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Assembly (Vidhansabha) <span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Govindpura">Govindpura</option>
                                        <option value="Huzur">Huzur</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Area (Urban/Rural) <span style="color: red;">*</span></label>
                                    <select class="form-control select2" id="dropdown" onchange="showHideDiv()">
                                        <option value="3">-Select-</option>
                                        <option value="1">Urban</option>
                                        <option value="2">Rural</option>
                                    </select>
                                </div>
                            </div>
                            <div id="divnagarnigam" class="col-md-3">
                                <div class="form-group">
                                    <label>Nagar Nigam<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Ujjain">Ujjain</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Katni">Katni</option>
                                        <option value="Chhindwara">Chhindwara</option>

                                    </select>
                                </div>
                            </div>
                            <div id="divnagarpalika" class="col-md-3">
                                <div class="form-group">
                                    <label>Nagar Palika<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Berasia">Berasia</option>
                                        <option value="Begumganj">Begumganj</option>
                                        <option value="Mandideep">Mandideep</option>
                                        <option value="Biaora">Biaora</option>
                                        <option value="Narsinghgarh">Narsinghgarh</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Sarangpur">Sarangpur</option>
                                        <option value="Sehore">Sehore</option>
                                        <option value="Ashta">Ashta</option>
                                        <option value="Vidisha">Vidisha</option>

                                    </select>
                                </div>
                            </div>
                            <div id="divward" class="col-md-3">
                                <div class="form-group">
                                    <label>Ward No./Name<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Ward No./Name" />

                                </div>
                            </div>
                            <div id="divZilapanchayat" class="col-md-3">
                                <div class="form-group">
                                    <label>Zila Panchayat<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Berasia">Berasia</option>
                                        <option value="Phanda">Phanda</option>
                                        <option value="ALIRAJPUR ">ALIRAJPUR </option>
                                        <option value="ASHOKNAGAR ">ASHOKNAGAR </option>
                                        <option value="JAITHARI ">JAITHARI </option>
                                        <option value="KOTMA ">KOTMA </option>
                                        <option value="PUSHPRAJ GARH">PUSHPRAJ GARH</option>


                                    </select>
                                </div>
                            </div>
                            <div id="divjanpad" class="col-md-3">
                                <div class="form-group">
                                    <label>Janpad Panchayat<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="BARODI">BARODI</option>

                                        <option value="DEPALPUR ">DEPALPUR </option>
                                        <option value="MHOW ">MHOW </option>
                                        <option value="SANWER ">SANWER </option>
                                        <option value="BHANDER">BHANDER </option>
                                        <option value="DATIA ">DATIA </option>
                                        <option value="SEONDHA ">SEONDHA </option>

                                    </select>
                                </div>
                            </div>
                            <div id="divgram" class="col-md-3">
                                <div class="form-group">
                                    <label>Gram Panchayat<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="AMARPUR">AMARPUR</option>
                                        <option value="ANKIA">ANKIA</option>
                                        <option value="ARJUNKHEDI">ARJUNKHEDI</option>
                                        <option value="ARRAWATI">ARRAWATI</option>
                                        <option value="BABACHIYA">BABACHIYA</option>
                                        <option value="BADBELI KALAN">BADBELI KALAN</option>
                                        <option value="BAGSI">BAGSI</option>
                                        <option value="BAHRAWAL">BAHRAWAL</option>
                                        <option value="BAIRAGARH">BAIRAGARH</option>
                                        <option value="BANDARUA">BANDARUA</option>
                                        <option value="BARKHEDA">BARKHEDA</option>
                                        <option value="BARAMAD">BARAMAD</option>
                                        <option value="BARODI">BARODI</option>

                                    </select>
                                </div>
                            </div>
                            <div id="divvillage" class="col-md-3">
                                <div class="form-group">
                                    <label>Village<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="BARODI">BARODI</option>
                                        <option value="Agra">Agra</option>
                                        <option value="Amalya">Amalya</option>
                                        <option value="Arjunkhedi">Arjunkhedi</option>
                                        <option value="Babukhedi">Babukhedi</option>
                                        <option value="Barrai">Barrai</option>
                                        <option value="Bhesoda">Bhesoda</option>
                                        <option value="Garha Kalan">Garha Kalan</option>

                                    </select>
                                </div>
                            </div>
                            <div id="divhabitation" class="col-md-3">
                                <div class="form-group">
                                    <label>Habitation </label>
                                    <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Berasia">Berasia</option>

                                    </select>
                                </div>
                            </div>
                            <div id="divdistance" class="col-md-3">
                                <div class="form-group">
                                    <label>Habitation to School (By Air)</label>
                                    <%--<input type="text" class="form-control" />--%>
                                    <%--   <select class="form-control select2">
                                        <option value="-Select-">-Select-</option>
                                        <option value="Berasia">By Road</option>
                                        <option value="Berasia">By Air</option>
                                    </select>--%>
                                    <input type="text" placeholder="Enter Distance in Meter" class="form-control" />
                                </div>
                            </div>
                            <div id="divdistanceByRoad" class="col-md-3">
                                <div class="form-group">
                                    <label>Habitation to School (By Road)<span style="color: red">*</span></label>
                                    <input type="text" placeholder="Enter Distance in Meter" class="form-control" />

                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Address (Line 1)<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter School Address (Line 1)" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Address (Line 2)</label>
                                    <input type="text" class="form-control" placeholder="Enter School Address (Line 2)" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pincode</label>
                                    <input type="text" class="form-control" placeholder="Enter Pincode" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset data-select2-id="105">
                        <legend>Sankul Information</legend>
                        <div class="row" data-select2-id="104">
                            <div class="col-md-3" data-select2-id="103">
                                <div class="form-group" data-select2-id="102">
                                    <label class="control-label" for="SankulId">Sankul/AEO Code</label>
                                    <select class="form-control select2 select2-hidden-accessible" id="SankulId" name="SankulId" data-select2-id="SankulId" tabindex="-1" aria-hidden="true">
                                        <option value="" data-select2-id="109">Select</option>
                                        <option value="4" data-select2-id="113"></option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Board Type</label>
                                    <input id="SankulBoardType" class="form-control valid" readonly aria-invalid="false">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Management Group</label>
                                    <input id="SankulManagementGroup" readonly class="form-control">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Management Group Details</label>
                                    <input id="SankulManagementGroupDetails" readonly class="form-control">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>School Contact Details</legend>
                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Head Type<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="1-Head Master / Principal ">1-Head Master / Principal </option>
                                        <option value="2-Asst. head Master  / VP">2-Asst. head Master  / VP</option>
                                        <option value="3-Acting Head Teacher ">3-Acting Head Teacher </option>
                                        <option value="4-Other">4-Other</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Employee Unique Id<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Employee Unique ID" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Employee Name<span style="color: red;"> *</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Employee Name" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Employee Designation<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value=" -Select-">-Select-</option>
                                        <option value="1-Head Master / Principal ">1-Head Master / Principal </option>
                                        <option value="2-Asst. head Master  / VP">2-Asst. head Master  / VP</option>
                                        <option value="3-Acting Head Teacher ">3-Acting Head Teacher </option>
                                        <option value="4-Other">4-Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Employee Mobile Number <span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Employee Mobile No." />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Employee Email ID<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Employee Email ID" />
                                </div>
                            </div>



                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Landline Number<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter School Landline No." />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Email ID<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter School Email ID" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Website</label>
                                    <input type="text" class="form-control" placeholder="Enter School Website" />
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>School Bank Details</legend>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Bank Type<span style="color: red;">*</span></label>
                                    <select class="form-control select2 " id="BankTypeId" name="BankTypeId" data-select2-id="BankTypeId" tabindex="-1" aria-hidden="true">
                                        <option value="" data-select2-id="64">Select</option>
                                        <option value="1" data-select2-id="147">Public Sector Commercial Banks</option>
                                        <option value="2" data-select2-id="148">Private  Sector  Commercial Banks</option>
                                        <option value="3" data-select2-id="149">Regional Rural Banks</option>
                                        <option value="4" data-select2-id="150">Co-operative Banks</option>
                                        <option value="5" data-select2-id="151">Small Finance Banks</option>
                                    </select>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>IFSC Code<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="">--Select--</option>
                                        <option value="SBIN0001308">SBIN0001308</option>
                                        <option value="SBIN0003099">SBIN0003099</option>
                                        <option value="HDFC0000062">HDFC0000062</option>
                                        <option value="UBIN0532525">UBIN0532525</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Bank Name<span style="color: red;">*</span></label>
                                    <%--<input type="text" class="form-control" placeholder="Enter Bank Name" />--%>
                                    <select class="form-control select2">
                                        <option value="">--Select--</option>
                                        <option value="sbi">State Bank of India (SBI)</option>
                                        <option value="boi">Bank of India (BOI)</option>
                                        <option value="central_bank">Central Bank of India</option>
                                        <option value="union_bank">Union Bank of India</option>
                                        <option value="hdfc">HDFC Bank</option>
                                    </select>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Account Number<span style="color: red;">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Account No." />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>School Geographical Data</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Latitude</label>
                                    <input type="text" class="form-control" placeholder="Enter Latitude" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Longitude</label>
                                    <input type="text" class="form-control" placeholder="Enter Longitude" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="row justify-content-center">
                        <div class="col-md-2 mt-4">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="Mst_SchoolRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>

                    <%--<fieldset>
                        <legend>Description</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>UDISE Code</strong>

                                        <ul>
                                            <li>User will be able to enter the <strong>UDISE Code </strong>and the text field will accept <strong>only numerical values.</strong> </li>
                                        </ul>

                                    </li>
                                    <li><strong>School name (In English)</strong>

                                        <ul>
                                            <li>User will be able to enter the <strong>School name in English</strong> and the text field will accept <strong>only English letters.</strong> </li>
                                        </ul>

                                    </li>
                                    <li><strong>स्कूल का नाम (हिंदी में)</strong>

                                        <ul>
                                            <li>User will be able to enter the <strong>School name in Hindi </strong>and the text field will accept <strong>only Hindi letters.</strong> </li>
                                        </ul>

                                    </li>

                                    <li><strong>Year of Establishment</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Year of Establishment.</strong>  </li>
                                        </ul>

                                    </li>

                                    <li><strong>Board Name</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Board Name</strong> and the data populated to School Board master.  </li>
                                        </ul>

                                    </li>

                                    <li><strong>School Type</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>School Type </strong>and the data populated to School Type master. </li>
                                        </ul>

                                    </li>
                                    <li><strong>School Category </strong>

                                        <ul>
                                            <li>User will be able to select the <strong>School Category </strong>and the data populated to School Category master. </li>
                                        </ul>

                                    </li>
                                    <li><strong>School Category Details</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>School Category Details</strong> and the data populated to School Category Detail master and cascading from School Category master. </li>
                                        </ul>

                                    </li>
                                    <li><strong>Management Group</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Management Group </strong>and the data populated to Management Group master. </li>
                                        </ul>

                                    </li>
                                    <li><strong>Management Group Details</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Management Group Detail</strong> and the data populated to <strong>Management Group Detail</strong> and cascading from <strong>Management Group master.</strong> </li>
                                        </ul>

                                    </li>

                                    <li><strong>School Medium</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>school medium </strong>and the data populated to <strong>School Medium master</strong>. </li>
                                        </ul>

                                    </li>
                                    <li><strong>Minority Community</strong>

                                        <ul>
                                            <li>User will be able to select the <strong>Minority community type.</strong> </li>
                                        </ul>

                                    </li>
                                    <li><strong>School Shift</strong>
                                        <ul>
                                            <li>User will be able to select the <strong>school shift </strong>in this field. </li>
                                        </ul>
                                    </li>
                                    <li><strong>Is School Residential</strong>
                                        <ul>
                                            <li>User will be able to select the <strong>school residential</strong> status with the selection of <strong>Yes/No.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Hostel Attach</strong>
                                        <ul>
                                            <li>User will be able to select the<strong> Hostel Attach </strong>with the selection of <strong>Yes/No. </strong></li>
                                        </ul>
                                    </li>


                                    <li><strong>Division Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Division name </strong>from dropdown. Data populated from <strong>Division master </strong>as cascade from <strong>state name.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>District Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>District name </strong>from dropdown. Data populated from <strong>District master </strong>as cascade from <strong>State and  Division Name.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Block Name</strong>
                                        <ul>
                                            <li>User will be able to select <strong>Block name </strong>from dropdown. Data populated from <strong>Block master </strong>as cascade from <strong>State, Division and District name.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Parliament</strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Parliament Name </strong>from the dropdown, the data will be populated from the <strong>Parliament Master </strong>and data cascade from <strong>Division Master, District Master.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Assembly </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>Assembly Name</strong> from the dropdown, the data will be populated from the <strong>Assembly Master </strong>and data cascade from <strong>Division Master, District Master.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Area  </strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Area </strong>with the selection of <strong>Urban/Rural.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Nagar Nigam  </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Nagar Nigam Name</strong> from the dropdown, the data will be populated from the <strong>Nagar Nigam Master  </strong>and data cascade from  <strong>Division Master, District Master and Block Master.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Nagar Palika  </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Nagar Palika Name</strong> from the dropdown, the data will be populated from the <strong>Nagar Palika Master  </strong>and data cascade from  <strong>Division Master, District Master and Block Master.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Ward</strong>
                                        <ul>
                                            <li>User should be able to Enter the  <strong>Ward Number</strong> in textbox.</li>
                                        </ul>
                                    </li>

                                    <li><strong>Zila Panchayat  </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Zila Panchayat Name</strong> from the dropdown, the data will be populated from the <strong>Zila Panchayat Master  </strong>and data cascade from  <strong>Division Master, District Master.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Gram Panchayat Name  </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Gram Panchayat Name</strong> from the dropdown, the data will be populated from the <strong>Gram Panchayat Master  </strong>and data cascade from  <strong>Division Master, District Master and Block Master.</strong>  </li>
                                        </ul>
                                    </li>

                                    <li><strong>Village Name </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Village Name </strong>from the dropdown, the data will be populated from the <strong>Village Master </strong>and data cascade from <strong>Division Master, District Master, Block Master and Gram Panchayat Master. </strong></li>
                                        </ul>
                                    </li>

                                    <li><strong>Habitation Name (In English) </strong>
                                        <ul>
                                            <li>User should be able to select the  <strong>Habitation Name (In English) </strong>from the dropdown, the data will be populated from the <strong>Habitation  Master </strong>and data cascade from <strong>Division Master, District Master, Block Master and Gram Panchayat Master and Village Master </strong></li>
                                        </ul>
                                    </li>

                                    <li><strong>Address (Line1/Line 2)  </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>School Address</strong> and the text field should accept in<strong> alphanumeric.</strong> </li>
                                        </ul>
                                    </li>
                                    <li><strong>Pin Code </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Pin Code</strong> and the text field should accept in <strong>numeric</strong>. </li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Type </strong>
                                        <ul>
                                            <li>User should be able to select the <strong>In Charge Type </strong>from the dropdown and the data will be populated from the <strong>In Charge Type master</strong>. </li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Unique ID (Employee ID) </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>In Charge Unique ID (Employee ID) </strong>and the text field should accept <strong>in alphanumeric.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Name </strong>
                                        <ul>
                                            <li><strong>Name</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Mobile No </strong>
                                        <ul>
                                            <li><strong>Mobile No</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Email Id </strong>
                                        <ul>
                                            <li><strong>Email ID</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>In Charge Designation </strong>
                                        <ul>
                                            <li><strong>Designation</strong> will be auto populated data based on <strong>In Charge Unique ID (Employee ID) </strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>School Landline No </strong>
                                        <ul>
                                            <li>User should be able to enter school <strong>Landline No.</strong> and the text field should accept <strong>in numeric.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>School Email ID </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>school email id</strong> and the text field should accept in <strong>alphanumeric with special character</strong>.</li>
                                        </ul>
                                    </li>
                                    <li><strong>School Website </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>school website detail</strong> and the text field should accept <strong>in character.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Bank Name  </strong>
                                        <ul>
                                            <li>User will be able to enter <strong>Bank name (First Time only)</strong>, the text field should accept <strong>in character.</strong></li>
                                            <li>It will be Drop down selection.</li>
                                        </ul>
                                    </li>
                                    <li><strong>IFSC Code </strong>
                                        <ul>
                                            <li>User will be able to enter <strong>IFSC detail (First Time only)</strong>, the text field should accept <strong>in Alpha numeric.</strong></li>
                                            <li>It will be Drop down selection.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Account No. </strong>
                                        <ul>
                                            <li>User should be able to enter <strong>Account Detail</strong>, the text field should accept in Alpha Numeric.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Latitude </strong>
                                        <ul>
                                            <li>Text Field Accept <strong>decimal Numbers Only.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Longitude </strong>
                                        <ul>
                                            <li>Text Field Accept <strong>decimal Numbers Only.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Is Active (Checkbox)</strong>
                                        <ul>
                                            <li>If <strong>Is Active (Checkbox)</strong> is checked then need to show in every dependent <strong>Report / Dropdown Field / In Calculations</strong>.</li>
                                            <li><strong>Is Active checkbox</strong> is always be <strong>Checked/Active</strong>.</li>
                                            <li>The user must have the right to check or uncheck the Is Active Checkbox. </li>
                                        </ul>

                                    </li>
                                    <li><strong>Save</strong>
                                        <ul>
                                            <li>User Can Click Save Button After Click Pop Up Message Will Open (Message Format ("DO You Want To Save The Data").  </li>
                                            <li>After POP Up Message - YES/NO Option Will Show In Screen. </li>
                                            <li>IF Click Yes - Data Will Save And Message Show In Screen - Message (Your Data Saved Successfully). </li>
                                            <li>IF Click NO - Data Will Not Save.</li>
                                        </ul>

                                    </li>
                                    <li><strong>Clear</strong>
                                        <ul>
                                            <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                        </ul>
                                    </li>
                                    <li><strong>PDF</strong>
                                        <ul>
                                            <li>PDF button should be visible and user should be able to click.</li>
                                            <li>After clicking on PDF button grid view data export in PDF.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Excel</strong>
                                        <ul>
                                            <li>Excel button should be visible and user should be able to click.</li>
                                            <li>After clicking on Excel button grid view data export in Excel.</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>--%>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script src="../dist/js/bootstrap-select.min.js"></script>
    <script src="../dist/js/select2.full.min.js"></script>
    <script src="../dist/js/jquery.multi-select.js"></script>


    <script>
        function FbotonOn() {
            confirm("Are you sure you want to save this record?");
            //const element = document.getElementById("myDIV");
            //element.className = "modal-header alert-success"
            //document.getElementById('myLargeModalLabel1').innerHTML = "School UnMerged Successfully";
            //document.getElementById('data1').innerHTML = "UnMerged";

        }
    </script>
    <script>
        $(".your-selector").datepicker({
            format: "yyyy",
            viewMode: "years",
            minViewMode: "years"
        });
    </script>
</asp:Content>

