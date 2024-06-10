<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HREmpRetirement.aspx.cs" Inherits="mis_Payroll_Mst_HREmpRetirment" %>

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
                        <li class="breadcrumb-item">
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li> 
                        <li class="breadcrumb-item">Retirement/Separation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <!-- Main content -->
        <div class="container-fluid">
            <%--<div class="row page-titles mb-4">
                <div class="col-md-5 align-self-center">
                    <h4 class="text-themecolor ">Retirement/Separation</h4>
                </div>
                <div class="col-md-7 align-self-center text-end">
                    <div class="d-flex justify-content-end align-items-center">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                            <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>

                            <li class="breadcrumb-item active">Retirement/Separation</li>
                        </ol>
                    </div>
                </div>
            </div>--%>
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Retirement / Separation<br />सेवानिवृत्त / विभाजन</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Retirement/Separation
                            <br />
                            विभाजन/सेवानिवृत्त</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Office Type /
                                        <br />
                                        कार्यालय का प्रकार<span style="color: red;"> *</span></label>
                                    <select class="form-control select2">
                                        <option value="0">--Select--</option>
                                        <%--<option value="1">Head Office</option>
                                        <option value="3">Bhopal- Circle Office</option>
                                        <option value="4">Hoshangabad- Circle Office</option>
                                        <option value="5">Betul- Circle Office</option>
                                        <option value="6">Chhindwara- Circle Office</option>
                                        <option value="7">seoni- Circle Office</option>--%>
                                        <option value="7">Principal Secretary</option>
                                        <option value="7">Secretary</option>
                                        <option value="7">Deputy Secretary</option>
                                        <option value="7">CPI</option>
                                        <option value="7">CRSK</option>
                                        <option value="7">DPI</option>
                                        <option value="7">Collector</option>
                                        <option value="7">CEO, ZP</option>
                                        <option value="7">Joint Director</option>
                                        <option value="7">DEO</option>
                                        <option value="7">DPC</option>
                                        <option value="7">BEO</option>
                                        <option value="7">BRC</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Employee Name /
                                        <br />
                                        कर्मचारी का नाम<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Mr Ram Gopal Sharma">Mr Ram Gopal Sharma</option>
                                        <option value="Swaroop Singh Rajput">Swaroop Singh Rajput</option>
                                        <option value="Shyam">Shyam</option>
                                        <option value="Ram">Ram</option>
                                        <option value="Sahil">Sahil</option>
                                    </select>
                                </div>

                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Separation Type /<br />
                                        विभाजन प्रकार<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Death">Death</option>
                                        <option value="Retirement">Retirement</option>
                                        <option value="Contract Expired">Contract Expired</option>
                                        <option value="Termination">Termination</option>
                                        <option value="Voluntary Retirement Scheme">Voluntary Retirement Scheme</option>
                                    </select>
                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Separation / Retired on /<br />
                                        विभाजन / सेवानिवृत्त<span style="color: red">*</span></label>
                                    <input id="date" type="date" class="form-control" />
                                </div>

                            </div>
                        </div>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Order No. /<br />
                                        ऑर्डर संख्या<span style="color: red">*</span></label>
                                    <input id="TxtOrderno" class="form-control" placeholder="Enter Order No." />
                                </div>

                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Order Date /<br />
                                        ऑर्डर दिनांक <span style="color: red">*</span></label>
                                    <input id="Orderdate" type="date" class="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Upload Supporting Document/<br />
                                        सहायक दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                                    <input id="UploadDocument" type="file" class="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Remark /<br />
                                        टिप्पणी</label>
                                    <textarea id="txtArea" class="form-control" rows="1" placeholder="Enter  Remark"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-4 text-center">
                                <div class="form-group">
                                    <button type="button" class="btn btn-success  btn-border Alert-Confirmation">Save</button>
                                    <a href="Mst_HREmpRetirement.aspx" class="btn btn-outline-danger  w-lg btn-border">Clear</a>
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <fieldset id="ContentBody_dcp">
                        <legend>Description / विवरण </legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">
                                    <li><strong>Office Type (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select the  <strong>Office Type</strong> from the dropdown which will automatically reflect <strong>Office Type Master.</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Employee Name (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Employee Name </strong>from the dropdown and the data will be populated from the <strong>Employee Registration</strong></li>
                                        </ul>
                                    </li>
                                    <li><strong>Separation Type (Dropdown)</strong>
                                        <ul>
                                            <li>User will be able to select the <strong>Separation Type </strong>from the dropdown and the data will be populated from the <strong>Database</strong></li>
                                        </ul>
                                    </li>

                                    <li><strong>Separation Retired Date</strong>
                                        <ul>
                                            <li>User will be Enter <strong>Separation Retired Date</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Order No.</strong>
                                        <ul>
                                            <li>User will be Enter <strong>Order No.</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Order Date</strong>
                                        <ul>
                                            <li>User will be Enter <strong>Separation Order Date</strong> </li>
                                        </ul>
                                    </li>

                                    <li><strong>Upload Supporting Document</strong>
                                        <ul>
                                            <li>User will be Upload <strong>Supporting Document</strong> </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <strong>Save</strong>
                                        <ul>
                                            <li>User should be able to click on save button.</li>
                                            <li>On save button click form field should be validated. </li>
                                            <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?"  "Do you want to save this record?").</li>
                                            <li>If click on <strong>Yes</strong> – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!").</li>
                                            <li>If click on <strong>NO</strong> the data will not be saved and will return to the same page. </li>
                                        </ul>
                                    </li>
                                    <li><strong>Clear (Button)</strong>
                                        <ul>
                                            <li>User should be able to click on Clear button.</li>
                                            <li>After clicking on Clear button all the fields should be Clear or reload the same page</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>
                </div>

            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

