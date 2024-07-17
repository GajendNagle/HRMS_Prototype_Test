<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RouteWisePicupDroup.aspx.cs" Inherits="mis_Transaction_RouteWisePicupDroup" %>

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
                            <a href="#BusDriverToAttender" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Bus Driver & Attender Process</span></a>
                        <li class="breadcrumb-item"><span>Route Wise Picup/Droup</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary ">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Route Wise Picup/Droup Details / मार्ग के अनुसार विवरण</h4>
                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>

                <legend>Route Wise Picup/Droup Details / मार्ग के अनुसार विवरण
                   </legend>
                <div class="row align-items-end">

                    <div class="col-md-3">
                        <label>
                            Date<br />
                            दिनांक
                        </label>
                        <input type="date" name="name" value="2024-07-17" class="form-control">
                    </div>
                    <div class="col-md-3">
                        <label>
                            Select Route No.<span style="color: red">*</span><br />
                            रूट नंबर का चयन करें
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>RTU001</option>
                            <option>RTU002</option>
                            <option>RTU003</option>
                            <option>RTU004</option>
                            <option>RTU005</option>
                        </select>
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12 form-group">
                        <button id="searchButton" type="button" class="btn btn-outline-success w-lg btn-border" onclick="document.getElementById('showdetails').style.display='block'">Find Details</button>

                        <a href="RouteWisePicupDroup.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="showdetails" style="display: none">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>

                                        <th>Sr.No
                                <br />क्रमांक
                                        </th>
                                        <th>Route No.<br />
                                            रूट नंबर</th>
                                        <th>Bus Stop Name<br />
                                            बस स्टॉप का नाम
                                        </th>
                                        <th>Class<br />
                                            कक्षा
                                        </th>
                                        <th>Student Name<br />
                                            विद्यार्थी का नाम
                                        </th>
                                        <th>Remark Details <br />
                                            विवरण
                                        </th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>RTU001</td>
                                        <td>Aadesh Nagar</td>
                                        <td>Class-5</td>
                                        <td>Rajiv Sharma</td>
                                        <td>On Leave</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>RTU001</td>
                                        <td>Govindpura</td>
                                        <td>Class-6</td>
                                        <td>Shashi Verma</td>
                                        <td></td>
                                        <td class="nowrap">
                                            <button class="btn btn-success w-lg">Yes</button>
                                            <button class="btn btn-outline-warning  w-lg">No</button>
                                        </td>
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

