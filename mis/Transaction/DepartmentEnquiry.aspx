<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DepartmentEnquiry.aspx.cs" Inherits="mis_Transaction_DepartmentEnquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

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
                                <a href="#DepartmentalEnquiry" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                    <span>Departmental Enquiry</span></a>
                            </li>
                            <li class="breadcrumb-item"><span>Departmental Enquiry</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-5 align-self-center" style="position: relative; bottom: 35px;">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                <img src="../../img/Departmental%20Enquiry.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)" /><u>
                </u>
            </p>
        </div>

        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="card card-border-primary" id="divDataofAU5693" runat="server">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-lg-6">
                                <h4 class="card-title">Departmental Enquiry<br />
                                    विभागीय पूछताछ</h4>
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
                            <legend>Department Enquiry /  विभाग पूछताछ 
                            </legend>
                            <div class="row align-items-end">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="fw-bold text-dark">
                                            Employee Unique Id /<br />
                                            अपचारी लोक सेवक की यूनिक आई.डी. <span style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="txtEmployeeId" CssClass="form-control" placeholder="Search" AutoComplete="off">
                                        </asp:TextBox>
                                    </div>
                                </div>
                                <hr />
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Button type="button" ID="Button1" OnClick="showDataBtn_Click" Text="Search" runat="server" class="btn btn-success btn-border w-lg" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset runat="server" id="divEmpData" visible="false">
                            <legend>Employee Information / कर्मचारी की जानकारी
                            </legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Name /<br>
                                            कर्मचारी का नाम<span style="color: red">*</span></label>
                                        <input name="txtEmpName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Arjun Talwar" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Unique ID /
                                    <br>
                                            यूनिक आई.डी<span style="color: red">*</span></label>
                                        <input name="txtUniqueID" type="text" class="form-control" readonly="" autocomplete="off" placeholder="AR4781" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Designation /
                                    <br>
                                            पदनाम <span style="color: red">*</span></label>
                                        <input name="txtDesignation" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Teacher(UDT)" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            District /<br>
                                            ज़िला<span style="color: red">*</span></label>
                                        <input name="txtDistrict" type="text" class="form-control" readonly="" autocomplete="off" placeholder="Bhopal" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Block /<br>
                                            ब्लॉक<span style="color: red">*</span></label>
                                        <input name="txtBlock" type="text" class="form-control" readonly="" autocomplete="off" placeholder="GovindPura" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Sankul Code/ Name /
                    <br />
                                            संकुल कोड / नाम<span style="color: red">*</span></label>
                                        <input name="txtSankulName" type="text" class="form-control" readonly="" autocomplete="off" placeholder="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            School /<br>
                                            स्कूल <span style="color: red">*</span></label>
                                        <input name="txtBlock" type="text" class="form-control" readonly="" autocomplete="off" placeholder="VINAYAK PUBLIC SCHOOL TARRAKHURD SCHOOL" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <br />
                        <fieldset id="DivVibhgiyData" runat="server" visible="false">
                            <legend>Details of Updated Status of Departmental Investigation Related to Breach of Confidentiality of Board Examination
                        <br />
                                मंडल परीक्षा की गोपनीयता भंग संबंधी विभागीय  जाँच की अघतन स्तिथि  का  विवरण 
                            </legend>

                            <div class="row align-items-end">
                                <div class="col-md-4">
                                    <div class="form-group">
                                      <label>
                                            Name of departmental investigating officer<br>
                                            विभागीय जांचकर्ता अधिकारी का नाम<span style="color: red">*</span></label>
                                        <input name="txtEmpName" type="text" class="form-control" autocomplete="off" placeholder="Enter Name of departmental investigating officer" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                      <label>
                                            Name of Presenting Officer<br>
                                            प्रस्तुतकर्ता अधिकारी का नाम<span style="color: red">*</span></label>
                                        <input name="txtUniqueID" type="text" class="form-control" autocomplete="off" placeholder="Enter Name of Presenting Officer" />
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                      <label>
                                            Notice to delinquent officer to appear before investigating officer/
                                        जाँच अधिकारी के समक्ष अपचारी अधिकारी को प्रस्तुत होने की सुचना<span style="color: red">*</span></label>
                                        <input type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                  <label>
                                        Suspension Date<br>
                                        निलंबन दिनांक<span style="color: red">*</span></label>
                                    <input type="date" class="form-control" autocomplete="off" />
                                </div>
                                <div class="col-md-4">
                                  <label>
                                        Imputed Date<br>
                                        आरोपित दिनांक<span style="color: red">*</span></label>
                                    <input type="date" class="form-control" autocomplete="off" />
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                      <label>
                                            Brief Date of Departmental Enquiry
                                    <br />
                                            विभागीय जााँच की संक्षिप्त दिनांक<span style="color: red">*</span></label>
                                        <input type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>


                                <div class="col-md-4">
                                  <label>
                                        First hearing of the criminal before the investigating officer and reading of the charge sheet /
                                    जाँच अधिकारी के समक्ष अपचारी की प्रथम सुनवाई एवं आरोप पत्र का वाचन<span style="color: red">*</span></label>
                                    <input type="date" class="form-control" autocomplete="off" />
                                </div>
                                <br />
                                <div class="col-md-4">
                                  <label>
                                        Presentation and cross-examination of prosecution evidence<br>
                                        अभियोजन साक्ष्य  की प्रस्तुति एवं प्रतिपरीक्षण  <span style="color: red">*</span></label>
                                    <input type="date" class="form-control" autocomplete="off" />
                                </div>


                                <br />

                                <div class="col-md-4">
                                    <div class="form-group">
                                      <label>
                                            Presentation and cross-examination of defense supporting evidence
                                    <br>
                                            बचाव सहायक साक्ष्य  की प्रस्तुति  एवं प्रतिपरीक्षण<span style="color: red">*</span></label>
                                        <input type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-4 mt-2">
                                  <label>
                                        Presenting the Presenting Officer's Brief and Making it Available the Delinquent Employee / 
                                    प्रस्तुतकर्ता  अधिकारी  की  ब्रीफ  प्रस्तुति  एवं अपचारी  कर्मचारी को उपलब्ध करना<span style="color: red">*</span></label>
                                    <input type="date" class="form-control" autocomplete="off" />
                                </div>
                                <div class="col-md-4">
                                    <br />
                                  <label>
                                        Delinquent the employee's counter  argument on brief<br>
                                        ब्रीफ पर अपचारी कर्मचारी का प्रतिवाद <span style="color: red">*</span></label>
                                    <input type="date" class="form-control" autocomplete="off" />
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <br />
                                      <label>
                                            Dispatch of final investigation report to disciplinary officer
                                        अंतिम जाँच प्रतिवेदन का अनुशासकीय  अधिकारी को प्रेषण<span style="color: red">*</span></label>
                                        <input type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>


                                <div class="col-md-12">
                                  <label>
                                        Remark/
                                रिमार्क  <span style="color: red">*</span></label>
                                    <%--<input type="text" class="form-control" autocomplete="off" placeholder="Enter Remark" />--%>
                                    <asp:TextBox runat="server" placeholder="Enter Remark" CssClass="form-control" TextMode="MultiLine" MaxLength="200" AutoComplete="off"></asp:TextBox>

                                </div>

                                <div class="col-md-12 mt-4 text-center">

                                    <button type="button" class="Alert-Confirmation btn btn-success btn-rounded ">Save</button>
                                    <a class="btn btn-danger btn-rounded" href="DepartmentEnquiry.aspx">Clear</a>
                                </div>
                            </div>
                        </fieldset>

                        <%--End Second FieldSet   --%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>


