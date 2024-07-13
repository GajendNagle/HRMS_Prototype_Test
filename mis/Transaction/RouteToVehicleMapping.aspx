<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RouteToVehicleMapping.aspx.cs" Inherits="mis_Transaction_RouteToVehicleMapping" %>


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
                            <a href="#SchoolManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>School Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">Route To Vehicle Mapping </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Route To Vehicle Mapping / वाहन मार्ग मानचित्रण</h4>
                </div>
            </div>
        </div>

        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Route To Vehicle Mapping / वाहन मार्ग मानचित्रण</legend>
                <div class="row align-items-end">

                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Route No.
            <br />
                                मार्ग क्रमांक<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">RUT001</option>
                                <option value="2">RUT002</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Vehicle No.
                                <br />
                                वाहन क्रमांक<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">MP04AB1196</option>
                                <option value="1">MP04CD5154</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Add</button>
                        <a href="RouteToVehicleMapping.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>


                <div class="row justify-content-end ">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchgInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr. No.
                     <br />
                                            सरल क्र.</th>
                                        <th>Vehicle No.
                     <br />
                                            वाहन क्र.</th>
                                        <th>Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>MP04AB1196</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>MP04CD5154</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Route Details / मार्ग विवरण</legend>

                <div class="row justify-content-end ">
                    <div class="col-md-12 mt-3">

                        <button type="button" class="btn btn-outline-success btn-border  w-lg">Search</button>
                        <a href="RouteToVehicleMapping.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
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
                                        <th>Sr. No.
                                     <br />
                                            सरल क्र.</th>
                                        <th>Vehicle No.
                                     <br />
                                            वाहन क्र.</th>
                                        <th>Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>MP04AB1196</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>MP04CD5154</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
                                        <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>

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

