<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Promotion.aspx.cs" Inherits="mis_Transaction_Promotion" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        /* #EmployeeDetails1 {
            display: none;
        }*/

        #EmployeeDetails2 {
            display: none;
        }

        #showsavebtn {
            display: none;
        }

        #note {
            color: red;
        }
       /* #EmployeeDetails1{
            ;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Promotion Order Reports</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Promotion" title="click to go on">Promotion</a></li>
                        <li class="breadcrumb-item active">Promotion Order Reports</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div>
                    <fieldset>
                        <legend>Promotion Order Reports</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>From Date / दिनांक से <span style="color: red">*</span></label>
                                    <input name="ename" type="date" class="form-control" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>To Date / दिनांक तक <span style="color: red">*</span></label>
                                    <input name="ename" type="date" class="form-control" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3 mt-4">
                                <div class="form-group">
                                    <%--<button type="button" class="btn btn-success btn-rounded" onclick="checkDropdown()">Search</button>--%>
                                    <asp:button runat="server" class="btn btn-success btn-rounded" OnClick="btnSearch_Click" Text="Search" ID="btnSearch" />
                                    <a href="Promotion.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>

                <div id="EmployeeDetails1" runat="server" visible="false">
                    <fieldset>
                        <legend>Employee Details</legend>
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
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <%--<th>Action</th>--%>
                                                <th>Employee ID-Name</th>
                                                <th>Payment Authority</th>
                                                <th>School</th>
                                                <th>Previous Designation</th>
                                                <th>New Designation</th>
                                                <th>Promotion order No.</th>
                                                <th>Promotion order Issued By</th>
                                                <th>Request Date</th>
                                                <th>Remark</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tr>
                                            <th>1</th>
                                            <%--<td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>AK4891-Ashok Kumar</td>
                                            <td>HSS MADHUSUDANGARH RAGHOGARH (1362003016)</td>
                                            <td>GOVT HS UKAVAD (2307091906)</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>Madhyamik Shikshak</td>
                                            <td>5212</td>
                                            <td>JD Gwalior</td>
                                            <td>14/05/2024</td>
                                            <td>ok</td>
                                            <td>Approve</td>
                                        </tr>
                                        <tr>
                                            <th>2</th>
                                            <%--<td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>AK4053-Giriraj Kishir</td>
                                            <td>HSS MADHUSUDANGARH RAGHOGARH (1362003016)</td>
                                            <td>GOVT HS Mayo (2307554826)</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>Madhyamik Shikshak</td>
                                            <td>5222</td>
                                            <td>JD Gwalior</td>
                                            <td>25/05/2024</td>
                                            <td>ok</td>
                                            <td>Approve</td>
                                        </tr>
                                        <tr>
                                            <th>3</th>
                                            <%--<td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>AK4868-Rodu Ram</td>
                                            <td>HSS MADHUSUDANGARH RAGHOGARH (1362003016)</td>
                                            <td>Doon School Dehradun (2370544785)</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>Madhyamik Shikshak</td>
                                            <td>5512</td>
                                            <td>JD Gwalior</td>
                                            <td>14/05/2024</td>
                                            <td>ok</td>
                                            <td>Hold</td>
                                        </tr>
                                        <tr>
                                            <th>4</th>
                                            <%-- <td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>BW4800-Chanchal Kumar</td>
                                            <td>HSS MADHUSUDANGARH RAGHOGARH (1362003016)</td>
                                            <td>RPVV School (2307091906)</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>Madhyamik Shikshak</td>
                                            <td>5278</td>
                                            <td>JD Gwalior</td>
                                            <td>18/04/2024</td>
                                            <td>ok</td>
                                            <td>Hold</td>
                                        </tr>

                                    </table>
                                </div>
                            </div>
                            <%--    <div class="col-md-12">
                                <div>
                                    <p id="note"><b>Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                                </div>
                                <br />
                            </div>
                            <div class="col-md-12" id="showsavebtn">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Order No. / आदेश नंबर<span style="color: red">*</span></label>

                                            <input name="ename" disabled="disabled" placeholder="58965" type="text" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Order Date / आदेश दिनांक<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Effective Date / प्रभावी दिनांक<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Document / दस्तावेज़<span style="color: red">*</span></label>
                                            <input name="ename" type="file" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 mt-2">
                                        <div class="form-group">
                                            <button type="button" class="Alert-Save btn btn-success btn-rounded w-100 btn-block">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                    </fieldset>
                </div>
                <div id="EmployeeDetails2">
                    <fieldset>
                        <legend>Order Details</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Order No.</th>
                                            <th>Order Date</th>
                                            <th>Effective Date</th>
                                            <th>Generate Letter</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>58965</td>
                                            <td>04/04/2023</td>
                                            <td>05/02/2023</td>
                                            <td>
                                                <button onclick="openPDF()" type="button" class=" btn "><i class="fa fa-download dnldIcon"></i></button>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation Type</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Type </strong>from the dropdown and the data will be populated from the <strong>Designation Type Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Name </strong>from the dropdown and the data will be populated from the <strong>Designation Name Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Employee Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Employee Name </strong>from the dropdown and the data will be populated from the <strong>Employee Master</strong>.</li>
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
                                <li><strong>Excel</strong>
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
                                </li>
                                <li><strong>Action</strong>
                                    <ul>
                                        <li>To approve the application, after clicking on the checkbox, the user can fill Order details like <strong>Order number(Order number is auto generated), Order Date, and Document</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Save</strong>
                                    <ul>
                                        <li>User Can Click Save Button.</li>
                                        <li>On save button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Generate Letter</strong>
                                    <ul>
                                        <li>User should be able to click on Document Icon.</li>
                                        <li>After clicking on the Document Icon a <strong>Promotion Letter</strong> will open in another tab.</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script>
        function HideShow() {

            var x = document.getElementById("EmployeeDetails1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>--%>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Promotion-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>

    <script>
        function showhidesavebtn() {
            var checkbox1 = document.getElementById("checkbox1");
            var checkbox2 = document.getElementById("checkbox2");
            var showsavebtn = document.getElementById("showsavebtn");
            if (checkbox1.checked || checkbox2.checked) {
                showsavebtn.style.display = "block"
            }
            else if (checkbox2.checked === false && checkbox1.checked === false) {
                showsavebtn.style.display = "none"
            }
            else {
                showsavebtn.style.display = "block"
            }
        }
    </script>
    <script>

</script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
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
                                text: 'Record Saved Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");
                            if (x.style.display === "none") {
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
</asp:Content>

