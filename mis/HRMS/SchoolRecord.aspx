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
                <table class="table table-bordered <%--table-hover bg-white" cellspacing="0" rules="all" border="1" id="tblS1" style="width: 100%; border-collapse: collapse;--%>">
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
                            <td><a href="../Transaction/Rpt_SchoolDetail.aspx">23510817802</a></td>
                            <td>GPS SANAWADI KA MAJRA</td>
                            <td>2</td>
                            <td>2</td>
                            <td style="color: #c258ff">0</td>
                        </tr>
                        <tr>
                            <td><a href="../Transaction/Rpt_SchoolDetail.aspx">23510817101  </a></td>
                            <td>GMS GHANIKHEDI</td>
                            <td>3</td>
                            <td>0</td>
                            <td style="color: #c258ff">0</td>
                        </tr>
                        <tr>
                            <td><a href="../Transaction/Rpt_SchoolDetail.aspx">23510806003  </a></td>
                            <td>GMS GUNDIKALA (1 to 8)</td>
                            <td>5</td>
                            <td>3</td>
                            <td style="color: #c258ff">0</td>
                        </tr>
                        <tr>
                            <td><a href="../Transaction/Rpt_SchoolDetail.aspx">23510807601  </a></td>
                            <td>PS RAIPURIYA</td>
                            <td>2</td>
                            <td>1</td>
                            <td style="color: #c258ff">0</td>
                        </tr>
                        <tr>
                            <td><a href="../Transaction/Rpt_SchoolDetail.aspx">23510810302  </a></td>
                            <td>GMS PIPALYA KUMAR</td>
                            <td>3</td>
                            <td>2</td>
                            <td style="color: #c258ff">0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510814201">23510814201  </a></td>
                            <td>P.S. KOLUKHEDI</td>
                            <td>2</td>
                            <td>2</td>
                            <td style="color: #c258ff">0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510804309">23510804309  </a></td>
                            <td>GHSS EXCELL. AGAR</td>
                            <td>31</td>
                            <td>10</td>
                            <td style="color: #eb1111" class="fw-bold">11</td>
                        </tr>
                        <tr>
                            <td><a href="#23510800901">23510800901  </a></td>
                            <td>P.S. PACHORA</td>
                            <td>3</td>
                            <td>4</td>
                            <td style="color: #eb1111" class="fw-bold">1</td>
                        </tr>
                        <tr>
                            <td><a href="#23510802002">23510802002  </a></td>
                            <td>GMS PACHETI(1 to 8)</td>
                            <td>6</td>
                            <td>7</td>
                            <td style="color: #eb1111" class="fw-bold">2</td>
                        </tr>
                        <tr>
                            <td><a href="#23510804501">23510804501  </a></td>
                            <td>P.S. DHOTI</td>
                            <td>2</td>
                            <td>4</td>
                            <td style="color: #eb1111" class="fw-bold">2</td>
                        </tr>
                        <tr>
                            <td><a href="#23510817301">23510817301  </a></td>
                            <td>GMS MAHUDIYA (1 to 8)</td>
                            <td>5</td>
                            <td>6</td>
                            <td style="color: #eb1111" class="fw-bold">3</td>
                        </tr>
                        <tr>
                            <td><a href="#23510809101">23510809101  </a></td>
                            <td>PS SEMLI</td>
                            <td>3</td>
                            <td>3</td>
                            <td style="color: #c258ff">0</td>
                        </tr>
                       
                    </tbody>
                    <tfoot>
                    </tfoot>
                </table>
        </fieldset>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

