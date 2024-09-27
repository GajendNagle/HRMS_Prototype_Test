<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_SecurityServiceCompany.aspx.cs" Inherits="mis_HostelManagment_Mst_SecurityServiceCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                        <%--<li class="breadcrumb-item">
         <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
     </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HostelManagement')">
                                <span>Hostel Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Security Service Company</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            विवरण
                        </div>
                        <div class="">
                            <marquee style="width:100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                 Security Service Company / सुरक्षा सेवा कंपनी
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Security Service Company / सुरक्षा सेवा कंपनी </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Company (Firm) Name/<br /> कंपनी (फर्म) का नाम दर्ज करें<span style="color: red;">*</span></label>
                        <%--    <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Company 1</option>
                                <option value="2">Company 2</option>
                                <option value="3">Company 3</option>
                            </select>--%>
                            <input type="text" class="form-control" placeholder="Enter Company Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select State/<br /> राज्य का चयन करें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Madhya Pradesh</option>
                                <option value="2">Punjab</option>
                                <option value="3">Himachal</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter GSTIN Number/<br /> जीएसटीआईएन नंबर दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter GSTIN Number" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter PAN Number/<br /> पैन नंबर दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter PAN Number" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Email ID/<br /> ईमेल आईडी दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Email Id" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Contact Person Name/<br /> संपर्क व्यक्ति का नाम दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Contact Person Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Contact Number/<br />  व्यक्ति का नंबर दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Contact Person Number" />
                        </div>
                    </div>
                           <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Firm  Address /<br /> फर्म का पता दर्ज करे <span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Contact Person Number" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Upload Document /<br /> दस्तावेज़ अपलोड करें</label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="SecurityGuardDutyChartRegistration.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                         <span class="text-danger fw-bold">Note :-All Asterisk (*) Marked Fields Are Mandatory / तारांकन (*) से चिह्नित सभी फ़ील्ड अनिवार्य हैं |</span>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

