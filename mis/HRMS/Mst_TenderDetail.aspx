<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_TenderDetail.aspx.cs" Inherits="mis_HRMS_Mst_TenderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }
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
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                <img src="../../img/Circular%20Order.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                     <li class="breadcrumb-item"><a href="AllOrderDetails.aspx" title="click to go on">Dashboard Display Circulars-Orders</a></li>
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
                            <li>
                                <a class="nav-link  font-16 text-white" href="AllOrderDetails.aspx" aria-expanded="false"><strong><b><i class="fa fa-home" aria-hidden="true"></i></b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link font-16 text-white" href="Mst_CircularOrder.aspx" role="button"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>सर्कुलर्स </b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="Mst_Order.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>आदेश</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="Mst_TenderDetail.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>टेंडर्स </b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="PhotoAlbumDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>फ़ोटो</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="NewsDetails.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>समाचार</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="EventInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>इवेंट</b></strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link  font-16 text-white" href="MessageInformation.aspx" role="button" aria-expanded="false"><strong><b>&emsp;&emsp;<i class="far fa-hand-point-right"></i>संदेश </b></strong></a>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <fieldset>
                <legend>Important Note/महत्वपूर्ण लेख</legend>
               <ul class="font-16">
    <li><b>Please Upload File in PDF Formate.</b></li>
    <li><b>File Size Shuld be Less Than 400 kb.</b></li>
    <li><b>Don't Upload .doc, .xls, .jpg or Any Other Formate File.</b></li>
    <li><b>Click Here to Download PDF Crater Software.</b></li>
</ul>
            </fieldset>
            <fieldset>
                <legend>Tender Order/टेंडर आदेश 
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="font-bold">
                                Name and Address of The Issuing Office<br />
                                जारीकर्ता कार्यालय का नाम और पता
                                 <span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Name and Address of The Issuing Office" />

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Tender  Issue Date<br />
                                टेंडर जारी करने की तिथि <span style="color: red">*</span></label>
                            <input class="form-control" type="date" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Last Date Of Submission<br />
                                जमा करने की अंतिम तिथि<span style="color: red">*</span></label>
                            <input class="form-control" type="date" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Tender Expiry Date<br />
                                टेंडर समाप्ति तिथि<span style="color: red">*</span></label>
                            <input class="form-control" type="date" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Tender Refrence No.<br />
                                टेंडर संदर्भ नम्बर<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Tender Refrence No." />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Tender Type<br />
                                टेंडर प्रकार<span style="color: red">*</span></label>
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
                            <label class="font-bold">
                                Tender Title<br />
                                टेंडर शीर्षक<span style="color: red">*</span></label>
                            <input class="form-control" placeholder="Enter Tender Title" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Tender Value<br />
                                टेंडर का मान<span style="color: red">*</span></label>
                            <input class="form-control" placeholder="Enter Tender Value" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                EMD<br />
                                ई.एम.डी <span style="color: red">*</span></label>
                            <input class="form-control" type="text" placeholder="Enter EMD" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Document Cost<br />
                                दस्तावेज़ लागत<span style="color: red">*</span></label>
                            <input class="form-control" type="text" placeholder="Enter Document Cost" />
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
                            <label class="font-bold">
                                Search Key Words<br />
                                सर्च कीवर्ड <span style="color: red">*</span></label>
                            <input class="form-control" type="text" placeholder="Enter Search Key Words " />
                        </div>


                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Tender Issued By<br />
                                द्वारा टेंडर जारी किया गया
                                 <span style="color: red">*</span></label>
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
                            <label class="font-bold">
                                Upload File<br />
                                फ़ाइल अपलोड करें<span style="color: red">*</span></label>
                            <input type="file" class="form-control" />

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="font-bold">
                                Work Description<br />
                                कार्य विवरण<span style="color: red">*</span></label>
                            <textarea class="form-control" id="workdescription" placeholder="Enter Work Description" oninput="autoResize(this)"></textarea>

                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Contact Information/संपर्क जानकारी	</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Name<br />
                                नाम<span style="color: red">*</span></label>
                            <input class="form-control" type="text" placeholder="Enter Name " />
                        </div>


                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Email<br />
                                ई-मेल<span style="color: red">*</span></label>
                            <input class="form-control" type="text" placeholder="Enter Email-ID" />
                        </div>


                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Phone No.<br />
                                फोन नंबर <span style="color: red">*</span></label>
                            <input class="form-control" type="text" placeholder="Enter Phone No" />
                        </div>


                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Mobile No
                                <br />
                                मोबाईल नंबर<span style="color: red">*</span></label>
                            <input class="form-control" type="text" placeholder="Enter Phone No" />
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12 text-center">

                        <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                        <a class="btn btn-danger btn-rounded">Clear</a>


                    </div>
                </div>
            </fieldset>
            <fieldset id="vacaniesDetail">
                <legend>Tender Order Details 
                </legend>
                <div class="row">
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
                                <input type="text" id="searchInput1" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>

                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table  table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sr.No          
                                                <br />
                                                सरल क्र.</th>
                                            <th>ID             
                                                <br />
                                                आई.डी.</th>
                                            <th>Tender No.     
                                                <br />
                                                टेंडर क्र.</th>
                                            <th>Tender Date    
                                                <br />
                                                टेंडर दिनांक</th>
                                            <th>Work Discription<br />
                                                कार्य विवरण  </th>
                                            <th>Issued By      
                                                <br />
                                                जारीकर्ता  </th>
                                            <th>District       
                                                <br />
                                                जिला   </th>
                                            <th>Total View     
                                                <br />
                                                कुल देखे  </th>
                                            <th>Tender Document
                                                <br />
                                                टेंडर दस्तावेज़   </th>
                                            <th>Action         
                                                <br />
                                                कार्रवाई </th>
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
                                            <td><a href="#"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
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
                                            <td><a href="#"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
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
                                            <td><a href="#"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
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
                                            <td><a href="#"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <button id="viewMoreBtn" class="btn btn-success" type="button" value="View More" onclick="myFunction()">View More</button>

                    </div>
                </div>
            </fieldset>
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

