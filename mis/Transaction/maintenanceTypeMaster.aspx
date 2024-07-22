<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="maintenanceTypeMaster.aspx.cs" Inherits="mis_Transaction_maintenanceTypeMaster" %>

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
                        <div class="headertext btn btn-primary rounded-pill">Vehicle Maintenance Type Master Details</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">Empty </marquee>
                        </div>
                    </div>
                </div>
                  <div class="col-xxl-2 col-md-12 text-end">
                    <a role="button" href="VehicleMaintenanceTypeMaster.aspx" class="btn btn-primary btn-label waves-effect waves-light rounded-pill"><i class="ri-arrow-go-back-line label-icon align-middle fs-16 me-2"></i>Back</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2" id="searchbtn">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>S.No.<br />
                                            सरल क्र.</th>
                                        <th>Maintenance Type<br />
                                            रखरखाव का प्रकार</th>
                                        <th>Maintenance Category<br />
                                            रखरखाव श्रेणी</th>
                                        <th>Category Criteria<br />
                                            श्रेणी मानदंड</th>
                                        <th>Status(Active/InActive) 
                                            <br />
                                            स्थिति (सक्रिय/निष्क्रिय)
                                        </th>
                                        <th>Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Servicing</td>
                                        <td>KM</td>
                                        <td>20</td>
                                        <td>Active</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Headlight</td>
                                        <td>Month</td>
                                        <td>99</td>
                                        <td>Active</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                            <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

