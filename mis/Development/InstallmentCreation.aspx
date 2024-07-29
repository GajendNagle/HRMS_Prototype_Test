<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="InstallmentCreation.aspx.cs" Inherits="mis_Development_InstallmentCreation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .table th {
            background-color: white;
        }

        .table td {
            line-height: 36px !important;
            text-align: center !important;
            color: var(--vz-body-color);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%-- <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Installment Creation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Installment Creation / किस्त निर्माण</h4>
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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">Installment Creation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="card-title">Project Approval & Installment Creation  /परियोजना अनुमोदन एवं किस्त निर्माण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Project Approval & Installment Creation /परियोजना अनुमोदन एवं किस्त निर्माण </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            From Date<br />
                            प्रारंभिक दिनांक से<span style="color: red">*</span></label>
                        <input type="date" id="Fdate" name="birthday" class="form-control">
                    </div>
                    <div class="col-md-3">
                        <label>
                            To Date
             <br />
                            अंतिम दिनांक तक<span style="color: red">*</span></label>
                        <input type="date" id="Tdate" name="birthday" class="form-control">
                    </div>
                    <%--<div class="col-md-3">
                        <label>
                            Select District Name<br />
                            ज़िला के नाम का चयन करें<span style="color: red">*</span></label>
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
                    </div>--%>

                    <div class="col-md-3">
                        <label>
                            Select Work Category
        <br />
                            कार्य की श्रेणी का चयन करें<span style="color: red">*</span></label>
                        <select id="work-category" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="A">स्कूल मरम्मत/निर्माण</option>
                            <option value="B">पेयजल व्यवस्था</option>
                            <option value="C">स्कूल मार्ग निर्माण</option>
                            <option value="D">अन्य कार्य</option>
                        </select>
                    </div>

                    <div class="col-md-3">


                        <label>
                            Select Work Subcategory
        <br />
                            कार्य के प्रकार का चयन करें<span style="color: red">*</span></label>
                        <select id="school-subcategory" class="form-control select2">
                            <option value="--Select--">--Select--</option>
                            <option value="A">कक्षा निमार्ण</option>
                            <option value="A">इमारत मरम्मत</option>
                            <option value="A">स्कूल नया निमार्ण</option>
                            <option value="B">हेंडपंप खनन</option>
                            <option value="B">बोरबेल खनन</option>
                            <option value="B">पानी की टंकी निर्माण</option>
                            <option value="B">पेयजल हेतु पाइपलाइन निर्माण</option>
                            <option value="C">WBM / कच्ची सड़क निमार्ण</option>
                            <option value="C">CC Road निर्माण</option>
                            <option value="C">मार्ग मरम्मत</option>
                            <option value="C">मुरम रोड निर्माण</option>
                            <option value="C">डामर रोड निर्माण</option>
                            <option value="D">नाली निर्माण</option>
                            <option value="D">पेपर ब्लाक निर्माण</option>

                            <%--selection of this next textbox will visible--%>
                        </select>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-3">

                        <label>
                            Project Code
                                <br />
                            परियोजना कोड</label>
                        <select id="Project_Code" class="form-control select2">
                            <option value="--Select--">--Select--</option>

                            <option value="A">P00017</option>
                            <option value="B">P00018</option>
                            <option value="C">P00019</option>
                        </select>
                    </div>
                </div>



                <div class="col-md-12">
                    <hr />
                    <input type="button" value="Search" class="btn btn-success btn-border"
                        onclick="div()" />
                    <a href="InstallmentCreation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </fieldset>
            <fieldset id="Show" style="display: none;">
                <legend>Project Details / परियोजना विवरण</legend>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr style="white-space: nowrap">
                                        <th>Sr.No.<br />
                                            सरल क्रमांक</th>

                                        <th>Project Code<br>
                                            परियोजना क्रमांक</th>
                                        <th>Project Date<br>
                                            परियोजना दिनांक</th>
                                        <th>Office Name<br />
                                            कार्यालय का नाम</th>
                                        <%--<th>Village /<br />
                                        गाँव का नाम</th>--%>
                                        <th>Work Category<br />
                                            कार्य की श्रेणी</th>
                                        <th>Work Subcategory<br />
                                            कार्य उपश्रेणी</th>
                                        <th>OIS Code<br />
                                            OIS कोड</th>
                                        <th>Address<br />
                                            पता</th>
                                        <%-- <th>Action Status<br>
                                        गतिविधि स्थिति</th>--%>
                                        <%--  <th>Work Place  /<br />
                                        कार्य स्थल</th>--%>

                                        <th>Estimated Budget Cost(In Rs) 
                                            <br />
                                            अनुमानित बजट
                                        </th>
                                        <th>Approved Cost(Approx. In Rs)<br />
                                            स्वीकृत राशि</th>
                                        <th>Work Description<br />
                                            कार्य का विवरण</th>

                                        <th>View Document<br>
                                            दस्तावेज़ देखें</th>
                                        <%--  <th>Edit<br>
      एडिट करें</th>
                                    <th>Send To Request<br />अनुरोध करने के लिए भेजें</th>--%>
                                    </tr>
                                </thead>
                                <tbody id="tbody">
                                    <tr>

                                        <td>1</td>
                                        <%--   <td>
                                        <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" class="form-check-input">
                                    </td>--%>
                                        <td>P00019</td>
                                        <th>22/05/2023</th>
                                        <td>DPI Bhopal M.P</td>
                                        <td>स्कूल मरम्मत/निर्माण</td>
                                        <td>इमारत मरम्मत</td>
                                        <td>Delhi Public School_44561</td>
                                        <td>Bhopal M.P</td>
                                        <%--<td>Working Mode</td>--%>
                                        <%--  <td>Work For Bhopal Office</td>--%>
                                        <td>60000.00</td>
                                        <th>
                                            <input type="number" id="txtApprovedCost" placeholder="60000.00" onkeypress="return validateNum(event);" maxlength="10" autocomplete="off" class="form-control"></th>
                                        <td>
                                            <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#WorkDescription"><i class="	far fa-comment-alt"></i></button>
                                        </td>
                                        <td><%--<a class="btn btn-info btn-rounded" href="#">--%>  <a role="button" class="btn btn-info btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-file"></i></a></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <hr />
                <div id="btnHide">
                    <button type="button" value="Approved" class="Alert-Save btn btn-success btn-border">
                        Approved</button>
                    <%--       <button type="button" value="Reject" class="btn btn-outline-danger  w-xl btn-border" 
onclick="">Reject</button>--%>
                    <button type="button" class="btn btn-outline-danger  w-xl btn-border" data-toggle="modal" data-target="#myModal">Reject</button>
                </div>

            </fieldset>

            <fieldset id="hide" style="display: none;">
                <legend>Installment Creation / किस्त निर्माण</legend>
                <%--<div class="row align-items-end">--%>
                <%--  <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Code
                                <br />
                                परियोजना कोड</label>
                            <input type="text" id="txtProjectCode" maxlength="10" value="P0001" disabled autocomplete="off" class="form-control form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project Date
                                <br />
                                परियोजना दिनांक</label>
                            <input type="text" id="txtProjectDate" maxlength="10" value="11/06/2024" disabled autocomplete="off" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Estimated Budget Cost(Approx. In Rs)
                                <br />
                                अनुमानित राशि
                            </label>

                            <input type="text" id="txtEstimatedBudgetCost" maxlength="10" value="60000.00" disabled autocomplete="off" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Approved Cost(Approx. In Rs)
                                <br />
                                स्वीकृत राशि <span style="color: red">*</span></label>

                            <input type="number" id="txtApprovedCost" placeholder="60000.00" onkeypress="return validateNum(event);" maxlength="10" autocomplete="off" class="form-control">
                        </div>
                    </div>--%>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Milestone Type<br />
                            माइल स्टोन का प्रकार</label>
                        <select id="Project" class="form-control select2 text-center">
                            <option value="--Select--">--Select--</option>
                            <option value="Technical">Technical </option>
                            <option value="Financial">Financial</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Milestone<br />
                            माइल स्टोन</label>
                        <select class="form-control select2 text-center" id="ddlInstallment" onchange="myaddbtn2()">
                            <option value="--select--">--Select--</option>
                            <option value="Foundation">Foundation</option>
                            <option value="Plinth">Plinth</option>
                            <option value="Mid level completion">Mid level completion</option>
                            <option value="Final level completion">Final level completion</option>
                        </select>
                    </div>
                    <div class="col-md-3" style="display:none;">
                        <label>
                            Installment<br />
                            किस्त</label>

                        <select id="InstallmentNo" class="form-control select2 text-center">
                            <option value="--Select--">--Select--</option>
                            <option value="1st Installment">1st Installment</option>
                            <option value="2nd Installment">2nd Installment</option>
                            <option value="3rd Installment">3rd Installment</option>
                            <option value="4th Installment">4th Installment</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>
                            Project Exp.Start Date<br />
                            परियोजना एक्सपेक्टेड प्रारंभ दिनांक</label>
                        <input type="date" id="c1" class="form-control">
                    </div>
                    <div class="col-md-3">
                        <label>
                            Project Exp. End Date<br />
                            परियोजना एक्सपेक्टेड अंतिम दिनांक</label>
                        <input type="date" id="c2" class="form-control">
                    </div> </div> <div class="row align-items-end">
                    <div>
                        <label>
                            Installment (%)<br />
                            इन्सटॉलमेंट (%)</label>
                        <input type="text" id="c3" placeholder="Enter Installment (%)" class="form-control">
                    </div>
                    <div class="col-md-3">
                        <label>
                            Installment Amount<br />
इन्सटॉलमेंट अमाउंट</label>
                        <input type="email" id="c4" placeholder="Enter Installment Amount" class="form-control">
                    </div>
                       <button type="button" onclick="addNewInstallment()" class="btn btn-success">Add</button>
                </div>
                <%-- style="display: none;" id="btnaction3"--%>
               
                

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                        </div>
                    </div>
                </div>
                <div class="row form-group" style="display:none;" id="Tbl1">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center" id="Table1" >
                                <thead>
                                    <tr class="nowrap">
                                    <th>Sr.No<br />
                                        सरल क्रमांक
                                    </th>
                                    <th>Milestone Type
                                        <br />
                                        माइल स्टोन का प्रकार</th>
                                    <th>Milestone
                                        <br />
                                        माइल स्टोन</th>
                                    <th>Installment<br />
                                        किस्त</th>
                                    <th>Project Exp. Start Date
                                        <br />
                                        परियोजना एक्सपेक्टेड प्रारंभ दिनांक<span style="color: red">*</span></th>
                                    <th>Project Exp. End Date
                                        <br />
                                        परियोजना एक्सपेक्टेड अंतिम दिनांक<span style="color: red">*</span></th>
                                    <th>Installment (%)<br />
                                        इन्सटॉलमेंट  (%)<span style="color: red">*</span></th>
                                    <th>Installment Amount
                                        <br />
                                        इन्सटॉलमेंट  अमाउंट</th>
                                    <th><%--style="display: none;" id="btnaction1"--%>Action<br />
                                        कार्रवाई</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>Total</td>
                                        <td>
                                            <asp:TextBox ID="txtInstallmentPer_Total" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="3">0</asp:TextBox></td>

                                        <td>
                                            <asp:TextBox ID="txtInstallmentAmount_Total" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="15">0</asp:TextBox></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                    <hr />
    <div class="col-md-12">
        <input type="button" name="ctl00$ContentBody$btnSave" value="Save" class="btn btn-success btn-border Alert-Confirmation" />
        <a href="InstallmentCreation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
    </div>
                </div>
            </fieldset>
            <!--modal-->
            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header" style="background-color: var(--vz-primary); color: white">
                            <h4 class="modal-title text-white">Add Remark For Reject Installment  </h4>
                            <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
                        </div>
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Remark<span style="color: red">*</span></label>
                                <textarea class="form-control" rows="3" style="resize: vertical" placeholder="Enter Remark For Reject Installment "></textarea>
                            </div>
                        </div>
                        <!-- Modal Footer -->
                        <div class="modal-footer justify-content-center">

                            <button type="button" class="btn btn-success Alert-Rejected btn-rounded" data-dismiss="modal" id="saveButton">Reject</button>
                            <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

            <!-- Modal Component -->
            <div class="modal" id="viewModel" tabindex="-1" role="dialog" aria-labelledby="viewModelListLabel1">
                <div class="modal-dialog modal-xl" style="width: 100%;">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title" id="exampleModalLabel1">Project Details</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Enter Remark /<br />
                                            टिप्पणी दर्ज करें<span style="color: red">*</span></label>
                                        <input type="text" class="form-control" autocomplete="off" placeholder="Enter Remark" />
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="button"
                                            onclick="window.location.href = 'InstallmentCreation.aspx';"
                                            value="Save & Next" id="submit-btn" class="btn btn-outline-success btn-border w-lg" />


                                        <%--<a asp-action="Create" class="btn btn-outline-danger btn-border w-lg">CLEAR</a>--%>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- Modal Footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">
                    <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1">Document / दस्तावेज</h3>
                    <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <input type="hidden" asp-for="PrevEmpId" id="hdnPrevEmpId" />
                        <input type="hidden" asp-for="CompassionId" id="hdnCompassionId" />
                        <legend>Work Related Important Document / कार्य संबंधी आवश्यक दस्तावेज</legend>
                        <div class="row">
                            <%--<div>
            <h5 style="font-weight: 200;">Note :<span style="color: red;"> Please upload a PDF or JPG file that is less than 500 KB in size.</span></h5>
        </div>--%>
                            <div class="col-md-12 mt-3">
                                <table class="table table-bordered table-responsive-lg">
                                    <thead>
                                        <th>Sr.No.<br />
                                            सरल क्रमांक</th>
                                        <th>Document Name
                    <br />
                                            दस्तावेज का नाम</th>

                                        <th class="text-center">View Document
                    <br />
                                            दस्तावेज देंखे</th>

                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td><b>Techincal Document
                        <br />
                                                तकनीकी दस्तावेज़  </b></td>


                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td><b>Upload Civil Document
                        <br />
                                                सिविल दस्तावेज अपलोड करें </b></td>


                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td><b>Upload Elecrtrical Document
                        <br />
                                                इलेक्ट्रिकल दस्तावेज अपलोड करें </b></td>


                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td><b>Upload Project Document
                        <br />
                                                परियोजना के दस्तावेज अपलोड करें </b></td>


                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td><b>Upload Other Document
                        <br />
                                                अन्य दस्तावेज अपलोड करें </b></td>

                                            <td class="text-center">
                                                <a role="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye" aria-hidden="true"></i></a></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                </div>

            </div>
        </div>
    </div>
    <div class="modal" id="WorkDescription">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header" style="background-color: var(--vz-primary); color: white">
                    <h4 class="modal-title text-white">Work Description</h4>
                    <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal Body -->
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">


                            <div class="form-group">
                                <%--  <h5>Work Description</h5>--%>
                                <p class="border p-2 border-primary fw-bold fs-5 rounded-4">
                                    Buildings serve several needs of society primarily as shelter from weather, security, living space, privacy, to store belongings, and to comfortably live and work. A building as a shelter represents a physical division of the human habitat (a place of comfort and safety) and the outside (a place that at times may be harsh and harmful),

                                </p>
                                <%--   <textarea class="form-control" rows="1" style="resize: vertical" placeholder="project approval & Installment Creation/ परियोजना अनुमोदन एवं किस्त निर्माण

"></textarea>--%>
                            </div>
                        </div>
                    </div>

                    <!-- Modal Footer -->
                    <%--    <div class="modal-footer justify-content-center">

                  <button type="button" class="btn btn-success Alert-Reject btn-rounded" data-dismiss="modal" id="saveButton">Reject</button>
                  <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
              </div>--%>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script>
        function lnkbtnActiveorNot() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {
                document.getElementById("pnlhidebtn").style.display = "block";
                document.getElementById("txtApprovedCost").readOnly = true;
            }
            else {
                document.getElementById("pnlhidebtn").style.display = "none";
                document.getElementById("txtApprovedCost").readOnly = false;
            }

        }
        function clearApprovedCostData() {
            debugger;
            document.getElementById("txtApprovedCost").readOnly = false;
            document.getElementById("txtApprovedCost").value = "";
            document.getElementById("pnlhidebtn").style.display = "none";
            document.getElementById("txtInstallmentPer1").value = "";
            document.getElementById("txtInstallmentPer2").value = "";
            document.getElementById("txtInstallmentPer3").value = "";
            document.getElementById("txtInstallmentPer4").value = "";
            document.getElementById("txtInstallmentAmount1").value = "";
            document.getElementById("txtInstallmentAmount2").value = "";
            document.getElementById("txtInstallmentAmount3").value = "";
            document.getElementById("txtInstallmentAmount4").value = "";
            document.getElementById("txtInstallmentPer_Total").value = "";
            document.getElementById("txtInstallmentAmount_Total").value = "";

        }
        function calculateInstallmentAmt1() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {

                var x1 = document.getElementById("txtInstallmentPer1").value;
                var x2 = document.getElementById("txtInstallmentPer2").value;
                var x3 = document.getElementById("txtInstallmentPer3").value;
                var x4 = document.getElementById("txtInstallmentPer4").value;

                var y1 = document.getElementById("txtInstallmentAmount1").value;
                var y2 = document.getElementById("txtInstallmentAmount2").value;
                var y3 = document.getElementById("txtInstallmentAmount3").value;
                var y4 = document.getElementById("txtInstallmentAmount4").value;

                if (x1 == "") {
                    x1 = 0;
                }
                if (x2 == "") {
                    x2 = 0;
                }
                if (x3 == "") {
                    x3 = 0;
                }
                if (x4 == "") {
                    x4 = 0;
                }

                if (y1 == "") {
                    y1 = 0;
                }
                if (y2 == "") {
                    y2 = 0;
                }
                if (y3 == "") {
                    y3 = 0;
                }
                if (y4 == "") {
                    y4 = 0;
                }
                var result1 = "", sumall_per = "", sum_total = "";
                if (x1 != "0") {
                    result1 = ((parseFloat(x) * parseFloat(x1)) / 100);
                    document.getElementById("txtInstallmentAmount1").value = parseFloat(result1).toFixed(2);


                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;

                    sum_total = (parseFloat(result1) + parseFloat(y2) + parseFloat(y3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);

                    if (sumall_per > "100") {
                        var x1_minus = document.getElementById("txtInstallmentPer_Total").value
                        document.getElementById("txtInstallmentPer_Total").value = (x1_minus - x1);

                        var result1_minus = document.getElementById("txtInstallmentAmount_Total").value
                        document.getElementById("txtInstallmentAmount_Total").value = (result1_minus - result1);

                        alert("Sum of Installment (%) is less than 100");
                        document.getElementById("txtInstallmentPer1").value = "";
                        document.getElementById("txtInstallmentAmount1").value = "";
                    }

                }
                else {
                    sumall_per = (parseInt(0) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;


                    document.getElementById("txtInstallmentAmount1").value = "";
                    sum_total = (parseFloat(0) + parseFloat(y2) + parseFloat(y3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);
                }


            }
            else {
                alert("First Enter Approved Cost.");
                document.getElementById("txtInstallmentPer1").value = "";
                document.getElementById("txtInstallmentAmount1").value = "";
            }

        }
        function calculateInstallmentAmt2() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {

                var x1 = document.getElementById("txtInstallmentPer1").value;
                var x2 = document.getElementById("txtInstallmentPer2").value;
                var x3 = document.getElementById("txtInstallmentPer3").value;
                var x4 = document.getElementById("txtInstallmentPer4").value;

                var y1 = document.getElementById("txtInstallmentAmount1").value;
                var y2 = document.getElementById("txtInstallmentAmount2").value;
                var y3 = document.getElementById("txtInstallmentAmount3").value;
                var y4 = document.getElementById("txtInstallmentAmount4").value;

                if (x1 == "") {
                    x1 = 0;
                }
                if (x2 == "") {
                    x2 = 0;
                }
                if (x3 == "") {
                    x3 = 0;
                }
                if (x4 == "") {
                    x4 = 0;
                }

                if (y1 == "") {
                    y1 = 0;
                }
                if (y2 == "") {
                    y2 = 0;
                }
                if (y3 == "") {
                    y3 = 0;
                }
                if (y4 == "") {
                    y4 = 0;
                }

                var result2 = "", sumall_per = "", sum_total = "";

                if (x2 != "0") {
                    result2 = ((parseFloat(x) * parseFloat(x2)) / 100);
                    document.getElementById("txtInstallmentAmount2").value = parseFloat(result2).toFixed(2);

                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;

                    sum_total = (parseFloat(y1) + parseFloat(result2) + parseFloat(y3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);

                    if (sumall_per > "100") {
                        var x2_minus = document.getElementById("txtInstallmentPer_Total").value
                        document.getElementById("txtInstallmentPer_Total").value = (x2_minus - x2);

                        var result2_minus = document.getElementById("txtInstallmentAmount_Total").value
                        document.getElementById("txtInstallmentAmount_Total").value = (result2_minus - result2);

                        alert("Sum of Installment (%) is less than 100");
                        document.getElementById("txtInstallmentPer2").value = "";
                        document.getElementById("txtInstallmentAmount2").value = "";
                    }
                }
                else {
                    sumall_per = (parseInt(x1) + parseInt(0) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;


                    document.getElementById("txtInstallmentAmount2").value = "";
                    sum_total = (parseFloat(y1) + parseFloat(0) + parseFloat(y3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);
                }
            }
            else {
                alert("First Enter Approved Cost.");
                document.getElementById("txtInstallmentPer2").value = "";
                document.getElementById("txtInstallmentAmount2").value = "";
            }

        }
        function calculateInstallmentAmt3() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {

                var x1 = document.getElementById("txtInstallmentPer1").value;
                var x2 = document.getElementById("txtInstallmentPer2").value;
                var x3 = document.getElementById("txtInstallmentPer3").value;
                var x4 = document.getElementById("txtInstallmentPer4").value;

                var y1 = document.getElementById("txtInstallmentAmount1").value;
                var y2 = document.getElementById("txtInstallmentAmount2").value;
                var y3 = document.getElementById("txtInstallmentAmount3").value;
                var y4 = document.getElementById("txtInstallmentAmount4").value;

                if (x1 == "") {
                    x1 = 0;
                }
                if (x2 == "") {
                    x2 = 0;
                }
                if (x3 == "") {
                    x3 = 0;
                }
                if (x4 == "") {
                    x4 = 0;
                }


                if (y1 == "") {
                    y1 = 0;
                }
                if (y2 == "") {
                    y2 = 0;
                }
                if (y3 == "") {
                    y3 = 0;
                }
                if (y4 == "") {
                    y4 = 0;
                }

                var result3 = "", sumall_per = "", sum_total = "";

                if (x3 != "0") {
                    result3 = ((parseFloat(x) * parseFloat(x3)) / 100);
                    document.getElementById("txtInstallmentAmount3").value = parseFloat(result3).toFixed(2);

                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;

                    sum_total = (parseFloat(y1) + parseFloat(y2) + parseFloat(result3) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);

                    if (sumall_per > "100") {
                        var x3_minus = document.getElementById("txtInstallmentPer_Total").value
                        document.getElementById("txtInstallmentPer_Total").value = (x3_minus - x3);

                        var result3_minus = document.getElementById("txtInstallmentAmount_Total").value
                        document.getElementById("txtInstallmentAmount_Total").value = (result3_minus - result3);

                        alert("Sum of Installment (%) is less than 100");
                        document.getElementById("txtInstallmentPer3").value = "";
                        document.getElementById("txtInstallmentAmount3").value = "";
                    }
                }
                else {
                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(0) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;


                    document.getElementById("txtInstallmentAmount3").value = "";
                    sum_total = (parseFloat(y1) + parseFloat(y2) + parseFloat(0) + parseFloat(y4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);
                }
            }
            else {
                alert("First Enter Approved Cost.");

                document.getElementById("txtInstallmentPer3").value = "";
                document.getElementById("txtInstallmentAmount3").value = "";
            }

        }
        function calculateInstallmentAmt4() {
            debugger;
            var x = document.getElementById("txtApprovedCost").value;
            if (x != "") {

                var x1 = document.getElementById("txtInstallmentPer1").value;
                var x2 = document.getElementById("txtInstallmentPer2").value;
                var x3 = document.getElementById("txtInstallmentPer3").value;
                var x4 = document.getElementById("txtInstallmentPer4").value;

                var y1 = document.getElementById("txtInstallmentAmount1").value;
                var y2 = document.getElementById("txtInstallmentAmount2").value;
                var y3 = document.getElementById("txtInstallmentAmount3").value;
                var y4 = document.getElementById("txtInstallmentAmount4").value;

                if (x1 == "") {
                    x1 = 0;
                }
                if (x2 == "") {
                    x2 = 0;
                }
                if (x3 == "") {
                    x3 = 0;
                }
                if (x4 == "") {
                    x4 = 0;
                }

                if (y1 == "") {
                    y1 = 0;
                }
                if (y2 == "") {
                    y2 = 0;
                }
                if (y3 == "") {
                    y3 = 0;
                }
                if (y4 == "") {
                    y4 = 0;
                }
                var result4 = "", sumall_per = "", sum_total = "";

                if (x4 != "0") {
                    result4 = ((parseFloat(x) * parseFloat(x4)) / 100);
                    document.getElementById("txtInstallmentAmount4").value = parseFloat(result4).toFixed(2);

                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(x4));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;

                    sum_total = (parseFloat(y1) + parseFloat(y2) + parseFloat(y3) + parseFloat(result4));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);

                    if (sumall_per > "100") {

                        var x4_minus = document.getElementById("txtInstallmentPer_Total").value
                        document.getElementById("txtInstallmentPer_Total").value = (x4_minus - x4);

                        var result4_minus = document.getElementById("txtInstallmentAmount_Total").value
                        document.getElementById("txtInstallmentAmount_Total").value = (result4_minus - result4);


                        alert("Sum of Installment (%) is less than 100");
                        document.getElementById("txtInstallmentPer4").value = "";
                        document.getElementById("txtInstallmentAmount4").value = "";
                    }
                }
                else {
                    sumall_per = (parseInt(x1) + parseInt(x2) + parseInt(x3) + parseInt(0));
                    document.getElementById("txtInstallmentPer_Total").value = sumall_per;


                    document.getElementById("txtInstallmentAmount4").value = "";
                    sum_total = (parseFloat(y1) + parseFloat(y2) + parseFloat(y3) + parseFloat(0));
                    document.getElementById("txtInstallmentAmount_Total").value = parseFloat(sum_total).toFixed(2);
                }
            }
            else {
                alert("First Enter Approved Cost.");
                document.getElementById("txtInstallmentPer4").value = "";
                document.getElementById("txtInstallmentAmount4").value = "";
            }

        }
    </script>--%>
    <%--<script>
        function addData2() {
            // Get input values
            let name = document.getElementById("Project").value;
            let name = document.getElementById("ddlInstallment").value;
            let name = document.getElementById("Installment").value;
            let email = document.getElementById("c1").value;
            let mobile = document.getElementById("c2").value;
            let PreviousGradea = document.getElementById("c3").value;
            let PreviousGradeb = document.getElementById("c4").value;

            // Get the table and insert a new row at the end
            let table = document.getElementById('Table1');

            // Check if the maximum limit is reached
            if (table.rows.length >= 10) {
                alert("Maximum 10 rows allowed.");
                return; // Exit the function if the maximum limit is reached
            }

            // Insert data into cells of the new row
            let newRow = table.insertRow(table.rows.length - 1);
            newRow.insertCell(0).innerHTML = table.rows.length - 2;
            newRow.insertCell(1).innerHTML = Projectk;
          
            newRow.insertCell(2).innerHTML = name;
            newRow.insertCell(3).innerHTML = Installmentop;// Column 1: Name
            newRow.insertCell(4).innerHTML = email; // Column 2: Email
            newRow.insertCell(5).innerHTML = mobile; // Column 3: Mobile
            newRow.insertCell(6).innerHTML = PreviousGradea; // Column 4: Previous Grade A
            newRow.insertCell(7).innerHTML = PreviousGradeb; // Column 5: Previous Grade B
            let InstallmentPer_Total = document.getElementById('<%=txtInstallmentPer_Total.ClientID %>').value
            let InstallmentAmount_Total = document.getElementById('<%=txtInstallmentAmount_Total.ClientID %>').value
            document.getElementById('<%=txtInstallmentPer_Total.ClientID %>').value = + PreviousGradea + + InstallmentPer_Total
            document.getElementById('<%=txtInstallmentAmount_Total.ClientID %>').value = + PreviousGradeb + + InstallmentAmount_Total
            clearInputs3();
        }
        function clearInputs3() {
            debugger;
            // Clear input fields
            //document.getElementById("ddlClass").Items.Insert(0, new ListItem("--Select--", "0"));
            document.getElementById("Project").selectedIndex = 0;
            $('#Project').trigger('change');
            document.getElementById("ddlInstallment").selectedIndex = 0;
            $('#ddlInstallment').trigger('change');
            document.getElementById("Installment").selectedIndex = 0;
            $('#Installment').trigger('change');
           


            let email = document.getElementById("c1").value = "";
            let mobile = document.getElementById("c2").value = "";
            let PreviousGradea = document.getElementById("c3").value = "";
            let PreviousGradeab = document.getElementById("c4").value = "";


        }
    </script>--%>
    <script>
        function addNewInstallment() {
            // Get input values
            document.getElementById("Tbl1").style.display = "";
            let project = document.getElementById("Project").value;
            let installment = document.getElementById("ddlInstallment").value;
            let installmentNo = document.getElementById("InstallmentNo").value;

            let email = document.getElementById("c1").value;
            let mobileNo1 = document.getElementById("c2").value;
            let prevGradeA = document.getElementById("c3").value;
            let prevGradeB = document.getElementById("c4").value;

            // Get the table and insert a new row at the end
            let table = document.getElementById('Table1');

            // Check if the maximum limit is reached
            if (Table1.rows.length >= 6) {
                document.getElementById("Tbl1").style.display = (document.getElementById("Tbl1").style.display == 'block') ? 'none' : 'block';
                alert("Maximum 4 Installment allowed.");
                return; // Exit the function if the maximum limit is reached
            }

            // Insert data into cells of the new row
            let newRow = table.insertRow(table.rows.length - 1);
            let cells = [];
            cells.push({ text: table.rows.length - 2 });
            cells.push({ text: project });
            cells.push({ text: installment });
            cells.push({ text: installmentNo });
            cells.push({ text: email });
            cells.push({ text: mobileNo1 });
            cells.push({ text: prevGradeA });
            cells.push({ text: prevGradeB });

            for (let i = 0; i < cells.length; i++) {
                newRow.insertCell(i).innerHTML = cells[i].text;
                if (i === cells.length - 1) {
                    const actionButtonTd = newRow.cells[i];
                    actionButtonTd.innerHTML += '<a class="Alert-Delete"><i class="fa fa-trash"></i></a>';
                }
            }

            // Update total values
            let InstallmentPer_Total = parseFloat($("#txtInstallmentPer_Total").val());
            let InstallmentAmount_Total = parseFloat($("#txtInstallmentAmount_Total").val());
            $("#txtInstallmentPer_Total").val(InstallmentPer_Total + parseFloat(prevGradeA));
            $("#txtInstallmentAmount_Total").val(InstallmentAmount_Total + parseFloat(prevGradeB));

            clearInputs3();
        }

        function clearInputs3() {
            // Clear input fields
            document.getElementById("Project").selectedIndex = 0;
            $('#Project').trigger('change');

            document.getElementById("ddlInstallment").selectedIndex = 0;
            $('#ddlInstallment').trigger('change');

            document.getElementById("InstallmentNo").selectedIndex = 0;
            $('#InstallmentNo').trigger('change');

            document.getElementById("c1").value = "";
            document.getElementById("c2").value = "";
            document.getElementById("c3").value = "";
            /*   document.getElementById("c4").value = "";*/
        }
    </script>
    <%-- function clearInputs3() {
          // Clear input fields
          document.getElementById("Project").selectedIndex = 0;
          document.getElementById("ddlInstallment").selectedIndex = 0;
          document.getElementById("InstallmentNo").selectedIndex = 0;

          document.getElementById("c1").value = "";
          document.getElementById("c2").value = "";
          document.getElementById("c3").value = "";
          /*   document.getElementById("c4").value = "";*/
      }
  </script>--%>
    <%-- <script>function myaddbtn2() {
            var ForwordTo = document.getElementById("ddlInstallment").value;
            if (ForwordTo != "0") {
                document.getElementById("btnaction3").style.display = "table-cell";

                document.getElementById("btnaction1").style = "display:table-cell";
            }
        }</script>--%>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Approved this Installment ?",
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
                                text: 'Approved this Installment  Successfully',
                                timer: 20000


                            }
                            )
                            document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'block') ? 'none' : 'block';
                            document.getElementById("btnHide").style.display = (document.getElementById("btnHide").style.display == 'none') ? 'block' : 'none';
                        }
                    })
                });
            },

                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <%-- <script>
          function div(){
              document.getElementById("hide").style.display = "block";
          }

      </script>--%>
    <script>
        function div() {
            /*  document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'block') ? 'none' : 'block';*/
            document.getElementById("Show").style.display = (document.getElementById("Show").style.display == 'block') ? 'none' : 'block';

        }
    </script>
    <script>
        $(document).ready(function ($) {
            "use strict";
            var SweetAlert = function () { };
            SweetAlert.prototype.init = function () {
                // Basic
                // Success Message
                $('.Alert-Rejected').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Reject ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Request Rejected Successfully!',
                                timer: 2000
                            }).then(() => {
                                document.getElementById("Show").style.display = (document.getElementById("Show").style.display == 'none') ? 'block' : 'none';
                            });
                        }
                    });
                });
            };
            $.SweetAlert = new SweetAlert;
            $.SweetAlert.Constructor = SweetAlert;
        });

        // Initializing
        $(document).ready(function ($) {
            "use strict";
            $.SweetAlert.init();
        });
    </script>
</asp:Content>

