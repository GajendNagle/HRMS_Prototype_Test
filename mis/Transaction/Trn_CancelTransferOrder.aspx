<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_CancelTransferOrder.aspx.cs" Inherits="mis_Transaction_Trn_CancelTransferOrder" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        #EmployeeDetails1 {
            display: none;
        }


        #showsavebtn {
            display: none;
        }

        #btnCancelorder {
            display: none;
        }

        #note {
            color: red;
        }

        #ShowOrders {
            display: none;
        }

    </style>
    <style>
        /* Style for the modal */
        /*#Editmodal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;*/
            /* width: 100%;
    height: 100%;*/
            /*overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);*/
            /* padding-top: 60px;*/
        /*}*/

        /* Style for the modal content */
        /* .modal-content {
    background-color: #fefefe;
    margin: 5% auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}*/

        /* Close button style */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }
    </style>

    <script>
        function showTextBox() {
            var selectBox = document.getElementById("dropdown");
            var selectedValue = selectBox.options[selectBox.selectedIndex].value;

            if (selectedValue === "Order No") {
                document.getElementById("orderNoInput").style.display = "block";
                document.getElementById("employeeIDInput").style.display = "none";
            } else if (selectedValue === "Employee ID") {
                document.getElementById("employeeIDInput").style.display = "block";
                document.getElementById("orderNoInput").style.display = "none";
            }
        }
    </script>
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
                            <a href="#CancelTransferOrder" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Cancel Transfer Order</span></a>
                        </li>
                        <li class="breadcrumb-item">Cancel Transfer Order</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">

            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row align-items-end">
                        <div class="col-lg-9">
                            <h4 class="card-title">Cancel Transfer Order /
         स्थानांतरण आदेश रद्द करें</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">

                    <fieldset>
                        <legend>Cancel Transfer Order / स्थानांतरण आदेश रद्द करें</legend>
                        <div class="row align-items-end">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Choose an option
                                <br />
                                        एक विकल्प का चयन करें<span style="color: red">*</span></label>
                                    <select id="dropdown" onchange="showTextBox()" class="form-control select2">
                                        <option value="Select">Select</option>
                                        <option value="Order No">Order No.</option>
                                        <option value="Employee ID">Employee-ID</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3" id="orderNoInput" style="display: none;">
                                <div class="form-group">
                                    <label>
                                        Enter Order No.
                                <br />
                                        आदेश संख्या दर्ज करें<span style="color: red">*</span></label>
                                    <input type="text" class="form-control" placeholder="Enter Order No.">
                                </div>
                            </div>
                            <div class="col-md-3" id="employeeIDInput" style="display: none;">
                                <div class="form-group">
                                    <label>
                                        Enter Employee-ID
                                <br />
                                        कर्मचारी आईडी दर्ज करें<span style="color: red">*</span>
                                    </label>
                                    <input type="text" class="form-control" placeholder="Enter Employee-ID">
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group ">
                                    <button type="button" onclick="HideShow()" class=" btn btn-success btn w-lg btn-border ">Search</button>
                                    <a href="Trn_CancelTransferOrder.aspx" class=" btn btn-outline-danger btn w-lg btn-border">Clear</a>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                        </div>
                    </fieldset>
                    <div id="EmployeeDetails1">
                        <fieldset>
                            <legend>Employee Transfer Details / कर्मचारी स्थानांतरण का विवरण</legend>

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
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table text-center table-bordered">
                                            <tr class="card-header">
                                                <th>Sr.No.
                                            <br />
                                                    सरल क्र.</th>
                                                <th>Employee ID-Name
                                            <br />
                                                    कर्मचारी आईडी-नाम</th>
                                                <th>Order No.
                                            <br />
                                                    आदेश संख्या</th>
                                                <th>Order Date
                                            <br />
                                                    आदेश दिनांक </th>
                                                <th>Existing Office Name
                                            <br />
                                                    वर्तमान कार्यालय का नाम</th>
                                                <th>Existing Designation Name
                                            <br />
                                                    वर्तमान पद का नाम</th>
                                                <th>Existing Posting Date
                                            <br />
                                                    वर्तमान पोस्टिंग दिनांक</th>
                                                <th>Current Location
                                            <br />
                                                    वर्तमान स्थान</th>
                                                <th>New Office Name<br />
                                                    नये कार्यालय का नाम</th>
                                                <th>New Designation Name
                                            <br />
                                                    नये पद का नाम</th>
                                                <th>New Effective Date
                                            <br />
                                                    नई प्रभावी दिनांक </th>
                                                <th>Promoted location
                                            <br />
                                                    पदोन्नत स्थान</th>
                                                <th>Action</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>543545-Ashok Kumar</td>
                                                <td>105/2023-24/31484</td>
                                                <td>14-12-23</td>
                                                <td>Head Office</td>
                                                <td>Teacher</td>
                                                <td>14-01-22</td>
                                                <td class="txt-link">
                                                    <asp:LinkButton runat="server" ID="LinkButton1" OnClick="LBUpadateInfo_Click">23445656546</asp:LinkButton>
                                                </td>
                                                <td>Head Office</td>
                                                <td>Principal</td>
                                                <td>14-09-23</td>
                                                <td class="txt-link">
                                                    <asp:LinkButton runat="server" ID="LinkButton4" OnClick="LBUpadateInfo_Click">23445656458</asp:LinkButton>
                                                </td>

                                                <td>
                                                    <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-12 mt-2">
                                    <div>
                                        <p id="note"><b>Cancel The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                                    </div>
                                    <br />
                                </div>
                            </div>
                        </fieldset>
                        <fieldset id="btnCancelorder">
                            <legend>Generate Cancel Order / रद्द आदेश जनरेट करें</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Cancel Order No.
                                    <br />
                                            आदेश नंबर<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." value="546545" readonly />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Date Of Cancellation
                                    <br />
                                            रद्द करने की दिनांक<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Upload Documents
                                    <br />
                                            दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                                        <input name="ename" type="file" class="form-control" autocomplete="off" />
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Remark
                                    <br />
                                            टिप्पणी</label>
                                        <input type="text" class="form-control" placeholder="Enter Remark" autocomplete="off" />
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12" id="generateorder" style="display: none;">
                                <div class="form-group">
                                    <button type="button" class="btn btn-success btn w-lg btn-border" data-bs-toggle="modal" data-bs-target="#staticBackdrop">GET DSC</button>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <span style="color: red">नोट:- कर्मचारियों का स्थानांतरण का आदेश निरस्त करने हेतु डिजिटल सिग्नेचर का उपयोग करें |</span>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <fieldset>
                        <legend>Description / विवरण</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="main-ul">

                                    <li><strong>Choose an option</strong>
                                        <ul>
                                            <li>User should be able to Select on Option in Dropdown.</li>
                                            <li>After Select Order No. Option In The Dropdown Order No. Field Will Be Show User Enter Order No. and Click on Search Button Employee Transfer Details Will Be Show.</li>
                                            <li>After Select Employee-ID Option In The Dropdown Employee-ID Field Will Be Show User Enter Employee-ID and Click on Search Button Employee Transfer Details  Will Be Show.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Search </strong>
                                        <ul>
                                            <li>User should be able to click on Search button.</li>
                                            <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                        </ul>
                                    </li>
                                    <li><strong>Clear</strong>
                                        <ul>
                                            <li>User should be able to click on Clear button.</li>
                                            <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                        </ul>
                                    </li>
                                    <%--     <li><strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
                                    </ul>
                                </li>
                                <li><strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>
                                <li><strong>Searchbox</strong>
                                    <ul>
                                        <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> . </li>
                                    </ul>
                                </li>--%>
                                    <li><strong>Action</strong>
                                        <ul>
                                            <%--   <li>To approve the application, after clicking on the checkbox, the user can fill Order details like <strong>Order number(Order number is auto generated), Order Date, and Document</strong>.</li>--%>
                                            <li>To Cancel the application, after clicking on the checkbox, Approve and Request Button wil be shown</li>
                                        </ul>
                                    </li>
                                    <li><strong>Cancel Order</strong>
                                        <ul>
                                            <li>User Can Click Cancel Order Button.</li>
                                            <li>On Cancel Order button click form field should be validated.</li>
                                            <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to Cancel this Order?").</li>
                                            <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Order Canceled Successfully!")</li>
                                            <li>If click on NO the data will not be saved and will return to the same page.</li>
                                        </ul>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>

            <!-- Editable  modal content -->
            <div id="Editmodal" class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myLargeModalLabel2">School Details / स्कूल विवरण</h4>
                            <button type="button" class="btn-close" onclick="CloseModal()" aria-hidden="True"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>School Basic Information / स्कूल की बुनियादी जानकारी</legend>

                                <div class="row align-items-end">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School UDISE Code
                            <br />
                                                स्कूल का डाइस कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="true" placeholder="23445656546	"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Name
                            <br />
                                                स्कूल का नाम (In English)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Kamla nehru school" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Name
                            <br />
                                                स्कूल का नाम (हिंदी में)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="कमला नेहरु स्कूल" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Division
                            <br />
                                                संभाग<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                <asp:ListItem>2-Indore</asp:ListItem>
                                                <asp:ListItem>3-Ujjain</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                District
                                        <br />
                                                जिला<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                <asp:ListItem>2-Raisen</asp:ListItem>
                                                <asp:ListItem>3-Sehore</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Block
                                        <br />
                                                विकासखण्ड<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                <asp:ListItem>Berasia</asp:ListItem>
                                                <asp:ListItem>Phanda</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Location
                                        <br />
                                                स्थान<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Rural</asp:ListItem>
                                                <asp:ListItem Selected="True">2-Urban</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Assembly
                                        <br />
                                                विधानसभा<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Govindpura</asp:ListItem>
                                                <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Parliamentary
                                        <br />
                                                विधानसभा<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Habitation
                                        <br />
                                                निवास</label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Berasia</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Board
                                        <br />
                                                स्कूल बोर्ड<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-CBSE</asp:ListItem>
                                                <asp:ListItem Selected="True">2-State Board</asp:ListItem>
                                                <asp:ListItem>3-ICSE </asp:ListItem>
                                                <asp:ListItem>4-International</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Type
                                        <br />
                                                स्कूल का प्रकार<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Boy</asp:ListItem>
                                                <asp:ListItem>2-Girls</asp:ListItem>
                                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Category
                            <br />
                                                स्कूल श्रेणी<span style="color: red;">*</span></label>
                                            <select class="form-control select2">
                                                <option value=" -Select-">-Select-</option>
                                                <option value="1-Primary">1-Pre-Primary</option>
                                                <option value="1-Primary">2-Primary</option>
                                                <option value="2-Upper Primary">3-Upper Primary</option>
                                                <option value="3-Higher Secondary">4-Secondary</option>
                                                <option value="3-Higher Secondary">5-Higher Secondary</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Category Details
                            <br />
                                                स्कूल श्रेणी विवरण<span style="color: red;">*</span></label>
                                            <select class="form-control select2">
                                                <option value=" -Select-">-Select-</option>
                                                <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                                <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                                <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                                <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                                <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">6-Secondary with grades 1 to 10 (PRY-UPR-SEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">7-Secondary with grades 6 to 10 (UPR-SEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">8-Secondary only with grades 9 & 10 (SEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">9-Higher Secondary  with grades 9 & 12 (SEC-HSEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">10-HR.Sec /Jr/Collageonly with grades 11 & 12 (HSEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">11-Pre-Primary Only (PRE)</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Management Group
                            <br />
                                                प्रबंधन समूह<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">A-State Govt</asp:ListItem>
                                                <asp:ListItem>B-Govt Aided</asp:ListItem>
                                                <asp:ListItem>C-Private UnAided </asp:ListItem>
                                                <asp:ListItem>D-Central Govt</asp:ListItem>
                                                <asp:ListItem>E-Other</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Management
                            <br />
                                                स्कूल प्रबंधन<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">1-Department of Education (DOE)</asp:ListItem>
                                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                <asp:ListItem>3-Local Body </asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                In-Charge Type
                            <br />
                                                प्रभारी प्रकार<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">1-Head Master / Principal </asp:ListItem>
                                                <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                In-Charge Unique Id
                            <br />
                                                प्रभारी यूनिक आईडी<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="68571" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                In-Charge Name<br />
                                                प्रभारी का नाम<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="Mr.Ramcharan" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                In-Charge Mobile Number<br />
                                                प्रभारी का मोबाइल नंबर<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="9895989654" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Year of Establishment
                            <br />
                                                स्थापना वर्ष<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">2015</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Minority Community
                            <br />
                                                अल्पसंख्यक समुदाय<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="true">2-Sikh</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Medium
                            <br />
                                                स्कूल माध्यम<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>19-English</asp:ListItem>
                                                <asp:ListItem>04-Hindi</asp:ListItem>
                                                <asp:ListItem>18-Urdu</asp:ListItem>
                                                <asp:ListItem>10-Marathi</asp:ListItem>
                                                <asp:ListItem>99-Other</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>School Address Information / स्कूल पता की जानकारी</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Address
                            <br />
                                                स्कूल का पता (Line 1)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Address
                            <br />
                                                स्कूल का पता (Line 2)</label>
                                            <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Pin Code
                            <br />
                                                पिन कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="462010" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Landline Number
                            <br />
                                                लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="0755 1251 1258" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Email ID<br />
                                                ईमेल आईडी<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="KNS@gmal.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Website<br />
                                                स्कूल की वेबसाइट</label>
                                            <asp:TextBox runat="server" Placeholder="KNSSchool.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Shift<br />
                                                स्कूल शिफ्ट<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Morning</asp:ListItem>
                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                <asp:ListItem>Both</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Is School Residential<br />
                                                क्या विद्यालय आवासीय है<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Special School
                                        <br />
                                                विशेष विद्यालय<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>CM Rise</asp:ListItem>
                                                <asp:ListItem Selected="True">Model</asp:ListItem>
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
                                            <label>
                                                School Status
                                        <br />
                                                विद्यालय की स्थिति<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Functional</asp:ListItem>
                                                <asp:ListItem>Closed</asp:ListItem>
                                                <asp:ListItem>Merged</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Hostel Attach
                                        <br />
                                                हॉस्टल अटैच<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem Selected="True">No</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>School Bank Information / स्कूल बैंक की जानकारी</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                School Bank Account Name<br />
                                                स्कूल के बैंक खाते का नाम<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox5" placeholder="Bank Of Baroda" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                School Bank Account Number<br />
                                                स्कूल के बैंक की खाता संख्या<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox7" Placeholder="051121542585" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 ">
                                        <div class="form-group">
                                            <label>
                                                IFSC Code<br />
                                                आईएफएससी कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox8" Placeholder="BARB0ASHOKA" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <div class="row ">
                                <div>
                                    <button type="button" class="btn btn-outline-danger waves-effect text-start " onclick="CloseModal()">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.modal -->
        </div>
    </div>

    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">

                <div class="modal-header">
                    <div class="modal-title font-20">VERIFY DSC</div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Varification</legend>

                        <div class="row">
                            <label>OTP(One Time Password)</label>
                            <input class="form-control" placeholder="Enter Varification Code" />
                        </div>

                    </fieldset>
                    <div class="modal-footer text-center">
                        <%--             <button type="button" class=" Alert-Save btn btn-success btn-rounded Alert-Save " onclick="myFunction()">Approve</button>--%>
                        <button type="button" class="btn btn-outline-success Alert-CancelOrder" data-bs-dismiss="modal">Submit</button>
                        <button type="button" class="btn btn-outline-warning" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function HideShow() {

            var x = document.getElementById("EmployeeDetails1");
            if (x.style.display === "none") {
                x.style.display = "block";

            } else {
                x.style.display = "block";
            }
        }
    </script>

    <script>
        function showhidesavebtn() {
            var checkbox1 = document.getElementById("checkbox1");
            var checkbox2 = document.getElementById("checkbox2");
            var btnCancelorder = document.getElementById("btnCancelorder");


            if (checkbox1.checked || checkbox2.checked) {
                btnCancelorder.style.display = "block"
                document.getElementById("generateorder").style.display = "block";
            }
            else if (checkbox2.checked === false && checkbox1.checked === false) {
                btnCancelorder.style.display = "none"
            }
            else {
                btnCancelorder.style.display = "block"
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-CancelOrder').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Cancel this Order?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Order Canceled Successfully!',
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

                $('.Alert-RejectT').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Reject this Transfer?",
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
                                text: 'Transfer Rejected Successfully!',
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

                $('.Alert-SaveOrder').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Cancel this order?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',

                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Order Cancel Successfully!',
                                timer: 2000

                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )

                            var x = document.getElementById('ShowOrders');
                            if (x.style.display == "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }

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
        // Function to open the Bootstrap modal
        function openBootstrapModalreg() {
            $('#bootstrapModalreg').modal('show');
        }
    </script>
    <script>
        function openModal() {
            document.getElementById('Editmodal').style.display = 'block';
            document.getElementById('mynav').style.display = 'none';




        }
        function CloseModal() {
            document.getElementById('Editmodal').style.display = 'none';
            document.getElementById('mynav').style.display = 'block';
        }
    </script>
    <script>
        function openPDF1() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Cancel%20Transfer%20Order%20PDF.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>
</asp:Content>

