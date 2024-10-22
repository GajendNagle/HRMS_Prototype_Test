<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HREmpRetirement.aspx.cs" Inherits="mis_Payroll_Mst_HREmpRetirment" %>

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
                        <li class="breadcrumb-item">Retirement or Separation</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-12">
                            <h4 class="card-title">Retirement or Separation /
                                सेवानिवृत्त या विभाजन</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <fieldset>
                        <legend>Retirement or Separation /
                                सेवानिवृत्त या विभाजन</legend>
                        <div class="row align-items-end">
                            <div class="col-md-6 col-lg-4 col-xl-3">
                                <div class="form-group">
                                    <label>
                                        Enter Employee Unique Id / 
                                        <br />
                                        कर्मचारी आईडी दर्ज करें
                                        <span style="color: red;">*</span></label>
                                    <input id="EmployeeID" type="number" class="form-control" placeholder="Enter Employee Unique Id" />

                                </div>
                            </div>

                            <div class="col-md-6">

                                <div class="form-group">

                                    <button type="button" class="btn btn-success btn-border" onclick="myFunction()">Search</button>
                                    <a href="Mst_HREmpRetirement.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
                            </div>
                        </div>


                        <div id="showfields" style="display: none;">
                            <div class="row align-items-end">

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Name-Code /
         <br />

                                            कर्मचारी का नाम-कोड</label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Riya Gupta-E02345" readonly />

                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Designation /
                                        <br />
                                            कर्मचारी विवरण
                                        </label>
                                        <input name="edescription" type="text" class="form-control" placeholder="Senior Project Manager" autocomplete="off" readonly />

                                    </div>
                                </div>


                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Current Posting Type /
                                        <br />
                                            कर्मचारी की वर्तमान तैनाती का प्रकार</label>
                                        <input type="text" class="form-control" placeholder="Full-Time" autocomplete="off" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            DDO/Sankul Name Code /
         <br />
                                            डीडीओ/संकुल का नाम कोड</label>
                                        <input type="text" class="form-control" placeholder="Govt.HSS BISTAN-2380298356" autocomplete="off" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            OIS Name Code /
         <br />
                                            OIS का नाम/कोड</label>
                                        <input type="text" class="form-control" placeholder="B.HSS BISTAN-2380245356" autocomplete="off" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            Panel /
         <br />
                                            पैनल</label>
                                        <input type="text" class="form-control" placeholder="HS-1 English" autocomplete="off" readonly />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Saperation Type /
                                        <br />
                                            कर्मचारी विभाजन प्रकार
                                        <span style="color: red">*</span></label>
                                        <select class="form-control select2" id="OIS" onchange="SeparationType()">
                                            <option>Select</option>
                                            <option value="1">Retirement</option>
                                            <option value="2">Deputation</option>
                                            <option value="3">Termination</option>
                                            <option value="4">Voluntary Retirement</option>
                                            <option value="5">Death</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3" id="DOR" style="display: none">
                                    <div class="form-group">
                                        <label>
                                            Date Of Retirement /
         <br />
                                            सेवानिवृत्ति की तारीख
                                        </label>
                                        <input type="text" class="form-control" placeholder="2024-12-31" autocomplete="off" readonly />

                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3" id="DOR1" style="display: none">
                                    <div class="form-group">
                                        <label>
                                            Date Of Retirement /
                                            <br />
                                            सेवानिवृत्ति की तारीख
                                        </label>
                                        <input type="date" class="form-control" />

                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            Date Of Saperation / 
                                        <br />
                                            विभाजन की तारीख<span style="color: red">*</span>
                                        </label>
                                        <input id="DateOfSaperation" type="date" class="form-control" />

                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            Notesheet Order No. /
                                        <br />
                                            नोटशीट आदेश संख्या<span style="color: red">*</span>
                                        </label>
                                        <input id="NotesheetOrderNo." placeholder="Notesheet Order No." type="number" class="form-control" />

                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            Notesheet Order Date / 

                                        <br />
                                            नोटशीट आदेश की तारीख<span style="color: red">*</span>
                                        </label>
                                        <input id="NotesheetOrderDate" type="date" class="form-control" />

                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3 mt-3">
                                    <div class="form-group">
                                        <label>
                                            Notesheet Order Upload / 
                                        <br />
                                            नोटशीट आदेश अपलोड<span style="color: red">*</span>
                                        </label>
                                        <input id="NotesheetOrderUpload" type="file" class="form-control" />

                                    </div>
                                </div>
                                <hr />
                                <div class="col-md-12 ">
                                    <button type="button" class="btn btn-success  btn-border Alert-Confirmation" onclick="showReport()">Save</button>
                                    <a href="Mst_HREmpRetirement.aspx" class="btn btn-outline-danger  w-lg btn-border">Clear</a>
                                </div>
                            </div>

                        </div>
                    </fieldset>


                    <fieldset id="ShowReport" style="display: none">
                        <legend>Employee Retirement Detail / कर्मचारी का सेवानिवृत्ति विवरण </legend>
                        <div class="row mt-4 justify-content-end">
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
                            <div class="table-responsive">
                                <table class="table text-center">
                                    <thead>
                                        <tr>
                                            <th>S.No./<br />
                                                सरल क्र.</th>
                                            <th>CheckBox/
                                                <br />
                                                चेकबॉक्स
                                            </th>
                                            <th>Employee Name-Code/<br />
                                                कर्मचारी का नाम-कोड</th>
                                            <th>Seperation Type/<br />
                                                सेवानिवृत्ति प्रकार</th>
                                            <th>DDO/Sankul Name-Code/
                                                <br />
                                                डीडीओ/संकुल नाम-कोड
                                            </th>
                                            <th>Panel/<br />
                                                पैनल
                                            </th>
                                            <th>Last Posting OIS/<br />
                                                अंतिम पोस्टिंग ओआईएस</th>
                                            <th>Last Posting Designation /<br />
                                                अंतिम पोस्टिंग पदनाम</th>
                                            <th>Date Of Seperation /<br />
                                                सेवानिवृत्ति की तिथि</th>
                                            <th>Order No./<br />
                                                आदेश संख्या</th>
                                            <th>Order Date/<br />
                                                आदेश तिथि</th>
                                            <th>View Order/<br />
                                                आदेश देखें</th>
                                            <th>Delete/<br />
                                                हटाएं</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr id="row1">
                                            <td>1</td>
                                            <td>
                                                <input type="checkbox"></td>
                                            <td>Ankit Sharma-ANS123</td>
                                            <td>Retirement</td>
                                            <td>B.HSS BISTAN-2380298356</td>
                                            <td>HS-2 Hindi</td>
                                            <td>Greenwood High School(274509837)</td>
                                            <td>Senior Manager</td>
                                            <td>2024-01-15</td>
                                            <td>123/2024</td>
                                            <td>2024-01-12</td>
                                            <td class="text-center align-middle">

                                                <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            <td><a role="button" class="btn btn-danger btn-rounded" onclick="DeleteButton()"><i class="fa fa-trash"></i></a></td>

                                        </tr>
                                        <tr id="row2">
                                            <td>2</td>
                                            <td>
                                                <input type="checkbox"></td>
                                            <td>Priya Mehta-E0345</td>
                                            <td>Retirement</td>
                                            <td>B.HSS BISTAN-2380298356</td>
                                            <td>HS-2 Hindi</td>
                                            <td>DEO Phanda (4627883794)</td>
                                            <td>Head OfficeDirector</td>
                                            <td>2023-11-30</td>
                                            <td>564/2023</td>
                                            <td>2023-11-25</td>
                                            <td class="text-center align-middle">

                                                <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            <td><a role="button" class="btn btn-danger btn-rounded" onclick="DeleteButton2()"><i class="fa fa-trash"></i></a></td>
                                        </tr>

                                        <tr id="row3">
                                            <td>3</td>
                                            <td>
                                                <input type="checkbox"></td>
                                            <td>Karan Yadav-E0908</td>
                                            <td>Retirement</td>
                                            <td>B.HSS BISTAN-2380298356</td>
                                            <td>HS-2 Hindi</td>
                                            <td>Riverside Secondary School(2014558954)</td>
                                            <td>Assistant Manager</td>
                                            <td>2023-10-20</td>
                                            <td>789/2023</td>
                                            <td>2023-10-18</td>
                                            <td class="text-center align-middle">

                                                <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            <td><a role="button" class="btn btn-danger btn-rounded" onclick="DeleteButton3()"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr id="row4">
                                            <td>4</td>
                                            <td>
                                                <input type="checkbox"></td>
                                            <td>Sakshi Gupta-E0123</td>
                                            <td>Resignation</td>
                                            <td>B.HSS BISTAN-2380298356</td>
                                            <td>HS-2 Hindi</td>
                                            <td>DEO Phanda (4627809658)</td>
                                            <td>HR Manager</td>
                                            <td>2024-02-05</td>
                                            <td>452/2024</td>
                                            <td>2024-02-01</td>
                                            <td class="text-center align-middle">

                                                <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            <td><a role="button" class="btn btn-danger btn-rounded" onclick="DeleteButton4()"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr id="row5">
                                            <td>5</td>
                                            <td>
                                                <input type="checkbox"></td>
                                            <td>Rahul Kumar-E0678</td>
                                            <td>Termination</td>
                                            <td>B.HSS BISTAN-2380298356</td>
                                            <td>HS-2 Hindi</td>
                                            <td>Government Girls High School (5638094109)</td>
                                            <td>Senior Executive</td>
                                            <td>2023-09-15</td>
                                            <td>678/2023</td>
                                            <td>2023-09-12</td>
                                            <td class="text-center align-middle">

                                                <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            <td><a role="button" class="btn btn-danger btn-rounded" onclick="DeleteButton5()"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr id="row6">
                                            <td>6</td>
                                            <td>
                                                <input type="checkbox"></td>
                                            <td>Mohit Verma-E0567</td>
                                            <td>Resignation</td>
                                            <td>B.HSS BISTAN-2380298356</td>
                                            <td>HS-2 Hindi</td>
                                            <td>Jawahar Navodaya Vidyalaya (906734801)</td>
                                            <td>Marketing Head</td>
                                            <td>2024-05-10</td>
                                            <td>234/2024</td>
                                            <td>2024-05-08</td>
                                            <td class="text-center align-middle">

                                                <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            <td><a role="button" class="btn btn-danger btn-rounded" onclick="DeleteButton6()"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr id="row7">
                                            <td>7</td>
                                            <td>
                                                <input type="checkbox"></td>
                                            <td>Akash Tripathi-E0235</td>
                                            <td>Retirement</td>
                                            <td>B.HSS BISTAN-2380298356</td>
                                            <td>HS-2 Hindi</td>
                                            <td>Government Higher Secondary School(2076139076)</td>
                                            <td>Assistant Manager</td>
                                            <td>2023-10-20</td>
                                            <td>789/2023</td>
                                            <td>2023-10-18</td>
                                            <td class="text-center align-middle">

                                                <button type="button" class="btn btn-info px-5" data-bs-toggle="modal" data-bs-target="#exampleModal2">View</button></td>
                                            <td><a role="button" class="btn btn-danger btn-rounded" onclick="DeleteButton7()"><i class="fa fa-trash"></i></a></td>
                                        </tr>

                                    </tbody>
                                </table>

                            </div>
                        </div>

                        <div class="row mt-4 justify-content-center">
                            <button type="button" class="btn btn-success btn-border Alert-Generate">Generate Order</button>
                        </div>
                    </fieldset>
                </div>

            </div>
        </div>
    </div>

    <div class="modal  fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">
                    <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel2">Employee Retirement Detail (Report)</h3>
                    <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <img src="../../img/10thMarksheet.jpg" />
                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            // Use the correct ID to fetch the Employee ID element
            var EmployeeID = document.getElementById("EmployeeID");
            var showfields = document.getElementById("showfields");

            if (EmployeeID.value === "") {
                showfields.style.display = 'none';
            } else {
                showfields.style.display = 'block';
            }
        }
    </script>

    <script>
        function showReport() {
            var ShowReport = document.getElementById("ShowReport").style.display = 'block';
        }
    </script>
    <script>
        function DeleteButton() {
            var row1 = document.getElementById("row1").style.display = 'none';
        }
    </script>
    <script>
        function DeleteButton2() {
            var row2 = document.getElementById("row2").style.display = 'none';
        }
    </script>
    <script>
        function DeleteButton3() {
            var row3 = document.getElementById("row3").style.display = 'none';
        }
    </script>
    <script>
        function DeleteButton4() {
            var row4 = document.getElementById("row4").style.display = 'none';
        }
    </script>
    <script>
        function DeleteButton5() {
            var row5 = document.getElementById("row5").style.display = 'none';
        }
    </script>
    <script>
        function DeleteButton6() {
            var row6 = document.getElementById("row6").style.display = 'none';
        }
    </script>
    <script>
        function DeleteButton7() {
            var row7 = document.getElementById("row7").style.display = 'none';
        }
    </script>


    <script>
        function SeparationType() {
            var ForwordTo = document.getElementById("OIS").value;
            if (ForwordTo == "1") {
                document.getElementById('DOR').style.display = "block";
                document.getElementById('DOR1').style.display = "none";
            }
            else if (ForwordTo == "2") {

                document.getElementById('DOR1').style.display = "block";
                document.getElementById('DOR').style.display = "none";
            }
            else if (ForwordTo == "3") {

                document.getElementById('DOR1').style.display = "block";
                document.getElementById('DOR').style.display = "none";
            } else if (ForwordTo == "4") {

                document.getElementById('DOR1').style.display = "block";
                document.getElementById('DOR').style.display = "none";
            } else if (ForwordTo == "5") {

                document.getElementById('DOR1').style.display = "block";
                document.getElementById('DOR').style.display = "none";
            }
            else {
                document.getElementById('DOR1').style.display = "none";
                document.getElementById('DOR').style.display = "none";
            }
        }
    </script>

</asp:Content>

