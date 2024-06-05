<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistrictwiseIDCardProgress.aspx.cs" Inherits="mis_HRMS_DistrictwiseIDCardProgress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor">District Wise ID Card Progress Report
                </h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item active">District Wise ID Card Progress Report</li>

                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <nav class="navbar navbar-expand-lg topbar">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                                <li class="nav-item dropdown ">
                                    <a class="nav-link  text-white " href="EmployeeIDcardmanagementSystem.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>

                                    <li class="nav-item dropdown ">
                                        <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                            Employee ID Card Management</b></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="EmployeeIDcardmanagementSystem.aspx">Employee ID Card Management System</a></li>
                                            <li><a class="dropdown-item" href="GenerateIDCard.aspx">Print Employee ID Card</a></li>
                                            <li><a class="dropdown-item" href="EmployeeIDcardMissingDetails.aspx">Employee Missing Details</a></li>
                                        </ul>
                                    </li>
                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Report</b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="DistrictwiseIDCardProgress.aspx">District Wise ID Card Progress Report</a></li>
                                        <li><a class="dropdown-item" href="BlockwiseIDCardProgress.aspx">Block Wise ID Card Progress Report</a></li>
                                        <li><a class="dropdown-item" href="SchoolwiseIDCardProgress.aspx">School Wise ID Card Progress Report</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <br />
                <fieldset>
                    <legend>District Wise ID Card Progress Report/जिलेवार आई.डी कार्ड प्रगति रिपोर्ट</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>District Name/ जिले का नाम<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" class="form-control select2" id="ddldistrict" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged1" AutoPostBack="true">
                                    <asp:ListItem >Select</asp:ListItem>
                                    <asp:ListItem value="0"> All District</asp:ListItem>
                                    <asp:ListItem value="51">Agar Malwa आगर  मालवा</asp:ListItem>
                                    <asp:ListItem value="35">Betul बैतूल </asp:ListItem>
                                    <asp:ListItem value="32">Bhopal भोपाल </asp:ListItem>
                                    <asp:ListItem value="9">Chhatarpur छतरपुर </asp:ListItem>
                                    <asp:ListItem value="43">Chhindwara छिंदवाडा </asp:ListItem>
                                    <asp:ListItem value="23">Dewas देवास </asp:ListItem>
                                    <asp:ListItem value="4">Gwalior ग्वालियर </asp:ListItem>
                                    <asp:ListItem value="26">Indore इन्दौर </asp:ListItem>
                                    <asp:ListItem value="39">Jabalpur जबलपुर </asp:ListItem>
                                    <asp:ListItem value="37">Narmadapuram नर्मदापुरम</asp:ListItem>
                                    <asp:ListItem value="34">Raisen रायसेन </asp:ListItem>
                                    <asp:ListItem value="21">Ujjain उज्जैन </asp:ListItem>
                                    <asp:ListItem value="15">Umaria उमरिया </asp:ListItem>
                                    <asp:ListItem value="31">Vidisha विदिशा</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div>
                  
     <fieldset runat="server" id="Fieldset1" visible="false">
          <legend> Details</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">Excel</button>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-100">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                       
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive" >
                                    <table class="table table-bordered text-center">
                                        <thead>
                                            <tr>
                                                
                                                <th>District <br />
                                                    जिले 
                                                </th>
                                                <th>No. of Employees<br />
                                                    कर्मचारियों की संख्या
                                                </th>
                                                <th>Employees ID Card Generated
                                                <br />
                                                    कर्मचारी आई.डी कार्ड जनरेट किया गया
                                                </th>
                                                <th>Employees ID Card Generation Proposals digitally Signed
                                                <br />
                                                    कर्मचारी आई.डी कार्ड निर्माण प्रस्ताव डिजिटल रूप से हस्ताक्षरित
                                                </th>
                                                <th>Employees ID Card Not Created<br />
                                                    कर्मचारियों का पहचान पत्र नहीं बना
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody runat="server" id="Agar" visible="false">
                                            <tr>
                                                
                                                <td><a>Agar Malwa आगर  मालवा </a></td>
                                                <td>2,718</td>
                                                <td>2,306</td>
                                                <td>2,019</td>
                                                <td>412</td>
                                            </tr></tbody> 
                                           <tbody runat="server" id="Betul" visible="false"> <tr>
                                                
                                                <td><a>	Betul बैतूल</a></td>
                                                <td>2,825</td>
                                                <td>213</td>
                                                <td>0</td>
                                                <td>2,612</td>
                                            </tr></tbody> 
                                          <tbody runat="server" id="Bhopal" visible="false">  <tr>
                                               
                                                <td><a>Bhopal भोपाल	</a></td>
                                                <td>2,947</td>
                                                <td>898</td>
                                                <td>704</td>
                                                <td>2,049</td>
                                            </tr></tbody> 
                                           <tbody runat="server" id="Chhatarpur" visible="false"> <tr>
                                                
                                                <td><a>Chhatarpur छतरपुर </a></td>
                                                <td>3,995</td>
                                                <td>3,095</td>
                                                <td>3,094</td>
                                                <td>900</td>
                                            </tr>
                                        </tbody>  
                                        <tbody runat="server" id="Chhindwara" visible="false">
                                            <tr>
                                               
                                                <td><a>Chhindwara छिंदवाडा </a></td>
                                                <td>2,718</td>
                                                <td>2,306</td>
                                                <td>2,019</td>
                                                <td>412</td>
                                            </tr></tbody> 
                                        <tbody runat="server" id="Dewas" visible="false">    <tr>
                                               
                                                <td><a>	Dewas देवास </a></td>
                                                <td>2,825</td>
                                                <td>213</td>
                                                <td>0</td>
                                                <td>2,612</td>
                                            </tr></tbody> 
                                         <tbody runat="server" id="Gwalior" visible="false">   <tr>
                                               
                                                <td><a>Gwalior ग्वालियर	</a></td>
                                                <td>2,947</td>
                                                <td>898</td>
                                                <td>704</td>
                                                <td>2,049</td>
                                            </tr></tbody> 
                                           <tbody runat="server" id="Indore" visible="false"> <tr>
                                              
                                                <td><a>Indore इन्दौर </a></td>
                                                <td>820</td>
                                                <td>779	</td>
                                                <td>779	</td>
                                                <td>41</td>
                                            </tr>
                                        </tbody>  
                                        <tbody runat="server" id="Jabalpur" visible="false">
                                            <tr>
                                               
                                                <td><a>Jabalpur जबलपुर </a></td>
                                                <td>1,461</td>
                                                <td>367</td>
                                                <td>2</td>
                                                <td>1,094</td>
                                            </tr></tbody> 
                                        <tbody runat="server" id="Narmadapuram" visible="false">    <tr>
                                                
                                                <td><a>	Narmadapuram नर्मदापुरम</a></td>
                                                <td>825</td>
                                                <td>213</td>
                                                <td>0</td>
                                                <td>612</td>
                                            </tr></tbody> 
                                        <tbody runat="server" id="Raisen" visible="false">    <tr>
                                               
                                                <td><a>Raisen रायसेन</a></td>
                                                <td>947</td>
                                                <td>898</td>
                                                <td>704</td>
                                                <td>49</td>
                                            </tr></tbody> 
                                          <tbody runat="server" id="Ujjain" visible="false">  <tr>
                                               
                                                <td><a>	Ujjain उज्जैन</a></td>
                                                <td>820</td>
                                                <td>779	</td>
                                                <td>779	</td>
                                                <td>41</td>
                                            </tr>
                                        </tbody>   
                                        <tbody runat="server" id="Umaria" visible="false">
                                            <tr>
                                                
                                                <td><a>Umaria उमरिया</a></td>
                                                <td>918</td>
                                                <td>781</td>
                                                <td>98</td>
                                                <td>137</td>
                                            </tr></tbody> 
                                          <tbody runat="server" id="Vidisha" visible="false">  <tr>
                                              
                                                <td><a>	Vidisha विदिशा</a></td>
                                                <td>803</td>
                                                <td>732</td>
                                                <td>0</td>
                                                <td>71</td>
                                            </tr></tbody> 
                                              </table>
                                </div>
                            </div>
                         
                        </div>
                    </fieldset>
    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

