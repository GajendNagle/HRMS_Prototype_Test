<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="GeneratePunishment.aspx.cs" Inherits="mis_HRMS_GeneratePunishment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        div.form-group {
            margin: 0px 0px 10px;
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Punishment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>PUNSIHMENT SYSTEM </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>GENERATE PUNSIHMENT </span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary" id="divDataofAU5693" runat="server">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Generate Punishment Order  / 
                           निलम्बन ऑर्डर जनरेट करें</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <%--<nav class="navbar navbar-expand-lg topbar ">
                            <div class="container-fluid">
                                <a class="navbar-brand" href="#"></a>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                                        <li>

                                            <a class="nav-link  text-white " href="DepartmentEnquiryNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                        </li>
                                        <li>

                                            <a class="nav-link  text-white " href="DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग पूछताछ
                                            </b></a>
                                        </li>
                                        <li>

                                            <a class="nav-link  text-white " href="DepartmentEnquiryList.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग पूछताछ सूची
                                            </b></a>
                                        </li>
                                        <li>

                                            <a class="nav-link  text-white " href="Rpt_DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग पूछताछ रिपोर्ट
                                            </b></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <br />--%>
                    <fieldset>
                        <legend>Generate Punishment Order /  निलम्बन ऑर्डर जनरेट करें
                        </legend>
                        <div class="row align-items-end">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label >
                                        Enter Employee Unique Id
                                        <br />
                                       कर्मचारी यूनिक आईडी दर्ज करें  <span style="color: red">*</span>
                                    </label>
                                    <asp:TextBox runat="server" ID="txtEmployeeId" CssClass="form-control" placeholder="Search" AutoComplete="off">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:Button type="button" ID="Button1" OnClick="Button1_Click" Text="Search" runat="server" class="btn btn-info btn-border w-lg" />
                                </div>
                            </div>
                        </div>
                        <div runat="server" id="divEmpData" visible="false">
                            <fieldset>
                                <legend>Employee Information / कर्मचारी की जानकारी
                                </legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Employee Name
                                        <br />
                                                कर्मचारी का नाम<span style="color: red"></span></label>
                                            <input name="txtEmpName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Arjun Talwar" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Unique ID 
                                    <br />
                                                यूनिक आई.डी<span style="color: red"></span></label>
                                            <input name="txtUniqueID" type="text" class="form-control" readonly="" autocomplete="off" placeholder="AR4781" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Designation 
                                    <br />
                                                पदनाम <span style="color: red"></span>
                                            </label>
                                            <input name="txtDesignation" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Teacher(UDT)" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                District
                                        <br />
                                                ज़िला<span style="color: red"></span></label>
                                            <input name="txtDistrict" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Bhopal" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Block
                                        <br />
                                                ब्लॉक<span style="color: red"></span></label>
                                            <input name="txtBlock" type="text" class="form-control" readonly="" autocomplete="off" placeholder="GovindPura" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Sankul Code / Name 
                    <br />
                                                संकुल कोड / नाम<span style="color: red"></span></label>
                                            <input name="txtSankulName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School
                                        <br />
                                                स्कूल <span style="color: red"></span>
                                            </label>
                                            <input name="txtBlock" type="text" class="form-control" readonly="" autocomplete="off" placeholder="VINAYAK PUBLIC SCHOOL TARRAKHURD SCHOOL" />
                                        </div>
                                    </div>
                                </div>
                            </fieldset>

                            <fieldset>
                                <legend>Generate Punishment Order  / निलम्बन ऑर्डर जनरेट करें </legend>

                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select Punishment Type
        <br />
                                                निलम्बन के प्रकार का चयन करें<span style="color: red">*</span></label>
                                            <select id="work-category" class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="1">निलंबित करें</option>
                                                <option value="2">वेतन-वृद्धि रोकना</option>
                                                <option value="3">पदोन्नति रोकना</option>
                                                <option value="4">सेवा से निष्काषित करना</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select From Date<br />
                                                प्रारंभिक दिनांक का चयन करें<span style="color: red"></span></label>
                                            <input type="date" id="Fdate" name="birthday" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select To Date
                                <br />
                                                अंतिम तिथि दर्ज करें<span style="color: red"></span></label>
                                            <input type="date" id="Tdate" name="birthday" class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Order No. 
            <br />
                                                ऑर्डर संख्या दर्ज करें<span style="color: red">*</span></label>
                                            <input type="text" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select Order Date 
                                <br />
                                                ऑर्डर दिनांक का चयन करें<span style="color: red"></span></label>
                                            <input type="date" id="Orderdate" name="birthday" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Upload Document 
            <br />
                                                दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                                            <input type="file" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>
                                                Enter Remark
            <br />
                                                टिप्पणी दर्ज करें<span style="color: red">*</span></label>
                                            <textarea type="text" class="form-control" ></textarea>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="col-md-12 ">
                                        <input type="button" value="Save"
                                            class="Alert-Save1 btn btn-success btn-border" />
                                        <a href="GeneratePunishment.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>

                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </fieldset>


                </div>
            </div>
        </div>
    </div>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <script>

        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save1').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Confirm Punishment Order ?",
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
                                text: 'Punishment Order Generate Successfully!',
                                timer: 2000
                            }).then(() => {
                                window.location.href = "/mis/HRMS/GeneratePunishment.aspx";
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

