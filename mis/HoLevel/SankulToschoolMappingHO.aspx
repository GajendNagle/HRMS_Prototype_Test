<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SankulToschoolMappingHO.aspx.cs" Inherits="mis_HoLevel_SankulToschoolMappingHO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
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
                            <a href="#sidebarUserManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>
                        <li class="breadcrumb-item">HO Level Request</li>
                        <li class="breadcrumb-item">Sankul To School Mapping Verification</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-6">
                    <h4 class="card-title">Sankul to School Mapping/संकुल से स्कूल मैपिंग
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Sankul to School Mapping/संकुल से स्कूल मैपिंग</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label class="font-bold">Select Division Name/संभाग का नाम चुनें </label>
                        <asp:DropDownList runat="server" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Gwalior</asp:ListItem>
                            <asp:ListItem>Narmadapuram</asp:ListItem>
                            <asp:ListItem>Indore</asp:ListItem>
                            <asp:ListItem>Jabalpur</asp:ListItem>
                            <asp:ListItem>Rewa</asp:ListItem>
                            <asp:ListItem>Sagar</asp:ListItem>
                            <asp:ListItem>Shahdol</asp:ListItem>
                            <asp:ListItem>Ujjain</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Select District Name/जिले का नाम चुनें</label>
                        <asp:DropDownList runat="server" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Raisen</asp:ListItem>
                            <asp:ListItem>Rajgarh</asp:ListItem>
                            <asp:ListItem>Sehore</asp:ListItem>
                            <asp:ListItem>Vidisha</asp:ListItem>
                            <asp:ListItem>Ashoknagar</asp:ListItem>
                            <asp:ListItem>Shivpuri</asp:ListItem>
                            <asp:ListItem>Datia</asp:ListItem>
                            <asp:ListItem>Guna</asp:ListItem>
                            <asp:ListItem>Gwalior</asp:ListItem>
                            <asp:ListItem>Harda</asp:ListItem>
                            <asp:ListItem>Hoshangabad</asp:ListItem>
                            <asp:ListItem>Betul</asp:ListItem>
                            <asp:ListItem>Morena</asp:ListItem>
                            <asp:ListItem>Sheopur</asp:ListItem>
                            <asp:ListItem>Bhind</asp:ListItem>
                            <asp:ListItem>Barwani</asp:ListItem>
                            <asp:ListItem>Burhanpur</asp:ListItem>
                            <asp:ListItem>Dhar</asp:ListItem>
                            <asp:ListItem>Indore</asp:ListItem>
                            <asp:ListItem>Jhabua</asp:ListItem>
                            <asp:ListItem>Khandwa</asp:ListItem>
                            <asp:ListItem>Khargone</asp:ListItem>
                            <asp:ListItem>Alirajpur</asp:ListItem>
                            <asp:ListItem>Balaghat</asp:ListItem>
                            <asp:ListItem>Chhindwara</asp:ListItem>
                            <asp:ListItem>Jabalpur</asp:ListItem>
                            <asp:ListItem>Katni</asp:ListItem>
                            <asp:ListItem>Mandla</asp:ListItem>
                            <asp:ListItem>Narsinghpur</asp:ListItem>
                            <asp:ListItem>Seoni</asp:ListItem>
                            <asp:ListItem>Rewa</asp:ListItem>
                            <asp:ListItem>Satna</asp:ListItem>
                            <asp:ListItem>Sidhi</asp:ListItem>
                            <asp:ListItem>Singroli</asp:ListItem>
                            <asp:ListItem>Chhatarpur</asp:ListItem>
                            <asp:ListItem>Damoh</asp:ListItem>
                            <asp:ListItem>Panna</asp:ListItem>
                            <asp:ListItem>Sagar</asp:ListItem>
                            <asp:ListItem>Tikamgarh</asp:ListItem>
                            <asp:ListItem>Shahdol</asp:ListItem>
                            <asp:ListItem>Umaria</asp:ListItem>
                            <asp:ListItem>Dindori</asp:ListItem>
                            <asp:ListItem>Anuppur</asp:ListItem>
                            <asp:ListItem>Dewas</asp:ListItem>
                            <asp:ListItem>Mandsaur</asp:ListItem>
                            <asp:ListItem>Neemuch</asp:ListItem>
                            <asp:ListItem>Ratlam</asp:ListItem>
                            <asp:ListItem>Shajapur</asp:ListItem>
                            <asp:ListItem>Ujjain</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-bold">Select Block Name/ब्लॉक का नाम चुनें</label>
                        <asp:DropDownList runat="server" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Agar</asp:ListItem>
                            <asp:ListItem>Barod</asp:ListItem>
                            <asp:ListItem>Nalkheda</asp:ListItem>
                            <asp:ListItem>Susner</asp:ListItem>
                            <asp:ListItem>Alirajpur</asp:ListItem>
                            <asp:ListItem>Bhabra</asp:ListItem>
                            <asp:ListItem>Katthiwara</asp:ListItem>
                            <asp:ListItem>Sondwa</asp:ListItem>
                            <asp:ListItem>Udaygarh</asp:ListItem>
                            <asp:ListItem>Jobat</asp:ListItem>
                            <asp:ListItem>Anuppur</asp:ListItem>
                            <asp:ListItem>Jaithari</asp:ListItem>
                            <asp:ListItem>Kotma</asp:ListItem>

                        </asp:DropDownList>
                    </div>
                    <%--<div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Sankul UDISE Code</label>
                                <asp:DropDownList CssClass="form-control select2" runat="server">
                                    <asp:ListItem> Enter Sankul UDISE Code</asp:ListItem>
                                    <asp:ListItem>14548455-AKBARPUR GOVT. HS</asp:ListItem>
                                    <asp:ListItem>14632121-BERASIA (BOYS) GOVT.HSS</asp:ListItem>
                                    <asp:ListItem>24587465-DHAMARRA GOVT. HS</asp:ListItem>
                                    <asp:ListItem>15445463-EENT KHEDI GOVT. HSS</asp:ListItem>
                                    <asp:ListItem>24876546-BAIRAGARH (BOYS) GOVT.HSS</asp:ListItem>
                                    <asp:ListItem>24876588-BERAISA (GIRLS) SN HSS</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>--%>
                    <div class="col-md-3">

                        <label class="font-bold">UDISE Code/UDISE कोड</label>
                        <asp:TextBox runat="server" ID="txtUdiseCode" CssClass="form-control" placeholder="Enter UDISE Code"></asp:TextBox>

                    </div>
                    <div class="col-md-12">
                        <div class="form-group text-center">
                            <br />
                            <asp:Button ID="btnSubmit" CssClass="btn w-lg btn-success  btn-rounded" OnClick="View1_Click" runat="server" Text="Search" />

                            <asp:Button ID="Button2" CssClass="btn w-lg btn-danger btn-rounded " href="SankulToschoolMappingHO.aspx" runat="server" Text="Clear" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="row form-group">
                <div class="col-md-12">
                    <fieldset id="report" runat="server" visible="false">
                        <legend>Sankul to School Mapping Details/संकुल से स्कूल मानचित्रण विवरण</legend>
                        <div class="row align-items-end">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <th colspan="9">School /स्कूल </th>
                                                <th colspan="7">Sankul/संकुल </th>

                                            </tr>
                                            <tr>
                                                <th>Sr. No/क्रमांक</th>
                                                <th>View Request Detail</th>
                                                <th>Action/कार्रवाई</th>
                                                <th>Effective Date</th>
                                                <th>UDISE Code/UDISE कोड</th>
                                                <th>School Name/स्कूल के नाम</th>
                                                <th>School Board/स्कूल बोर्ड</th>
                                                <th>School Category/स्कूल श्रेणी</th>
                                                <th>School Category Detail/स्कूल श्रेणी विवरण</th>
                                                <th>Sr. No/क्रमांक</th>
                                                <th>UDISE Code/UDISE कोड</th>
                                                <th>School Name/स्कूल के नाम</th>
                                                <th>School Board/स्कूल बोर्ड</th>
                                                <th>School Category/स्कूल श्रेणी</th>
                                                <th>School Category Detail/स्कूल श्रेणी विवरण</th>
                                                <th>Merge Status/मर्ज स्थिति</th>
                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                                </td>
                                                <td scope="col">
                                                    <input type="checkbox" /></td>
                                                <td>07/12/2023</td>
                                                <td class="txt-link">
                                                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                               23450300631</asp:HyperLink>

                                                <td>Crist Academy School</td>
                                                <td>ICSE</td>
                                                <td>Primary</td>
                                                <td>Primary only with grades 1 to 5 (PRY)</td>
                                                <td>1</td>
                                                <td class="txt-link">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn view-but " data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
