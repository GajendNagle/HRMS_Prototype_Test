<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_TenderDetail.aspx.cs" Inherits="mis_HRMS_Mst_TenderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">


    <style>
        /* Style for the textarea */
        #workdescription {
            resize: vertical;
            min-height: 50px; /* Set a minimum height */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Tender Order Information </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                   <%-- <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                    <li class="breadcrumb-item active"><a href="ApplicationForVoluntaryTransfer.aspx">Application For Voluntary Transfer</a></li>--%>
                    <li class="breadcrumb-item active">Tender Order Information </li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                            <%--                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b>Mutual Transfer Application</b></strong></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_MutualTransferApply.aspx">Mutual Transfer Apply</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferDraftApplication.aspx">Print Draft Application or Update Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransLockApplication.aspx">Lock Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferPrintApplication.aspx">Print Application</a></li>
                                </ul>
                            </li> --%>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="AllOrderDetails.aspx" role="button" aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="Mst_CircularOrder.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Circulars</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="Mst_Order.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Orders</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="Mst_TenderDetail.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Tenders</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="PhotoAlbumDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Photos</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="NewsDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;News</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="EventInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Events</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark font-16 text-white" href="MessageInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;Messages</b></strong></a>
                            </li>

                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />
            <div class="row">
                <div class="col-md-12 text-center">
                    <h4><b><b>Upload and Publish Tenders on Education Portal</b></b></h4>
                    <h5><b><b>Help: All offices can upload the details of the tenders released by them for wider dissemination and publicity.</b></b></h5>
                </div>
            </div>


            <fieldset>
                <legend>Important Note </legend>
                <p class="text-bold font-16">
                    <b>1):- Please Upload File In PDF Formate.</b>
                    <br />
                    <b>2):- File Shize Should Be Less Than 400 KB.<br />
                    </b>
                    <b>3):-Don't upload .doc, .xls, .jpg or any other format file.</b>
                    <br />
                    <%--4):-Click here to download PDF Creater software.--%>
                </p>
            </fieldset>
            <fieldset>
                <legend>Tender Order 
                </legend>
                <div class="row">
                    <div class="col-md-9">
                        <div class="form-group">
                            <label>
                                Name and Address of The Issuing Office
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Name and Address of The Issuing Office" />

                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tender  Issue Date</label>
                            <input class="form-control" type="date" />
                        </div>


                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Last Date Of Submission</label>
                            <input class="form-control" type="date" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tender Expiry Date</label>
                            <input class="form-control" type="date" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tender Refrence No.</label>
                            <input type="text" class="form-control" placeholder="Enter Tender Refrence No." />
                        </div>
                    </div>



                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Tender Type</label>
                            <select id="" name="circular-category" class="form-control">
                                <option value="Academic">Select</option>
                                <option value="VIRTUAL Class">New</option>
                                <option value="Vocation Training Centers">Ammendmend</option>
                                <option value="Vocational Education">Cancellation</option>
                            </select>
                        </div>
                    </div>



                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tender Title</label>
                            <input class="form-control" placeholder="Enter Tender Title" />
                        </div>


                    </div>





                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tender Value</label>
                            <input class="form-control" placeholder="Enter Tender Value" />
                        </div>


                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>EMD</label>
                            <input class="form-control" type="text" placeholder="Enter EMD" />
                        </div>


                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Document Cost</label>
                            <input class="form-control" type="text" placeholder="Enter Document Cost" />
                        </div>


                    </div>



                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Work Description</label>
                            <textarea class="form-control" id="workdescription" placeholder="Enter Work Description" oninput="autoResize(this)"></textarea>

                        </div>


                    </div>

                    <script>
                        // JavaScript function to automatically resize the textarea
                        function autoResize(textarea) {
                            textarea.style.height = 'auto'; // Reset height to auto
                            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
                        }
                    </script>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Search Key Words</label>
                            <input class="form-control" type="text" placeholder="Enter Search Key Words " />
                        </div>


                    </div>


                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Tender Issued By
                            </label>
                            <select id="tender_issued_by" name="tender_issued_by" class="form-control">
                                <option value="School Education Department">School Education Department</option>
                                <option value="Directorate of Public Instruction">Directorate of Public Instruction</option>
                                <option value="Rajya Shiksha Kendra">Rajya Shiksha Kendra</option>
                                <option value="Commissioner, Tribal Development">Commissioner, Tribal Development</option>
                                <option value="RMSA">RMSA</option>
                                <option value="District Education Officer">District Education Officer</option>
                                <option value="District Project Coordinator, SSA">District Project Coordinator, SSA</option>
                                <option value="SECRT">SECRT</option>
                                <option value="Joint Director">Joint Director</option>
                                <option value="Block Education Officer">Block Education Officer</option>
                                <option value="Block Resource Coordinator">Block Resource Coordinator</option>
                                <option value="Asst. Commissioner, Tribal">Asst. Commissioner, Tribal</option>
                                <option value="Others">Others</option>
                            </select>
                        </div>
                    </div>






                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Upload File</label>
                            <input type="file" class="form-control" />

                        </div>


                    </div>


                </div>




            </fieldset>

            <fieldset>
                <legend>Contact Information	</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Name</label>
                            <input class="form-control" type="text" placeholder="Enter Name " />
                        </div>


                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Email  </label>
                            <input class="form-control" type="text" placeholder="Enter Email-ID" />
                        </div>


                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Phone No</label>
                            <input class="form-control" type="text" placeholder="Enter Phone No" />
                        </div>


                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Mobile No</label>
                            <input class="form-control" type="text" placeholder="Enter Phone No" />
                        </div>


                    </div>


                </div>
                <div class="row">
                    <div class="col-md-12 text-center">

                        <button type="button" class="Alert-Confirmation btn btn-success">Save</button>
                        <a class="btn btn-danger">Clear</a>

                    </div>


                </div>
            </fieldset>
            <fieldset id="vacaniesDetail">
                <legend>Tender Order Information 
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table  table-hover table-bordered">
                                <thead>
                                    <tr>
                                        <th>Sr.No</th>
                                        <th>ID</th>
                                        <th>Tender No.</th>
                                        <th>Tender Date</th>
                                        <th>Work Discription</th>
                                        <th>Issued By</th>
                                        <th>District</th>
                                        <th>Total View</th>
                                        <th>Tender Document</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>247</td>
                                        <td>12811</td>
                                        <td>4/4/2024</td>
                                        <td>अर्धवार्षिक मूल्याङ्कन 2023-24 का गोपनीय सामग्री मुद्रण</td>
                                        <td>DPC, जिला शिक्षा केंद्र सिंगरौली</td>
                                        <td>Singrauli </td>
                                        <td>112</td>

                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>645</td>
                                        <td>5545</td>
                                        <td>10/4/2024</td>
                                        <td>TEXT BOOKS TRANSPORTATION</td>
                                        <td>DPC, ZILA SHIKSHA KENDRA KATNI COLLECTORATE CAMPUS </td>
                                        <td>Katni</td>
                                        <td>154</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>

                                    <tr hidden id="1">
                                        <td>3</td>
                                        <td>123</td>
                                        <td>9874</td>
                                        <td>10/3/2024</td>
                                        <td>खंडवा विधान सभा हेतु विद्यार्थियों के लिए ज्ञानवर्द्धक, व्यक्तिगत विकास एवं प्रतियोगी परीक्षाओं हेत |</td>
                                        <td>SED, P.S.Solanki DEO KHANDWA.  </td>
                                        <td>Khandwa </td>
                                        <td>124</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                    <tr id="2" hidden>
                                        <td>4</td>
                                        <td>258</td>
                                        <td>2233</td>
                                        <td>10/4/2024</td>
                                        <td>नाश्ता एवं भोजन व्यवस्था हेतु निविदा</td>
                                        <td>SED, R.K Verma DEO KHANDWA</td>
                                        <td>Khandwa </td>
                                        <td>15</td>
                                        <td><a href="#"><i class="fa fa-eye"></i></a></td>
                                        <td><a href="#"><i class="fa fa-edit"></i></a>|<a href="#"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="row">
                <div class="col-md-12 text-center">
                    <button id="viewMoreBtn" class="btn btn-success" type="button" value="View More" onclick="myFunction()">View More</button>

                </div>
            </div>
        </div>
        <script>
            function myFunction() {

                document.getElementById("vacaniesDetail").style.display = "block";
            }
        </script>


        <script>
            function myFunction() {
                let element1 = document.getElementById("1");
                let element2 = document.getElementById("2");
                /*   let element3 = document.getElementById("news3");*/

                let view = document.getElementById("viewMoreBtn");
                let hidden1 = element1.getAttribute("hidden") !== null;
                let hidden2 = element2.getAttribute("hidden") !== null;
                /*          let hidden3 = element3.getAttribute("hidden") !== null;*/
                if (hidden1 && hidden2) {
                    element1.removeAttribute("hidden");
                    element2.removeAttribute("hidden");
                    /*   element3.removeAttribute("hidden");*/
                    view.innerText = "View Less...";
                }
                else {
                    element1.setAttribute("hidden", "hidden");
                    element2.setAttribute("hidden", "hidden");

                    view.innerText = "View More...";
                }
            }
        </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

