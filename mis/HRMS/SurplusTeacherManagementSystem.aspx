<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SurplusTeacherManagementSystem.aspx.cs" Inherits="mis_Report_SurplusTeacherManagementSystem" %>

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

                        <li class="breadcrumb-item"><span>District-wise Surplus  Teachers Report</span></li>
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
                        District-wise Surplus  Teachers Report/जिलेवार अधिशेष शिक्षकों की रिपोर्ट
                    </div>
                </div>
            </div>
        </div>
        <br />

        <%--District's Table--%>
        <div>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl1" style="width: 100%; border-collapse: collapse;">
                            <thead>
                                <tr>
                                    <th scope="col">District <br/>जिला</th>
                                    <th scope="col">Schools  <br/>स्कूल</th>
                                    <th scope="col">Sanctioned Posts<br/> स्वीकृत पद</th>
                                    <th scope="col">Working<br/> कार्यरत</th>          
                                    <th scope="col">Surplus Teachers<br/> अधिशेष शिक्षक</th>
                                </tr>
                            </thead>
                            
                            
                            
                            
                            
                            <tbody>
                                <tr>
                                    <td><a href="#51" onclick="showtbl('tbl2')">Agar Malwa  </a></td>
                                    <td>808</td>
                                    <td>3309</td>
                                    <td>2267</td>
                                    <td>493</td>
                                </tr>
                                <tr>
                                    <td><a href="#49" onclick="showtbl('tbl3')">Alirajpur  </a></td>
                                    <td>16</td>
                                    <td>154</td>
                                    <td>33</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td><a href="#47" onclick="showtbl('tbl4')">Anuppur  </a></td>
                                    <td>10</td>
                                    <td>109</td>
                                    <td>36</td>
                                    <td>55</td>
                                </tr>
                                <tr>
                                    <td><a href="#46" onclick="showtbl('tbl5')">Ashoknagar  </a></td>
                                    <td>1260</td>
                                    <td>5600</td>
                                    <td>3814</td>
                                    <td>506</td>
                                </tr>
                                <tr>
                                    <td><a href="#45" onclick="showtbl('tbl6')">Balaghat  </a></td>
                                    <td>1516</td>
                                    <td>8204</td>
                                    <td>6496</td>
                                    <td>1564</td>
                                </tr>
                                <tr>
                                    <td><a href="#28">Barwani  </a></td>
                                    <td>15</td>
                                    <td>191</td>
                                    <td>42</td>
                                    <td>117</td>
                                </tr>
                                <tr>
                                    <td><a href="#35">Betul  </a></td>
                                    <td>929</td>
                                    <td>4877</td>
                                    <td>3656</td>
                                    <td>970</td>
                                </tr>
                                <tr>
                                    <td><a href="#3">Bhind  </a></td>
                                    <td>1822</td>
                                    <td>8843</td>
                                    <td>6532</td>
                                    <td>1206</td>
                                </tr>
                                <tr>
                                    <td><a href="#32">Bhopal  </a></td>
                                    <td>865</td>
                                    <td>5870</td>
                                    <td>5076</td>
                                    <td>1291</td>
                                </tr>
                                <tr>
                                    <td><a href="#48">Burhanpur  </a></td>
                                    <td>363</td>
                                    <td>2536</td>
                                    <td>1592</td>
                                    <td>271</td>
                                </tr>
                                <tr>
                                    <td><a href="#9">Chhatarpur  </a></td>
                                    <td>2322</td>
                                    <td>12939</td>
                                    <td>8122</td>
                                    <td>694</td>
                                </tr>
                                <tr>
                                    <td><a href="#43">Chhindwara  </a></td>
                                    <td>1760</td>
                                    <td>9055</td>
                                    <td>6243</td>
                                    <td>1379</td>
                                </tr>
                                <tr>
                                    <td><a href="#12">Damoh  </a></td>
                                    <td>1711</td>
                                    <td>9033</td>
                                    <td>5611</td>
                                    <td>847</td>
                                </tr>
                                <tr>
                                    <td><a href="#5">Datia  </a></td>
                                    <td>1050</td>
                                    <td>4984</td>
                                    <td>3836</td>
                                    <td>890</td>
                                </tr>
                                <tr>
                                    <td><a href="#23">Dewas  </a></td>
                                    <td>1812</td>
                                    <td>8271</td>
                                    <td>5076</td>
                                    <td>1214</td>
                                </tr>
                                <tr>
                                    <td><a href="#25">Dhar  </a></td>
                                    <td>359</td>
                                    <td>1688</td>
                                    <td>1035</td>
                                    <td>288</td>
                                </tr>
                                <tr>
                                    <td><a href="#41">Dindori  </a></td>
                                    <td>16</td>
                                    <td>199</td>
                                    <td>53</td>
                                    <td>60</td>
                                </tr>
                                <tr>
                                    <td><a href="#7">Guna  </a></td>
                                    <td>1852</td>
                                    <td>8237</td>
                                    <td>5870</td>
                                    <td>740</td>
                                </tr>
                                <tr>
                                    <td><a href="#4">Gwalior  </a></td>
                                    <td>1494</td>
                                    <td>7115</td>
                                    <td>6024</td>
                                    <td>1347</td>
                                </tr>
                                <tr>
                                    <td><a href="#36">Harda  </a></td>
                                    <td>723</td>
                                    <td>3456</td>
                                    <td>1987</td>
                                    <td>235</td>
                                </tr>
                                <tr>
                                    <td><a href="#26">Indore  </a></td>
                                    <td>1169</td>
                                    <td>7428</td>
                                    <td>6157</td>
                                    <td>1752</td>
                                </tr>
                                <tr>
                                    <td><a href="#39">Jabalpur  </a></td>
                                    <td>1796</td>
                                    <td>9295</td>
                                    <td>6785</td>
                                    <td>1037</td>
                                </tr>
                                <tr>
                                    <td><a href="#24">Jhabua  </a></td>
                                    <td>14</td>
                                    <td>154</td>
                                    <td>44</td>
                                    <td>109</td>
                                </tr>
                                <tr>
                                    <td><a href="#38">Katni  </a></td>
                                    <td>1552</td>
                                    <td>8264</td>
                                    <td>4666</td>
                                    <td>675</td>
                                </tr>
                                <tr>
                                    <td><a href="#29">Khandwa  </a></td>
                                    <td>1145</td>
                                    <td>6616</td>
                                    <td>3346</td>
                                    <td>547</td>
                                </tr>
                                <tr>
                                    <td><a href="#27">Khargone  </a></td>
                                    <td>923</td>
                                    <td>3383</td>
                                    <td>2458</td>
                                    <td>652</td>
                                </tr>
                                <tr>
                                    <td><a href="#42">Mandla  </a></td>
                                    <td>22</td>
                                    <td>203</td>
                                    <td>71</td>
                                    <td>67</td>
                                </tr>
                                <tr>
                                    <td><a href="#19">Mandsaur  </a></td>
                                    <td>1588</td>
                                    <td>6973</td>
                                    <td>4940</td>
                                    <td>719</td>
                                </tr>
                                <tr>
                                    <td><a href="#2">Morena  </a></td>
                                    <td>2182</td>
                                    <td>10766</td>
                                    <td>8378</td>
                                    <td>1171</td>
                                </tr>
                                <tr>
                                    <td><a href="#37">Narmadapuram  </a></td>
                                    <td>1140</td>
                                    <td>5652</td>
                                    <td>3909</td>
                                    <td>847</td>
                                </tr>
                                <tr>
                                    <td><a href="#40">Narsinghpur  </a></td>
                                    <td>1496</td>
                                    <td>6933</td>
                                    <td>4872</td>
                                    <td>752</td>
                                </tr>
                                <tr>
                                    <td><a href="#18">Neemuch  </a></td>
                                    <td>968</td>
                                    <td>4690</td>
                                    <td>3381</td>
                                    <td>674</td>
                                </tr>
                                <tr>
                                    <td><a href="#52">Niwari  </a></td>
                                    <td>570</td>
                                    <td>3053</td>
                                    <td>2039</td>
                                    <td>270</td>
                                </tr>
                                <tr>
                                    <td><a href="#10">Panna  </a></td>
                                    <td>1805</td>
                                    <td>8571</td>
                                    <td>5206</td>
                                    <td>698</td>
                                </tr>
                                <tr>
                                    <td><a href="#34">Raisen  </a></td>
                                    <td>2066</td>
                                    <td>9011</td>
                                    <td>6293</td>
                                    <td>959</td>
                                </tr>
                                <tr>
                                    <td><a href="#30">Rajgarh  </a></td>
                                    <td>2110</td>
                                    <td>9896</td>
                                    <td>7093</td>
                                    <td>1434</td>
                                </tr>
                                <tr>
                                    <td><a href="#20">Ratlam  </a></td>
                                    <td>1211</td>
                                    <td>5643</td>
                                    <td>4002</td>
                                    <td>732</td>
                                </tr>
                                <tr>
                                    <td><a href="#14">Rewa  </a></td>
                                    <td>2983</td>
                                    <td>13899</td>
                                    <td>9647</td>
                                    <td>1764</td>
                                </tr>
                                <tr>
                                    <td><a href="#11">Sagar  </a></td>
                                    <td>2655</td>
                                    <td>14434</td>
                                    <td>9187</td>
                                    <td>1660</td>
                                </tr>
                                <tr>
                                    <td><a href="#13">Satna  </a></td>
                                    <td>2877</td>
                                    <td>14135</td>
                                    <td>9319</td>
                                    <td>1826</td>
                                </tr>
                                <tr>
                                    <td><a href="#33">Sehore  </a></td>
                                    <td>1556</td>
                                    <td>8679</td>
                                    <td>5378</td>
                                    <td>995</td>
                                </tr>
                                <tr>
                                    <td><a href="#44">Seoni  </a></td>
                                    <td>988</td>
                                    <td>4500</td>
                                    <td>3478</td>
                                    <td>912</td>
                                </tr>
                                <tr>
                                    <td><a href="#16">Shahdol  </a></td>
                                    <td>371</td>
                                    <td>1784</td>
                                    <td>1050</td>
                                    <td>235</td>
                                </tr>
                                <tr>
                                    <td><a href="#22">Shajapur  </a></td>
                                    <td>994</td>
                                    <td>5050</td>
                                    <td>3240</td>
                                    <td>859</td>
                                </tr>
                                <tr>
                                    <td><a href="#1">Sheopur  </a></td>
                                    <td>736</td>
                                    <td>3615</td>
                                    <td>2421</td>
                                    <td>286</td>
                                </tr>
                                <tr>
                                    <td><a href="#6">Shivpuri  </a></td>
                                    <td>2736</td>
                                    <td>12092</td>
                                    <td>7525</td>
                                    <td>870</td>
                                </tr>
                                <tr>
                                    <td><a href="#17">Sidhi  </a></td>
                                    <td>1550</td>
                                    <td>8058</td>
                                    <td>5451</td>
                                    <td>943</td>
                                </tr>
                                <tr>
                                    <td><a href="#50">Singrauli  </a></td>
                                    <td>1596</td>
                                    <td>8764</td>
                                    <td>4758</td>
                                    <td>776</td>
                                </tr>
                                <tr>
                                    <td><a href="#8">Tikamgarh  </a></td>
                                    <td>1412</td>
                                    <td>8068</td>
                                    <td>4947</td>
                                    <td>744</td>
                                </tr>
                                <tr>
                                    <td><a href="#21">Ujjain  </a></td>
                                    <td>1794</td>
                                    <td>8693</td>
                                    <td>6137</td>
                                    <td>1211</td>
                                </tr>
                                <tr>
                                    <td><a href="#15">Umaria  </a></td>
                                    <td>703</td>
                                    <td>4080</td>
                                    <td>2355</td>
                                    <td>318</td>
                                </tr>
                                <tr>
                                    <td><a href="#31">Vidisha  </a></td>
                                    <td>2105</td>
                                    <td>9935</td>
                                    <td>5956</td>
                                    <td>896</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr style="background-color: #005b5c; color: white">
                                    <th>Total Count</th>
                                    <th>67,516</th>
                                    <th>336,987</th>
                                    <th>227,890</th>
                                    <th>41,563</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%--  </div>--%>
        <%--1--%>



        <%--Block's Tables--%>



        <div>
            <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl2" style="width: 100%; display: none; border-collapse: collapse;">
                <thead>
                    <tr>
                        <th scope="col">Block<br />ब्लॉक</th>
                        <th scope="col">Schools<br />स्कूल</th>
                        <th scope="col">Sanctioned Posts<br />स्वीकृत पद</th>
                        <th scope="col">Working<br/>कार्यरत</th>
                        <th scope="col">Surplus Teachers<br/>अधिशेष शिक्षक</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href="School-wiseSurplusTeachers.aspx">Agar</a></td>
                        <td>251</td>
                        <td>1003</td>
                        <td>705</td>
                        <td>202</td>
                    </tr>
                    <tr>
                        <td runat="server" id="Barod" onclick="">Barod</td>
                        <td>221</td>
                        <td>854</td>
                        <td>501</td>
                        <td>56</td>
                    </tr>
                    <tr>
                        <td><a href="#130">Nalkheda  </a></td>
                        <td>140</td>
                        <td>681</td>
                        <td>440</td>
                        <td>97</td>
                    </tr>
                    <tr>
                        <td><a href="#131">Susner  </a></td>
                        <td>196</td>
                        <td>771</td>
                        <td>621</td>
                        <td>138</td>
                    </tr>
                </tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
        <%--2--%>





        <div>
            <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl3" style="width: 100%; display: none; border-collapse: collapse;">
                <thead>
                    <tr>
     <th scope="col">Block<br />ब्लॉक</th>
     <th scope="col">Schools<br />स्कूल</th>
     <th scope="col">Sanctioned Posts<br />स्वीकृत पद</th>
     <th scope="col">Working<br/>कार्यरत</th>
     <th scope="col">Surplus Teachers<br/>अधिशेष शिक्षक</th>
 </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href="#144">Alirajpur  </a></td>
                        <td>5</td>
                        <td>38</td>
                        <td>7</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td><a href="#149">Bhabra  </a></td>
                        <td>2</td>
                        <td>19</td>
                        <td>4</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><a href="#143">Jobat  </a></td>
                        <td>3</td>
                        <td>19</td>
                        <td>6</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><a href="#145">Katthiwara  </a></td>
                        <td>2</td>
                        <td>19</td>
                        <td>3</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><a href="#148">Sondwa  </a></td>
                        <td>2</td>
                        <td>40</td>
                        <td>8</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <td><a href="#147">Udaygarh  </a></td>
                        <td>2</td>
                        <td>19</td>
                        <td>5</td>
                        <td>1</td>
                    </tr>
                </tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
        <%--3--%>






        <div>
            <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl4" style="width: 100%; display: none; border-collapse: collapse;">
                <thead>
                  <tr>
     <th scope="col">Block<br />ब्लॉक</th>
     <th scope="col">Schools<br />स्कूल</th>
     <th scope="col">Sanctioned Posts<br />स्वीकृत पद</th>
     <th scope="col">Working<br/>कार्यरत</th>
     <th scope="col">Surplus Teachers<br/>अधिशेष शिक्षक</th>
 </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href="#313">Anuppur  </a></td>
                        <td>3</td>
                        <td>5</td>
                        <td>0</td>
                        <td>18</td>
                    </tr>
                    <tr>
                        <td><a href="#314">Jaithari  </a></td>
                        <td>3</td>
                        <td>40</td>
                        <td>14</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td><a href="#315">Kotma  </a></td>
                        <td>2</td>
                        <td>19</td>
                        <td>7</td>
                        <td>9</td>
                    </tr>
                    <tr>
                        <td><a href="#316">Pushpraj Garh  </a></td>
                        <td>2</td>
                        <td>45</td>
                        <td>15</td>
                        <td>18</td>
                    </tr>
                </tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
        <%--4--%>




        <div>
            <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl5" style="width: 100%; display: none; border-collapse: collapse;">
                <thead>
                    <tr>
     <th scope="col">Block<br />ब्लॉक</th>
     <th scope="col">Schools<br />स्कूल</th>
     <th scope="col">Sanctioned Posts<br />स्वीकृत पद</th>
     <th scope="col">Working<br/>कार्यरत</th>
     <th scope="col">Surplus Teachers<br/>अधिशेष शिक्षक</th>
 </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href="#309">Ashoknagar  </a></td>
                        <td>387</td>
                        <td>1671</td>
                        <td>1303</td>
                        <td>232</td>
                    </tr>
                    <tr>
                        <td><a href="#310">Chanderi  </a></td>
                        <td>237</td>
                        <td>1092</td>
                        <td>672</td>
                        <td>64</td>
                    </tr>
                    <tr>
                        <td><a href="#311">Isagarh  </a></td>
                        <td>278</td>
                        <td>1298</td>
                        <td>866</td>
                        <td>122</td>
                    </tr>
                    <tr>
                        <td><a href="#312">Mugawali  </a></td>
                        <td>358</td>
                        <td>1539</td>
                        <td>973</td>
                        <td>88</td>
                    </tr>
                </tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
        <%--5--%>






        <div>
            <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tbl6" style="width: 100%; display: none; border-collapse: collapse;">
                <thead>
                    <tr>
     <th scope="col">Block<br />ब्लॉक</th>
     <th scope="col">Schools<br />स्कूल</th>
     <th scope="col">Sanctioned Posts<br />स्वीकृत पद</th>
     <th scope="col">Working<br/>कार्यरत</th>
     <th scope="col">Surplus Teachers<br/>अधिशेष शिक्षक</th>
 </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href="#307">Baihar  </a></td>
                        <td>2</td>
                        <td>25</td>
                        <td>4</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <td><a href="#299">Balaghat  </a></td>
                        <td>236</td>
                        <td>1414</td>
                        <td>1280</td>
                        <td>424</td>
                    </tr>
                    <tr>
                        <td><a href="#308">Birsa  </a></td>
                        <td>2</td>
                        <td>24</td>
                        <td>8</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td><a href="#301">Katangi  </a></td>
                        <td>233</td>
                        <td>1172</td>
                        <td>829</td>
                        <td>223</td>
                    </tr>
                    <tr>
                        <td><a href="#302">Khairlanji  </a></td>
                        <td>168</td>
                        <td>928</td>
                        <td>660</td>
                        <td>140</td>
                    </tr>
                    <tr>
                        <td><a href="#300">Kirnapur  </a></td>
                        <td>227</td>
                        <td>1163</td>
                        <td>901</td>
                        <td>193</td>
                    </tr>
                    <tr>
                        <td><a href="#304">Lal Burra  </a></td>
                        <td>218</td>
                        <td>1196</td>
                        <td>941</td>
                        <td>204</td>
                    </tr>
                    <tr>
                        <td><a href="#306">Lanji  </a></td>
                        <td>249</td>
                        <td>1316</td>
                        <td>1007</td>
                        <td>166</td>
                    </tr>
                    <tr>
                        <td><a href="#303">Paraswada  </a></td>
                        <td>1</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><a href="#305">Wara Seoni  </a></td>
                        <td>180</td>
                        <td>966</td>
                        <td>866</td>
                        <td>209</td>
                    </tr>
                </tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
    </div>
    <%--6--%>
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


