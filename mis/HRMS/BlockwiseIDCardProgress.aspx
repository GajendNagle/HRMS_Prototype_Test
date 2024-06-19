<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="BlockwiseIDCardProgress.aspx.cs" Inherits="mis_HRMS_BlockwiseIDCardProgress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .hidden {
            display: none;
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
                          <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                      </li>
                      <li class="breadcrumb-item">
                          <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                              <span>District Wise ID Card Progress Report</span></a>
                      </li>
                      <li class="breadcrumb-item"><span>Block Wise ID Card Progress Report</span></li>
                  </ol>
              </div>
          </div>
      </div>
  </div>
     
        <div class="card">
            <div class="card-header">
                 <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Block Wise ID Card Progress Report/
                     ब्लॉक वार आई.डी कार्ड प्रगति रिपोर्ट
                    </h5>
                </div>
            </div>
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
                    <legend>Block Wise ID Card Progress Report/ब्लॉकवार आई.डी कार्ड प्रगति रिपोर्ट</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select District Name/ जिले का नाम चुनें<span style="color: red">*</span></label>

                                <asp:DropDownList runat="server" ID="ddldistrict" class="form-control select2" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">Bhopal</asp:ListItem>
                                    <asp:ListItem Value="2">Raisen</asp:ListItem>
                                    <asp:ListItem Value="3">Sehore</asp:ListItem>
                                    <asp:ListItem Value="4">Vidisha</asp:ListItem>
                                    <asp:ListItem Value="5">Gwalior</asp:ListItem>
                                    <asp:ListItem Value="7">Betul</asp:ListItem>
                                    <asp:ListItem Value="8">Bhind</asp:ListItem>
                                    <asp:ListItem Value="9">Balaghat</asp:ListItem>
                                    <asp:ListItem Value="10">Barwani</asp:ListItem>
                                    <asp:ListItem Value="11">Chhatarpur</asp:ListItem>
                                    <asp:ListItem Value="12">Chhindwara</asp:ListItem>
                                    <asp:ListItem Value="13">Dewas</asp:ListItem>
                                    <asp:ListItem Value="14">Dhar</asp:ListItem>
                                    <asp:ListItem Value="15">Datia</asp:ListItem>
                                    <asp:ListItem Value="16">Damoh</asp:ListItem>
                                    <asp:ListItem Value="17">Burhanpur</asp:ListItem>
                                    <asp:ListItem Value="18">Anuppur</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Block Name/ ब्लॉक का नाम चुनें<span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" ID="ddlblock" class="form-control" OnSelectedIndexChanged="ddlblock_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="berasia" runat="server" visible="false">
                    <legend>Details/विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Block<br />
                                                ब्लॉक
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
                                    <tbody>
                                        <tr>
                                            <td>Berasia</td>
                                            <td>1,461</td>
                                            <td>367</td>
                                            <td>0</td>
                                            <td>1,094</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="phandanew" runat="server" visible="false">
                    <legend>Details/विवरण</legend>
                    <div class="row align-items-end" >
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Block<br />
                                                ब्लॉक
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
                                    <tbody>
                                        <tr>
                                            <td>Phanda URBAN- New City</td>
                                            <td>2,559</td>
                                            <td>326	</td>
                                            <td>0</td>
                                            <td>2,233</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="phandagramin" runat="server" visible="false">
                    <legend>Details/विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Block<br />
                                                ब्लॉक
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
                                    <tbody>
                                        <tr>
                                            <td>PHANDA GRAMIN</td>
                                            <td>1,357</td>
                                            <td>178</td>
                                            <td>0</td>
                                            <td>1,179</td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="PhandaUrban" runat="server" visible="false">
                    <legend>Details/विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Block<br />
                                                ब्लॉक
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


                                    <tbody>
                                        <tr>
                                            <td>Phanda Urban (Old City)</td>
                                            <td>1,258</td>
                                            <td>180	</td>
                                            <td>95</td>
                                            <td>630</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="BADI" runat="server" visible="false">
                    <legend>Details/विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Block<br />
                                                ब्लॉक
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
                                    <tbody>
                                        <tr>
                                            <td>BADI</td>
                                            <td>1,149</td>
                                            <td>151</td>
                                            <td>998</td>
                                            <td>630</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="BEGAMGANJ" runat="server" visible="false">
                    <legend>Details/विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Block<br />
                                                ब्लॉक
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
                                    <tbody>
                                        <tr>
                                            <td>BEGAMGANJ</td>
                                            <td>444</td>
                                            <td>330</td>
                                            <td>75</td>
                                            <td>630</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="GAIRATGANJ" runat="server" visible="false">
                    <legend>Details/विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Block<br />
                                                ब्लॉक
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
                                    <tbody>
                                        <tr>
                                            <td>GAIRATGANJ</td>
                                            <td>755</td>
                                            <td>630</td>
                                            <td>54</td>
                                            <td>630</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="OBEDULLAGANJ" runat="server" visible="false">
                    <legend>Details/विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Block<br />
                                                ब्लॉक
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
                                    <tbody>
                                        <tr>
                                            <td>OBEDULLAGANJ</td>
                                            <td>530</td>
                                            <td>420</td>
                                            <td>105</td>
                                            <td>630</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                 <fieldset id="Fieldset1" runat="server" visible="false">
                    <legend>Details/विवरण</legend>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Block<br />
                                                ब्लॉक
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
                                    <tbody>
                                        <tr>
                                            <td>Berasia</td>
                                            <td>1,461</td>
                                            <td>367</td>
                                            <td>0</td>
                                            <td>1,094</td>
                                        </tr>
                                    </tbody>
                              
                                    <tbody>
                                        <tr>
                                            <td>Phanda URBAN- New City</td>
                                            <td>2,559</td>
                                            <td>326	</td>
                                            <td>0</td>
                                            <td>2,233</td>
                                        </tr>
                                       
                                    </tbody>
                               
                                    <tbody>
                                        <tr>
                                            <td>PHANDA GRAMIN</td>
                                            <td>1,357</td>
                                            <td>178</td>
                                            <td>0</td>
                                            <td>1,179</td>

                                        </tr>
                                    </tbody>
                               


                                    <tbody>
                                        <tr>
                                            <td>Phanda Urban (Old City)</td>
                                            <td>1,258</td>
                                            <td>180	</td>
                                            <td>95</td>
                                            <td>630</td>
                                        </tr>
                                   
                                    <tbody>
                                        <tr>
                                            <td>BADI</td>
                                            <td>1,149</td>
                                            <td>151</td>
                                            <td>998</td>
                                            <td>630</td>
                                        </tr>
                                    </tbody>
                                
                                    <tbody>
                                        <tr>
                                            <td>BEGAMGANJ</td>
                                            <td>444</td>
                                            <td>330</td>
                                            <td>75</td>
                                            <td>630</td>
                                        </tr>
                                    </tbody>
                                
                                    <tbody>
                                        <tr>
                                            <td>GAIRATGANJ</td>
                                            <td>755</td>
                                            <td>630</td>
                                            <td>54</td>
                                            <td>630</td>

                                        </tr>
                                    </tbody>
                              
                                    <tbody>
                                        <tr>
                                            <td>OBEDULLAGANJ</td>
                                            <td>530</td>
                                            <td>420</td>
                                            <td>105</td>
                                            <td>630</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>






</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

