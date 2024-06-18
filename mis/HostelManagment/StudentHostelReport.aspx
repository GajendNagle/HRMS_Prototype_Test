﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentHostelReport.aspx.cs" Inherits="mis_HostelManagment_StudentHostelReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HostelManagement" title="click to go on">Hostel Management</a></li>
                    <li class="breadcrumb-item active"><a href="Mst_HostelRegistration.aspx" title="click to go on">School Hostel Report</a></li>
                </ol>
            </div>

        </div>
    </div>
    <fieldset>
        <legend>School Hostel Report /  स्कूल छात्रावास रिपोर्ट</legend>
        <div class="row align-items-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fw-bold text-dark">
                        Select Hostel Name /<br />
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
                    <label class="fw-bold text-dark">
                        Select Hostel Type /<br />
                        छात्रावास का प्रकार चुनें</label>
                    <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="1">Girls </option>
                        <option value="2">Boys</option>
                        <option value="3">Combine</option>
                    </select>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label class="fw-bold text-dark">
                       Select Room Type/
   <br />
                        कक्ष प्रकार चुनें
                    </label>
                    <select class="form-control select2">
                        <option value="--Select--">--Select--</option>
                        <option value="Single">Single</option>
                        <option value="Double">Double</option>
                        <option value="Triple">Triple</option>
                        <option value="Quad">Quad</option>
                    </select>
                </div>
            </div>
            <hr />
            <div class="col-md-12 justify-content-end">
                <div class="form-group text-center">
                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                </div>
            </div>
        </div>
    </fieldset>
    <fieldset id="FS_Details" style="display: none">
        <legend>Details / विवरण </legend>
        <div class="row justify-content-end">
            <div class="col-md-4 text-end">
                <div class="form-group">
                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">

                    <table class="table table-bordered" id="mainTable">
                        <thead>
                            <tr>
                                <th>Sr. No.
                                    <br />
                                    क्र.सं.
                                </th>
                                <th>Hostel Name 
                                            <br />
                                    छात्रावास का नाम
                                </th>
                                <th>Hostel Type 
                                            <br />
                                    छात्रावास का प्रकार
                                </th>
                                <th>Student ID/Name 
                                            <br />
                                    छात्र का आई.डी/नाम</th>
                                <th>Room Type 
                                            <br />
                                    कक्ष प्रकार</th>
                                <th>Room No. 
                                            <br />
                                    कक्ष नंबर
                                </th>
                                <th>Bed No. 
                                            <br />
                                    बिस्तर नंबर
                                </th>
                                  <th>Room Rent 
                                            <br />
                                    कक्ष का किराया
                                </th>
                                <th>Parent Name 
                                            <br />
                                    अभिभावक का नाम
                                </th>
                            </tr></thead>
                         <tbody>
                            <tr>
                                <td> 1</td>
                                <td> Girls Hostel Phutera</td>
                                <td> Girls</td>
                                <td> 112772962 Rohan Sharma</td>
                                <td> Single</td>
                                <td> 101</td>
                                <td> 34</td>
                                <td> Rs.1000/-</td>
                                <td> J.J Sharma</td>
                            </tr>
                            <tr>
                                <td> 2</td>
                                <td> Boys Hostel Phutera</td>
                                <td> Boys</td>
                                <td> 188416561 Jay Verma</td>
                                <td> Double</td>
                                <td> 201</td>
                                <td> 14</td>
                                <td> Rs. 500/-</td>
                                <td> J.K Verma</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </fieldset>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>
