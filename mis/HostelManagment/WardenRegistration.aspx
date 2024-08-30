<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="WardenRegistration.aspx.cs" Inherits="mis_HostelManagment_WardenRegistration" %>

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
                        <li class="breadcrumb-item"><span>Warden Wise Hostel</span></li>
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
                            छात्रावास वार्डन पंजीकरण विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                Warden Wise Hostel/वार्डन वाइज हॉस्टल
                            </marquee>
                        </div>
                    </div>
                </div>
                <%-- <div class="col-xl-2 col-md-12 text-end" id="BtnBack" style="display: none;"><a class="btn btn-primary btn-label waves-effect waves-light rounded-pill" onclick="Backclickfn()"><i class="ri-arrow-go-back-line label-icon align-middle fs-14 me-1"></i>BACK</a> </div>--%>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Warden Wise Hostel/वार्डन वाइज हॉस्टल</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Hostel Name/
                                <br />
                                हॉस्टल नाम चुनें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">KGBV Girls Hostel</option>
                                <option value="2">KGBV Boys Hostel</option>
                                <option value="3">KGBV Combine Hostel</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Warden Name/
                                <br />
                                वार्डन नाम चुनें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">--Select --</option>
                                <option value="1">Vikas Namdev</option>
                                <option value="2">Shivraj Goutam</option>
                                <option value="3">Ashish Gupta</option>
                            </select>
                        </div>
                    </div>

                </div>
                <hr />
                <div class="row text-center">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                            <a href="WardenRegistration.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

