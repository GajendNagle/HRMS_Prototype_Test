<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RoomDeAllocation.aspx.cs" Inherits="mis_HostelManagment_RoomDeAllocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HostelManagement" title="click to go on">Hostel Management</a></li>
                    <li class="breadcrumb-item active"><a href="Mst_HostelRegistration.aspx" title="click to go on">Room Deallocation</a></li>
                </ol>
            </div>

        </div>
    </div>
   <fieldset>
        <legend>Room Deallocation /  कक्ष का आवंटन</legend>
        <div class="row align-items-end">
             <div class="col-md-3">
                <div class="form-group">
                    <label>
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
                    <label>
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
                                  <th>Room Rent (in Rs.) 
                                            <br />
                                    कक्ष का किराया
                                </th>
                                <th>Action
                                            <br />
                                    कार्रवाई
                                </th>
                            </tr></thead>
                         <tbody>
                            <tr>
                                <td> 1</td>
                                <td>  Rohan Sharma(112772962)</td>
                                <td> Single</td>
                                <td> 101</td>
                                <td> 1011</td>
                                <td> 1000</td>
                                <td scope="col">
                                                <input type="checkbox" /></td>
                            </tr>
                            <tr>
                                <td> 2</td>
                                <td>  Jay Verma(188416561)</td>
                                <td> Double</td>
                                <td> 201</td>
                                <td> 2012</td>
                                <td> 400</td>
                             
                                <td scope="col">
                                                <input type="checkbox" /></td>
                            </tr>
                        </tbody>
                    </table>
                     <div class="col-md-12 justify-content-end">
                                <div class="form-group text-center">
                                    <a href="RoomDeAllocation.aspx" class="btn btn-outline-danger w-lg btn-border">Deallocation</a>
                                </div>
                            </div>
                </div>
            </div>
        </div>
    </fieldset>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

