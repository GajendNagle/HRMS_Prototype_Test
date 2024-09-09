<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProjectDetailsN.aspx.cs" Inherits="mis_Development_ProjectDetailsN" %>

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
                        <%--   <li class="breadcrumb-item">
                 <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
             </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">Project Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Project Details / परियोजना विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Project Details / परियोजना विवरण</legend>

                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Work Category
             <br />
                                कार्य श्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>स्कूल मरम्मत/निर्माण</option>
                                <option>पेयजल व्यवस्था</option>
                                <option>स्कूल मार्ग निर्माण</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Work Subcategory
    <br />
                                कार्य उपश्रेणी का चयन करें<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>इमारत मरम्मत</option>
                                <option>हेंडपंप खनन</option>
                                <option>CC सड़क निर्माण</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Status
                                <br />
                                स्थिति<span style="color: red">*</span></label>

                            <select class="form-control select2">
                                <option>Select</option>
                                <option>Pending</option>
                                <option>Approval</option>
                                <option>All</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg">Save</button>
                        <a href="ProjectDetailsN.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

