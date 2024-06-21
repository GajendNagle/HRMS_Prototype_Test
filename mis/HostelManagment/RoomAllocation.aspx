<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RoomAllocation.aspx.cs" Inherits="mis_HostelManagment_RoomAllocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
     <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor"></h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HostelManagement" title="click to go on">Hostel Management</a></li>
                    <li class="breadcrumb-item active"><a href="Mst_HostelRegistration.aspx" title="click to go on">Room Allocation</a></li>
                </ol>
            </div>
        </div>
    </div>
    <fieldset>
        <legend>Room Allocation/ कक्ष आवंटन</legend>
        <div class="row align-items-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label >
                        Select Student Name(ID)/
                        <br />
                        छात्र नाम(आई.डी) चयन करे</label>
                    <select class="form-control select2">
                        <option value="1"> Raadha Dawar(103201441)</option>
                        <option value="2"> JEANA RAWAT(188599791)</option>
                        <option value="3"> Ramesh Nargawa (108875539)</option>
                        <option value="4"> SANGEETA DAWAR (112772962)</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label >
                        Category/<br />
                        वर्ग
                    </label>
                   <input type="text" class="form-control" Value="OBC" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label >
                        Gender/<br />
                        लिंग
                    </label>
                    <input type="text" class="form-control" Value="Female" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label >
                         Academic Year/<br />
                        शैक्षणिक वर्ष </label>
                    <input type="text" class="form-control" Value="2024-25" />
                       <%--<input maxlength="4" autocomplete="off" id="a1" placeholder="2024-25" class="form-control datepickerYear" type="text" data-val="true" required="required" />--%>
                </div>
            </div>
        </div>
        <div class="row align-items-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label >
                        Select Hostel Name/
                        <br />
                        छात्रावास का नाम चयन करे</label>
                    <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="1">KGBV Girls Hostel</option>
                        <option value="2">KGBV Boys Hostel</option>
                        <option value="3">KGBV Combine Hostel</option>
                    </select>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Select Room Type/
   <br />
                        कक्ष प्रकार चयन करे
                    </label>
                    <select class="form-control select2">
                        <option value="Double">Double</option>
                        <option value="Single">Single</option>
                        <option value="Triple">Triple</option>
                        <option value="Quad">Quad</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Select Room Number/
   <br />
                        कक्ष नंबर चयन करे
                    </label>
                    <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="1">101</option>
                        <option value="2">102</option>
                        <option value="3">103</option>
                        <option value="4">104</option>
                        <option value="5">105</option>
                        <option value="6">106</option>
                        <option value="7">201</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Select Bed Number/
   <br />
                        बिस्तर नंबर चयन करे
                    </label>
                    <select class="form-control select2">
                        <option selected="selected" value="0">--Select --</option>
                        <option value="2">2011  </option>
                        <option value="1">2012</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row align-items-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Room Rent Per Month/<br />
                        प्रति माह कक्ष का किराया
                    </label>
                    <input type="text" class="form-control" value="400/-" />
                </div>
            </div>
             <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Availing Mess Facility/<br />
                        मेस सुविधा ले रहा है
                    </label>
                   <select class="form-control select2">
                        <option value="2">Yes  </option>
                        <option value="1">No</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                         Mess Charges/<br />
                         मेस शुल्क
                    </label>
                    <input type="text" class="form-control" value="1000/-" />
                </div>
            </div>
        </div>
        <hr />
        <div class="col-md-12">
            <div class="form-group text-center">
                <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border" onclick="document.getElementById('FS_Details').style.display = 'block'">Save</button>
                <a href="RoomAllocation.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
            </div>
        </div>



    </fieldset>
    <fieldset id="FS_Details" style="display: none">
        <legend>Details / विवरण </legend>
        <div class="row justify-content-end">
            <div class="col-md-4 text-end">
                <div class="form-group">
                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                </div>
            </div>
        </div>
        <div class="row align-items-end">

            <div class="col-lg-12" runat="server" id="dvStudentDetails">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr role="row">
                                        <th>Sr. No.
                                    <br />
                                            क्र.सं.
                                        </th>
                                        <th>Student Name(ID) 
                                            <br />
                                            छात्र नाम(आई.डी)</th>
                                        <th>Category
                                            <br />
                                            वर्ग</th>
                                        <th>Gender 
                                            <br />
                                            लिंग</th>
                                        <th>Academic Year 
                                            <br />
                                            शैक्षणिक वर्ष</th>
                                        <th>Hostel Name 
                                            <br />
                                            छात्रावास का नाम
                                        </th>
                                        <th>Room Type 
                                            <br />
                                            कक्ष प्रकार</th>
                                        <th>Room No. 
                                            <br />
                                            कक्ष नंबर
                                        </th>
                                        <th>Bed No. 
                                            <br />
                                            बिस्तर नंबर
                                        </th>
                                         <th>Room Rent 
                                            <br />
                                            कक्ष किराया
                                        </th>
                                         <th>Availing Mess Facility 
                                            <br />
                                            मेस सुविधा ले रहा है
                                        </th>
                                         <th>Current Mess Fees 
                                            <br />
                                            वर्तमान मेस शुल्क
                                        </th>
                                        <th scope="col">Action
                                            <br />
                                            कार्रवाई </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td>1</td>
                                        <td> SANGEETA DAWAR(112772962)</td>
                                        <td>ST</td>
                                        <td>Female</td>
                                        <td>2024-25</td>
                                        <td>KGBV Girls Hostel</td>
                                        <td>Double</td>
                                        <td>201</td>
                                        <td>2011</td>
                                        <td>400/-</td>
                                        <td>Yes</td>
                                        <td>1000/-</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr role="row" class="odd">
                                        <td>1</td>
                                        <td> Radha Yadav(112772963)</td>
                                        <td>ST</td>
                                        <td>Female</td>
                                        <td>2024-25</td>
                                        <td>KGBV Girls Hostel</td>
                                        <td>Double</td>
                                        <td>201</td>
                                        <td>2012</td>
                                       <td>400/-</td>
                                        <td>No</td>
                                        <td>NA</td>
                                        <td><a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>
                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </fieldset>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
      <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear2").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            //setDefaultFinancialYear();
        });</script>
</asp:Content>

