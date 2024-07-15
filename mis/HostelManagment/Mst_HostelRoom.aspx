
<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HostelRoom.aspx.cs" Inherits="mis_HostelManagment_Mst_HostelRoom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .hidden {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HostelManagement" title="click to go on">Hostel Management</a></li>
                    <li class="breadcrumb-item active"><a href="Mst_HostelRegistration.aspx" title="click to go on">Hostel Room Details</a></li>
                </ol>
            </div>

        </div>
    </div>--%>

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
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Hostel Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Hostel Room Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Hostel Room Details / छात्रावास कक्ष का विवरण
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="divOffice">
                <fieldset>
                    <legend>Hostel Room Details / छात्रावास कक्ष का विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>
                                Select Hostel Name<br />
                                हॉस्टल का चयन करें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="1">Boys Hostel</option>
                                <option value="2">Girls Hostel</option>
                                <option value="3">Combine </option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label>
                                Select Room Type
                                    <br />
                                कक्ष प्रकार का चयन करें<span style="color: red;">*</span></label>
                            <select class="form-control select2">

                                <option value="--Select--">--Select--</option>
                                <option value="Single">Single</option>
                                <option value="Double">Double</option>
                                <option value="Triple">Triple</option>
                                <option value="Quad">Quad</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label>
                                Select Hostel Room Number<br />
                                हॉस्टल कक्ष नंबर का चयन करें<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="101">101</option>
                                <option value="201">201</option>
                                <option value="102">102</option>
                                <option value="202">202</option>
                            </select>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <label>
                                Enter No. of Bed<br />
                                बिस्तर की संख्या दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter No. of Bed" />
                        </div>
                        <div class="col-md-3">
                            <label>
                                Enter Rent Per Bed<br />
                                प्रति बिस्तर किराया दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Rent per Bed" />
                        </div>
                    </div>

                    <hr />
                    <div class="col-md-12">
                        <div class="form-group text-center">
                            <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                            <a href="Mst_HostelRoom.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <fieldset id="HostlInfo" style="display: none;">
        <legend>Hostel Room Detail / छात्रावास कक्ष विवरण</legend>
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
        <div class="row align-items-end">

            <div class="col-lg-12" runat="server" id="dvStudentDetails">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr role="row">
                                        <th scope="col">Sr.No.<br />
                                            क्र.सं.</th>
                                        <th scope="col">Hostel Name<br />
                                            हॉस्टल का नाम</th>
                                        <th scope="col">Room Type<br />
                                            कक्ष प्रकार   </th>
                                        <th scope="col">Hostel Room Number<br />
                                            हॉस्टल का कक्ष नंबर </th>
                                        <th scope="col">No. of Bed<br />
                                            बिस्तर की संख्या </th>
                                        <th scope="col">Rent Per Bed<br />
                                            प्रति बिस्तर किराया</th>
                                        <th scope="col">Action
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td align="center" valign="middle"><span>1</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Girls Hostel</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <a>Single</a>

                                        </td>
                                        <td align="center" valign="middle">
                                            <a>201 </a>
                                        </td>

                                        <td align="center" valign="middle">
                                            <span>150</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Rs.1000/-</span>
                                        </td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </fieldset>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        //function showTextBoxes() {
        //    var dropdown = document.getElementById("dropdown");
        //    var textBoxes = document.getElementById("textBoxes");
        //    var textBoxes1 = document.getElementById("textBoxes1");

        //    if (dropdown.value === "show") {
        //        textBoxes.style.display = "block";
        //        textBoxes1.style.display = "block";
        //    } else if (dropdown.value === "show1") {
        //        textBoxes1.style.display = "block";
        //        textBoxes.style.display = "block";
        //    } else {
        //        textBoxes.style.display = "none";
        //        textBoxes1.style.display = "none";
        //    }
        //}

        //function showTextBoxes() {
        //    const bedroomDropdown = document.getElementById('bedroomDropdown');
        //    const dropdown = document.getElementById('dropdown');
        //    const selectedValue = dropdown.value;

        //    // Clear existing options
        //    bedroomDropdown.innerHTML = '';

        //    // Create options based on the selected value
        //    let options = [];
        //    switch (selectedValue) {
        //        case 'Single':
        //            options = [
        //                { value: '1', text: '1 bed room' }
        //            ];
        //            break;
        //        case 'Double':
        //            options = [
        //                { value: '2', text: '2 bed room' }
        //            ];
        //            break;
        //        case 'Triple':
        //            options = [
        //                { value: '3', text: '3 bed room' }
        //            ];
        //            break;
        //        case 'Quad':
        //            options = [
        //                { value: '4', text: '4 bed room' }
        //            ];
        //            break;
        //        default:
        //            options = [
        //                { value: '--Select--', text: '--Select--' }
        //            ];
        //    }

        //    // Append new options to the bedroom dropdown
        //    options.forEach(option => {
        //        const opt = document.createElement('option');
        //        opt.value = option.value;
        //        opt.textContent = option.text;
        //        bedroomDropdown.appendChild(opt);
        //    });

        //    // Reinitialize Select2 plugin
        //    $(bedroomDropdown).select2();
        //}

        //// Initialize Select2 on page load
        //$(document).ready(function () {
        //    $('.select2').select2();
        //});
    </script>
</asp:Content>

