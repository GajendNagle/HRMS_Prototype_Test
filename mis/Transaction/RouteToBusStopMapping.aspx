<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RouteToBusStopMapping.aspx.cs" Inherits="mis_Transaction_RouteToBusMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#SchoolManagementSystem" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>School Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">Route To Bus Stop Mapping </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Route To Bus Stop Mapping / बस स्टॉप तक मार्ग का मानचित्रण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Route To Bus Stop Mapping / बस स्टॉप तक मार्ग का मानचित्रण</legend>
                <div class="row">
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
                            <span>Bus Stop Name
             <br />
                                बस स्टॉप का नाम<span style="color: red">*</span></span>
                            <select class="form-control">
                                <option value="0">--Select--</option>
                                <option value="1">Gautam Nagar</option>
                                <option value="1">Rachana Nagar</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <span>Time
                                <br />
                                समय<span style="color: red">*</span></span>
                            <input id="timepicker" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3 ">
                        <div class="form-group">
                            <button id="toggleButton2" type="button" class="fw-bold btn w-lg btn-outline-success btn-border" style="margin-top: 2.5rem !important; }">
                                Add</button>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset>
                <legend>Details / विवरण</legend>
                <div class="col-md-12">
                    <div class="row justify-content-end" id="GrdFormate">
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
                </div>
                <div class="row justify-content-end" id="NoRcdTable">
                    <div class="table-responsive">

                        <table class="table table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ContentBody_grvVehiclRegistration" style="border-collapse: collapse; text-align: center;">
                            <tbody>
                                <tr>
                                    <th scope="col">Sr.No.<br />
                                        सरल क्र. </th>
                                    <th scope="col">Route Number<br />
                                        मार्ग क्रमांक</th>
                                    <th scope="col">Bus Stop Name
         <br />
                                        बस स्टॉप का नाम</th>
                                    <th scope="col">Action
         <br />
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <span>1</span>
                                    </td>
                                    <td>
                                        <span>RUTOO1</span>
                                    </td>
                                    <td>
                                        <span>Rachana Nagar</span>

                                    </td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
    <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span>2</span>
                                    </td>
                                    <td>
                                        <span>RUTOO1</span>
                                    </td>
                                    <td>
                                        <span>Gautam Nagar</span>

                                    </td>
                                   <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span>
    <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <button id="toggleButton" type="button" class="fw-bold btn w-lg btn-outline-success btn-border">Save</button>
                                <a href="RouteToBusStopMapping.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Details</legend>
                <div class="row">
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
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button id="" type="button" class="fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                            <a href="RouteToBusStopMapping.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-end" id="NoRcdTable1">
                    <div class="col-md-12">
                        <div class="row justify-content-end" id="GrdFormatte">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInpgut" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered" cellspacing="0" rules="all" border="1" style="border-collapse: collapse; text-align: center;">
                            <tbody>
                                <tr>
                                    <th scope="col">Sr.No.<br />
                                        सरल क्र. </th>
                                    <th scope="col">Route Number<br />
                                        मार्ग क्रमांक</th>
                                    <th scope="col">Bus Stop Name
                                        <br />
                                        बस स्टॉप का नाम</th>
                                    <th scope="col">Time
                                        <br />
                                        समय
                                    </th>
                                    <th scope="col">Action
                                        <br />
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <span>1</span>
                                    </td>
                                    <td>
                                        <span>RUTOO1</span>
                                    </td>
                                    <td>
                                        <span>Rachana Nagar</span>

                                    </td>
                                    <td>
                                        <span>8:30 AM</span>

                                    </td>
                                    <td>
                                        <a class="btn btn-primary" href="javascript:__doPostBack('ctl00$ContentBody$grvVehiclRegistration$ctl02$ctl01','')"><i class="fa fa-edit"></i></a>
                                        <a class="btn btn-primary" href="javascript:__doPostBack('ctl00$ContentBody$grvVehiclRegistration$ctl02$ctl02','')"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span>2</span>
                                    </td>
                                    <td>
                                        <span>RUTOO1</span>
                                    </td>

                                    <td>
                                        <span>Gautam Nagar</span>
                                    </td>
                                    <td>
                                        <span>8:30 AM</span>

                                    </td>
                                    <td>
                                        <a class="btn btn-primary" href="javascript:__doPostBack('ctl00$ContentBody$grvVehiclRegistration$ctl02$ctl01','')"><i class="fa fa-edit"></i></a>
                                        <a class="btn btn-primary" href="javascript:__doPostBack('ctl00$ContentBody$grvVehiclRegistration$ctl02$ctl02','')"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <script>
        $(document).ready(function () {
            $('#timepicker').timepicker({
                timeFormat: 'h:mm p',
                interval: 15,
                minTime: '8',
                maxTime: '6:00pm',
                dynamic: false,
                dropdown: true,
                scrollbar: false,
                change: recordStart
            });

            function recordStart() {
                let startTime = $('#timepicker').val();
                $('#timeMessage').text("The Time picked is ... " + startTime);
            }
        });
    </script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
</asp:Content>
