<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleMaintenanceTypeMaster.aspx.cs" Inherits="mis_Transaction_VehicleMaintenanceTypeMaster" %>

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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="#TransportManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Transport Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle Maintenance Type Master</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">Vehicle Maintenance Type Master</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                  <div class="col-xxl-2 col-md-12 text-end">
                    <a role="button" href="maintenanceTypeMaster.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="bx bx-plus label-icon align-middle fs-16 me-2"></i>View Details</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vehicle Maintenance Type Master / वाहन रखरखाव प्रकार मास्टर</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Maintenance Type 
                                <br />
                                रखरखाव प्रकार दर्ज करें<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" type="text" class="form-control" placeholder="Enter Maintenance Type" ID="txtVehicletype" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Enter Maintenance Category
                                <br />
                                रखरखाव श्रेणी का चयन करें<span style="color: red">*</span></span>
                            <select id="ddlMaintenanceType" class="form-select select2">
                                <option value="0">--Select--</option>
                                <option value="1">KM</option>
                                <option value="2">MOnth</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Category Criteria  
                                <br />
                                श्रेणी मानदंड दर्ज करें<span style="color: red">*</span></label>
                            <asp:TextBox runat="server" type="text" class="form-control" placeholder="Enter Category Criteria" ID="TextBox1" autocomplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input checked="checked" type="checkbox" data-val="true" class="form-check-input" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
                                Status
								<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                        <a href="" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

