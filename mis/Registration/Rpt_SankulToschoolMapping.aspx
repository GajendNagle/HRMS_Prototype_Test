﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_SankulToschoolMapping.aspx.cs" Inherits="mis_Masters_Office_Masters_Mst_SankulToschoolMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Sankul To School Mapping Report</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                         <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports" title="click to go on">School Reports</a></li>
                        <li class="breadcrumb-item active">Sankul To School Mapping Report</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <asp:Label runat="server" ID="lblMsg"></asp:Label>
                <fieldset>
                    <legend>Sankul To School Mapping Report</legend>
                    <div class="row form-group">
                        <div class="col-md-3">
                            <label class="font-bold">Division Name <span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Gwalior</asp:ListItem>
                                <asp:ListItem>Narmadapuram</asp:ListItem>
                                <asp:ListItem>Indore</asp:ListItem>
                                <asp:ListItem>Jabalpur</asp:ListItem>
                                <asp:ListItem>Rewa</asp:ListItem>
                                <asp:ListItem>Sagar</asp:ListItem>
                                <asp:ListItem>Shahdol</asp:ListItem>
                                <asp:ListItem>Ujjain</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Raisen</asp:ListItem>
                                <asp:ListItem>Rajgarh</asp:ListItem>
                                <asp:ListItem>Sehore</asp:ListItem>
                                <asp:ListItem>Vidisha</asp:ListItem>
                                <asp:ListItem>Ashoknagar</asp:ListItem>
                                <asp:ListItem>Shivpuri</asp:ListItem>
                                <asp:ListItem>Datia</asp:ListItem>
                                <asp:ListItem>Guna</asp:ListItem>
                                <asp:ListItem>Gwalior</asp:ListItem>
                                <asp:ListItem>Harda</asp:ListItem>
                                <asp:ListItem>Hoshangabad</asp:ListItem>
                                <asp:ListItem>Betul</asp:ListItem>
                                <asp:ListItem>Morena</asp:ListItem>
                                <asp:ListItem>Sheopur</asp:ListItem>
                                <asp:ListItem>Bhind</asp:ListItem>
                                <asp:ListItem>Barwani</asp:ListItem>
                                <asp:ListItem>Burhanpur</asp:ListItem>
                                <asp:ListItem>Dhar</asp:ListItem>
                                <asp:ListItem>Indore</asp:ListItem>
                                <asp:ListItem>Jhabua</asp:ListItem>
                                <asp:ListItem>Khandwa</asp:ListItem>
                                <asp:ListItem>Khargone</asp:ListItem>
                                <asp:ListItem>Alirajpur</asp:ListItem>
                                <asp:ListItem>Balaghat</asp:ListItem>
                                <asp:ListItem>Chhindwara</asp:ListItem>
                                <asp:ListItem>Jabalpur</asp:ListItem>
                                <asp:ListItem>Katni</asp:ListItem>
                                <asp:ListItem>Mandla</asp:ListItem>
                                <asp:ListItem>Narsinghpur</asp:ListItem>
                                <asp:ListItem>Seoni</asp:ListItem>
                                <asp:ListItem>Rewa</asp:ListItem>
                                <asp:ListItem>Satna</asp:ListItem>
                                <asp:ListItem>Sidhi</asp:ListItem>
                                <asp:ListItem>Singroli</asp:ListItem>
                                <asp:ListItem>Chhatarpur</asp:ListItem>
                                <asp:ListItem>Damoh</asp:ListItem>
                                <asp:ListItem>Panna</asp:ListItem>
                                <asp:ListItem>Sagar</asp:ListItem>
                                <asp:ListItem>Tikamgarh</asp:ListItem>
                                <asp:ListItem>Shahdol</asp:ListItem>
                                <asp:ListItem>Umaria</asp:ListItem>
                                <asp:ListItem>Dindori</asp:ListItem>
                                <asp:ListItem>Anuppur</asp:ListItem>
                                <asp:ListItem>Dewas</asp:ListItem>
                                <asp:ListItem>Mandsaur</asp:ListItem>
                                <asp:ListItem>Neemuch</asp:ListItem>
                                <asp:ListItem>Ratlam</asp:ListItem>
                                <asp:ListItem>Shajapur</asp:ListItem>
                                <asp:ListItem>Ujjain</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">Block Name</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Agar</asp:ListItem>
                                <asp:ListItem>Barod</asp:ListItem>
                                <asp:ListItem>Nalkheda</asp:ListItem>
                                <asp:ListItem>Susner</asp:ListItem>
                                <asp:ListItem>Alirajpur</asp:ListItem>
                                <asp:ListItem>Bhabra</asp:ListItem>
                                <asp:ListItem>Katthiwara</asp:ListItem>
                                <asp:ListItem>Sondwa</asp:ListItem>
                                <asp:ListItem>Udaygarh</asp:ListItem>
                                <asp:ListItem>Jobat</asp:ListItem>
                                <asp:ListItem>Anuppur</asp:ListItem>
                                <asp:ListItem>Jaithari</asp:ListItem>
                                <asp:ListItem>Kotma</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">From Date</label>
                                <input type="date" class="form-control" placeholder="17/11/2023" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">To Date</label>
                                <input type="date" class="form-control" placeholder="17/11/2023" />
                            </div>
                        </div>
                        <div class="col-md-4 mt-4">
                        <div class="form-group">
                            <asp:Button ID="View1" CssClass="btn btn-success btn-rounded" OnClick="View1_Click" runat="server" Text="Search" />             
                            <a href="Rpt_SankulToschoolMapping.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset runat="server" id="data" visible="false">
                    <legend>Report</legend>
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
                                <table class="table table-bordered">
                                    <tr class="card-header">
                                        <th>Sr.No.</th>
                                        <th>Division Name</th>
                                        <th>District Name</th>
                                        <th>Block Name</th>
                                        <th>Sankul Name</th>
                                        <th>School Name</th>
                                        <th>View More</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>Phanda</td>
                                        <td>23356245856 - Crist Academy School	</td>
                                        <td>23568546215 - Sarasvati Vidhya Mandir</td>
                                        <td><a class="btn btn-info">View</a></td>
                                    </tr>  
                                    <tr>
                                        <td>2</td>
                                        <td>Bhopal</td>
                                        <td>Bhopal</td>
                                        <td>Phanda</td>
                                        <td>23354912798 - Bal Bharti School		</td>
                                        <td>23354932167 - Delhi Public School	</td>
                                        <td><a class="btn btn-info">View</a></td>
                                    </tr>
                                </table>
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

