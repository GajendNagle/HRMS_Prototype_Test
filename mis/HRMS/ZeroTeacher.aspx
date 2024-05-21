<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ZeroTeacher.aspx.cs" Inherits="mis_Transaction_SurplusStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .head {
            justify-content: space-around;
            margin: 10px;
            padding-bottom: 500px;
            font-weight: 400;
            font-size: 20px;
            color: white;
        }

            .head:hover {
                color: red;
                text-decoration: underline;
            }

        .nav {
            background-color: #005b5c;
            padding: 10px;
        }

        title {
            background-color: brown;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
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
                    <li class="breadcrumb-item active">Zero Teachers Management System</li>
                </ol>
            </div>
        </div>
    </div>
    <div>
        <div class="row nav">
            <div class="col-md-12 justify-content-around">
                <a class="head" href="ZeroTeacher.aspx">Zero Teachers </a>
                <a class="head" href="SingleTeacherManagementSystem.aspx">Single Teachers</a>
                <a class="head" href="SurplusTeacherManagementSystem.aspx">Surplus Status</a>
            </div>
        </div>
    </div>
    <br />
    <div class="row">
        <h3 class="col-md-12 alert alert-success text-center">District-wise Zero Teachers</h3>
    </div>
    <%--table of District Start--%>

    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white " cellspacing="0" rules="all" border="1" id="GrdSchoolDetails" style="width: 100%; border-collapse: collapse;">
                    <thead>
                        <tr>
                            <th scope="col" class="w-25">S.No.</th>
                            <th scope="col">District</th>
                            <th scope="col">Schools</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td><a href="#BlockofAgarMalwa">Agar Malwa</a></td>
                            <td>27</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td><a href="#BlockofAshoknagar">Ashoknagar</a></td>
                            <td>71</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td><a href="#BlockofBalaghat">Balaghat</a></td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td><a href="#BlockofBetul">Betul</a></td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td><a href="#BlockofBhind">Bhind</a></td>
                            <td>25</td>
                        </tr>
                        <tr>
                            <td>6
                            </td>
                            <td><a href="#BlockofBhopal">Bhopal</a></td>
                            <td>9</td>
                        </tr>
                        <tr>
                            <td>7
                            </td>
                            <td><a href="#BlockofBurhanpur">Burhanpur</a></td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <td>8
                            </td>
                            <td><a href="#BlockofChhatarpur">Chhatarpur</a></td>
                            <td>169</td>
                        </tr>
                        <tr>
                            <td>9
                            </td>
                            <td><a href="#BlockofChhindwara">Chhindwara</a></td>
                            <td>16</td>
                        </tr>
                        <tr>
                            <td>10
                            </td>
                            <td><a href="#BlockofDamoh">Damoh</a></td>
                            <td>54</td>
                        </tr>
                        <tr style="background-color: #005b5c; color: white">
                            <th colspan="2" class="text-center">Total Count</th>
                            <th>395</th>
                        </tr>
                    </tbody>
                    <tfoot>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    <%--table of District End--%>
    <%--table of Block for Agar Malwa district Start--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">

                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofAgarMalwa" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Barod</td>
                            <td>23510102002</td>
                            <td>GMS RAMAKHEDI</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Barod</td>
                            <td>23510100403</td>
                            <td>GMS JHALARA</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Nalkheda</td>
                            <td>23510206703</td>
                            <td>GPS  SURJANI DHANIYA KHEDI</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Agar</td>
                            <td>23510815002</td>
                            <td>GMS ARNI</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Barod</td>
                            <td>23510100704</td>
                            <td>GPS KANAKHEDA AMBA BAROD</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--table of Block for Ashoknagar District Start--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofAshoknagar" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>Mugawali</td>
                            <td>23460812602</td>
                            <td>GMS  SIRSORA</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Ashoknagar</td>
                            <td>23460221201</td>
                            <td>GPS RAMPAHADI</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Mugawali</td>
                            <td>23460814702</td>
                            <td>GMS  MATHANA</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Chanderi</td>
                            <td>23460515102</td>
                            <td>GPS NEW JAMUSAR</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Ashoknagar</td>
                            <td>23460221501</td>
                            <td>GPS KALUAKHEDI</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--table of Block for Ashoknagar District End--%>
    <%--table of Block for Balaghat District Start--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofBalaghat" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>Katangi</td>
                            <td>23450301802</td>
                            <td>GMS KOYLARI (CLASS 6 TO 8)</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Khairlanji</td>
                            <td>23450404302</td>
                            <td>GNMS CHORPINDKEPAAR(6-8)</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Lal Burra</td>
                            <td>23450603703</td>
                            <td>GMS KHAIRGAON</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Lanji</td>
                            <td>23450806203</td>
                            <td>GPS SAYAR</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Balaghat</td>
                            <td>23450117903</td>
                            <td>PS THAKURTOLA</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--table of Block for Balaghat District End--%>
    <%--table of Block for Betul District Start--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofBetul" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>Amla</td>
                            <td>23350108504</td>
                            <td>GMS KHEDLIBAZAR</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Betul</td>
                            <td>23350314402</td>
                            <td>MS DHANORA JEEN</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Prabhat Pattan</td>
                            <td>23350907401</td>
                            <td>P.S.AADAMPARI</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Multai</td>
                            <td>23350805602</td>
                            <td>MS SEMJHIRA</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Multai</td>
                            <td>23350807501</td>
                            <td>CMRISE  (Campus)-P.S. BUS STAND MULTAI</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
    <%--table of Block for Betul District End--%>
    <%--table of Block for Bhind District Start--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofBhind" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>Ater</td>
                            <td>23030615603</td>
                            <td>GMS REPURA class 1 to 8</td>
                            <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Gohad</td>
                            <td>23030719202</td>
                            <td>GMS  MAGHAN class 1 to 8</td>
                            <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Raun</td>
                            <td>23030207501</td>
                            <td>GPS KAUNDH class 1 to 5</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Ater</td>
                            <td>23030600901</td>
                            <td>GPS BHOGILAL KA PURA class 1 to 5</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Ater</td>
                            <td>23030621602</td>
                            <td>GMS ANGADKAPURA class 1 to 8</td>
                            <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                        </tr>
                        <tr>
                            <td>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--table of Block for Bhind District End--%>
    <%--table of Block for Bhopal District Start--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofBhopal" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>Berasia</td>
                            <td>23320118702</td>
                            <td>GOVT MS GADA BRAHMAN (Class 6 to 8)</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Phanda Gramin</td>
                            <td>23320205702</td>
                            <td>GOVT MS ENNTKHEDI (CLASS 1 TO 8)</td>
                            <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Berasia</td>
                            <td>23320123102</td>
                            <td>GOVT MS KHEJDA KALYANPUR (Class 6 to 8)</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Berasia</td>
                            <td>23320114601</td>
                            <td>GOVT PS KHAIRKHEDA (Class 1 to 5)</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Berasia</td>
                            <td>23320104204</td>
                            <td>GOVT HS BEELKHO (Class 9 to 10)</td>
                            <td>High Schools (Class 9 to 10)</td>
                        </tr>
                        <tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--table of Block for Bhind District End--%>
    <%--table of Block for Burhanpur District Start--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofBurhanpur" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>Burhanpur</td>
                            <td>23480210602</td>
                            <td>PS MALFALYA CLASS (1 TO 5)</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Burhanpur</td>
                            <td>23480208405</td>
                            <td>UEGS SENDRIYA WADI (1 TO 5)</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Burhanpur</td>
                            <td>23480204703</td>
                            <td>UEGS ACHALIA FALYA CLASS (1 TO 5)</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Burhanpur</td>
                            <td>23480203303</td>
                            <td>NEW MS CHIKHLYA CLASS (6 TO 8)</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Burhanpur</td>
                            <td>23480210605</td>
                            <td>NEW MS PARATKUNDIA class(1 to 8)</td>
                            <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                        </tr>
                        <tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--table of Block for Bhind District End--%>
    <%--table of Block for 	Chhatarpur District End--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofChhatarpur" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>Badamalahara</td>
                            <td>23090102902</td>
                            <td>GMS KUDELA 1 TO 8</td>
                            <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Barigarh/Gaurihar</td>
                            <td>23090407201</td>
                            <td>GPS KEVATPURA 1 TO 5</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Rajnagar</td>
                            <td>23090802007</td>
                            <td>GPS TURYAN PURWA  1 TO 5</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Badamalahara</td>
                            <td>23090110401</td>
                            <td>GMS DHADORA  1 TO 8</td>
                            <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Badamalahara</td>
                            <td>23090122001</td>
                            <td>GPS BIJAAK 1 TO 5</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>6
                            </td>
                            <td>Bijawar</td>
                            <td>23090310001</td>
                            <td>GPS KISHUNGARH 1 TO 5</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>7
                            </td>
                            <td>Barigarh/Gaurihar</td>
                            <td>23090421501</td>
                            <td>GPS BHURAPURWA 1 TO 5</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--table of Block for 	Chhatarpur District End--%>
    <%--table of Block for 	Chhindwara District Start--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofChhindwara" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>Pandhurna</td>
                            <td>23430815802</td>
                            <td>Govt. MS Dholankhapa (CLASS 6 TO 8)</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Parasia</td>
                            <td>23430316705</td>
                            <td>Govt. PS Rawanwara Khas (Class1 to 5)</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Sausar</td>
                            <td>23430605302</td>
                            <td>Govt. MS Koprawadi Kala</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Mohkhed</td>
                            <td>23430216308</td>
                            <td>Govt. HS Dhagadiyamal (Class 9 To 10)</td>
                            <td>High Schools (Class 9 to 10)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Pandhurna</td>
                            <td>23430818603</td>
                            <td>Govt. HSS Karaghat kamthi (CLASS 6 TO 12)</td>
                            <td>Middle&#160;to&#160;Higher&#160;Secondary&#160;School (Class 6 to 12)</td>
                        </tr>
                        <tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--table of Block for 	Chhindwara District End--%>
    <%--table of Block for 	Damoh District Start--%>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="BlockofDamoh" style="width: 100%; border-collapse: collapse; display: none">
                    <thead>
                        <tr>
                            <th scope="col">S.No.</th>
                            <th scope="col">Block</th>
                            <th scope="col">DISE Code</th>
                            <th scope="col">School</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1
                            </td>
                            <td>Jabera</td>
                            <td>23120607402</td>
                            <td>GOVT MS IMALIYA (CLass 6-8)</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>2
                            </td>
                            <td>Batiyagarh</td>
                            <td>23120712301</td>
                            <td>GOVT PS HARDUTOLA(CLASS-1-5)</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                            <td>3
                            </td>
                            <td>Damoh</td>
                            <td>23120300402</td>
                            <td>GOVT MS BARKHERA (Class 6-8)</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>4
                            </td>
                            <td>Hatta</td>
                            <td>23120409602</td>
                            <td>GOVT MS NARAYANPURA (Class-6-8)</td>
                            <td>Middle School (Class 6 to 8)</td>
                        </tr>
                        <tr>
                            <td>5
                            </td>
                            <td>Tendukheda</td>
                            <td>23120507101</td>
                            <td>GOVT PS MAHGUNWA KHURD (Class-1-5)</td>
                            <td>Primary School (Class 1 to 5)</td>
                        </tr>
                        <tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--table of Block for 	Damoh District End--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        // Event listener to handle row clicks
        document.addEventListener("DOMContentLoaded", function () {
            // Select all table rows
            var rows = document.getElementsByTagName("tr");

            // Attach event listener to each row
            for (var i = 0; i < rows.length; i++) {
                rows[i].addEventListener("click", function () {
                    // Check if the clicked row has an anchor tag with href="#BlockofAgarMalwa"
                    if (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofAgarMalwa") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofAgarMalwa");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                    else if
                        (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofAshoknagar") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofAshoknagar");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                    else if
                        (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofBalaghat") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofBalaghat");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                    else if
                        (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofBetul") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofBetul");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                    else if
                        (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofBhind") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofBhind");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                    else if
                        (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofBhopal") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofBhopal");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                    else if
                        (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofBurhanpur") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofBurhanpur");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                    else if
                        (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofChhatarpur") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofChhatarpur");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                    else if
                        (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofChhindwara") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofChhindwara");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                    else if
                        (this.getElementsByTagName("a")[0].getAttribute("href") === "#BlockofDamoh") {
                        // Show the second table
                        var secondTable = document.getElementById("BlockofDamoh");
                        secondTable.style.display = "table";

                        // Hide the first table
                        var firstTable = this.closest("table");
                        firstTable.style.display = "none";
                    }
                });
            }
        });
    </script>

</asp:Content>

