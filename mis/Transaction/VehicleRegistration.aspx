﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="VehicleRegistration.aspx.cs" Inherits="mis_Transaction_VehicleRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        /*   tbody, td, tfoot, th, thead, tr {
            padding-top: 19px;
        }

        table th {
            font-weight: 800;
        }

        tbody, td, tfoot, th, thead, tr {
            border-color: aliceblue;
            border-style: solid;
            border-width: 10px;
        }*/
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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#TransportManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Transport Management System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Vehicle Registration</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Vehicle Registration / वाहन पंजीकरण</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <fieldset>
                    <legend>VEHICLE DETAILS / वाहन जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Number
                                    <br />
                                    गाडी का नंबर<span style="color: red">*</span></span>
                                <input type="text" maxlength="10" class="form-control " placeholder="Enter Vehicle Number" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Company Name
                                    <br />
                                    वाहन कंपनी का नाम<span style="color: red">*</span></span>
                                <input type="text" maxlength="50" class="form-control" placeholder="Enter Vehicle Company" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Model Name
                                    <br />
                                    वाहन मॉडल का नाम<span style="color: red">*</span></span>
                                <input type="text" maxlength="20" class="form-control" placeholder="Enter Vehicle Model" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Variants
                                    <br />
                                    वाहन का प्रकार <span style="color: red">*</span></span>
                                <input type="text" maxlength="50" class="form-control" placeholder="Enter Vehicle Class">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <span>Fuel Type
                                    <br />
                                    ईंधन का प्रकार<span style="color: red">*</span></span>
                                <div class="form-control">
                                    <input type="radio" id="one">
                                    <label for="one">Diesel</label>
                                    <input type="radio" id="two">
                                    <label for="option-2">Petrol</label>
                                    <input type="radio" id="three">
                                    <label for="three">CNG</label>
                                    <input type="radio" id="four">
                                    <label for="four">Electric</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Year Of Manufacture
                                    <br />
                                    निर्माण वर्ष<span style="color: red">*</span></span>
                                <select class="form-control">
                                    <option value="0">--Select--</option>
                                    <option value="1">2000</option>
                                    <option value="2">2001</option>
                                    <option value="3">2002</option>
                                    <option value="4">2003</option>
                                    <option value="5">2004</option>
                                    <option value="6">2005</option>
                                    <option value="7">2006</option>
                                    <option value="8">2007</option>
                                    <option value="9">2008</option>
                                    <option value="10">2009</option>
                                    <option value="11">2010</option>
                                    <option value="12">2011</option>
                                    <option value="13">2012</option>
                                    <option value="14">2013</option>
                                    <option value="15">2014</option>
                                    <option value="16">2015</option>
                                    <option value="17">2016</option>
                                    <option value="18">2017</option>
                                    <option value="19">2018</option>
                                    <option value="20">2019</option>
                                    <option value="21">2020</option>
                                    <option value="22">2021</option>
                                    <option value="23">2022</option>
                                    <option value="24">2023</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Motor Vehicle
                                    <br />
                                    मोटर गाड़ी<span style="color: red">*</span></span>
                                <select class="form-control">
                                    <option value="0">Select</option>
                                    <option value="1">New Vehicle</option>
                                    <option value="2">XL Vehicle</option>
                                    <option value="3">Imported Vehicle</option>
                                    <option value="4">E-Rickshaw/E-Cart</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Type Of Body
                                    <br />
                                    बॉडी का प्रकार<span style="color: red">*</span></span>
                                <select class="form-control">
                                    <option value="0">--Select--</option>
                                    <option value="1">Hatchback</option>
                                    <option value="2">Sedan</option>
                                    <option value="3">SUV</option>
                                    <option value="4">MUV</option>
                                    <option value="4">Commercial Vehicle</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Color
                                    <br />
                                    वाहन का रंग<span style="color: red">*</span></span>
                                <input type="text" maxlength="30" class="form-control" placeholder="Enter Vehicle Color" autocomplete="off">
                            </div>
                        </div>
                        <%--<div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Type /<br />
                                    वाहन का प्रकार<span style="color: red">*</span></span>
                                <input type="text" maxlength="50" class="form-control" placeholder="Enter Vehicle Type" autocomplete="off">
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Chassis Number
                                    <br />
                                    वाहन चेसिस नंबर<span style="color: red">*</span></span>
                                <input type="text" maxlength="17" class="form-control " placeholder="Enter Vehicle Chassis Number" autocomplete="off">
                                <span style="color: Red; display: none;">Invalid Chassis Number.</span>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Seating Capacity
                                    <br />
                                    बैठने की क्षमता<span style="color: red">*</span></span>
                                <input type="text" maxlength="2" class="form-control" onpaste="return false;" placeholder="Enter Seat Capacity" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Engine Number
                                    <br />
                                    वाहन का इंजन नंबर<span style="color: red">*</span></span>
                                <input type="text" maxlength="20" class="form-control " placeholder="Enter Vehicle Engine Number" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Vehicle Weight(Unladen weight) KG
                                    <br />
                                    वाहन का वजन कि.ग्रा.<span style="color: red">*</span></span>
                                <input type="text" maxlength="7" class="form-control " placeholder="Enter Vehicle Weight" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Cubic Capacity
                                    <br />
                                    घन क्षमता<span style="color: red">*</span></span>
                                <input type="text" maxlength="7" class="form-control " placeholder="Enter Cubic Capacity" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Horse power (BHP/KW)
                                    <br />
                                    अश्वशक्ति (बीएचपी/किलोवाट)<span style="color: red">*</span></span>
                                <input type="text" maxlength="7" class="form-control " placeholder="Enter Horse power" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Wheel Base (mm)
                                    <br />
                                    व्हील बेस (मि.मी.)<span style="color: red">*</span></span>
                                <input type="text" maxlength="7" class="form-control " placeholder="Enter Wheel Base" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Registration No.
                                    <br />
                                    पंजीकरण संख्या<span style="color: red">*</span></span>
                                <input type="text" maxlength="15" class="form-control" placeholder="Enter Registration No." autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Registration Date
                                    <br />
                                    पंजीकरण की तारीख<span style="color: red">*</span></span>
                                <input type="Date" class="form-control disableFuturedate" data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-end-date="0d" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Registration Validity
                                    <br />
                                    पंजीकरण की वैधता<span style="color: red">*</span></span>
                                <input type="Date" class="form-control disableFuturedate" data-provide="datepicker" placeholder="dd/mm/yyyy" autocomplete="off" data-date-end-date="0d" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                            </div>
                        </div>

                        <%--<div class="col-md-3">
                            <div class="form-group">
                                <span>Type /<br />
                                    प्रकार<span style="color: red">*</span></span>
                                <select class="form-control">
                                    <option value="0">Select</option>
                                    <option value="1">New</option>
                                    <option value="2">Old</option>
                                </select>
                            </div>
                        </div>--%>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Insurance Details / बीमा का विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Insurance Company Name
                                    <br />
                                    बीमा कंपनी का नाम<span style="color: red">*</span></span>
                                <input type="text" maxlength="50" class="form-control" placeholder="Enter Insurance Company Name" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Insurance Number<br />
                                    बीमा संख्या<span style="color: red">*</span></span>
                                <input type="text" maxlength="17" class="form-control" placeholder="Enter Insurance Number" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Insurance Start Date
                                    <br />
                                    बीमा आरंभ तिथि<span style="color: red">*</span></span>
                                <input type="date" class="form-control disableFuturedate" data-provide="datepicker" data-date-end-date="0d" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Insurance End Date
                                    <br />
                                    बीमा समाप्ति तिथि<span style="color: red">*</span></span>
                                <input type="date" class="form-control disableFuturedate" placeholder="dd/mm/yyyy" autocomplete="off" data-date-format="dd/mm/yyyy" data-date-autoclose="true">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Insurance Amount(Rs)
                                    <br />
                                    बीमा राशि(रु.)<span style="color: red">*</span></span>
                                <input type="text" maxlength="9" class="form-control" placeholder="Enter Insurance Amount" autocomplete="off">
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Dealer Details / डीलर का विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <span>Dealer Name
                                    <br />
                                    डीलर का नाम<span style="color: red">*</span></span>
                                <input type="text" maxlength="45" class="form-control" placeholder="Enter Dealer Name" autocomplete="off">
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="form-group">
                                <span>Dealer Address
                                    <br />
                                    डीलर का पता<span style="color: red">*</span></span>
                                <input name="ctl00$ContentBody$txtDealerAddress" type="text" maxlength="100" class="form-control" placeholder="Enter Dealer Address" autocomplete="off">
                            </div>
                        </div>

                    </div>
                </fieldset>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="fw-bold Alert-Confirmation btn w-lg btn-success btn-border">Save</button>
                        <a href="VehicleRegistration.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </div>
            <br />
            <div>
                <fieldset>
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
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <div>
                                    <table class="table table-bordered" id="tblVehicle" style="border-collapse: collapse; text-align: center;">
                                        <tbody>
                                            <tr>
                                                <th scope="col">Sr.No.<br />
                                                    सरल क्र. </th>
                                                <th scope="col">Vehicle Number<br />
                                                    गाडी नंबर</th>
                                                <th scope="col">Chassis Number
                                                    <br />
                                                    चेसिस नंबर</th>
                                                <th scope="col">Insurance Number
                                                    <br />
                                                    बीमा संख्या</th>
                                                <th scope="col">Dealer Name
                                                    <br />
                                                    विक्रेता का नाम</th>
                                                <th scope="col">Vehicle Color
                                                    <br />
                                                    वाहन का रंग</th>
                                                <th scope="col">Action
                                                    <br />
                                                </th>
                                            </tr>
                                            <tr>
                                                <td><span>1</span>
                                                </td>
                                                <td>MP04ZB8290
                                                </td>
                                                <td>MAT631139NWH69961
                                                </td>
                                                <td class="text-right">1901003122P105135
                                                </td>
                                                <td>TATA MOTORS </td>
                                                <td>DOOR STEEL SHELL </td>
                                                <td>
                                                    <a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-eye" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span>2</span>
                                                </td>
                                                <td>MP04ZD2758
                                                </td>
                                                <td>MAT631139NWJ71982</td>
                                                <td>1901003122P105825
                                                </td>
                                                <td>TATA MOTORS</td>
                                                <td>DAY GREY </td>
                                                <td>
                                                    <a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-eye" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span>3</span>
                                                </td>
                                                <td>MP04ZB8269 </td>
                                                <td>MAT631139NWH69963
                                                </td>
                                                <td>1901003122P105134

                                                </td>
                                                <td>TATA MOTORS
                                                </td>
                                                <td>DAY GREY</td>
                                                <td>
                                                    <a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-eye" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span>4</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_grvVehiclRegistration_ctl05_lblVehicle_Number">MP04ZB8211</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_grvVehiclRegistration_ctl05_lblVehicle_Chassis_Number">MAT631139NWH67251</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_grvVehiclRegistration_ctl05_lblInsurance_Number">1901003122P105133</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_grvVehiclRegistration_ctl05_lblDealer_Name">Varenyam motor car</span></td>
                                                <td>
                                                    <span id="ctl00_ContentBody_grvVehiclRegistration_ctl05_lblVehicle_Color">White</span></td>
                                                <td>
                                                    <a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-eye" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span>5</span>
                                                </td>
                                                <td>
                                                    <span>MP04HC4163</span>
                                                </td>
                                                <td>
                                                    <span>1995990</span>
                                                </td>
                                                <td>
                                                    <span>1901003122P105404432</span>
                                                </td>
                                                <td>
                                                    <span id="ctl00_ContentBody_grvVehiclRegistration_ctl06_lblDealer_Name">MY CAR bhopal  </span></td>
                                                <td>
                                                    <span id="ctl00_ContentBody_grvVehiclRegistration_ctl06_lblVehicle_Color">White</span> </td>
                                                <td>
                                                    <a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-eye" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-eye"></i></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class="text-center "><u>Vehicle Information</u></h2>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <table class="table">
                                                <tr>
                                                    <th>Vehicle Number :</th>
                                                    <td>MP04ZB8290</td>
                                                    <th>Vehicle Class :</th>
                                                    <td>L1e-A</td>
                                                    <th>Vehicle Company (Maker):</th>
                                                    <td>TATA MOTORS</td>
                                                </tr>
                                                <tr>
                                                    <th><span>Fuel Type :</span></th>
                                                    <td><span>Diesel</span></td>
                                                    <th><span>Vehicle Model :</span></th>
                                                    <td><span>SAFARIXT</span></td>
                                                    <th><span>Vehicle Type :</span></th>
                                                    <td><span>Body type</span></td>
                                                </tr>
                                                <tr>
                                                    <th><span>Year Of Manufacture:</span></th>
                                                    <td><span>2022</span></td>
                                                    <th><span>Seat Capacity:</span></th>
                                                    <td><span>7</span></td>
                                                    <th><span>Vehicle Chassis Number:</span></th>
                                                    <td><span>MAT631139NWH69961</span></td>
                                                </tr>
                                                <tr>
                                                    <th><span>Vehicle Engine Number:</span></th>
                                                    <td><span>4205829</span></td>
                                                    <th><span>Vehicle Weight(Unladen weight) KG:</span></th>
                                                    <td><span></span></td>
                                                    <th><span>Cubic Capacity:</span></th>
                                                    <td><span></span></td>
                                                </tr>
                                                <tr>
                                                    <th><span>Horse power (BHP/KW):</span></th>
                                                    <td><span></span></td>
                                                    <th><span>Wheel Base (mm):</span></th>
                                                    <td><span></span></td>
                                                    <th><span>Registration No.:</span></th>
                                                    <td><span></span></td>
                                                </tr>
                                                <tr>
                                                    <th><span>Registration Validity:</span></th>
                                                    <td><span></span></td>
                                                    <th><span>Registraion Date:</span></th>
                                                    <td><span>20/10/2022</span></td>
                                                    <th><span>Insurance Company Name:</span></th>
                                                    <td><span>UNITED INDIA INSURANCE COMPANY LIMITED</span></td>
                                                </tr>
                                                <tr>
                                                    <th><span>Insurance Number:</span></th>
                                                    <td><span>1901003122P105135</span></td>
                                                    <th><span>Insurance Start Date:</span></th>
                                                    <td><span>22/10/2022</span></td>
                                                    <th><span>Insurance End Date:</span></th>
                                                    <td><span>21/10/2023</span></td>
                                                </tr>
                                                <tr>
                                                    <th><span>Insurance Amount:</span></th>
                                                    <td><span>57593.00</span></td>
                                                    <th><span>Dealer Name:</span></th>
                                                    <td><span>TATA MOTORS</span></td>
                                                    <th><span>Dealer Address:</span></th>
                                                    <td><span>BHOPAL</span></td>
                                                </tr>
                                                <tr>


                                                    <th><span>Type Of Body:</span></th>
                                                    <td><span>DAY GREY</span></td>
                                                    <th><span>Vehicle Color:</span></th>
                                                    <td><span>DOOR STEEL SHELL</span></td>
                                                </tr>
                                                <tr>
                                                    <%-- <th><span>Motor Vehicle:</span></th>
                                                    <td><span>New Vehicle</span></td>--%>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
