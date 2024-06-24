<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SingleTeacherManagementSystem.aspx.cs" Inherits="mis_Report_SingleTeacherManagementSystem" %>

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
               
                    <li class="breadcrumb-item"><span>District-wise Single Teachers Report</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>

<%--  <div class="row page-titles mb-4">--%>


<div class="card card-border-primary">
    <div class="card-header">
        <div class="row align-items-end">
            <div class="col-lg-12">
                <div class="card-title color_black">
             District-wise Single Teachers Report/जिलेवार एकल शिक्षकों की रिपोर्ट
                </div>
            </div>
        </div>
    </div><br />


 
    <%--District's Table--%>
    <div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl1" style="width: 100%; border-collapse: collapse;">
                        <thead>
                            <tr>
                                <th scope="col">S.No.</th>
                                <th scope="col">District</th>
                                <th scope="col">Schools</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1
                                </td>
                                <td><a href="#51" onclick="showtbl('tbl2')">Agar Malwa</a></td>
                                <td>106</td>
                            </tr>
                            <tr>
                                <td>2
                                </td>
                                <td><a href="#46" onclick="showtbl('tbl3')">Ashoknagar</a></td>
                                <td>211</td>
                            </tr>
                            <tr>
                                <td>3
                                </td>
                                <td><a href="#45" onclick="showtbl('tbl4')">Balaghat</a></td>
                                <td>52</td>
                            </tr>
                            <tr>
                                <td>4
                                </td>
                                <td><a href="#35" onclick="showtbl('tbl5')">Betul</a></td>
                                <td>38</td>
                            </tr>
                            <tr>
                                <td>5
                                </td>
                                <td><a href="#3" onclick="showtbl('tbl6')">Bhind</a></td>
                                <td>159</td>
                            </tr>
                            <tr>
                                <td>6
                                </td>
                                <td><a href="#32">Bhopal</a></td>
                                <td>41</td>
                            </tr>
                            <tr>
                                <td>7
                                </td>
                                <td><a href="#48">Burhanpur</a></td>
                                <td>37</td>
                            </tr>
                            <tr>
                                <td>8
                                </td>
                                <td><a href="#9">Chhatarpur</a></td>
                                <td>414</td>
                            </tr>
                            <tr>
                                <td>9
                                </td>
                                <td><a href="#43">Chhindwara</a></td>
                                <td>90</td>
                            </tr>
                            <tr>
                                <td>10
                                </td>
                                <td><a href="#12">Damoh</a></td>
                                <td>175</td>
                            </tr>
                            <tr>
                                <td>11
                                </td>
                                <td><a href="#5">Datia</a></td>
                                <td>85</td>
                            </tr>
                            <tr>
                                <td>12
                                </td>
                                <td><a href="#23">Dewas</a></td>
                                <td>259</td>
                            </tr>
                            <tr>
                                <td>13
                                </td>
                                <td><a href="#25">Dhar</a></td>
                                <td>28</td>
                            </tr>
                            <tr>
                                <td>14
                                </td>
                                <td><a href="#7">Guna</a></td>
                                <td>210</td>
                            </tr>
                            <tr>
                                <td>15
                                </td>
                                <td><a href="#4">Gwalior</a></td>
                                <td>137</td>
                            </tr>
                            <tr>
                                <td>16
                                </td>
                                <td><a href="#36">Harda</a></td>
                                <td>145</td>
                            </tr>
                            <tr>
                                <td>17
                                </td>
                                <td><a href="#26">Indore</a></td>
                                <td>45</td>
                            </tr>
                            <tr>
                                <td>18
                                </td>
                                <td><a href="#39">Jabalpur</a></td>
                                <td>135</td>
                            </tr>
                            <tr>
                                <td>19
                                </td>
                                <td><a href="#38">Katni</a></td>
                                <td>262</td>
                            </tr>
                            <tr>
                                <td>20
                                </td>
                                <td><a href="#29">Khandwa</a></td>
                                <td>203</td>
                            </tr>
                            <tr>
                                <td>21
                                </td>
                                <td><a href="#27">Khargone</a></td>
                                <td>108</td>
                            </tr>
                            <tr>
                                <td>22
                                </td>
                                <td><a href="#42">Mandla</a></td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>23
                                </td>
                                <td><a href="#19">Mandsaur</a></td>
                                <td>168</td>
                            </tr>
                            <tr>
                                <td>24
                                </td>
                                <td><a href="#2">Morena</a></td>
                                <td>164</td>
                            </tr>
                            <tr>
                                <td>25
                                </td>
                                <td><a href="#37">Narmadapuram</a></td>
                                <td>127</td>
                            </tr>
                            <tr>
                                <td>26
                                </td>
                                <td><a href="#40">Narsinghpur</a></td>
                                <td>131</td>
                            </tr>
                            <tr>
                                <td>27
                                </td>
                                <td><a href="#18">Neemuch</a></td>
                                <td>102</td>
                            </tr>
                            <tr>
                                <td>28
                                </td>
                                <td><a href="#52">Niwari</a></td>
                                <td>66</td>
                            </tr>
                            <tr>
                                <td>29
                                </td>
                                <td><a href="#10">Panna</a></td>
                                <td>212</td>
                            </tr>
                            <tr>
                                <td>30
                                </td>
                                <td><a href="#34">Raisen</a></td>
                                <td>227</td>
                            </tr>
                            <tr>
                                <td>31
                                </td>
                                <td><a href="#30">Rajgarh</a></td>
                                <td>159</td>
                            </tr>
                            <tr>
                                <td>32
                                </td>
                                <td><a href="#20">Ratlam</a></td>
                                <td>110</td>
                            </tr>
                            <tr>
                                <td>33
                                </td>
                                <td><a href="#14">Rewa</a></td>
                                <td>379</td>
                            </tr>
                            <tr>
                                <td>34
                                </td>
                                <td><a href="#11">Sagar</a></td>
                                <td>404</td>
                            </tr>
                            <tr>
                                <td>35
                                </td>
                                <td><a href="#13">Satna</a></td>
                                <td>381</td>
                            </tr>
                            <tr>
                                <td>36
                                </td>
                                <td><a href="#33">Sehore</a></td>
                                <td>120</td>
                            </tr>
                            <tr>
                                <td>37
                                </td>
                                <td><a href="#44">Seoni</a></td>
                                <td>39</td>
                            </tr>
                            <tr>
                                <td>38
                                </td>
                                <td><a href="#16">Shahdol</a></td>
                                <td>27</td>
                            </tr>
                            <tr>
                                <td>39
                                </td>
                                <td><a href="#22">Shajapur</a></td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>40
                                </td>
                                <td><a href="#1">Sheopur</a></td>
                                <td>149</td>
                            </tr>
                            <tr>
                                <td>41
                                </td>
                                <td><a href="#6">Shivpuri</a></td>
                                <td>631</td>
                            </tr>
                            <tr>
                                <td>42
                                </td>
                                <td><a href="#17">Sidhi</a></td>
                                <td>285</td>
                            </tr>
                            <tr>
                                <td>43
                                </td>
                                <td><a href="#50">Singrauli</a></td>
                                <td>552</td>
                            </tr>
                            <tr>
                                <td>44
                                </td>
                                <td><a href="#8">Tikamgarh</a></td>
                                <td>207</td>
                            </tr>
                            <tr>
                                <td>45
                                </td>
                                <td><a href="#21">Ujjain</a></td>
                                <td>246</td>
                            </tr>
                            <tr>
                                <td>46
                                </td>
                                <td><a href="#15">Umaria</a></td>
                                <td>123</td>
                            </tr>
                            <tr>
                                <td>47
                                </td>
                                <td><a href="#31">Vidisha</a></td>
                                <td>290</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr style="background-color: #005b5c; color: white">
                                <th colspan="2" class="text-center">Total Count</th>
                                <th>8,340</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--1--%>
    <%--Block's Tables--%>
    <div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl2" style="width: 100%; display: none; border-collapse: collapse;">
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
                                <td>Barod</td>
                                <td>23510107201</td>
                                <td>GPS GARDA (PIPLON)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>2
                                </td>
                                <td>Barod</td>
                                <td>23510110501</td>
                                <td>GPS KHEDA NAROLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>3
                                </td>
                                <td>Barod</td>
                                <td>23510103701</td>
                                <td>GPS KANDARI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>4
                                </td>
                                <td>Nalkheda</td>
                                <td>23510205001</td>
                                <td>GPS GADIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>5
                                </td>
                                <td>Barod</td>
                                <td>23510104801</td>
                                <td>GPS SANGAKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>6
                                </td>
                                <td>Agar</td>
                                <td>23510806502</td>
                                <td>GMS SONCHIDI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>7
                                </td>
                                <td>Barod</td>
                                <td>23510106102</td>
                                <td>GMS NEW RANAYARA (KELWA)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>8
                                </td>
                                <td>Susner</td>
                                <td>23510305302</td>
                                <td>GMS KADIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>9
                                </td>
                                <td>Susner</td>
                                <td>23510305402</td>
                                <td>GPS (CHAK) CHHAPRIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>10
                                </td>
                                <td>Agar</td>
                                <td>23510808301</td>
                                <td>P.S. HAMLAKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>11
                                </td>
                                <td>Barod</td>
                                <td>23510105601</td>
                                <td>GPS LODHAKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>12
                                </td>
                                <td>Barod</td>
                                <td>23510111202</td>
                                <td>GMS NEW KADWALA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>13
                                </td>
                                <td>Agar</td>
                                <td>23510816502</td>
                                <td>GPS NANDUKHEDI SANAWADA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>14
                                </td>
                                <td>Barod</td>
                                <td>23510101604</td>
                                <td>GMS BARKHEDA BARDA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>15
                                </td>
                                <td>Agar</td>
                                <td>23510816201</td>
                                <td>PS GUJARKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>16
                                </td>
                                <td>Barod</td>
                                <td>23510107401</td>
                                <td>GPS PIPALIYA SADIKPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>17
                                </td>
                                <td>Susner</td>
                                <td>23510304402</td>
                                <td>GMS NEW LONGRI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>18
                                </td>
                                <td>Nalkheda</td>
                                <td>23510204702</td>
                                <td>GMS  NATHUKHEDI(1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>19
                                </td>
                                <td>Susner</td>
                                <td>23510304004</td>
                                <td>GMS DEVPUR</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>20
                                </td>
                                <td>Barod</td>
                                <td>23510101303</td>
                                <td>GPS  KHANKRAIL KA KHEDA KHANKRAIL</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>21
                                </td>
                                <td>Barod</td>
                                <td>23510110824</td>
                                <td>GHSS GANGAPUR</td>
                                <td>Higher Secondary Schools  (Class 9 to 12)</td>
                            </tr>
                            <tr>
                                <td>22
                                </td>
                                <td>Susner</td>
                                <td>23510310502</td>
                                <td>GMS DHATURIA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>23
                                </td>
                                <td>Barod</td>
                                <td>23510104004</td>
                                <td>GHSS BIJANAGRI</td>
                                <td>Higher Secondary Schools  (Class 9 to 12)</td>
                            </tr>
                            <tr>
                                <td>24
                                </td>
                                <td>Agar</td>
                                <td>23510810501</td>
                                <td>P.S. JAMUNIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>25
                                </td>
                                <td>Agar</td>
                                <td>23510811101</td>
                                <td>P.S. KACHNARIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>26
                                </td>
                                <td>Agar</td>
                                <td>23510808202</td>
                                <td>GMS GATA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>27
                                </td>
                                <td>Barod</td>
                                <td>23510109202</td>
                                <td>GPS. JASSA KHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>28
                                </td>
                                <td>Agar</td>
                                <td>23510813102</td>
                                <td>GMS GHURASIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>29
                                </td>
                                <td>Susner</td>
                                <td>23510311102</td>
                                <td>GPS NAYAKHEDA KALARIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>30
                                </td>
                                <td>Barod</td>
                                <td>23510102801</td>
                                <td>GPS FATEHGARH</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>31
                                </td>
                                <td>Agar</td>
                                <td>23510812402</td>
                                <td>GMS FATEHPUR MENDAKI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>32
                                </td>
                                <td>Barod</td>
                                <td>23510102404</td>
                                <td>GPS  KALIYARI DHABLA (ANJNA)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>33
                                </td>
                                <td>Barod</td>
                                <td>23510108901</td>
                                <td>GPS AASANDHYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>34
                                </td>
                                <td>Agar</td>
                                <td>23510805901</td>
                                <td>PS SINGAWADA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>35
                                </td>
                                <td>Nalkheda</td>
                                <td>23510202205</td>
                                <td>GPS GUDRAVAN KHEADA GUDRAWAN</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>36
                                </td>
                                <td>Agar</td>
                                <td>23510807401</td>
                                <td>P.S. KUMHARIYA AGAR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>37
                                </td>
                                <td>Barod</td>
                                <td>23510100402</td>
                                <td>NEW GPS (KHEDA JHA) JHALARA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>38
                                </td>
                                <td>Barod</td>
                                <td>23510113603</td>
                                <td>GPS  ANUPURA  BHARAH</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>39
                                </td>
                                <td>Barod</td>
                                <td>23510108302</td>
                                <td>GMS DHABLA PIPLON</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>40
                                </td>
                                <td>Barod</td>
                                <td>23510108903</td>
                                <td>GMS AASANDHYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>41
                                </td>
                                <td>Agar</td>
                                <td>23510813302</td>
                                <td>P.S. NADI KA DERA BARGON</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>42
                                </td>
                                <td>Agar</td>
                                <td>23510802602</td>
                                <td>GMS BORKHEDI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>43
                                </td>
                                <td>Barod</td>
                                <td>23510109401</td>
                                <td>NEWGPS KALU KHEDI.</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>44
                                </td>
                                <td>Susner</td>
                                <td>23510307302</td>
                                <td>GMS LODHAKHEDI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>45
                                </td>
                                <td>Agar</td>
                                <td>23510807602</td>
                                <td>GMS RAIPURIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>46
                                </td>
                                <td>Barod</td>
                                <td>23510101802</td>
                                <td>GMS SARANGAKHEDI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>47
                                </td>
                                <td>Barod</td>
                                <td>23510109501</td>
                                <td>GPS RANAYARA (BAROD)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>48
                                </td>
                                <td>Agar</td>
                                <td>23510815003</td>
                                <td>GPS ARNI KHEDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>49
                                </td>
                                <td>Susner</td>
                                <td>23510300702</td>
                                <td>GMS SEMLI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>50
                                </td>
                                <td>Nalkheda</td>
                                <td>23510203702</td>
                                <td>GMS JAMUNI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>51
                                </td>
                                <td>Barod</td>
                                <td>23510109001</td>
                                <td>GPS AAMLIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>52
                                </td>
                                <td>Barod</td>
                                <td>23510102403</td>
                                <td>GMS  DHABLA (ANJNA)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>53
                                </td>
                                <td>Agar</td>
                                <td>23510800902</td>
                                <td>GMS PACHORA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>54
                                </td>
                                <td>Nalkheda</td>
                                <td>23510206301</td>
                                <td>GPS KARKDIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>55
                                </td>
                                <td>Barod</td>
                                <td>23510108601</td>
                                <td>GPS GURDIYA PIPLON</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>56
                                </td>
                                <td>Barod</td>
                                <td>23510108501</td>
                                <td>GPS SUDVAS</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>57
                                </td>
                                <td>Nalkheda</td>
                                <td>23510206302</td>
                                <td>GMS KARKDIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>58
                                </td>
                                <td>Barod</td>
                                <td>23510110303</td>
                                <td>M.S. JAMUNIYA (Class 1to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>59
                                </td>
                                <td>Barod</td>
                                <td>23510105402</td>
                                <td>GMS AMBADEV</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>60
                                </td>
                                <td>Barod</td>
                                <td>23510111102</td>
                                <td>GMS MAJARA KHEDA KA KHEDA (01 to 08)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>61
                                </td>
                                <td>Agar</td>
                                <td>23510812501</td>
                                <td>P.S. MADANKHEDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>62
                                </td>
                                <td>Barod</td>
                                <td>23510100303</td>
                                <td>GPS  BARKHEDI KA KHEDA UNCHWAS</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>63
                                </td>
                                <td>Barod</td>
                                <td>23510105002</td>
                                <td>GMS DHABLA SONDHIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>64
                                </td>
                                <td>Agar</td>
                                <td>23510804208</td>
                                <td>GPS KUMARIYA PIPLON</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>65
                                </td>
                                <td>Barod</td>
                                <td>23510111801</td>
                                <td>GPS UMARPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>66
                                </td>
                                <td>Barod</td>
                                <td>23510106702</td>
                                <td>GMS CHIPIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>67
                                </td>
                                <td>Agar</td>
                                <td>23510808203</td>
                                <td>PS GATA KA DERA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>68
                                </td>
                                <td>Barod</td>
                                <td>23510101102</td>
                                <td>GMS PIPLIYA GHATA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>69
                                </td>
                                <td>Agar</td>
                                <td>23510806802</td>
                                <td>PS MALVI KHEDA BHEEMPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>70
                                </td>
                                <td>Barod</td>
                                <td>23510112002</td>
                                <td>GMS  MANGAVALIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>71
                                </td>
                                <td>Barod</td>
                                <td>23510102903</td>
                                <td>GMS HARNAWDA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>72
                                </td>
                                <td>Agar</td>
                                <td>23510812903</td>
                                <td>PS BAJANA KA KHEDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>73
                                </td>
                                <td>Agar</td>
                                <td>23510806201</td>
                                <td>P.S. LINGODA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>74
                                </td>
                                <td>Agar</td>
                                <td>23510815202</td>
                                <td>GPS BANJARA DERA (KHIMAKHEDI)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>75
                                </td>
                                <td>Barod</td>
                                <td>23510109902</td>
                                <td>GMS KHANDVAS</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>76
                                </td>
                                <td>Agar</td>
                                <td>23510814301</td>
                                <td>GPS SUNDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>77
                                </td>
                                <td>Nalkheda</td>
                                <td>23510204001</td>
                                <td>GPS ANANDKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>78
                                </td>
                                <td>Barod</td>
                                <td>23510110101</td>
                                <td>GPS. KACHARIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>79
                                </td>
                                <td>Agar</td>
                                <td>23510813002</td>
                                <td>GMS TILWARIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>80
                                </td>
                                <td>Barod</td>
                                <td>23510110001</td>
                                <td>GPS DURG PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>81
                                </td>
                                <td>Barod</td>
                                <td>23510105502</td>
                                <td>GMS MALLUPURA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>82
                                </td>
                                <td>Nalkheda</td>
                                <td>23510207601</td>
                                <td>GPS PADLIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>83
                                </td>
                                <td>Nalkheda</td>
                                <td>23510203902</td>
                                <td>GMS NIPANIYA KHENCHI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>84
                                </td>
                                <td>Barod</td>
                                <td>23510101302</td>
                                <td>GMS  KHANKRAIL (1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>85
                                </td>
                                <td>Agar</td>
                                <td>23510812403</td>
                                <td>PS MANAKHORI FATEHPUR MENDAKI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>86
                                </td>
                                <td>Nalkheda</td>
                                <td>23510206601</td>
                                <td>GPS LASUDIYA GOPAL</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>87
                                </td>
                                <td>Barod</td>
                                <td>23510105401</td>
                                <td>GPS AMBADEV</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>88
                                </td>
                                <td>Barod</td>
                                <td>23510107901</td>
                                <td>GPS SEWAKHED</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>89
                                </td>
                                <td>Barod</td>
                                <td>23510110701</td>
                                <td>GPS BANOTI KHAURD</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>90
                                </td>
                                <td>Barod</td>
                                <td>23510103101</td>
                                <td>GMS JAYSINGHPURA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>91
                                </td>
                                <td>Agar</td>
                                <td>23510817202</td>
                                <td>P.S. BEED SARKARI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>92
                                </td>
                                <td>Barod</td>
                                <td>23510102301</td>
                                <td>GPS DHODRI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>93
                                </td>
                                <td>Agar</td>
                                <td>23510812802</td>
                                <td>PS CHATUPURA PIPLIYA SHAH</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>94
                                </td>
                                <td>Barod</td>
                                <td>23510100602</td>
                                <td>GMS TONKDA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>95
                                </td>
                                <td>Barod</td>
                                <td>23510102201</td>
                                <td>GPS BADNAGAR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>96
                                </td>
                                <td>Agar</td>
                                <td>23510815501</td>
                                <td>P.S. DOAD KHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>97
                                </td>
                                <td>Barod</td>
                                <td>23510104201</td>
                                <td>GPS CHIKLI SAUNDHIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>98
                                </td>
                                <td>Agar</td>
                                <td>23510811403</td>
                                <td>GMS KALMOI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>99
                                </td>
                                <td>Susner</td>
                                <td>23510307502</td>
                                <td>GMS MAGISHPUR</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>100
                                </td>
                                <td>Nalkheda</td>
                                <td>23510209101</td>
                                <td>GPS GOKULPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>101
                                </td>
                                <td>Agar</td>
                                <td>23510804202</td>
                                <td>GIRLS P.S. PIPLON KALA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>102
                                </td>
                                <td>Barod</td>
                                <td>23510107703</td>
                                <td>GMS NIPANIYA HANUMAN</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>103
                                </td>
                                <td>Agar</td>
                                <td>23510806501</td>
                                <td>PS SONCHIDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>104
                                </td>
                                <td>Nalkheda</td>
                                <td>23510207401</td>
                                <td>GPS GARELI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>105
                                </td>
                                <td>Barod</td>
                                <td>23510108505</td>
                                <td>GPS DEVPURA SUDWAS</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>106
                                </td>
                                <td>Barod</td>
                                <td>23510105305</td>
                                <td>GMS DODHAR (1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                        </tbody>
                        <tfoot>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--2--%>
    <div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl3" style="width: 100%; display: none; border-collapse: collapse;">
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
                                <td>Chanderi</td>
                                <td>23460502101</td>
                                <td>GPS BAKSANPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>2
                                </td>
                                <td>Isagarh</td>
                                <td>23460719701</td>
                                <td>GPS KOTHAR KEHDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>3
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460209303</td>
                                <td>GMS RAJPUR</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>4
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460200901</td>
                                <td>GPS KHAIJRA-HAT</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>5
                                </td>
                                <td>Chanderi</td>
                                <td>23460512501</td>
                                <td>GPS BARI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>6
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460229502</td>
                                <td>GPS MAHUAKHEDA TUMEN</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>7
                                </td>
                                <td>Mugawali</td>
                                <td>23460805002</td>
                                <td>GMS  KARATALA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>8
                                </td>
                                <td>Isagarh</td>
                                <td>23460703702</td>
                                <td>GMS VIJAYPURA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>9
                                </td>
                                <td>Chanderi</td>
                                <td>23460514701</td>
                                <td>GPS KATA KHEDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>10
                                </td>
                                <td>Mugawali</td>
                                <td>23460804302</td>
                                <td>GPS CHAK KHOKSI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>11
                                </td>
                                <td>Isagarh</td>
                                <td>23460705101</td>
                                <td>GPS NARSUKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>12
                                </td>
                                <td>Mugawali</td>
                                <td>23460829602</td>
                                <td>GMS N MUDRI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>13
                                </td>
                                <td>Chanderi</td>
                                <td>23460504102</td>
                                <td>GMS MAHOLI (6 to 8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>14
                                </td>
                                <td>Chanderi</td>
                                <td>23460503201</td>
                                <td>GPS MADI CHANDERI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>15
                                </td>
                                <td>Chanderi</td>
                                <td>23460505303</td>
                                <td>GPS SHANTI NAGAR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>16
                                </td>
                                <td>Mugawali</td>
                                <td>23460828001</td>
                                <td>GPS KOLUA CHAK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>17
                                </td>
                                <td>Mugawali</td>
                                <td>23460808703</td>
                                <td>GPS SIDDHPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>18
                                </td>
                                <td>Chanderi</td>
                                <td>23460511402</td>
                                <td>GPS NAGABAR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>19
                                </td>
                                <td>Mugawali</td>
                                <td>23460810401</td>
                                <td>GPS MADHAVAN</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>20
                                </td>
                                <td>Chanderi</td>
                                <td>23460509903</td>
                                <td>GMS HANSARI (6 to 8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>21
                                </td>
                                <td>Mugawali</td>
                                <td>23460817103</td>
                                <td>GPS MUDRA BAHADARA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>22
                                </td>
                                <td>Chanderi</td>
                                <td>23460506701</td>
                                <td>GPS LUHARI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>23
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460216601</td>
                                <td>GMS PIPARIYA KACHHI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>24
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460216301</td>
                                <td>GPS BERKHEDI SONERA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>25
                                </td>
                                <td>Chanderi</td>
                                <td>23460502901</td>
                                <td>GPS MITHAKHEDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>26
                                </td>
                                <td>Mugawali</td>
                                <td>23460800301</td>
                                <td>GPS DHIMROLI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>27
                                </td>
                                <td>Isagarh</td>
                                <td>23460702001</td>
                                <td>GPS MADI LALOI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>28
                                </td>
                                <td>Mugawali</td>
                                <td>23460828701</td>
                                <td>GPS KIRMICH KHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>29
                                </td>
                                <td>Isagarh</td>
                                <td>23460702905</td>
                                <td>GPS HARIJAN COLONY AMROD SINGHRANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>30
                                </td>
                                <td>Chanderi</td>
                                <td>23460505002</td>
                                <td>GMS CHHAPRA (6 to 8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>31
                                </td>
                                <td>Mugawali</td>
                                <td>23460820801</td>
                                <td>GPS RATBHANPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>32
                                </td>
                                <td>Mugawali</td>
                                <td>23460812902</td>
                                <td>GMS GHATBAMURIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>33
                                </td>
                                <td>Mugawali</td>
                                <td>23460814901</td>
                                <td>GPS BAVROD</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>34
                                </td>
                                <td>Mugawali</td>
                                <td>23460800106</td>
                                <td>GPS SATTELITE S. VIJAYNAGAR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>35
                                </td>
                                <td>Mugawali</td>
                                <td>23460828301</td>
                                <td>GPS JARKHAR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>36
                                </td>
                                <td>Chanderi</td>
                                <td>23460506901</td>
                                <td>GPS SOTER</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>37
                                </td>
                                <td>Chanderi</td>
                                <td>23460507201</td>
                                <td>GPS KHAGAL</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>38
                                </td>
                                <td>Mugawali</td>
                                <td>23460814802</td>
                                <td>GPS HAJUKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>39
                                </td>
                                <td>Mugawali</td>
                                <td>23460813001</td>
                                <td>GPS BARKHEDABHOGI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>40
                                </td>
                                <td>Mugawali</td>
                                <td>23460832401</td>
                                <td>GPS KATA KHEDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>41
                                </td>
                                <td>Mugawali</td>
                                <td>23460828201</td>
                                <td>GPS JHAKHORA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>42
                                </td>
                                <td>Isagarh</td>
                                <td>23460700706</td>
                                <td>GPS BARVATPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>43
                                </td>
                                <td>Chanderi</td>
                                <td>23460501202</td>
                                <td>GPS CHAK KETHAN</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>44
                                </td>
                                <td>Mugawali</td>
                                <td>23460803802</td>
                                <td>GMS KARR</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>45
                                </td>
                                <td>Isagarh</td>
                                <td>23460722001</td>
                                <td>GPS CHAAPAR CHAK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>46
                                </td>
                                <td>Chanderi</td>
                                <td>23460514801</td>
                                <td>GPS KOOPGARH</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>47
                                </td>
                                <td>Mugawali</td>
                                <td>23460812501</td>
                                <td>GPS BHAYANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>48
                                </td>
                                <td>Isagarh</td>
                                <td>23460705601</td>
                                <td>GPS CHAK-KORVAS</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>49
                                </td>
                                <td>Mugawali</td>
                                <td>23460817001</td>
                                <td>GPS JAYANTIPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>50
                                </td>
                                <td>Isagarh</td>
                                <td>23460707403</td>
                                <td>GHS  MADI MAHIDPUR (6 TO 10)</td>
                                <td>Middle&#160;to&#160;High&#160;School (Class 6 to 10)</td>
                            </tr>
                            <tr>
                                <td>51
                                </td>
                                <td>Mugawali</td>
                                <td>23460802701</td>
                                <td>GPS KARAIYATURK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>52
                                </td>
                                <td>Chanderi</td>
                                <td>23460507603</td>
                                <td>GPS MANIKPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>53
                                </td>
                                <td>Chanderi</td>
                                <td>23460507605</td>
                                <td>GHS VIKRAMPUR</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>54
                                </td>
                                <td>Chanderi</td>
                                <td>23460500501</td>
                                <td>GPS REHATVAS</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>55
                                </td>
                                <td>Mugawali</td>
                                <td>23460817304</td>
                                <td>GMS  BANSKHEDI(1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>56
                                </td>
                                <td>Chanderi</td>
                                <td>23460510901</td>
                                <td>GPS KHYABADA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>57
                                </td>
                                <td>Isagarh</td>
                                <td>23460701901</td>
                                <td>GPS PACHBAVDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>58
                                </td>
                                <td>Isagarh</td>
                                <td>23460713701</td>
                                <td>GPS TIGHRA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>59
                                </td>
                                <td>Mugawali</td>
                                <td>23460814907</td>
                                <td>GHS BAVROD</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>60
                                </td>
                                <td>Chanderi</td>
                                <td>23460500602</td>
                                <td>GMS MUDRAKALA (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>61
                                </td>
                                <td>Chanderi</td>
                                <td>23460502503</td>
                                <td>GHS ARRON</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>62
                                </td>
                                <td>Mugawali</td>
                                <td>23460804202</td>
                                <td>GMS TAMASHA (1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>63
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460216401</td>
                                <td>GPS CHAK-HARIPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>64
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460208403</td>
                                <td>GPS BARVATPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>65
                                </td>
                                <td>Mugawali</td>
                                <td>23460813904</td>
                                <td>GPS TAPRA BANSKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>66
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460210102</td>
                                <td>GPS JHAGAR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>67
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460216501</td>
                                <td>GPS BAMNAI (SONERA)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>68
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460211201</td>
                                <td>GPS RATIKHEDA(RAJPUR)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>69
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460211304</td>
                                <td>GHS CHHIPON (6 TO 10)</td>
                                <td>Middle&#160;to&#160;High&#160;School (Class 6 to 10)</td>
                            </tr>
                            <tr>
                                <td>70
                                </td>
                                <td>Mugawali</td>
                                <td>23460803104</td>
                                <td>GMS HARUKHEDI (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>71
                                </td>
                                <td>Chanderi</td>
                                <td>23460502302</td>
                                <td>GMS BHATOLI (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>72
                                </td>
                                <td>Mugawali</td>
                                <td>23460825601</td>
                                <td>GPS FUTERA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>73
                                </td>
                                <td>Mugawali</td>
                                <td>23460815301</td>
                                <td>GPS PIPRODA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>74
                                </td>
                                <td>Mugawali</td>
                                <td>23460812502</td>
                                <td>GPS NANOTI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>75
                                </td>
                                <td>Mugawali</td>
                                <td>23460803102</td>
                                <td>GPS DHIRA CHACK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>76
                                </td>
                                <td>Isagarh</td>
                                <td>23460711801</td>
                                <td>GPS JANGHAR SHARANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>77
                                </td>
                                <td>Mugawali</td>
                                <td>23460814902</td>
                                <td>GMS BAVROD</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>78
                                </td>
                                <td>Mugawali</td>
                                <td>23460812901</td>
                                <td>GPS GHATBAMURIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>79
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460217506</td>
                                <td>GPS CHAKARA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>80
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460215202</td>
                                <td>GMS JATOLI (1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>81
                                </td>
                                <td>Isagarh</td>
                                <td>23460716201</td>
                                <td>GPS MINDPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>82
                                </td>
                                <td>Mugawali</td>
                                <td>23460804203</td>
                                <td>GPS CHAK TAMASHA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>83
                                </td>
                                <td>Chanderi</td>
                                <td>23460514901</td>
                                <td>GPS MANIHARI MUHAL</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>84
                                </td>
                                <td>Isagarh</td>
                                <td>23460705801</td>
                                <td>GPS THEKA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>85
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460203802</td>
                                <td>GMS KUDAI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>86
                                </td>
                                <td>Chanderi</td>
                                <td>23460506603</td>
                                <td>GPS PRAJAPATI MOHALLA BHARIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>87
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460217508</td>
                                <td>GMS SHERAPURA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>88
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460208503</td>
                                <td>GPS VIJAYPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>89
                                </td>
                                <td>Isagarh</td>
                                <td>23460719601</td>
                                <td>GPS KHIRIYA BHARKA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>90
                                </td>
                                <td>Mugawali</td>
                                <td>23460801403</td>
                                <td>GHS BILAKHEDA</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>91
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460205401</td>
                                <td>GPS TIGHARI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>92
                                </td>
                                <td>Mugawali</td>
                                <td>23460829001</td>
                                <td>GPS BHYANA CHAK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>93
                                </td>
                                <td>Chanderi</td>
                                <td>23460515502</td>
                                <td>GMS BHATIJA (1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>94
                                </td>
                                <td>Isagarh</td>
                                <td>23460700402</td>
                                <td>GMS ANGHORA DIWAN</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>95
                                </td>
                                <td>Isagarh</td>
                                <td>23460704803</td>
                                <td>GPS SHITALPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>96
                                </td>
                                <td>Mugawali</td>
                                <td>23460827801</td>
                                <td>GPS SEHPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>97
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460207602</td>
                                <td>GPS GORA -2</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>98
                                </td>
                                <td>Isagarh</td>
                                <td>23460707001</td>
                                <td>GPS GASEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>99
                                </td>
                                <td>Chanderi</td>
                                <td>23460507503</td>
                                <td>GPS GARDAI GHATI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>100
                                </td>
                                <td>Mugawali</td>
                                <td>23460804706</td>
                                <td>GHS ACHALGARH</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>101
                                </td>
                                <td>Mugawali</td>
                                <td>23460817908</td>
                                <td>GPS TATARPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>102
                                </td>
                                <td>Mugawali</td>
                                <td>23460804704</td>
                                <td>GPS DEVPUR CHAK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>103
                                </td>
                                <td>Mugawali</td>
                                <td>23460801501</td>
                                <td>GPS KANIKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>104
                                </td>
                                <td>Mugawali</td>
                                <td>23460809006</td>
                                <td>GHS PATHARI</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>105
                                </td>
                                <td>Chanderi</td>
                                <td>23460506903</td>
                                <td>GHS SOTER (6 to 10)</td>
                                <td>Middle&#160;to&#160;High&#160;School (Class 6 to 10)</td>
                            </tr>
                            <tr>
                                <td>106
                                </td>
                                <td>Chanderi</td>
                                <td>23460506401</td>
                                <td>GPS SUNPURA MUHAL</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>107
                                </td>
                                <td>Mugawali</td>
                                <td>23460813603</td>
                                <td>GPS RORI CHACK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>108
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460219401</td>
                                <td>GPS SEPRA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>109
                                </td>
                                <td>Chanderi</td>
                                <td>23460508903</td>
                                <td>GHS BANKALPUR</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>110
                                </td>
                                <td>Chanderi</td>
                                <td>23460505903</td>
                                <td>GPS SHYAMGARH</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>111
                                </td>
                                <td>Chanderi</td>
                                <td>23460501101</td>
                                <td>GPS DHAMRASA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>112
                                </td>
                                <td>Isagarh</td>
                                <td>23460702601</td>
                                <td>GPS SHAJAPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>113
                                </td>
                                <td>Isagarh</td>
                                <td>23460713302</td>
                                <td>GMS BALDEVPUR (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>114
                                </td>
                                <td>Isagarh</td>
                                <td>23460700705</td>
                                <td>GMS KADVAYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>115
                                </td>
                                <td>Chanderi</td>
                                <td>23460506001</td>
                                <td>GPS BHIKALI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>116
                                </td>
                                <td>Mugawali</td>
                                <td>23460826502</td>
                                <td>GPS BEGAMPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>117
                                </td>
                                <td>Chanderi</td>
                                <td>23460510104</td>
                                <td>GHS BAMOR HURRA</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>118
                                </td>
                                <td>Mugawali</td>
                                <td>23460806701</td>
                                <td>GPS BARRI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>119
                                </td>
                                <td>Chanderi</td>
                                <td>23460509102</td>
                                <td>GMS IMALIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>120
                                </td>
                                <td>Isagarh</td>
                                <td>23460702102</td>
                                <td>GPS ADIVASI SAHSUDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>121
                                </td>
                                <td>Chanderi</td>
                                <td>23460501203</td>
                                <td>GMS KETHAN (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>122
                                </td>
                                <td>Chanderi</td>
                                <td>23460500303</td>
                                <td>GPS BAGIYA DERASA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>123
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460230602</td>
                                <td>GPS NAGESHRI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>124
                                </td>
                                <td>Chanderi</td>
                                <td>23460512701</td>
                                <td>GPS MALA KHEDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>125
                                </td>
                                <td>Mugawali</td>
                                <td>23460826701</td>
                                <td>GMS DHONDHIYA (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>126
                                </td>
                                <td>Mugawali</td>
                                <td>23460815703</td>
                                <td>GMS  CHHEVLAI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>127
                                </td>
                                <td>Chanderi</td>
                                <td>23460505702</td>
                                <td>GMS KHIRKATANKA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>128
                                </td>
                                <td>Chanderi</td>
                                <td>23460516601</td>
                                <td>GPS BUDAOLI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>129
                                </td>
                                <td>Chanderi</td>
                                <td>23460503902</td>
                                <td>GPS CHACK CHIMLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>130
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460231001</td>
                                <td>GPS NANDNAI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>131
                                </td>
                                <td>Mugawali</td>
                                <td>23460815602</td>
                                <td>GPS LAXMIPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>132
                                </td>
                                <td>Mugawali</td>
                                <td>23460810201</td>
                                <td>GPS TANDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>133
                                </td>
                                <td>Mugawali</td>
                                <td>23460816503</td>
                                <td>GPS SATTELITE S KHOOJABAG</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>134
                                </td>
                                <td>Mugawali</td>
                                <td>23460827301</td>
                                <td>GPS BARKHEDA JAMAL</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>135
                                </td>
                                <td>Mugawali</td>
                                <td>23460813102</td>
                                <td>GMS LAPTORA (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>136
                                </td>
                                <td>Mugawali</td>
                                <td>23460826603</td>
                                <td>GPS BAJRA CHACK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>137
                                </td>
                                <td>Isagarh</td>
                                <td>23460719801</td>
                                <td>GPS PALKATORI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>138
                                </td>
                                <td>Isagarh</td>
                                <td>23460721201</td>
                                <td>GPS TILHARI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>139
                                </td>
                                <td>Isagarh</td>
                                <td>23460712102</td>
                                <td>GMS PIPARIYA (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>140
                                </td>
                                <td>Isagarh</td>
                                <td>23460706901</td>
                                <td>GPS PACHLANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>141
                                </td>
                                <td>Mugawali</td>
                                <td>23460801802</td>
                                <td>GPS HARIPUR CHAK PIPALKHEDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>142
                                </td>
                                <td>Chanderi</td>
                                <td>23460515001</td>
                                <td>GPS JIYAJIPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>143
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460212402</td>
                                <td>GMS KARAKHYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>144
                                </td>
                                <td>Chanderi</td>
                                <td>23460511203</td>
                                <td>GMS SONA (1to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>145
                                </td>
                                <td>Mugawali</td>
                                <td>23460803902</td>
                                <td>GMS  SILABAN</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>146
                                </td>
                                <td>Mugawali</td>
                                <td>23460829701</td>
                                <td>GPS SATELITE S. SUDAMAPURI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>147
                                </td>
                                <td>Mugawali</td>
                                <td>23460802001</td>
                                <td>GMS MADIBUJURG (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>148
                                </td>
                                <td>Isagarh</td>
                                <td>23460711703</td>
                                <td>GPS JANGHAR CHACK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>149
                                </td>
                                <td>Chanderi</td>
                                <td>23460503301</td>
                                <td>GPS BHILARI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>150
                                </td>
                                <td>Mugawali</td>
                                <td>23460810202</td>
                                <td>GPS CHAK TANDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>151
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460202301</td>
                                <td>GPS DHAMNA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>152
                                </td>
                                <td>Isagarh</td>
                                <td>23460714201</td>
                                <td>GPS AMAHI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>153
                                </td>
                                <td>Isagarh</td>
                                <td>23460718602</td>
                                <td>GPS SHRINAGAR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>154
                                </td>
                                <td>Chanderi</td>
                                <td>23460507002</td>
                                <td>GMS KADRANA (1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>155
                                </td>
                                <td>Isagarh</td>
                                <td>23460710104</td>
                                <td>GPS ADIVASI PORUKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>156
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460232501</td>
                                <td>GPS CHAPRAI MAFI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>157
                                </td>
                                <td>Chanderi</td>
                                <td>23460512201</td>
                                <td>GPS RAMPUR MUHAL</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>158
                                </td>
                                <td>Isagarh</td>
                                <td>23460707501</td>
                                <td>GPS GHATAVDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>159
                                </td>
                                <td>Chanderi</td>
                                <td>23460503802</td>
                                <td>GMS PIPROD (6 to 8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>160
                                </td>
                                <td>Chanderi</td>
                                <td>23460501501</td>
                                <td>GPS CHAK GARETHI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>161
                                </td>
                                <td>Mugawali</td>
                                <td>23460812702</td>
                                <td>GPS JALALPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>162
                                </td>
                                <td>Mugawali</td>
                                <td>23460816701</td>
                                <td>GPS MADI KHURD</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>163
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460223601</td>
                                <td>GPS KARAMSI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>164
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460211701</td>
                                <td>GPS REPRI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>165
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460201201</td>
                                <td>CMRISE  (Campus)-GPS SHANKARPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>166
                                </td>
                                <td>Isagarh</td>
                                <td>23460701202</td>
                                <td>GPS B HEDAR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>167
                                </td>
                                <td>Mugawali</td>
                                <td>23460826803</td>
                                <td>GPS SATTELITE S. CHAK SINGHARA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>168
                                </td>
                                <td>Chanderi</td>
                                <td>23460515901</td>
                                <td>GPS MOHANPUR KHURD</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>169
                                </td>
                                <td>Chanderi</td>
                                <td>23460502604</td>
                                <td>GHS NANON (1 TO 10)</td>
                                <td>Primary&#160;to&#160;High&#160;School (Class 1 to 10)</td>
                            </tr>
                            <tr>
                                <td>170
                                </td>
                                <td>Mugawali</td>
                                <td>23460812503</td>
                                <td>GPS TORIYA CHACK BHAYANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>171
                                </td>
                                <td>Mugawali</td>
                                <td>23460809401</td>
                                <td>GPS PALI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>172
                                </td>
                                <td>Chanderi</td>
                                <td>23460510203</td>
                                <td>GMS CHURARI (6 to 8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>173
                                </td>
                                <td>Mugawali</td>
                                <td>23460803502</td>
                                <td>GPS ADIVASI TAPRA BANDHI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>174
                                </td>
                                <td>Isagarh</td>
                                <td>23460713401</td>
                                <td>GPS AGRAI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>175
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460222301</td>
                                <td>GPS SUMER</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>176
                                </td>
                                <td>Mugawali</td>
                                <td>23460814401</td>
                                <td>GPS KHAIRKHADI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>177
                                </td>
                                <td>Mugawali</td>
                                <td>23460801602</td>
                                <td>GPS MAJHPERA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>178
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460214501</td>
                                <td>GPS BAMURIYA DANGI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>179
                                </td>
                                <td>Mugawali</td>
                                <td>23460818701</td>
                                <td>GPS BADOLI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>180
                                </td>
                                <td>Mugawali</td>
                                <td>23460808601</td>
                                <td>GPS GUDATAKA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>181
                                </td>
                                <td>Mugawali</td>
                                <td>23460806503</td>
                                <td>GPS BANDLA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>182
                                </td>
                                <td>Chanderi</td>
                                <td>23460515602</td>
                                <td>GMS JALALPUR (1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>183
                                </td>
                                <td>Isagarh</td>
                                <td>23460702101</td>
                                <td>GPS SAHSUDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>184
                                </td>
                                <td>Mugawali</td>
                                <td>23460801204</td>
                                <td>GHS MADAUKHEDI ( 6 TO 10)</td>
                                <td>Middle&#160;to&#160;High&#160;School (Class 6 to 10)</td>
                            </tr>
                            <tr>
                                <td>185
                                </td>
                                <td>Chanderi</td>
                                <td>23460513001</td>
                                <td>GPS MARDAN KHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>186
                                </td>
                                <td>Mugawali</td>
                                <td>23460800201</td>
                                <td>GPS SONAKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>187
                                </td>
                                <td>Isagarh</td>
                                <td>23460704502</td>
                                <td>GPS SIDH KHO PIPIRIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>188
                                </td>
                                <td>Isagarh</td>
                                <td>23460703401</td>
                                <td>GPS BUDIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>189
                                </td>
                                <td>Isagarh</td>
                                <td>23460708802</td>
                                <td>GMS SAKARRA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>190
                                </td>
                                <td>Chanderi</td>
                                <td>23460506102</td>
                                <td>GPS BEHTI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>191
                                </td>
                                <td>Mugawali</td>
                                <td>23460828501</td>
                                <td>GPS GOPIPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>192
                                </td>
                                <td>Chanderi</td>
                                <td>23460501402</td>
                                <td>GMS GARETHI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>193
                                </td>
                                <td>Mugawali</td>
                                <td>23460818002</td>
                                <td>GMS N PYASI (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>194
                                </td>
                                <td>Mugawali</td>
                                <td>23460814202</td>
                                <td>GMS ATREJI (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>195
                                </td>
                                <td>Mugawali</td>
                                <td>23460800401</td>
                                <td>GPS SEMARKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>196
                                </td>
                                <td>Chanderi</td>
                                <td>23460510701</td>
                                <td>GPS TAGARI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>197
                                </td>
                                <td>Isagarh</td>
                                <td>23460716102</td>
                                <td>GPS TINSAN</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>198
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460205503</td>
                                <td>GPS ALAMPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>199
                                </td>
                                <td>Isagarh</td>
                                <td>23460701203</td>
                                <td>GMS HEDAR (1 to 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>200
                                </td>
                                <td>Mugawali</td>
                                <td>23460812701</td>
                                <td>GPS MALAUKHEDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>201
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460202102</td>
                                <td>GPS PATHAR MOH PALKATORI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>202
                                </td>
                                <td>Mugawali</td>
                                <td>23460802102</td>
                                <td>GMS KESHLON (1 TO 8)</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>203
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460216003</td>
                                <td>GPS SOVAT</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>204
                                </td>
                                <td>Chanderi</td>
                                <td>23460511503</td>
                                <td>GHS TODA (1 TO 10)</td>
                                <td>Primary&#160;to&#160;High&#160;School (Class 1 to 10)</td>
                            </tr>
                            <tr>
                                <td>205
                                </td>
                                <td>Chanderi</td>
                                <td>23460507202</td>
                                <td>GPS BARANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>206
                                </td>
                                <td>Mugawali</td>
                                <td>23460802903</td>
                                <td>GPS AMODA CHACK</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>207
                                </td>
                                <td>Chanderi</td>
                                <td>23460501701</td>
                                <td>GPS KHIRIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>208
                                </td>
                                <td>Isagarh</td>
                                <td>23460707502</td>
                                <td>GMS GHATAVDA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>209
                                </td>
                                <td>Ashoknagar</td>
                                <td>23460203502</td>
                                <td>GPS BARODIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>210
                                </td>
                                <td>Chanderi</td>
                                <td>23460501403</td>
                                <td>GHS GARENTHI</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>211
                                </td>
                                <td>Mugawali</td>
                                <td>23460814004</td>
                                <td>GPS NEHKAI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                        </tbody>
                        <tfoot>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--3--%>
    <div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl4" style="width: 100%; display: none; border-collapse: collapse;">
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
                                <td>23450305302</td>
                                <td>GNMS SAMATPURI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>2
                                </td>
                                <td>Balaghat</td>
                                <td>23450115301</td>
                                <td>GPS DOUNI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>3
                                </td>
                                <td>Katangi</td>
                                <td>23450317402</td>
                                <td>GMS KODBI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>4
                                </td>
                                <td>Lanji</td>
                                <td>23450805602</td>
                                <td>GMS BOTHALI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>5
                                </td>
                                <td>Lanji</td>
                                <td>23450808401</td>
                                <td>GPS KADLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>6
                                </td>
                                <td>Katangi</td>
                                <td>23450312201</td>
                                <td>GMS KANHADGAON</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>7
                                </td>
                                <td>Katangi</td>
                                <td>23450301102</td>
                                <td>GMS KHARPADIA ( CLASS 1 TO 8 )</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>8
                                </td>
                                <td>Lanji</td>
                                <td>23450803508</td>
                                <td>GPS DHIRI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>9
                                </td>
                                <td>Katangi</td>
                                <td>23450304302</td>
                                <td>GMS KHAIRLANJI MEHKEPAR (CLASS 1 TO 8 )</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>10
                                </td>
                                <td>Lanji</td>
                                <td>23450810007</td>
                                <td>GPS BANJARTOLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>11
                                </td>
                                <td>Katangi</td>
                                <td>23450315102</td>
                                <td>GMS JOGA TOLA 13-14</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>12
                                </td>
                                <td>Lanji</td>
                                <td>23450810001</td>
                                <td>GPS MAHAJANTOLA [TEDWA]</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>13
                                </td>
                                <td>Kirnapur</td>
                                <td>23450209803</td>
                                <td>GMS RAMGADI (6-8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>14
                                </td>
                                <td>Katangi</td>
                                <td>23450312102</td>
                                <td>MS SITAPATHOR  class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>15
                                </td>
                                <td>Khairlanji</td>
                                <td>23450400301</td>
                                <td>GPS GONDI TOLA (1-5)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>16
                                </td>
                                <td>Lal Burra</td>
                                <td>23450609701</td>
                                <td>GPS CHIKHLA BADDI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>17
                                </td>
                                <td>Lanji</td>
                                <td>23450810101</td>
                                <td>GPS BENEGAON</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>18
                                </td>
                                <td>Khairlanji</td>
                                <td>23450404003</td>
                                <td>GPS KANHARTOLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>19
                                </td>
                                <td>Kirnapur</td>
                                <td>23450204602</td>
                                <td>GMS Batkari</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>20
                                </td>
                                <td>Katangi</td>
                                <td>23450305601</td>
                                <td>GPS NAHARTOLA KAAMTHI (CLASS 1 TO 5)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>21
                                </td>
                                <td>Kirnapur</td>
                                <td>23450211403</td>
                                <td>GMS KALKATTA (6-8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>22
                                </td>
                                <td>Balaghat</td>
                                <td>23450117801</td>
                                <td>GPS THEMA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>23
                                </td>
                                <td>Balaghat</td>
                                <td>23450115102</td>
                                <td>GPS MAIRA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>24
                                </td>
                                <td>Balaghat</td>
                                <td>23450104603</td>
                                <td>GPS BIJAPURI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>25
                                </td>
                                <td>Lal Burra</td>
                                <td>23450608401</td>
                                <td>GPS DEVRITOLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>26
                                </td>
                                <td>Wara Seoni</td>
                                <td>23450701801</td>
                                <td>NGPS BEECHTOLA( NAAND GAON)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>27
                                </td>
                                <td>Katangi</td>
                                <td>23450302203</td>
                                <td>GNMS KUDWA (CLASS 6 TO 8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>28
                                </td>
                                <td>Katangi</td>
                                <td>23450312101</td>
                                <td>GMS DULHAPUR</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>29
                                </td>
                                <td>Balaghat</td>
                                <td>23450117702</td>
                                <td>UPGMS DEVSARRA 13-14</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>30
                                </td>
                                <td>Kirnapur</td>
                                <td>23450210401</td>
                                <td>GMS AKOLA (6-8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>31
                                </td>
                                <td>Kirnapur</td>
                                <td>23450213501</td>
                                <td>GMS PIPALGAONKALA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>32
                                </td>
                                <td>Khairlanji</td>
                                <td>23450405604</td>
                                <td>GPS PAWAR TOLA (1-5)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>33
                                </td>
                                <td>Khairlanji</td>
                                <td>23450401403</td>
                                <td>MS MURJHAD (6-8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>34
                                </td>
                                <td>Kirnapur</td>
                                <td>23450214901</td>
                                <td>GPS BHAKKU TOLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>35
                                </td>
                                <td>Khairlanji</td>
                                <td>23450411501</td>
                                <td>GPS PATHANTOLA(1-5)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>36
                                </td>
                                <td>Lanji</td>
                                <td>23450806202</td>
                                <td>GBPS KEREGAON</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>37
                                </td>
                                <td>Lanji</td>
                                <td>23450813301</td>
                                <td>GPS TATIKALA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>38
                                </td>
                                <td>Kirnapur</td>
                                <td>23450214102</td>
                                <td>GMS PIPALGAONKHURD 13-14</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>39
                                </td>
                                <td>Balaghat</td>
                                <td>23450118201</td>
                                <td>GPS SAKRI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>40
                                </td>
                                <td>Balaghat</td>
                                <td>23450105103</td>
                                <td>PS SEETADONGRI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>41
                                </td>
                                <td>Lanji</td>
                                <td>23450804204</td>
                                <td>GPS DALKHAPOUSERA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>42
                                </td>
                                <td>Lanji</td>
                                <td>23450804503</td>
                                <td>GPS PUJARITOLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>43
                                </td>
                                <td>Kirnapur</td>
                                <td>23450215303</td>
                                <td>GMS BHUA  (6-8)</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>44
                                </td>
                                <td>Lanji</td>
                                <td>23450814601</td>
                                <td>GPS FUNDRAITOLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>45
                                </td>
                                <td>Lanji</td>
                                <td>23450814301</td>
                                <td>GPS BARGUD SATONA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>46
                                </td>
                                <td>Lanji</td>
                                <td>23450813501</td>
                                <td>GPS KATTI PAAR KALA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>47
                                </td>
                                <td>Lal Burra</td>
                                <td>23450611802</td>
                                <td>GMS BANDRI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>48
                                </td>
                                <td>Katangi</td>
                                <td>23450304903</td>
                                <td>GMS BASI 13-14</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>49
                                </td>
                                <td>Lanji</td>
                                <td>23450803502</td>
                                <td>GPS BODRA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>50
                                </td>
                                <td>Katangi</td>
                                <td>23450312923</td>
                                <td>GMS URDU KATANGI 13-14</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>51
                                </td>
                                <td>Khairlanji</td>
                                <td>23450401001</td>
                                <td>JPS JHARIYA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>52
                                </td>
                                <td>Khairlanji</td>
                                <td>23450407901</td>
                                <td>PS SHIV PUR tola (1-5)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                        </tbody>
                        <tfoot>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--4--%>
    <div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl5" style="width: 100%; display: none; border-collapse: collapse;">
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
                                <td>Betul</td>
                                <td>23350312202</td>
                                <td>MS BADORI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>2
                                </td>
                                <td>Amla</td>
                                <td>23350102902</td>
                                <td>GPS KEDARKHEDADHANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>3
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350906402</td>
                                <td>MS DATORA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>4
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350912301</td>
                                <td>P.S.CHANDORA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>5
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350913701</td>
                                <td>UEGS KUND</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>6
                                </td>
                                <td>Amla</td>
                                <td>23350100501</td>
                                <td>GPS MORANDDHANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>7
                                </td>
                                <td>Amla</td>
                                <td>23350103603</td>
                                <td>GPS BHANDAWADI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>8
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350910903</td>
                                <td>NMS MAJRI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>9
                                </td>
                                <td>Amla</td>
                                <td>23350111902</td>
                                <td>GMS SONOLIBUNDALA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>10
                                </td>
                                <td>Amla</td>
                                <td>23350109103</td>
                                <td>GOVT.HS MADNI</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>11
                                </td>
                                <td>Amla</td>
                                <td>23350104102</td>
                                <td>GMS BORIKHURD</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>12
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350909302</td>
                                <td>M.S.RAGADGAON</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>13
                                </td>
                                <td>Multai</td>
                                <td>23350806201</td>
                                <td>P.S.JHIRIKHAPA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>14
                                </td>
                                <td>Amla</td>
                                <td>23350105802</td>
                                <td>GPS BHIMSENDHANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>15
                                </td>
                                <td>Betul</td>
                                <td>23350317003</td>
                                <td>EPES MS MATHNI 1 TO 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>16
                                </td>
                                <td>Amla</td>
                                <td>23350117001</td>
                                <td>GPS JAMUNBICHHAVARAIYAT</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>17
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350914601</td>
                                <td>PS ROHANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>18
                                </td>
                                <td>Amla</td>
                                <td>23350113601</td>
                                <td>GPS MANDAI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>19
                                </td>
                                <td>Amla</td>
                                <td>23350105001</td>
                                <td>GPS BEHADI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>20
                                </td>
                                <td>Amla</td>
                                <td>23350115403</td>
                                <td>GMS KHAPAKHATEDA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>21
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350907101</td>
                                <td>P.S.PACHAMAU</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>22
                                </td>
                                <td>Multai</td>
                                <td>23350805301</td>
                                <td>JRY PS TAWLA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>23
                                </td>
                                <td>Amla</td>
                                <td>23350109002</td>
                                <td>GMS BARCHHI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>24
                                </td>
                                <td>Betul</td>
                                <td>23350310702</td>
                                <td>PS(U) SIHAR DHANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>25
                                </td>
                                <td>Amla</td>
                                <td>23350101401</td>
                                <td>GPS ROADGAON</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>26
                                </td>
                                <td>Multai</td>
                                <td>23350812203</td>
                                <td>MS KHEDICORT</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>27
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350910304</td>
                                <td>GOVT. HS ITAWA</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>28
                                </td>
                                <td>Amla</td>
                                <td>23350109803</td>
                                <td>GPS HANUMANDHANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>29
                                </td>
                                <td>Amla</td>
                                <td>23350100902</td>
                                <td>GMS DUDARIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>30
                                </td>
                                <td>Multai</td>
                                <td>23350806102</td>
                                <td>MS BOTHIYA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>31
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350904802</td>
                                <td>MS SAWRI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>32
                                </td>
                                <td>Prabhat Pattan</td>
                                <td>23350907002</td>
                                <td>MS SALBARDI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>33
                                </td>
                                <td>Amla</td>
                                <td>23350115401</td>
                                <td>GPS KHAPAKHATEDA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>34
                                </td>
                                <td>Amla</td>
                                <td>23350110203</td>
                                <td>GPS SALAIDHANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>35
                                </td>
                                <td>Amla</td>
                                <td>23350111402</td>
                                <td>GMS BORGAON</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>36
                                </td>
                                <td>Multai</td>
                                <td>23350810202</td>
                                <td>MS HETIKHAPA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>37
                                </td>
                                <td>Amla</td>
                                <td>23350105703</td>
                                <td>GPS SINGLIMANGRA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>38
                                </td>
                                <td>Amla</td>
                                <td>23350102102</td>
                                <td>GPS GADARIDHANA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                        </tbody>
                        <tfoot>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--5--%>
    <div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl6" style="width: 100%; display: none; border-collapse: collapse;">
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
                                <td>Bhind</td>
                                <td>23030405807</td>
                                <td>P.S.BADH PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>2
                                </td>
                                <td>Gohad</td>
                                <td>23030705203</td>
                                <td>GPS SIMIRIYA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>3
                                </td>
                                <td>Mehgaon</td>
                                <td>23030302901</td>
                                <td>GPS BARETHI KHURD</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>4
                                </td>
                                <td>Mehgaon</td>
                                <td>23030314104</td>
                                <td>GPS BADEKI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>5
                                </td>
                                <td>Ater</td>
                                <td>23030603403</td>
                                <td>GPS BADERI KA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>6
                                </td>
                                <td>Bhind</td>
                                <td>23030403001</td>
                                <td>GPS DEENPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>7
                                </td>
                                <td>Lahar</td>
                                <td>23030504602</td>
                                <td>GMS HIRAPURA class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>8
                                </td>
                                <td>Lahar</td>
                                <td>23030514302</td>
                                <td>GPS BHAPAR class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>9
                                </td>
                                <td>Lahar</td>
                                <td>23030513901</td>
                                <td>GPS VIDRA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>10
                                </td>
                                <td>Gohad</td>
                                <td>23030717902</td>
                                <td>GPS  BANJARE KA PURA(CHAKBARTHARA) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>11
                                </td>
                                <td>Mehgaon</td>
                                <td>23030307302</td>
                                <td>GMS JITHASO</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>12
                                </td>
                                <td>Mehgaon</td>
                                <td>23030307702</td>
                                <td>GPS RAMNAGAR (SUKAND)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>13
                                </td>
                                <td>Mehgaon</td>
                                <td>23030300403</td>
                                <td>GPS TARAGARH KA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>14
                                </td>
                                <td>Lahar</td>
                                <td>23030515302</td>
                                <td>GMS KAKORA class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>15
                                </td>
                                <td>Raun</td>
                                <td>23030205003</td>
                                <td>GPS BAHORI PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>16
                                </td>
                                <td>Bhind</td>
                                <td>23030409101</td>
                                <td>GPS BEHAD KI JAMEH</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>17
                                </td>
                                <td>Ater</td>
                                <td>23030607501</td>
                                <td>GPS SURAJ PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>18
                                </td>
                                <td>Ater</td>
                                <td>23030620101</td>
                                <td>GPS KANHON KA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>19
                                </td>
                                <td>Mehgaon</td>
                                <td>23030316601</td>
                                <td>GPS JISAKPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>20
                                </td>
                                <td>Mehgaon</td>
                                <td>23030305907</td>
                                <td>GPS NAYA PURA(BAGHORA)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>21
                                </td>
                                <td>Mehgaon</td>
                                <td>23030322704</td>
                                <td>GPS DADDOO KA BAG</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>22
                                </td>
                                <td>Gohad</td>
                                <td>23030705703</td>
                                <td>GPS SYNE KA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>23
                                </td>
                                <td>Mehgaon</td>
                                <td>23030312103</td>
                                <td>GPS BARETHI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>24
                                </td>
                                <td>Gohad</td>
                                <td>23030702308</td>
                                <td>GHS GUHISAR Class 9 to 10</td>
                                <td>High Schools (Class 9 to 10)</td>
                            </tr>
                            <tr>
                                <td>25
                                </td>
                                <td>Bhind</td>
                                <td>23030408804</td>
                                <td>UEGS HARIJANCOLONI(TEHANGUR)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>26
                                </td>
                                <td>Gohad</td>
                                <td>23030702001</td>
                                <td>GPS RATANPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>27
                                </td>
                                <td>Mehgaon</td>
                                <td>23030303204</td>
                                <td>GMS KHERIYA THAPAK</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>28
                                </td>
                                <td>Ater</td>
                                <td>23030618103</td>
                                <td>GPS YADAVAN KAPURA(HULAPURA) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>29
                                </td>
                                <td>Lahar</td>
                                <td>23030516901</td>
                                <td>GPS SEKARI class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>30
                                </td>
                                <td>Ater</td>
                                <td>23030606601</td>
                                <td>GPS HAMIRA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>31
                                </td>
                                <td>Gohad</td>
                                <td>23030709001</td>
                                <td>GPS BAMHORA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>32
                                </td>
                                <td>Raun</td>
                                <td>23030208501</td>
                                <td>GPS PADOHAN KA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>33
                                </td>
                                <td>Bhind</td>
                                <td>23030406803</td>
                                <td>CMRISE  (Campus)-GMS  KANAWAR class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>34
                                </td>
                                <td>Bhind</td>
                                <td>23030401903</td>
                                <td>GPS CHAMAREN KAPURA(BHAWANPUR</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>35
                                </td>
                                <td>Mehgaon</td>
                                <td>23030320902</td>
                                <td>GMS GHILAUA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>36
                                </td>
                                <td>Bhind</td>
                                <td>23030420901</td>
                                <td>GPS SARAY KA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>37
                                </td>
                                <td>Gohad</td>
                                <td>23030705704</td>
                                <td>UEGS RAMTALA KA PURA(RATWA)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>38
                                </td>
                                <td>Mehgaon</td>
                                <td>23030300202</td>
                                <td>GPS MANIKPURA(KANATHAR)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>39
                                </td>
                                <td>Mehgaon</td>
                                <td>23030308607</td>
                                <td>CMRISE  (Campus)-GPS AMAYAN</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>40
                                </td>
                                <td>Raun</td>
                                <td>23030207902</td>
                                <td>GMS KOT class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>41
                                </td>
                                <td>Bhind</td>
                                <td>23030400801</td>
                                <td>GPS PATHA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>42
                                </td>
                                <td>Mehgaon</td>
                                <td>23030321601</td>
                                <td>GPS JALHARI PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>43
                                </td>
                                <td>Mehgaon</td>
                                <td>23030301203</td>
                                <td>GPS SHANKER PURA(KALYANPURA)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>44
                                </td>
                                <td>Lahar</td>
                                <td>23030500118</td>
                                <td>CMRISE  (Campus)-GMS NO.1 LAHAR class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>45
                                </td>
                                <td>Raun</td>
                                <td>23030208808</td>
                                <td>GPS PHOOLE PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>46
                                </td>
                                <td>Mehgaon</td>
                                <td>23030312455</td>
                                <td>GPS KADMAN KA PURA(WARD NO.1)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>47
                                </td>
                                <td>Gohad</td>
                                <td>23030705802</td>
                                <td>GMS SAHROLI class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>48
                                </td>
                                <td>Lahar</td>
                                <td>23030513402</td>
                                <td>GMS KHUJA class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>49
                                </td>
                                <td>Lahar</td>
                                <td>23030518901</td>
                                <td>GPS ADLISPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>50
                                </td>
                                <td>Raun</td>
                                <td>23030209702</td>
                                <td>GMS AHIROLI class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>51
                                </td>
                                <td>Lahar</td>
                                <td>23030511503</td>
                                <td>GPS GYAN PURA (AMAHA) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>52
                                </td>
                                <td>Lahar</td>
                                <td>23030502002</td>
                                <td>GMS GURIRA class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>53
                                </td>
                                <td>Mehgaon</td>
                                <td>23030301209</td>
                                <td>GPS LABHERA KA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>54
                                </td>
                                <td>Mehgaon</td>
                                <td>23030322001</td>
                                <td>GMS KHOKIPURA</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>55
                                </td>
                                <td>Mehgaon</td>
                                <td>23030302204</td>
                                <td>GPS INDIRA COLONY(AKLONI)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>56
                                </td>
                                <td>Raun</td>
                                <td>23030206603</td>
                                <td>GPS CHIKANI KHOD class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>57
                                </td>
                                <td>Gohad</td>
                                <td>23030704803</td>
                                <td>GPS BAN GANGA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>58
                                </td>
                                <td>Bhind</td>
                                <td>23030413702</td>
                                <td>GPS KHODAN class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>59
                                </td>
                                <td>Mehgaon</td>
                                <td>23030301208</td>
                                <td>GPS HOTAM SINGH KA PURA(KALYANPURA)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>60
                                </td>
                                <td>Mehgaon</td>
                                <td>23030300402</td>
                                <td>GMS GUTOR</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>61
                                </td>
                                <td>Gohad</td>
                                <td>23030712401</td>
                                <td>GPS KETHODA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>62
                                </td>
                                <td>Ater</td>
                                <td>23030619204</td>
                                <td>GPS GYAPRASAD KAPURA(UDOTGRH) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>63
                                </td>
                                <td>Bhind</td>
                                <td>23030408702</td>
                                <td>GMS  MOTIPURA (KHARIKA) class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>64
                                </td>
                                <td>Ater</td>
                                <td>23030616002</td>
                                <td>GMS NAVALIHAR class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>65
                                </td>
                                <td>Raun</td>
                                <td>23030208101</td>
                                <td>GPS RAUO class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>66
                                </td>
                                <td>Mehgaon</td>
                                <td>23030313302</td>
                                <td>GPS MANPURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>67
                                </td>
                                <td>Lahar</td>
                                <td>23030513102</td>
                                <td>GMS SHAHPURA NO.2 class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>68
                                </td>
                                <td>Mehgaon</td>
                                <td>23030311003</td>
                                <td>GMS PADKOLI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>69
                                </td>
                                <td>Mehgaon</td>
                                <td>23030301801</td>
                                <td>GPS BAJRANG GARH</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>70
                                </td>
                                <td>Raun</td>
                                <td>23030202701</td>
                                <td>GPS DHIMOLE KI MADHAIYAN class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>71
                                </td>
                                <td>Bhind</td>
                                <td>23030402402</td>
                                <td>GMS DAROOAA class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>72
                                </td>
                                <td>Ater</td>
                                <td>23030620901</td>
                                <td>GPS CHOUMAHOHAR class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>73
                                </td>
                                <td>Mehgaon</td>
                                <td>23030305901</td>
                                <td>GPS BAGHAURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>74
                                </td>
                                <td>Ater</td>
                                <td>23030605302</td>
                                <td>GPS MATHI KA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>75
                                </td>
                                <td>Raun</td>
                                <td>23030207702</td>
                                <td>GMS NANDNA class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>76
                                </td>
                                <td>Raun</td>
                                <td>23030209501</td>
                                <td>GPS MORKHIGHAT class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>77
                                </td>
                                <td>Ater</td>
                                <td>23030607201</td>
                                <td>GPS JALUAPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>78
                                </td>
                                <td>Gohad</td>
                                <td>23030709401</td>
                                <td>GPS ANTOA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>79
                                </td>
                                <td>Bhind</td>
                                <td>23030407701</td>
                                <td>P.S.BAIJNATH KA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>80
                                </td>
                                <td>Raun</td>
                                <td>23030201602</td>
                                <td>GPS BANGARH class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>81
                                </td>
                                <td>Gohad</td>
                                <td>23030709701</td>
                                <td>GPS MADRAULI class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>82
                                </td>
                                <td>Mehgaon</td>
                                <td>23030318301</td>
                                <td>GPS GUJJA KA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>83
                                </td>
                                <td>Mehgaon</td>
                                <td>23030313303</td>
                                <td>GPS PADOLIYAN KA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>84
                                </td>
                                <td>Gohad</td>
                                <td>23030712304</td>
                                <td>GPS NEEM DANDA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>85
                                </td>
                                <td>Lahar</td>
                                <td>23030501101</td>
                                <td>GPS MOHANPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>86
                                </td>
                                <td>Lahar</td>
                                <td>23030512402</td>
                                <td>GMS DHORKA class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>87
                                </td>
                                <td>Ater</td>
                                <td>23030622304</td>
                                <td>GPS SHANKER PURA(ATER) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>88
                                </td>
                                <td>Ater</td>
                                <td>23030612801</td>
                                <td>GPS SUJANPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>89
                                </td>
                                <td>Raun</td>
                                <td>23030205901</td>
                                <td>GPS LALLU KA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>90
                                </td>
                                <td>Mehgaon</td>
                                <td>23030313605</td>
                                <td>GPS AAM KA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>91
                                </td>
                                <td>Lahar</td>
                                <td>23030510201</td>
                                <td>GPS LARSA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>92
                                </td>
                                <td>Mehgaon</td>
                                <td>23030308301</td>
                                <td>GPS BUJURG</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>93
                                </td>
                                <td>Raun</td>
                                <td>23030205301</td>
                                <td>GPS UMRELA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>94
                                </td>
                                <td>Raun</td>
                                <td>23030200507</td>
                                <td>M S Sanskrit Mehdava</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>95
                                </td>
                                <td>Ater</td>
                                <td>23030614101</td>
                                <td>GPS VIRGAWAN KA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>96
                                </td>
                                <td>Raun</td>
                                <td>23030208803</td>
                                <td>GPS ITAI class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>97
                                </td>
                                <td>Mehgaon</td>
                                <td>23030311804</td>
                                <td>GPS CHANDRA PURA(UEGS)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>98
                                </td>
                                <td>Lahar</td>
                                <td>23030502702</td>
                                <td>GMS MEHRI class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>99
                                </td>
                                <td>Bhind</td>
                                <td>23030413603</td>
                                <td>GPS BHAWANIPURA(NAYAGAON) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>100
                                </td>
                                <td>Bhind</td>
                                <td>23030401002</td>
                                <td>GMS NAHARA class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>101
                                </td>
                                <td>Gohad</td>
                                <td>23030715402</td>
                                <td>GPS KHERA(KHITOLEE) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>102
                                </td>
                                <td>Gohad</td>
                                <td>23030717402</td>
                                <td>GPS  BAGTHARA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>103
                                </td>
                                <td>Ater</td>
                                <td>23030620203</td>
                                <td>GPS BANGLAN KAPURA(BAJARIYA) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>104
                                </td>
                                <td>Bhind</td>
                                <td>23030413802</td>
                                <td>GPS KHONJRA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>105
                                </td>
                                <td>Lahar</td>
                                <td>23030501701</td>
                                <td>GPS MALPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>106
                                </td>
                                <td>Lahar</td>
                                <td>23030511601</td>
                                <td>GPS SIGOSA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>107
                                </td>
                                <td>Bhind</td>
                                <td>23030406902</td>
                                <td>GPS RURAN class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>108
                                </td>
                                <td>Ater</td>
                                <td>23030622004</td>
                                <td>GPS BIRAM PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>109
                                </td>
                                <td>Mehgaon</td>
                                <td>23030310101</td>
                                <td>GPS KUPAVALI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>110
                                </td>
                                <td>Mehgaon</td>
                                <td>23030301506</td>
                                <td>GPS JILEDAR SINGH KA PURA(UEGS)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>111
                                </td>
                                <td>Lahar</td>
                                <td>23030506002</td>
                                <td>GMS JALALPURA class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>112
                                </td>
                                <td>Mehgaon</td>
                                <td>23030307006</td>
                                <td>GPS BARELA KA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>113
                                </td>
                                <td>Mehgaon</td>
                                <td>23030323201</td>
                                <td>GPS SUJAN PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>114
                                </td>
                                <td>Mehgaon</td>
                                <td>23030310902</td>
                                <td>GMS SIRSI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>115
                                </td>
                                <td>Gohad</td>
                                <td>23030716301</td>
                                <td>GPS KATHWA GURJER class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>116
                                </td>
                                <td>Ater</td>
                                <td>23030610812</td>
                                <td>GPS KACHHIYAN KAPURA(MASOORI) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>117
                                </td>
                                <td>Mehgaon</td>
                                <td>23030302702</td>
                                <td>GMS KHEROLI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>118
                                </td>
                                <td>Gohad</td>
                                <td>23030706301</td>
                                <td>GPS DANG NARUA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>119
                                </td>
                                <td>Ater</td>
                                <td>23030619702</td>
                                <td>GPS KHATHEDHI class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>120
                                </td>
                                <td>Bhind</td>
                                <td>23030402201</td>
                                <td>GPS  KACHUEE class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>121
                                </td>
                                <td>Gohad</td>
                                <td>23030718302</td>
                                <td>GMS  CHAKMADHOPUR class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>122
                                </td>
                                <td>Lahar</td>
                                <td>23030510901</td>
                                <td>GPS PANNAPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>123
                                </td>
                                <td>Gohad</td>
                                <td>23030724104</td>
                                <td>GPS BARAHED TIRAHA(SERVA) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>124
                                </td>
                                <td>Lahar</td>
                                <td>23030510702</td>
                                <td>GMS BAGHEDI class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>125
                                </td>
                                <td>Mehgaon</td>
                                <td>23030302701</td>
                                <td>GPS KHEROLI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>126
                                </td>
                                <td>Mehgaon</td>
                                <td>23030301602</td>
                                <td>GPS KANYA GADI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>127
                                </td>
                                <td>Ater</td>
                                <td>23030622501</td>
                                <td>GPS GOUDHU KA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>128
                                </td>
                                <td>Raun</td>
                                <td>23030201802</td>
                                <td>GMS  PURA BHEEMNAGAR class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>129
                                </td>
                                <td>Ater</td>
                                <td>23030620501</td>
                                <td>GPS LAXMANPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>130
                                </td>
                                <td>Raun</td>
                                <td>23030202901</td>
                                <td>GPS MUCHA (DOHAI) class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>131
                                </td>
                                <td>Mehgaon</td>
                                <td>23030317303</td>
                                <td>GMS CHIROL</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>132
                                </td>
                                <td>Ater</td>
                                <td>23030619901</td>
                                <td>GPS MATIPURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>133
                                </td>
                                <td>Mehgaon</td>
                                <td>23030306402</td>
                                <td>GMS SILAULI</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>134
                                </td>
                                <td>Bhind</td>
                                <td>23030410401</td>
                                <td>GPS MADNAI class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>135
                                </td>
                                <td>Mehgaon</td>
                                <td>23030316002</td>
                                <td>GPS AMAN PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>136
                                </td>
                                <td>Mehgaon</td>
                                <td>23030302001</td>
                                <td>GPS VIJAYGARH</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>137
                                </td>
                                <td>Mehgaon</td>
                                <td>23030311902</td>
                                <td>GPS KAMAN PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>138
                                </td>
                                <td>Mehgaon</td>
                                <td>23030301103</td>
                                <td>GPS KESHAV SINGH KA PURA(KALYANPURA)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>139
                                </td>
                                <td>Mehgaon</td>
                                <td>23030308201</td>
                                <td>GPS BACHHARENTA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>140
                                </td>
                                <td>Raun</td>
                                <td>23030209301</td>
                                <td>GPS BAGIYA PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>141
                                </td>
                                <td>Mehgaon</td>
                                <td>23030323801</td>
                                <td>GPS KHILLI</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>142
                                </td>
                                <td>Raun</td>
                                <td>23030205201</td>
                                <td>GPS GANDH class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>143
                                </td>
                                <td>Mehgaon</td>
                                <td>23030301505</td>
                                <td>GPS MANIRAM SINGH KA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>144
                                </td>
                                <td>Bhind</td>
                                <td>23030408902</td>
                                <td>GMS DUNGARPURA class 1 to 8</td>
                                <td>Primary&#160;with&#160;Middle&#160;School (Class 1 to 8)</td>
                            </tr>
                            <tr>
                                <td>145
                                </td>
                                <td>Mehgaon</td>
                                <td>23030303802</td>
                                <td>GPS DHAMAR PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>146
                                </td>
                                <td>Bhind</td>
                                <td>23030409702</td>
                                <td>P.S. PURA (PEVLI)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>147
                                </td>
                                <td>Gohad</td>
                                <td>23030702404</td>
                                <td>GPS ISHWERGARH class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>148
                                </td>
                                <td>Lahar</td>
                                <td>23030506802</td>
                                <td>GMS  CHIRAVLI class 6 to 8</td>
                                <td>Middle School (Class 6 to 8)</td>
                            </tr>
                            <tr>
                                <td>149
                                </td>
                                <td>Lahar</td>
                                <td>23030511001</td>
                                <td>GPS JAGDEESH PURA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>150
                                </td>
                                <td>Ater</td>
                                <td>23030619703</td>
                                <td>GPS KHADERI KACHHOTAPURA(CHOM class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>151
                                </td>
                                <td>Raun</td>
                                <td>23030206803</td>
                                <td>GPS Girls INDURAKHI class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>152
                                </td>
                                <td>Raun</td>
                                <td>23030202002</td>
                                <td>GPS FERAN KI KHODH class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>153
                                </td>
                                <td>Mehgaon</td>
                                <td>23030312001</td>
                                <td>GPS BADERA KHOD</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>154
                                </td>
                                <td>Mehgaon</td>
                                <td>23030309902</td>
                                <td>GPS NEW AMBEDKAR NAGAR(SURURU)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>155
                                </td>
                                <td>Gohad</td>
                                <td>23030706703</td>
                                <td>GPS BARARA class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>156
                                </td>
                                <td>Bhind</td>
                                <td>23030410402</td>
                                <td>GPS MADAI class 1 to 5</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>157
                                </td>
                                <td>Mehgaon</td>
                                <td>23030316414</td>
                                <td>GPS NEECHEY KA PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>158
                                </td>
                                <td>Bhind</td>
                                <td>23030407606</td>
                                <td>UEGS NAIGADIYA(PANDARI)</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                            <tr>
                                <td>159
                                </td>
                                <td>Mehgaon</td>
                                <td>23030311305</td>
                                <td>GPS TULSI PURA</td>
                                <td>Primary School (Class 1 to 5)</td>
                            </tr>
                        </tbody>
                        <tfoot>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </div>
    <%--6--%>
    <%--tryty • ghtuih--%>
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

