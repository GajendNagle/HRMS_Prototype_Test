<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_VenderToProjectMapping.aspx.cs" Inherits="mis_Masters_Mst_VenderToProjectMapping" %>

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
                        <%--   <li class="breadcrumb-item">
                    <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Vender To Project No. Mapping Process</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Vender To Project Mapping / प्रोजेक्ट मैपिंग में विक्रेता
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Vender To Project Mapping / प्रोजेक्ट मैपिंग में विक्रेता</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Project Year<br />
                                प्रोजेक्ट वर्ष का चयन करें
                            </label>

                            <%-- <asp:DropDownList runat="server" ID="ddlProjectYear" CssClass="form-control select2">

                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem Value="1">2024</asp:ListItem>
                                <asp:ListItem Value="2">2023</asp:ListItem>
                                <asp:ListItem Value="3">2022</asp:ListItem>
                                <asp:ListItem Value="4">2021</asp:ListItem>
                            </asp:DropDownList>--%>

                            <select class="form-control select2" id="ddlProjectYear">

                                <option>Select</option>
                                <option value="1">2024</option>
                                <option value="2">2023</option>
                                <option value="3">2022</option>
                                <option value="4">2021</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">

                            <label>
                                Select Project No.<br />
                                प्रोजेक्ट नंबर का चयन करें
                            </label>
                            <%--<asp:DropDownList runat="server" ID="ddlProjectNo" CssClass="form-control select2">

                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem Value="1">PWDMP001</asp:ListItem>
                                <asp:ListItem Value="2">PWDMP002</asp:ListItem>
                                <asp:ListItem Value="3">PWDMP003</asp:ListItem>
                                <asp:ListItem Value="4">PWDMP004</asp:ListItem>
                            </asp:DropDownList>--%>

                            <select class="form-control select2" id="ddlProjectNo">

                                <option>Select</option>
                                <option value="1">PWDMP001</option>
                                <option value="2">PWDMP002</option>
                                <option value="3">PWDMP003</option>
                                <option value="4">PWDMP004</option>
                            </select>

                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">

                            <label>
                                Select Vender List(GSTIN No.)<br />
                                विक्रेता सूची (जीएसटीआईएन नंबर) का चयन करें
                            </label>
                            <select class="select2">
                                <option>Select</option>
                                <option>22AAAAA0000A1Z5</option>
                                <option>22AAAAA0000A5Z9</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter EMD Amount<br />
                                EMD राशि दर्ज करें
                            </label>

                            <input type="text" class="form-control" placeholder=" Enter EMD Amount" />
                        </div>
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Security Deposit Amount<br />
                                सुरक्षा जमा राशि दर्ज करें
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Security Deposit Amount" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Project(Upload Document)<br />
                                प्रोजेक्ट(दस्तावेज़ अपलोड करें)
                            </label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg" onclick=" showHideRemarkView()">Save</button>
                        <a href="Mst_VenderToProjectMapping.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none;">
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

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
             <br />
                                            क्रमांक</th>
                                        <th>Project Year<br />
                                            परियोजना वर्ष</th>
                                        <th>Project No.<br />
                                            परियोजना नंबर</th>
                                        <th>Vender Name
                                           <br />
                                            विक्रेता का नाम
                                        </th>
                                        <th>Status(Active/InActive)
             <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
                 <br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>2024</td>
                                    <td>PWDMP001</td>
                                    <td>Ashok Verma</td>
                                    <td>Active</td>
                                    <td class="nowrap"><a class="Alert-View btn btn-outline-info"><i class="fa fa-eye"></i></a>&nbsp<a class="Alert-Edit btn btn-outline-danger"><i class="fa fa-edit"></i></a></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table2" style="display: none">
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

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
 <br />
                                            क्रमांक</th>
                                        <th>Project Year<br />
                                            परियोजना वर्ष</th>
                                        <th>Project No.<br />
                                            परियोजना नंबर</th>
                                        <th>Vender Name
                                      <br />
                                            विक्रेता का नाम
                                        </th>
                                        <th>Status(Active/InActive)
 <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
     <br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>2023</td>
                                    <td>PWDMP002</td>
                                    <td>Rakesh Sharma</td>
                                    <td>Active</td>
                                    <td class="nowrap"><a class="Alert-View btn btn-outline-info"><i class="fa fa-eye"></i></a>&nbsp<a class="Alert-Edit btn btn-outline-danger"><i class="fa fa-edit"></i></a></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script type="text/javascript">
        function showHideRemarkView() {
            var ddlProjectNo = document.getElementById('ddlProjectNo');
            var ddlProjectYear = document.getElementById('ddlProjectYear')

            if (ddlProjectNo.value == "1" & ddlProjectYear.value == "1") {
                table1.style.display = "block";
                table2.style.display = "none";
            }
            else if (ddlProjectNo.value == "2" & ddlProjectYear.value == "2") {
                table2.style.display = "block";
                table1.style.display = "none";
            }
            else {
                table1.style.display = "none";
                table2.style.display = "none";
            }
        }
    </script>
</asp:Content>

