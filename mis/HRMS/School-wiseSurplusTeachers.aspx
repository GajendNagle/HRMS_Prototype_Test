<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="School-wiseSurplusTeachers.aspx.cs" Inherits="mis_Report_School_wiseSurplusTeachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        .head {
            justify-content: space-around;
            margin: 10px;
            margin-bottom: 800px;
            font-weight: 400;
            font-size: 20px;
            color: white;
        }

            .head:hover {
                color: red;
                text-decoration: underline;
            }


        title {
            background-color: brown;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <%--  <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Surplus Teachers Management System</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports2" title="click to go on">OIS Setup Reports</a></li>
                    <li class="breadcrumb-item active">Surplus Teachers Management System</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="mb-3">
        <div class="row nav">
            <div class="col-md-12 justify-content-around">
                <%--<a class="head" href="../Default.aspx">Home</a>
                <a class="head" href="ZeroTeacher.aspx">Zero Teachers </a>
                <a class="head" href="SingleTeacherManagementSystem.aspx">Single Teachers</a>
                <a class="head" href="SurplusTeacherManagementSystem.aspx">Surplus Status</a>
            </div>
        </div>
    </div>
    <center>
        <h3 class="alert alert-success">School-wise Surplus Teachers
        </h3>
    </center>--%>
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
                            <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#RptOISSetup" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchoolDirectory')">
                                <span>OIS Setup Reports</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Surplus Teachers</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <%--  <div class="row page-titles mb-4">--%>


    <%--div class="card card-border-primary">
     <div class="card-header">
         <div class="row align-items-end">
             <div class="col-lg-12">
                 <div class="card-title color_black">
                     School-wise Surplus Teachers/स्कूलवार अतिरिक्त शिक्षक
                 </div>
             </div>
         </div>
     </div>
     <br />--%>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">School-Wise Surplus Teachers / स्कूलवार अतिरिक्त शिक्षक</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tblS1" style="width: 100%; border-collapse: collapse;">
                    <thead>
                        <tr>
                            <th scope="col">DISE Code<br />
                                डाईस कोड</th>
                            <th scope="col">School<br />
                                स्कूल</th>
                            <th scope="col">Sanctioned Posts<br />
                                स्वीकृत पद</th>
                            <th scope="col">Working<br />
                                कार्यरत</th>
                            <th scope="col">Surplus Teachers<br />
                                अतिरिक्त शिक्षक</th>
                        </tr>

                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="School_In_Surplus.aspx">23510817802</a></td>
                            <td>GPS SANAWADI KA MAJRA</td>
                            <td>2</td>
                            <td>2</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="Suplus_School.aspx">23510817101  </a></td>
                            <td>GMS GHANIKHEDI</td>
                            <td>3</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="School_SurplusGMS%20.aspx">23510806003  </a></td>
                            <td>GMS GUNDIKALA (1 to 8)</td>
                            <td>5</td>
                            <td>3</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510807601">23510807601  </a></td>
                            <td>PS RAIPURIYA</td>
                            <td>2</td>
                            <td>1</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510810302">23510810302  </a></td>
                            <td>GMS PIPALYA KUMAR</td>
                            <td>3</td>
                            <td>2</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510814201">23510814201  </a></td>
                            <td>P.S. KOLUKHEDI</td>
                            <td>2</td>
                            <td>2</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510804309">23510804309  </a></td>
                            <td>GHSS EXCELL. AGAR</td>
                            <td>31</td>
                            <td>10</td>
                            <td>11</td>
                        </tr>
                        <tr>
                            <td><a href="#23510800901">23510800901  </a></td>
                            <td>P.S. PACHORA</td>
                            <td>3</td>
                            <td>4</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td><a href="#23510802002">23510802002  </a></td>
                            <td>GMS PACHETI(1 to 8)</td>
                            <td>6</td>
                            <td>7</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td><a href="#23510804501">23510804501  </a></td>
                            <td>P.S. DHOTI</td>
                            <td>2</td>
                            <td>4</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td><a href="#23510817301">23510817301  </a></td>
                            <td>GMS MAHUDIYA (1 to 8)</td>
                            <td>5</td>
                            <td>6</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td><a href="#23510809101">23510809101  </a></td>
                            <td>PS SEMLI</td>
                            <td>3</td>
                            <td>3</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510812601">23510812601  </a></td>
                            <td>P.S. NEVARI</td>
                            <td>2</td>
                            <td>2</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510813103">23510813103  </a></td>
                            <td>PS BANJARA DERA GHURASIA</td>
                            <td>2</td>
                            <td>2</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="#232208ODS01">232208ODS01  </a></td>
                            <td>DEO AGAR MALWA</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510802708">23510802708  </a></td>
                            <td>P.S. JHANDA WALI PATHAR</td>
                            <td>2</td>
                            <td>2</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td><a href="#23510807602">23510807602  </a></td>
                            <td>GMS RAIPURIYA</td>
                            <td>3</td>
                            <td>0</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td><a href="#23510808904">23510808904  </a></td>
                            <td>GMS CHANDAN GAON</td>
                            <td>5</td>
                            <td>1</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td><a href="#23510809401">23510809401  </a></td>
                            <td>P.S. DUDH PURA</td>
                            <td>2</td>
                            <td>3</td>
                            <td>1</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr style="background-color: #005b5c; color: white">
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







    <div>
        <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tblS2" style="width: 100%; display: none; border-collapse: collapse;">
            <thead>
                <tr>
                    <th scope="col">DISECode<br />
                        डी.आई.एस.ई. कोड</th>
                    <th scope="col">School<br />
                        स्कूल</th>
                    <th scope="col">Sanctioned Posts<br />
                        स्वीकृत पद</th>
                    <th scope="col">Working<br />
                        कार्यरत</th>
                    <th scope="col">Surplus Teachers<br />
                        अतिरिक्त शिक्षक</th>
                </tr>

            </thead>
            <tbody>
                <tr>
                    <td><a href="#23510100703">23510100703  </a></td>
                    <td>GMS AMBA BAROD (1 to 8)</td>
                    <td>10</td>
                    <td>6</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510103102">23510103102  </a></td>
                    <td>GPS JAYSINGHPURA</td>
                    <td>4</td>
                    <td>1</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510105302">23510105302  </a></td>
                    <td>GMS  BARGADI (1 to 8)</td>
                    <td>5</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510109903">23510109903  </a></td>
                    <td>GPS DURGPURA KA KHEDA KHANDAVAS</td>
                    <td>2</td>
                    <td>1</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510113201">23510113201  </a></td>
                    <td>GPS DEHARIYA NANA</td>
                    <td>2</td>
                    <td>2</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td><a href="#23510101402">23510101402  </a></td>
                    <td>GMS EKLERA</td>
                    <td>3</td>
                    <td>0</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510100101">23510100101  </a></td>
                    <td>GPS KANGIKHEDA</td>
                    <td>2</td>
                    <td>3</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td><a href="#23510103002">23510103002  </a></td>
                    <td>M.S. BHADWASA (Class 1 to 8)</td>
                    <td>8</td>
                    <td>5</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510105304">23510105304  </a></td>
                    <td>GPS BANOTHI KALA BARGADI</td>
                    <td>2</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510105402">23510105402  </a></td>
                    <td>GMS AMBADEV</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                </tr>
            </tbody>
        </table>
    </div>




</asp:Content>






<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function showtbl(tblId) {
            var tables = document.getElementsByTagName('table');
            for (var i = 0; i < tables.length; i++) {
                tables[i].style.display = "none";
            }

            document.getElementById(tblId).style.display = "table";
        }
    </script>

</asp:Content>
