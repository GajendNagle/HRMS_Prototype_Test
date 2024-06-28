<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistrictwiseIDCardProgress.aspx.cs" Inherits="mis_HRMS_DistrictwiseIDCardProgress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#IDCardReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee ID Card Management Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>District Wise ID Card Progress Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">District Wise ID Card Progress Report /
                    जिलावार आई.डी कार्ड प्रगति रिपोर्ट
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>District Wise ID Card Progress Report / जिलावार आई.डी कार्ड प्रगति रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select District Name <br /> जिला का चयन करें<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" class="form-control select2" ID="ddldistrict" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged1" AutoPostBack="true">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem Value="0"> All District</asp:ListItem>
                                <asp:ListItem Value="51">Agar Malwa आगर  मालवा</asp:ListItem>
                                <asp:ListItem Value="35">Betul बैतूल </asp:ListItem>
                                <asp:ListItem Value="32">Bhopal भोपाल </asp:ListItem>
                                <asp:ListItem Value="9">Chhatarpur छतरपुर </asp:ListItem>
                                <asp:ListItem Value="43">Chhindwara छिंदवाडा </asp:ListItem>
                                <asp:ListItem Value="23">Dewas देवास </asp:ListItem>
                                <asp:ListItem Value="4">Gwalior ग्वालियर </asp:ListItem>
                                <asp:ListItem Value="26">Indore इन्दौर </asp:ListItem>
                                <asp:ListItem Value="39">Jabalpur जबलपुर </asp:ListItem>
                                <asp:ListItem Value="37">Narmadapuram नर्मदापुरम</asp:ListItem>
                                <asp:ListItem Value="34">Raisen रायसेन </asp:ListItem>
                                <asp:ListItem Value="21">Ujjain उज्जैन </asp:ListItem>
                                <asp:ListItem Value="15">Umaria उमरिया </asp:ListItem>
                                <asp:ListItem Value="31">Vidisha विदिशा</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div>

                <fieldset runat="server" id="Fieldset1" visible="false">
                    <legend>Details / विवरण</legend>
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

                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>

                                            <th>District
                                                <br />
                                                जिला 
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
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Betul" visible="false">
                                        <tr>

                                            <td><a>Betul बैतूल</a></td>
                                            <td>2,825</td>
                                            <td>213</td>
                                            <td>0</td>
                                            <td>2,612</td>
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Bhopal" visible="false">
                                        <tr>

                                            <td><a>Bhopal भोपाल	</a></td>
                                            <td>2,947</td>
                                            <td>898</td>
                                            <td>704</td>
                                            <td>2,049</td>
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Chhatarpur" visible="false">
                                        <tr>

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
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Dewas" visible="false">
                                        <tr>

                                            <td><a>Dewas देवास </a></td>
                                            <td>2,825</td>
                                            <td>213</td>
                                            <td>0</td>
                                            <td>2,612</td>
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Gwalior" visible="false">
                                        <tr>

                                            <td><a>Gwalior ग्वालियर	</a></td>
                                            <td>2,947</td>
                                            <td>898</td>
                                            <td>704</td>
                                            <td>2,049</td>
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Indore" visible="false">
                                        <tr>

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
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Narmadapuram" visible="false">
                                        <tr>

                                            <td><a>Narmadapuram नर्मदापुरम</a></td>
                                            <td>825</td>
                                            <td>213</td>
                                            <td>0</td>
                                            <td>612</td>
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Raisen" visible="false">
                                        <tr>

                                            <td><a>Raisen रायसेन</a></td>
                                            <td>947</td>
                                            <td>898</td>
                                            <td>704</td>
                                            <td>49</td>
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Ujjain" visible="false">
                                        <tr>

                                            <td><a>Ujjain उज्जैन</a></td>
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
                                        </tr>
                                    </tbody>
                                    <tbody runat="server" id="Vidisha" visible="false">
                                        <tr>

                                            <td><a>Vidisha विदिशा</a></td>
                                            <td>803</td>
                                            <td>732</td>
                                            <td>0</td>
                                            <td>71</td>
                                        </tr>
                                    </tbody>
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

