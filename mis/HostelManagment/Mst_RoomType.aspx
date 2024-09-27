<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_RoomType.aspx.cs" Inherits="mis_HostelManagment_Mst_RoomType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                    <li class="breadcrumb-item active"><a href="Mst_HostelRegistration.aspx" title="click to go on">Room Type</a></li>
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

                        <li class="breadcrumb-item">Room Type</li>
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
                                Room Type / कक्ष का प्रकार
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="divOffice">
                <fieldset>
                    <legend>Room Type / कक्ष का प्रकार</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Hostel Name/<br />
                                    हॉस्टल का चयन करें<span style="color: red;">*</span></label>
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
                                <label>
                                    Enter Room Type/<br />
                                    कक्ष प्रकार दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Room Type" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Enter Number of Beds/<br />
                                    बिस्तर की संख्या दर्ज करें<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Number of Beds" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr role="row">
                                            <th scope="col">Sr.No./<br />
                                                सरल क्र.</th>
                                            <th scope="col">Category/<br />
                                                वर्ग</th>
                                            <th scope="col">Rent Per Bed/<br />
                                                प्रति बिस्तर किराया</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr role="row">
                                            <td align="center" valign="middle"><span>1</span>
                                            </td>
                                            <td align="center" valign="middle"><span>General</span>
                                            </td>
                                            <td>
                                                <input type="text" name="input1" placeholder="Enter Rent Per Bed" class="form-control">
                                            </td>
                                        </tr>
                                        <tr role="row">
                                            <td align="center" valign="middle"><span>2</span>
                                            </td>
                                            <td align="center" valign="middle"><span>OBC</span>
                                            </td>
                                            <td>
                                                <input type="text" name="input1" placeholder="Enter Rent Per Bed" class="form-control">
                                            </td>
                                        </tr>
                                        <tr role="row">
                                            <td align="center" valign="middle"><span>3</span>
                                            </td>
                                            <td align="center" valign="middle"><span>SC</span>
                                            </td>
                                            <td>
                                                <input type="text" name="input1" placeholder="Enter Rent Per Bed" class="form-control">
                                            </td>
                                        </tr>
                                        <tr role="row">
                                            <td align="center" valign="middle"><span>4</span>
                                            </td>
                                            <td align="center" valign="middle"><span>ST</span>
                                            </td>
                                            <td>
                                                <input type="text" name="input1" placeholder="Enter Rent Per Bed" class="form-control">
                                            </td>
                                        </tr>
                                    </tbody>

                                </table>
                            </div>
                        </div>

                        <div class="col-md-3 ms-4">
                            <div class="form-group">
                                <label class="form-check-label">
                                    <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                                    Status
						<small>(Active/InActive)</small><br>
                                    स्थिति (सक्रिय/निष्क्रिय)
                                </label>
                            </div>
                        </div>
                    </div>


                    <%--
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-weight-bold">Is Active &nbsp</label>
                                <br />
                                <input id="ContentBody_ctl03" type="checkbox" name="ctl00$ContentBody$ctl03" checked="checked" />
                            </div>
                        </div>--%>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group ">
                            <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('HostlInfo').style.display = 'block'">Save</button>
                            <a href="Mst_RoomType.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <fieldset id="HostlInfo" style="display: none;">
        <legend>Room Type Detail / कक्ष प्रकार का विवरण</legend>
        <div class="row justify-content-end">
            <div class="col-md-4 text-end">
                <div class="form-group">
                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
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
                                        <th scope="col">Sr.No./<br />
                                            क्र.सं.</th>
                                        <th scope="col">Hostel Name/<br />
                                            हॉस्टल का नाम</th>
                                        <th scope="col">Room Type/<br />
                                            कक्ष प्रकार </th>
                                        <th scope="col">No. of Bed/<br />
                                            बिस्तर की संख्या</th>
                                        <th scope="col">Action/<br />
                                            कार्यवाही
                                        </th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td align="center" valign="middle"><span>1</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>KGBV Boys hostel</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Double</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>2 Bed</span>
                                        </td>
                                        <td><a class="Alert-Edit"><i class="fa fa-eye" aria-hidden="true"></i>|<i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>

                                    </tr>
                                    <tr role="row" class="odd">
                                        <td align="center" valign="middle"><span>2</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>KGBV Girls hostel</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>Single</span>
                                        </td>
                                        <td align="center" valign="middle">
                                            <span>1 Bed</span>
                                        </td>
                                        <td><a class="Alert-Edit"><i class="fa fa-eye" aria-hidden="true"></i>|<i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
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

