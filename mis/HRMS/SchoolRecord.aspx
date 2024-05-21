<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolRecord.aspx.cs" Inherits="mis_HRMS_SchoolRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">School Setup Report</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports" title="click to go on">School Reports</a></li>
                    <li class="breadcrumb-item active">School Setup Report</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <fieldset>
            <legend>Details</legend>
            <div class="row justify-content-end">
                <div class="col-md-1 ">
                    <div class="form-group">
                        <asp:Button ID="Button2" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="Excel" />
                    </div>
                </div>
                <div class="col-md-1">
                    <div class="form-group">
                        <asp:Button ID="Button3" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="PDF" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">DISECode</th>
                                    <th scope="col">School</th>
                                    <th scope="col">Sanctioned Posts</th>
                                    <th scope="col">Working</th>
                                    <th scope="col">Surplus Teachers</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a class="text-info" href="../Transaction/Rpt_SchoolDetail.aspx">23510817802</a></td>
                                    <td>GPS SANAWADI KA MAJRA</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="../Transaction/Rpt_SchoolDetail.aspx">23510817101  </a></td>
                                    <td>GMS GHANIKHEDI</td>
                                    <td>3</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="../Transaction/Rpt_SchoolDetail.aspx">23510806003  </a></td>
                                    <td>GMS GUNDIKALA (1 to 8)</td>
                                    <td>5</td>
                                    <td>3</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="../Transaction/Rpt_SchoolDetail.aspx">23510807601  </a></td>
                                    <td>PS RAIPURIYA</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="../Transaction/Rpt_SchoolDetail.aspx">23510810302  </a></td>
                                    <td>GMS PIPALYA KUMAR</td>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510814201">23510814201  </a></td>
                                    <td>P.S. KOLUKHEDI</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510804309">23510804309  </a></td>
                                    <td>GHSS EXCELL. AGAR</td>
                                    <td>31</td>
                                    <td>10</td>
                                    <td>11</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510800901">23510800901  </a></td>
                                    <td>P.S. PACHORA</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510802002">23510802002  </a></td>
                                    <td>GMS PACHETI(1 to 8)</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510804501">23510804501  </a></td>
                                    <td>P.S. DHOTI</td>
                                    <td>2</td>
                                    <td>4</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510817301">23510817301  </a></td>
                                    <td>GMS MAHUDIYA (1 to 8)</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510809101">23510809101  </a></td>
                                    <td>PS SEMLI</td>
                                    <td>3</td>
                                    <td>3</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510812601">23510812601  </a></td>
                                    <td>P.S. NEVARI</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510813103">23510813103  </a></td>
                                    <td>PS BANJARA DERA GHURASIA</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#232208ODS01">232208ODS01  </a></td>
                                    <td>DEO AGAR MALWA</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510802708">23510802708  </a></td>
                                    <td>P.S. JHANDA WALI PATHAR</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510807602">23510807602  </a></td>
                                    <td>GMS RAIPURIYA</td>
                                    <td>3</td>
                                    <td>0</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510808904">23510808904  </a></td>
                                    <td>GMS CHANDAN GAON</td>
                                    <td>5</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td><a class="text-info" href="#23510809401">23510809401  </a></td>
                                    <td>P.S. DUDH PURA</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>1</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr style="background-color:#005b5c; color:white">
                                    <th colspan="2">Total Count</th>
                                    <th>83</th>
                                    <th>54</th>
                                    <th>22</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

