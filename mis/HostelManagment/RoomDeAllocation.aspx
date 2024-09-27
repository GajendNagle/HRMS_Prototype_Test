<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RoomDeAllocation.aspx.cs" Inherits="mis_HostelManagment_RoomDeAllocation" %>

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
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Hostel Management</span></a>
                        </li>

                        <li class="breadcrumb-item">Room Deallocation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            विवरण
                        </div>
                        <div class="">
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                Room Deallocation /  कक्ष का आवंटन
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <fieldset>
                    <legend>Room Deallocation /  कक्ष का आवंटन</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Hostel Type
                                    <br />
                                    छात्रावास का प्रकार चयन करे</label>
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
                                    Select Hostel Name
                                    <br />
                                    हॉस्टल नाम चयन करे<span style="color: red;">*</span></label>
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
                            <div class="form-group">
                                <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('FS_Details').style.display = 'block';">Search</button>
                                  <a href="RoomDeAllocation.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
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
                                                कार्यवाही
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Rohan Sharma(112772962)</td>
                                            <td>Single</td>
                                            <td>101</td>
                                            <td>1011</td>
                                            <td>1000</td>
                                            <td scope="col">
                                                <input type="checkbox" /></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jay Verma(188416561)</td>
                                            <td>Double</td>
                                            <td>201</td>
                                            <td>2012</td>
                                            <td>400</td>

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
            </div>
        </div>
    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

