<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MessageInformation.aspx.cs" Inherits="mis_HRMS_MessageInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
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
                            <a href="#DashboardDisplay" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Dashboard Display Circulars-Orders</span></a>
                        </li>
                        <li class="breadcrumb-item">Message Information
                        </li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                <img src="../../img/Circular%20Order.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-7">
                    <h4 class="card-title">Message Information
                      / संदेश सूचना

                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Important Note / महत्वपूर्ण लेख</legend>
                <ul class="font-16">
                    <li><b>Please Upload File in PDF Formate.</b></li>
                    <li><b>File Size Shuld be Less Than 400 kb.</b></li>
                    <li><b>Don't Upload .doc, .xls, .jpg or Any Other Formate File.</b></li>
                    <li><b>Click Here to Download PDF Crater Software.</b></li>
                </ul>
            </fieldset>

            <fieldset>
                <legend>Message Information / संदेश सूचना
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Message Title<br />
                                संदेश का शीर्षक दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Message Title" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Message From<br />
                                संदेश प्रेषक दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Message Form" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Message Date<br />
                                संदेश दिनांक दर्ज करें<span style="color: red">*</span></label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Priority<br />
                                प्राथमिकता का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Normal">Normal</option>
                                <option value="Medium">Medium</option>
                                <option value="High">High</option>
                                <option value="Very High">Very High</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Message Details<br />
                                संदेश का विवरण दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Message Details" />
                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Upload File<br />
                                फ़ाइल अपलोड करें<span style="color: red">*</span></label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                            <button type="button" class="Alert-Confirmation btn btn-success btn w-lg btn-border">Save</button>
                            <a href="EventInformation.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                        </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Message Information Details / संदेश सूचना का विवरण
                </legend>
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
                            <table class="table text-center table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>ID /             
                                                    <br />
                                            आई डी  </th>
                                        <th>Message Title /  
                                                    <br />
                                            संदेश शीर्षक</th>
                                        <th>Message From /   
                                                    <br />
                                            संदेश प्रेषक</th>
                                        <th>Message Date /   
                                                    <br />
                                            संदेश दिनांक  </th>
                                        <th>view Upload File /
                                                    <br />
                                            अपलोड फ़ाइल देखें  </th>
                                        <th>Action          
                                                    <br />
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>

                                        <td>1</td>
                                        <td>Message From Chief Secretary</td>
                                        <td>Chief Secretary</td>
                                        <td>09-03-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>

                                        <td>2</td>
                                        <td>Message From Hon. Minister</td>

                                        <td>Hon. Minister</td>
                                        <td>15-03-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>

                                        <td>3</td>
                                        <td>Information Of Hostel, Ashram And School </td>

                                        <td>C td</td>
                                        <td>25-03-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>

                                    <tr id="news1" hidden>

                                        <td>4</td>
                                        <td>Sadbhawna Diwas</td>

                                        <td>Deo Betul</td>
                                        <td>01-04-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr id="news2" hidden>

                                        <td>5</td>
                                        <td>Kartavya Parv</td>
                                        <td>Gawande B R ZSK Chhindwara</td>
                                        <td>10-04-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr id="news3" hidden>

                                        <td>6</td>
                                        <td>Apeel</td>
                                        <td>DPC Mandla</td>
                                        <td>01-02-2024</td>
                                        <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>&emsp;&emsp;
                                        <a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <button type="button" id="view" class="btn btn-success btn-border" onclick="myFunction()">View More...</button>
                </div>
            </fieldset>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            let element1 = document.getElementById("news1");
            let element2 = document.getElementById("news2");
            let element3 = document.getElementById("news3");
            let button = document.getElementById("toggleButton");
            let view = document.getElementById("view");

            let hidden1 = element1.getAttribute("hidden") !== null;
            let hidden2 = element2.getAttribute("hidden") !== null;
            let hidden3 = element3.getAttribute("hidden") !== null;

            if (hidden1 && hidden2 && hidden3) {
                element1.removeAttribute("hidden");
                element2.removeAttribute("hidden");
                element3.removeAttribute("hidden");
                view.innerText = "View Less...";
            }
            else {
                element1.setAttribute("hidden", "hidden");
                element2.setAttribute("hidden", "hidden");
                element3.setAttribute("hidden", "hidden");
                view.innerText = "View More...";
            }
        }
    </script>
</asp:Content>

