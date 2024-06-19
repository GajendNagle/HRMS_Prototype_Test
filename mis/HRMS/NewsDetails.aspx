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
                        <li class="breadcrumb-item">News Information</li>
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
                    <h4 class="card-title">News Information / समाचार सूचना

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
                <legend>News Information / समाचार सूचना
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter News Paper Name<br />
                                अखबार का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter News Paper Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                News Date<br />
                                समाचार दिनांक<span style="color: red">*</span></label>
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter News Subject<br />
                                समाचार का विषय दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter News Subject" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                News Uploaded By<br />
                                समाचार अपलोड किया गया<span style="color: red">*</span></label>
                            <select class="form-control  select2">
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
                                Upload File<br />
                                फ़ाइल अपलोड करें
                            <span style="color: red">*</span></label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation btn btn-success btn w-lg btn-border">Save</button>
                        <a href="NewsDetails.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                    </div>
                </div>

            </fieldset>
            <fieldset>
                <legend>News Information Details / समाचार सूचना का विवरण
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
                            <table class="table text-center table-bordered">
                                <thead>
                                    <tr>

                                        <th>ID /<br />
                                            आई डी</th>
                                        <th>News Paper /     
                                                <br />
                                            अखबार</th>
                                        <th>News Date /     
                                                <br />
                                            समाचार की दिनांक</th>
                                        <th>News Subject /   
                                                <br />
                                            समाचार का विषय </th>
                                        <th>View Upload News /<br />
                                            अपलोड समाचार देखें   </th>
                                        <th>Action         
                                                <br />
                                        </th>
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
                <div class="col-md-12 text-center">
                    <button type="button" id="view" class="btn btn-success btn-border" onclick="myFunction()">View More</button>
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

