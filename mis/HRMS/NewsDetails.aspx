<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="NewsDetails.aspx.cs" Inherits="mis_HRMS_NewsDetails" %>

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
                    <li class="breadcrumb-item active">News Information</li>
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
                <legend>News Information/समाचार सूचना
                </legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                News Paper<br />
                                अखबार<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter News Paper Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                News Date<br />
                                समाचार दिनांक<span style="color: red">*</span></label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                News Subject<br />
                                समाचार का विषय<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter News Subject" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                News Uploaded By<br />
                                समाचार अपलोड किया गया<span style="color: red">*</span></label>
                            <select class="form-control">
                                <option value="--Select--">--Select--</option>
                                <option value="RSK">RSK</option>
                                <option value="CPI">CPI</option>
                                <option value="DEP">DEP</option>
                                <option value="CTP">CTP</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">
                                Select Priority<br />
                                प्राथमिकता चुनें<span style="color: red">*</span></label>
                            <select class="form-control">
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
                            <label class="font-bi">
                                Upload File<br />
                                फ़ाइल अपलोड करें
                            <span style="color: red">*</span></label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3 mt-5">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>
                            <a href="NewsDetails.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>News Information Details
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
                                <table class="table text-center table-bordered table-hover">
                                    <thead>
                                        <tr>

                                            <th>ID<br />
                                                आई डी</th>
                                            <th>News Paper     
                                                <br />
                                                अखबार</th>
                                            <th>News Date      
                                                <br />
                                                समाचार की दिनांक</th>
                                            <th>News Subject   
                                                <br />
                                                समाचार का विषय </th>
                                            <th>view Upload News<br />
                                                अपलोड समाचार देखें   </th>
                                            <th>Action         
                                                <br />
                                                कार्रवाई   </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>


                                            <td>1070</td>
                                            <td>Patrika</td>
                                            <td>09-03-2024</td>
                                            <td>नए एकेडमिक सेशन से बढ़ी पैरेंट्स की जेब पर भार, प्राइवेट स्कूलों ने बढ़ाई नर्सरी से लेकर 12वीं तक की फीस</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                            <td><a href="#"><i class="fa fa-edit"></i></a>
                                                &nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>

                                            <td>1056</td>
                                            <td>Dainik Bhaskar</td>
                                            <td>15-03-2024</td>
                                            <td>CBSE कक्षा 11वीं और 12वीं का परीक्षा पैटर्न फिर बदला, 2024-25 एकडेमिक सत्र से लागू, नया एग्जाम पैटर्न यहां देखें</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                              <td><a href="#"><i class="fa fa-edit"></i></a>
      &nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr>

                                            <td>1058</td>
                                            <td>Haribhoomi</td>
                                            <td>25-03-2024</td>
                                            <td>दिल्ली मॉडल वर्चुअल स्कूल में पढ़ाई करने की सोच रहे हैं तो ये खबर आपके काम की है। जानकारी दे दें कि दिल्ली मॉडल वर्चुअल स्कूल में एडमिशन के लिए रजिस्ट्रेशन डेट बढ़ा दी गई है।</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                              <td><a href="#"><i class="fa fa-edit"></i></a>
      &nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                        </tr>

                                        <tr id="news1" hidden>

                                            <td>1076</td>
                                            <td>Naiduniya</td>
                                            <td>01-04-2024</td>
                                            <td>असिस्टमेंट बोर्ड, आज कक्षा 12वीं प्री-यूनिवर्सिटी सर्टिफिकेट (PUC 2) रिजल्ट की घोषणा करेगा. खबरों की मानें तो कर्नाटक कक्षा 12वीं के नतीजे आज सुबह 10 बजे जारी किए जाएंगे.</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                             <td><a href="#"><i class="fa fa-edit"></i></a>
      &nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr id="news2" hidden>

                                            <td>1069</td>
                                            <td>CSI Awards</td>
                                            <td>10-04-2024</td>
                                            <td>असिस्टमेंट बोर्ड, आज कक्षा 12वीं प्री-यूनिवर्सिटी सर्टिफिकेट (PUC 2) रिजल्ट की घोषणा करेगा. खबरों की मानें तो कर्नाटक कक्षा 12वीं के नतीजे आज सुबह 10 बजे जारी किए जाएंगे.</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                              <td><a href="#"><i class="fa fa-edit"></i></a>
      &nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                        <tr id="news3" hidden>

                                            <td>1099</td>
                                            <td>District News</td>
                                            <td>01-02-2024</td>
                                            <td>एमपी बोर्ड की परीक्षाएं सोमवार से शुरू हैं. पहले ही दिन पेपर लीक की झूठी खबर के बाद एमपी बोर्ड परीक्षा में कक्षा 10वीं, 12वीं के 70 से अधिक छात्रों के एडमिट कार्ड जारी नहीं करने की खबर आई हैं.</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                             <td><a href="#"><i class="fa fa-edit"></i></a>
      &nbsp;<a href="#"><i class="fa fa-trash"></i></a></td>
                                        </tr>


                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-12 text-center">
                    <button type="button" id="view" class="btn btn-success btn-rounded" onclick="myFunction()">View More...</button>

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