23445656546</asp:HyperLink>
                                                </td>
                                                <td>Sarasvati Vidhya Mandir</td>
                                                <td>State Board</td>
                                                <td>Primary</td>
                                                <td>Primary only with grades 1 to 5 (PRY)</td>
                                                <td>
                                                    <label id="data1">Merged</label></td>
                                            </tr>

                                            <tr>

                                                <td>1</td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                                </td>
                                                <td scope="col">
                                                    <input type="checkbox" /></td>
                                                <td>07/12/2023</td>
                                                <td class="txt-link">
                                                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                               23454545478</asp:HyperLink>
                                                </td>
                                                <td>Delhi Public School</td>
                                                <td>CBSE</td>
                                                <td>Primary</td>
                                                <td>Primary only with grades 1 to 5 (PRY)</td>
                                                <td>2</td>
                                                <td class="txt-link">
                                                    <asp:HyperLink ID="HyperLink5" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
23452255224</asp:HyperLink>
                                                </td>
                                                <td>Bal Bharti School</td>
                                                <td>State Board</td>
                                                <td>Higher Secondary</td>
                                                <td>Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</td>
                                                <td>Merged</td>
                                            </tr>
                                            <tr>

                                                <td>1</td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton>
                                                </td>
                                                <td scope="col">
                                                    <input type="checkbox" /></td>
                                                <td>07/12/2023</td>
                                                <td class="txt-link">
                                                    <asp:HyperLink ID="HyperLink7" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                               23455898989</asp:HyperLink>
                                                </td>
                                                <td>Modern Convent School</td>
                                                <td>CBSE</td>
                                                <td>Upper Primary</td>
                                                <td>Upper Primary with grades 1 to 8 (PRY-UPR)</td>
                                                <td>3</td>
                                                <td class="txt-link">
                                                    <asp:HyperLink ID="HyperLink8" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
