<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_CancelTransferOrder.aspx.cs" Inherits="mis_Transaction_Trn_CancelTransferOrder" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
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
        #Editmodal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            /* width: 100%;
    height: 100%;*/
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            /* padding-top: 60px;*/
        }

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
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Cancel Transfer Order<br />
                    स्थानांतरण आदेश रद्द करें</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                        <li class="breadcrumb-item active">Cancel Transfer Order</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <nav class="navbar navbar-expand-lg topbar " id="mynav">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse " id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                                <a class="nav-link  text-white " href="Trn_CancleTransferOrderApplication.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                <a class="nav-link  text-white " href="Trn_CancelTransferOrder.aspx" role="button"><b class="font-16 font-bold">Cancel Transfer Order</b></a>
                                <a class="nav-link  text-white " href="CanceledTransferOrderPrint.aspx" role="button"><b class="font-16 font-bold">Print Cancel Transfer Order</b></a>
                            </ul>

                        </div>
                    </div>
                </nav>
                <br />
                <br />


                <fieldset>
                    <legend>Cancel Transfer Order</legend>
                    <div class="row">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Choose an option<span style="color: red">*</span></label>
                                <select id="dropdown" onchange="showTextBox()" class="form-control">
                                    <option value="Select">Select</option>
                                    <option value="Order No">Order No.</option>
                                    <option value="Employee ID">Employee-ID</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="orderNoInput" style="display: none;">
                            <div class="form-group">
                                <label>Order No.<span style="color: red">*</span></label>
                                <input type="text" class="form-control" placeholder="Enter Order No.">
                            </div>
                        </div>
                        <div class="col-md-3" id="employeeIDInput" style="display: none;">
                            <div class="form-group">
                                <label>Employee-ID<span style="color: red">*</span> </label>
                                <input type="text" class="form-control" placeholder="Enter Employee-ID">
                            </div>
                        </div>

                        <div class="col-md-3 mt-4">
                            <div class="form-group ">
                                <button type="button" onclick="HideShow()" class=" btn btn-success btn-rounded ">Search</button>
                                <a href="Trn_CancelTransferOrder.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    </div>
                </fieldset>
                <div id="EmployeeDetails1">
                    <fieldset>
                        <legend>Employee Transfer Details</legend>

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
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th>Action</th>
                                            <th>Sr.No.</th>
                                            <th>Employee ID-Name</th>
                                            <th>Order No.</th>
                                            <th>Order Date</th>
                                            <th>Esixting Office Name</th>
                                            <th>Existing Designation Name</th>
                                            <th>Existing Posting Date</th>
                                            <th>Current Location</th>
                                            <th>New Office Name</th>
                                            <th>New Designation Name</th>
                                            <th>New Effective Date</th>
                                            <th>Promoted location</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <th>1</th>
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
                                        </tr>
                                        <%-- <tr>
                                            <td>
                                                <input id="checkbox2" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <th>2</th>
                                            <td>234343-Sanjay Kumar</td>
                                            <td>105/2023-24/31859</td>
                                            <td>02-09-23</td>
                                            <td>Head Office</td>
                                            <td>Teacher</td>
                                            <td>05-01-24</td>
                                            <td class="txt-link">
                                                <asp:LinkButton runat="server" ID="LinkButton2" OnClick="LBUpadateInfo_Click">23445656985</asp:LinkButton>
                                            </td>
                                            <td>Head Office</td>
                                            <td>Principal</td>
                                            <td>14-09-23</td>
                                            <td class="txt-link">
                                                <asp:LinkButton runat="server" ID="LinkButton3" OnClick="LBUpadateInfo_Click">23445656658</asp:LinkButton>
                                            </td>
                                        </tr>--%>
                                        <%--   <tr>
                                            <td>1</td>
                                            <td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>
                                            <td>Head Office</td>
                                            <td>Shri Rajesh Tiwari</td>
                                            <td>Teacher</td>
                                            <td>DPI</td>
                                            <td>Hindi</td>
                                            <td>15000.00</td>
                                        </tr>--%>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <p id="note"><b>Cancel The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                                </div>
                                <br />
                            </div>
                        </div>
                        <%-- <div id="btnCancelorder">
                            <div class="row justify-content-center">
                                <div class="col-md-12 text-center">
                                    <div class="form-group ">
                                        <button type="button" class=" btn btn-danger" onclick="openBootstrapModalreg()">Cancel Order</button>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </fieldset>
                    <fieldset id="btnCancelorder">
                        <legend>Generate Cancel Order</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Cancel Order No. / आदेश नंबर<span style="color: red">*</span></label>
                                    <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." value="546545" readonly />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Date Of Cancellation / रद्द करने की दिनांक<span style="color: red">*</span></label>
                                    <input name="ename" type="date" class="form-control" autocomplete="off" />
                                </div>
                            </div>
                   
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Upload Documents<span style="color: red">*</span></label>
                                    <input name="ename" type="file" class="form-control" autocomplete="off" />
                                </div>
                            </div>
                      
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Remark</label>
                                    <input type="text" class="form-control" placeholder="Enter Remark" autocomplete="off" />
                                </div>
                            </div>
                          
                              <div class="col-md-3" id="generateorder" style="display: none;">
                                <div class="form-group">
                                      <button type="button" class="btn btn-success btn-rounded" data-bs-toggle="modal" data-bs-target="#staticBackdrop">GET DSC</button>
                                </div>
                            </div>
                        </div>
                       <div class="row">
                           <div class="col-md-12">
                               <span style="color:red">नोट:- कर्मचारियों का स्थानांतरण का आदेश निरस्त करने हेतु डिजिटल सिग्नेचर का उपयोग करें |</span>
                           </div>
                       </div>
                    </fieldset>


                </div>

                <fieldset>
                    <legend>Description</legend>
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
    </div>

    <!-- Editable  modal content -->
    <div id="Editmodal" class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-xxl" style="width: 100%;">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myLargeModalLabel2">School Details</h4>
                    <button type="button" class="btn-close" onclick="CloseModal()" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>School Basic Information</legend>

                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="true" placeholder="23445656546	"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="Kamla nehru school" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                    <asp:TextBox runat="server" Placeholder="कमला नेहरु स्कूल" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Division<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                        <asp:ListItem>2-Indore</asp:ListItem>
                                        <asp:ListItem>3-Ujjain</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">District<span style="color: red;"> *</span></label>
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
                                    <label class="font-bold">Block<span style="color: red;"> *</span></label>
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
                                    <label class="font-bold">Location<span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>1-Rural</asp:ListItem>
                                        <asp:ListItem Selected="True">2-Urban</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Assembly <span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>Govindpura</asp:ListItem>
                                        <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Parliamentary<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Habitation </label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">Berasia</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Board<span style="color: red;"> *</span></label>
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
                                    <label class="font-bold">School Type<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem>1-Boy</asp:ListItem>
                                        <asp:ListItem>2-Girls</asp:ListItem>
                                        <asp:ListItem>3-Co-Ed</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>School Category<span style="color: red;"> *</span></label>
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
                                    <label>School Category Details<span style="color: red;"> *</span></label>
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
                                    <label class="font-bold">Management Group<span style="color: red;"> *</span></label>
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
                                    <label class="font-bold">School Management<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">1-Department of Education (DOE)</asp:ListItem>
                                        <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                        <asp:ListItem>3-Local Body </asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">In-Charge Type<span style="color: red;"> *</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="t">1-Head Master / Principal </asp:ListItem>
                                        <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                        <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">IN-Charge Unique Id<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="68571" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">IN-Charge Name<span style="color: red;"> *</span></label>
                                    <asp:TextBox runat="server" placeholder="Mr.Ramcharan" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">IN-Charge Mobile Number <span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="9895989654" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Year of Establishment<span style="color: red;">*</span></label>
                                    <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="t">2015</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Minority Community <span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>

                                        <asp:ListItem Selected="true">2-Sikh</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Medium<span style="color: red;">*</span></label>
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
                        <legend>School Address Information</legend>


                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Address (Line 1)<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Address (Line 2)</label>
                                    <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Pin Code<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="462010" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Landline Number<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="0755 1251 1258" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Email ID<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" Placeholder="KNS@gmal.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Website</label>
                                    <asp:TextBox runat="server" Placeholder="KNSSchool.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">School Shift <span style="color: red;">*</span></label>
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
                                    <label class="font-bold">Is School Residential<span style="color: red;">*</span></label>
                                    <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                        <asp:ListItem>-Select-</asp:ListItem>
                                        <asp:ListItem Selected="True">Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>



                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="font-bold">Special School<span style="color: red;">*</span></label>
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
                                    <label class="font-bold">School Status<span style="color: red;">*</span></label>
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
                                    <label class="font-bold">hostel Attach<span style="color: red;">*</span></label>
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
                        <legend>School Bank Information</legend>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="font-bold">School Bank Account Name<span style="color: red;">*</span></label>
                                    <asp:TextBox ID="TextBox5" placeholder="Bank Of Baroda" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="font-bold">School Bank Account Number<span style="color: red;">*</span></label>
                                    <asp:TextBox ID="TextBox7" Placeholder="051121542585" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <div class="form-group">
                                    <label class="font-bold">IFSC Code<span style="color: red;">*</span></label>
                                    <asp:TextBox ID="TextBox8" Placeholder="BARB0ASHOKA" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <div class="row">

                        <div>
                            <%-- <asp:Button ID="Button4" CssClass="btn btn-success btn-rounded " runat="server" OnClick="Button1_Click" Text="Update" />--%>
                            <%--<button type="button" class="btn btn-success" onclick="CloseModal()">Update</button>--%>
                            <button type="button" class="btn btn-danger waves-effect text-start text-white" onclick="CloseModal()">Close</button>
                        </div>
                    </div>



                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

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
                            <label>OTP(one time Password)</label>
                            <input class="form-control" placeholder="Enter Varification Code" />
                        </div>

                    </fieldset>
                    <div class="modal-footer text-center">
                        <%--             <button type="button" class=" Alert-Save btn btn-success btn-rounded Alert-Save " onclick="myFunction()">Approve</button>--%>
                        <button type="button" class="btn btn-success Alert-CancelOrder" data-bs-dismiss="modal">Submit</button>
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Close</button>
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

