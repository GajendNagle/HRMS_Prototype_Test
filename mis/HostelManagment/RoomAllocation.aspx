<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RoomAllocation.aspx.cs" Inherits="mis_HostelManagment_RoomAllocation" %>

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
                    <li class="breadcrumb-item active"><a href="Mst_HostelRegistration.aspx" title="click to go on">Room Allocation</a></li>
                </ol>
            </div>
        </div>
    </div>
    <fieldset>
        <legend>Room Allocation/ कक्ष आवंटन</legend>
        <div class="row align-items-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fw-bold text-dark">
                        Select Student ID/Name /<br />
                        छात्र आई.डी/नाम चुनें</label>
                    <select class="form-control select2">
                        <option value="--Select--">--Select--</option>
                        <option value="1">103201441 Raadha Dawar</option>
                        <option value="2">188599791 JEANA RAWAT</option>
                        <option value="3">108875539 Ramesh Nargawa </option>
                        <option value="4">112772962 SANGEETA DAWAR</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fw-bold text-dark">
                        Select Hostel Name /<br />
                        छात्रावास का नाम चुनें</label>
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
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fw-bold text-dark">
                        Select Room Number/
   <br />
                        कक्ष नंबर चुनें
                    </label>
                    <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="1">101</option>
                        <option value="2">102</option>
                        <option value="3">103</option>
                        <option value="4">104</option>
                        <option value="5">105</option>
                        <option value="6">106</option>
                    </select>
                </div>
            </div>

        </div>
        <div class="row align-items-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label class="fw-bold text-dark">
                        Select Bed Number/
   <br />
                        बिस्तर नंबर चुनें
                    </label>
                    <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="1">1 bed </option>
                        <option value="2">2 bed </option>
                        <option value="3">3 bed </option>
                        <option value="4">4 bed </option>
                        <option value="5">5 bed </option>
                        <option value="6">6 bed </option>
                        <option value="7">7 bed </option>
                        <option value="8">8 bed </option>
                    </select>
                </div>
            </div>
        </div>
        <hr />
        <div class="col-md-12">
            <div class="form-group text-center">
                <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('FS_Details').style.display = 'block'">Save</button>
                <a href="RoomAllocation.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
        <div class="row align-items-end">

            <div class="col-lg-12" runat="server" id="dvStudentDetails">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr role="row">
                                        <th>Sr. No.
                                    <br />
                                            क्र.सं.
                                        </th>
                                        <th>Student ID/Name 
                                            <br />
                                            छात्र का आई.डी/नाम</th>
                                        <th>Hostel Name 
                                            <br />
                                            छात्रावास का नाम
                                        </th>
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
                                        <th scope="col">Action
                                            <br />
                                            कार्रवाई </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td>1</td>
                                        <td>112772962 SANGEETA DAWAR</td>
                                        <td>KGBV Girls Hostel</td>
                                        <td>Single</td>
                                        <td>101</td>
                                        <td>2</td>
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


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