23459825525</asp:HyperLink>
                                                </td>
                                                <td>Geetanjali Public School</td>
                                                <td>State Board</td>
                                                <td>Upper Primary</td>
                                                <td r>Upper Primary with grades 1 to 8 (PRY-UPR)</td>
                                                <td>Merged</td>
                                            </tr>

                                            <!-- sample modal content -->
                                            <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                                <div class="modal-dialog modal-xl">
                                                    <div class="modal-content">
                                                        <div class="modal-header" id="myDIV">
                                                            <h4 class="modal-title" id="myLargeModalLabel1">Request Detail/विवरण का अनुरोध करें</h4>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                                        </div>
                                                        <div class="modal-body">

                                                            <div class="row align-items-end">
                                                                <div class="col-md-2">
                                                                    <label>Date/तारीख</label>
                                                                    <asp:TextBox ID="TextBox6" placeholder="15/11/2023" ReadOnly="true" runat="server" CssClass="datepicker form-control"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <label>Order Document Type/ऑर्डर दस्तावेज़ प्रकार</label>
                                                                    <asp:TextBox ID="TextBox7" placeholder="Order Letter" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                                                                </div>

                                                                <div class="col-md-3">
                                                                    <label>Order No/आदेश संख्या</label>
                                                                    <asp:TextBox ID="TextBox9" placeholder="1248745" ReadOnly="true" runat="server" CssClass=" form-control"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <label>Effective Date/प्रभावी तिथि</label>
                                                                    <asp:TextBox ID="TextBox10" placeholder="20/11/2023" ReadOnly="true" runat="server" CssClass="datepicker form-control"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-1 mt-2">

                                                                    <asp:LinkButton ID="LinkButton9" runat="server" CssClass="btn view-but border" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="openPDF()"><i class="fas fa-eye"></i>Document</asp:LinkButton>
                                                                    <%--<asp:FileUpload runat="server" CssClass="form-control" />--%>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>


                                            <!-- /.modal-dialog -->
                                </div>


                                <!-- /.modal -->
                                </tbody>
                                    </table>
                            </div>
                        </div>
                </div>
                </fieldset>
                    <div class="row justify-content-center" runat="server" id="divbtn" visible="false">
                        <div class="col-md-12">
                            <div class="form-group text-center">
                                <button type="button" class=" btn w-lg btn-success btn-rounded" data-bs-toggle="modal" data-bs-target="#OTPModal">School Mapping</button>


                                <button type="button" class="btn w-lg btn-danger btn-rounded" onclick="openBootstrapModal()">Reject Request</button>
                            </div>
                        </div>
                    </div>
                <div class="modal" tabindex="-1" role="dialog" id="OTPModal">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">OTP Details/OTP विवरण</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <legend>OTP Details/OTP विवरण</legend>
                                    <div class="row align-items-end">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>OTP (One Time Password)/ओटीपी (वन टाइम पासवर्ड)</label>
                                                <input type="text" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="modal-footer justify-content-center">
                                <button type="button" class="btn btn-danger Alert-Schoolmap" data-bs-dismiss="modal">Submit</button>
                                <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- sample modal content -->
                <!-- Bootstrap Modal -->
                <div class="modal" tabindex="-1" role="dialog" id="bootstrapModal">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Reject Remark/टिप्पणी अस्वीकार करें</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row  align-items-end">
                                    <div class="col-md-12">
                                        <label>Remark/टिप्पणी</label>
                                        <asp:TextBox ID="TextBox8" placeholder="Enter Reject Remark" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-center">
                                <button type="button" class="btn btn-danger Alert-Reject" data-bs-dismiss="modal">Reject</button>
                                <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal -->


                <!--Description-->
                <%-- <fieldset id="dcp" runat="server" visible="false">
                            <legend>Description</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="main-ul">

                                        <li><strong>Division Name</strong>
                                            <ul>
                                                <li>User will be able to select <strong>Division name </strong>from dropdown. Data populated from <strong>Division master </strong>. </li>
                                            </ul>
                                        </li>

                                        <li><strong>District Name</strong>
                                            <ul>
                                                <li>User will be able to select <strong>District name </strong>from dropdown. Data populated from <strong>District master </strong>as cascade from <strong>Division Name.</strong> </li>
                                            </ul>
                                        </li>
                                        <li><strong>Block Name</strong>
                                            <ul>
                                                <li>User will be able to select <strong>Block name </strong>from dropdown. Data populated from <strong>Block master </strong>as cascade <strong>Division and District name.</strong> </li>
                                            </ul>
                                        </li>

                                        <li><strong>Sankul UDISE Code</strong>
                                            <ul>
                                                <li>Sankul UDISE Code  code will be auto populated data based on selected <strong>Division, District and Block name </strong></li>
                                                <li>The Sankul UDISE Code for schools must be implemented as a <strong>Searchable</strong> dropdown.</li>
                                            </ul>
                                        </li>
                                        <li><strong>Search </strong>
                                            <ul>
                                                <li>After click on Search button data will be visible in grid view.</li>
                                            </ul>

                                        </li>

                                        <li><strong>Clear</strong>
                                            <ul>
                                                <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                            </ul>
                                        </li>
                                        <li><strong>View Request Detail (Gridview)</strong>
                                            <ul>
                                                <li>When the user clicks on the eye Icon, request related  details will be visible in the pop up.</li>

                                                <li>When clicking on the eye icon, users can view request details such as the Date and Order Number.
 Additionally, by clicking on the 'Documents' Button, they can also view request, related documents .
                                                </li>
                                            </ul>
                                        </li>
                                        <li><strong>UDISE Code (Gridview)</strong>
                                            <ul>
                                                <li>User will able to see school all information in pop-up by clicking on UDISE Code <strong>Hyperlink</strong> in gridview.</li>
                                            </ul>
                                        </li>
                                        <li><strong>School Mapping</strong>
                                            <ul>
                                                <li>It is mandatory to click on the checkbox in front of the data to map school the relevant data.
                                                  After that the data will be verified</li>

                                            </ul>
                                        </li>

                                        <li><strong>Reject</strong>
                                            <ul>
                                                <li>It is mandatory to click on the checkbox in front of the data to <strong>Reject</strong> the relevant request.
                                                  After that the <strong>Modal Pop-up</strong> will open. </li>
                                                <li>The user will be able to enter <strong>rejection remarks</strong>, and by clicking on 'Reject,' the request will be rejected.</li>
                                            </ul>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </fieldset>--%>
                <!-- End Description -->
            </div>
        </div>
        <!-- Add the Modal -->
        <!-- Confirmation-->
        <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header" id="myDIV">
                        <h4 class="modal-title" id="myLargeModalLabel1">Request Details/अनुरोध विवरण</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body">

                        <div class="row align-items-end">
                            <div class="col-md-4">
                                <label>Date/तारीख</label>
                                <asp:TextBox ID="TextBox3" ReadOnly="true" placeholder="16/11/2023" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label>Order No/आदेश संख्या</label>
                                <asp:TextBox ID="TextBox4" placeholder="7894512" ReadOnly="true" runat="server" CssClass=" form-control"></asp:TextBox>

                            </div>
                            <div class="col-md-1 mt-2">

                                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn view-but border" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" OnClientClick="openPDF()"><i class="fas fa-eye"></i>Document</asp:LinkButton>
                                <%--<asp:FileUpload runat="server" CssClass="form-control" />--%>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->

        </div>
        <!-- /.modal -->


        <!--for UDISE CODE CLICK Add the Modal -->
        <!-- sample modal content -->
        <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog modal-xxl" style="width: 100%;">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myLargeModalLabel">School Details/स्कूल विवरण</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body">
                        <fieldset>
                            <legend>School Basic Information/स्कूल की जानकारी</legend>

                            <div class="row align-items-end">

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">School UDISE Code/स्कूल UDISE कोड<span style="color: red;"> *</span></label>
                                        <asp:TextBox ID="ir" runat="server" CssClass="form-control" ReadOnly="true" placeholder="Enter UDISE Code"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Division/संभाग का चयन करें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>1-Bhopal</asp:ListItem>
                                            <asp:ListItem>2-Indore</asp:ListItem>
                                            <asp:ListItem>3-Ujjain</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select District/ जिले का चयन करें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>1-Bhopal</asp:ListItem>
                                            <asp:ListItem>2-Raisen</asp:ListItem>
                                            <asp:ListItem>3-Sehore</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Block/ब्लॉक का चयन करें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>Huzur</asp:ListItem>
                                            <asp:ListItem>Berasia</asp:ListItem>
                                            <asp:ListItem>Phanda</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Location/स्थान चुनें<span style="color: red;">*</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>1-Rural</asp:ListItem>
                                            <asp:ListItem>2-Urban</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Assembly /विधानसभा का चयन करें <span style="color: red;">*</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>Govindpura</asp:ListItem>
                                            <asp:ListItem>Huzur</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Parliamentary/संसदीय का चयन करें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>Bhopal</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Habitation /आवास का चयन करें </label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>Berasia</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Board Type/बोर्ड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>1-CBSE</asp:ListItem>
                                            <asp:ListItem>2-State Board</asp:ListItem>
                                            <asp:ListItem>3-ICSE </asp:ListItem>
                                            <asp:ListItem>4-International</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select School Type/स्कूल का प्रकार चुनें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>1-Boy</asp:ListItem>
                                            <asp:ListItem>2-Girls</asp:ListItem>
                                            <asp:ListItem>3-Co-Ed</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select School Category/स्कूल श्रेणी का चयन करें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>1-Primary</asp:ListItem>
                                            <asp:ListItem>2-Upper Primary</asp:ListItem>
                                            <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                            <asp:ListItem>4-Upper Primary School</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Lowest Class/निम्नतम वर्ग का चयन करें<span style="color: red;">*</span></label>
                                        <%--<asp:TextBox ID="txtclass" runat="server" placeholder="Enter Lowest Class" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                        <asp:dropdownlist cssclass="form-control" enabled="False" xmlns:asp="#unknown" runat="server">
                                            <asp:listitem>-Select-</asp:listitem>
                                            <asp:listitem>Nursary</asp:listitem>
                                            <asp:listitem>LKG</asp:listitem>
                                            <asp:listitem>UKG</asp:listitem>
                                            <asp:listitem>1st</asp:listitem>
                                            <asp:listitem>2nd</asp:listitem>
                                            <asp:listitem>3rd</asp:listitem>
                                            <asp:listitem>4th</asp:listitem>
                                            <asp:listitem>5th</asp:listitem>
                                            <asp:listitem>6th</asp:listitem>
                                            <asp:listitem>7th</asp:listitem>
                                            <asp:listitem>8th</asp:listitem>
                                            <asp:listitem>9th</asp:listitem>
                                            <asp:listitem>10th</asp:listitem>
                                            <asp:listitem>11th</asp:listitem>
                                            <asp:listitem>12th</asp:listitem>
                                        </asp:dropdownlist>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Highest Class/उच्चतम वर्ग का चयन करें<span style="color: red;">*</span></label>
                                        <%-- <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Highest Class" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>

                                        <asp:DropDownList CssClass="form-control" runat="server">

                                            <asp:ListItem Selected="True">12th</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Management Group/प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>A-State Govt</asp:ListItem>
                                            <asp:ListItem>B-Govt Aided</asp:ListItem>
                                            <asp:ListItem>C-Private UnAided </asp:ListItem>
                                            <asp:ListItem>D-Central Govt</asp:ListItem>
                                            <asp:ListItem>E-Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select School Management/स्कूल प्रबंधन का चयन करें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                            <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                            <asp:ListItem>3-Local Body </asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select In-Charge Type/प्रभारी प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>1-Head Master / Principal </asp:ListItem>
                                            <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                            <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                            </div>

                            <div class="row align-items-end">

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">IN-Charge Unique Id/प्रभारी यूनिक आईडी<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" placeholder="Enter IN-Charge Unique ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">IN-Charge Name/प्रभारी का नाम<span style="color: red;"> *</span></label>
                                        <asp:TextBox runat="server" placeholder="Enter IN-Charge Name" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">IN-Charge Mobile Number/प्रभारी मोबाइल नंबर <span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" placeholder="Enter IN-Charge Mobile Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Year of Establishment/स्थापना का वर्ष चुनें<span style="color: red;">*</span></label>
                                        <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>2015</asp:ListItem>
                                            <asp:ListItem>2016</asp:ListItem>
                                            <asp:ListItem>2017</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                            <asp:ListItem>2019</asp:ListItem>
                                            <asp:ListItem>2020</asp:ListItem>
                                            <asp:ListItem>2021</asp:ListItem>
                                            <asp:ListItem>2022</asp:ListItem>
                                            <asp:ListItem>2023</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                            </div>

                            <div class="row align-items-end">

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Minority Community /अल्पसंख्यक समुदाय का चयन करें <span style="color: red;">*</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>1-Muslim</asp:ListItem>
                                            <asp:ListItem>2-Sikh</asp:ListItem>
                                            <asp:ListItem>3-Jain</asp:ListItem>
                                            <asp:ListItem>4-Christian</asp:ListItem>
                                            <asp:ListItem>5-Parsi</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select School Medium/स्कूल माध्यम का चयन करें<span style="color: red;">*</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>19-English</asp:ListItem>
                                            <asp:ListItem>04-Hindi</asp:ListItem>
                                            <asp:ListItem>18-Urdu</asp:ListItem>
                                            <asp:ListItem>10-Marathi</asp:ListItem>
                                            <asp:ListItem>99-Other</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" Placeholder="Enter School Name (In English)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                        <asp:TextBox runat="server" Placeholder="स्कूल का नाम दर्ज करे|" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>School Address Information/स्कूल के पते की जानकारी</legend>


                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">School Address (Line 1)/स्कूल का पता(1)<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" Placeholder="Enter School Address (Line 1)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">School Address (Line 2)/स्कूल का पता(2)</label>
                                        <asp:TextBox runat="server" Placeholder="Enter School Address (Line 2)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Pin Code/पिन कोड<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" Placeholder="Enter Pin Code" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Landline Number/लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" Placeholder="Enter Landline Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>

                            </div>

                            <div class="row align-items-end">

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Email ID/ईमेल आई.डी<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" Placeholder="Enter Email ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">School Website/स्कूल की वेबसाइट</label>
                                        <asp:TextBox runat="server" Placeholder="Enter School Website" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select School Shift/स्कूल शिफ्ट का चयन करें <span style="color: red;">*</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>Morning</asp:ListItem>
                                            <asp:ListItem>Afternoon</asp:ListItem>
                                            <asp:ListItem>Both</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Is School Residential/क्या विद्यालय आवासीय है का चयन करें<span style="color: red;">*</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                            <asp:ListItem Selected="True">No</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row">

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Special School/विशेष विद्यालय का चयन करें<span style="color: red;">*</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>CM Rise</asp:ListItem>
                                            <asp:ListItem>Model</asp:ListItem>
                                            <asp:ListItem>CM Rise / Model (Both)</asp:ListItem>
                                            <asp:ListItem>District Excellence</asp:ListItem>
                                            <asp:ListItem>Block Excellence</asp:ListItem>
                                            <asp:ListItem>PM Shri </asp:ListItem>
                                            <asp:ListItem>EFA (Education for all)</asp:ListItem>
                                            <asp:ListItem>Urdu</asp:ListItem>
                                            <asp:ListItem>Marathi</asp:ListItem>
                                            <asp:ListItem>Sanskrit</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select School Status/स्कूल की स्थिति का चयन करें<span style="color: red;">*</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>Functional</asp:ListItem>
                                            <asp:ListItem>Closed</asp:ListItem>
                                            <asp:ListItem>Merged</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">Select Hostel Attach/हॉस्टल अटैच का चयन करें<span style="color: red;">*</span></label>
                                        <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                            <asp:ListItem>-Select-</asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>School Bank Information/स्कूल बैंक सूचना</legend>

                            <div class="row align-items-end">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="font-bold">School Bank Account Name/स्कूल बैंक खाते का नाम<span style="color: red;">*</span></label>
                                        <asp:TextBox ID="TextBox2" placeholder="Enter Bank Name" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="font-bold">School Bank Account Number/स्कूल बैंक खाता संख्या<span style="color: red;">*</span></label>
                                        <asp:TextBox ID="TextBox1" Placeholder="Enter Account Number" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <label class="font-bold">IFSC Code/आईएफएससी कोड<span style="color: red;">*</span></label>
                                        <asp:TextBox ID="TextBox5" Placeholder="Enter IFSC Code" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                        </fieldset>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn c btn-danger" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>

                <!-- /.modal-content -->
            </div>

            <!-- /.modal-dialog -->

        </div>
        <!-- /.modal -->

    </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="server">

    <script>
        function FbotonOn() {
            debugger
            alert("Are you sure you want to Close this school");
            const element = document.getElementById("myDIV");
            element.className = "modal-header alert-success"
            document.getElementById('myLargeModalLabel1').innerHTML = "School Close Successfully";
            document.getElementById('data1').innerHTML = "UnMerged";

        }
    </script>

    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Schoolmap').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Map school ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'School Maped Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);

    </script>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/HRMS_Document%20(1).pdf';

            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
    <script>
        // Function to open the Bootstrap modal
        function openBootstrapModal() {
            $('#bootstrapModal').modal('show');
        }
    </script>
</asp:Content>

