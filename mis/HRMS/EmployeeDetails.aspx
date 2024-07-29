<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeDetails.aspx.cs" Inherits="mis_Transaction_EmployeeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #ddlPosition {
            position: relative;
            bottom: 20px;
        }
    </style>
    <style>
        textarea {
            resize: vertical;
            min-height: 40px;
        }

        #ddlPosition {
            position: relative;
            bottom: 20px;
        }

        textarea {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
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
                            <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>ACR</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee ACR Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%--  <div class="row page-titles mb-4">--%>
    <%--  <div class="row page-titles mb-4">--%>
    <div class="row">
        <div class="col-md-5 ">
            <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5>Resend Employee ACR Application/ कर्मचारी ACR आवेदन पुनः भेजें
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <br />


            <fieldset id="show2" runat="server">
                <legend>Resend Employee ACR Application/ कर्मचारी ACR आवेदन पुनः भेजें</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center" runat="server">
                                <thead>
                                    <tr style="white-space: nowrap;">
                                        <th>S.No<br />
                                            सरल क्र.</th>
                                        <th>Annual Year<br />
                                            वित्तीय वर्ष</th>
                                        <th>Unique ID/Name<br />
                                            कर्मचारी आईडी/नाम</th>

                                        <th>Date of Birth<br />
                                            जन्मतिथि</th>
                                        <th>Designation
                                        <br />
                                            पदनाम </th>
                                        <th>Dise Code of Institution<br />
                                            संस्थान का डाइस कोड</th>


                                        <th>Status<br />
                                            स्टेटस</th>

                                        <th>View Employee Application & Update
                                            <br />
                                            कर्मचारी आवेदन देखें और संपादित करें</th>
                                        <th>Resend ACR Report<br />
                                            एसीआर रिपोर्ट पुनः भेजें</th>
                                        <%--<th>प्रिंट</th--%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>20023-2024</td>
                                        <td>गोपाल वर्मा/EDP4454445</td>

                                        <td>22/07/1989</td>
                                        <td>सहायक शिक्षक</td>
                                        <td>DPI/456656356</td>

                                        <td style="white-space: nowrap;">ACR Report Reject<br />
                                            :- He is  not my employee</td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1" onclick="document.getElementById('exampleModalFooter').style='display:block;'">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>


                                        </td>
                                        <td>
                                            <button type="button" class="  btn w-lg btn-success btn-border" data-bs-toggle="modal" data-bs-target="#exampleModal2">
                                                Resend
                                            </button>
                                        </td>

                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
        </div>
    </div>
    <div class="modal  fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">

                    <img id="imgLogoP1" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                    <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel">EMPLOYEE  ACR FORM</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div runat="server" id="Div1">
                        <fieldset>
                            <legend>EMPLOYEE PERSONAL INFORMATION / कर्मचारी की व्यक्तिगत जानकारी</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Financial Year<br />
                                            वार्षिक प्रतिवेदन अवधि वर्ष <span style="color: red">*</span>
                                        </label>
                                        <asp:DropDownList runat="server" ID="DropDownList2" CssClass="form-control select2">
                                            <asp:ListItem>2020-2021</asp:ListItem>
                                            <asp:ListItem>2021-2022</asp:ListItem>
                                            <asp:ListItem>2022-2023</asp:ListItem>
                                            <asp:ListItem>2023-2024</asp:ListItem>
                                            <asp:ListItem>2024-2025</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Name
                                     <br />
                                            नाम  <span style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ReadOnly="true" ID="TextBox1" class="form-control" autocomplete="off" value="गोपाल वर्मा"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Unique ID<br />
                                            कर्मचारी आई.डी
                                     <span style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox6" ReadOnly="true" class="form-control" autocomplete="off" value="EDP4561231556"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Designation
                                     <br />
                                            पद नाम <span style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox7" class="form-control " autocomplete="off" ReadOnly="true" value="सहायक शिक्षक"></asp:TextBox>
                                        <%-- <asp:DropDownList runat="server" ID="DropDownList1" class="form-control select2" autocomplete="off">
                                     <asp:ListItem>सहायक शिक्षक</asp:ListItem>
                                     <asp:ListItem>प्राथमिक अध्यापक(PRT)</asp:ListItem>
                                     <asp:ListItem>स्नातकोत्तर शिक्षक(PGT)</asp:ListItem>
                                     <asp:ListItem>स्नातकोत्तर शिक्षक (TCT)</asp:ListItem>
                                 </asp:DropDownList>--%>
                                    </div>
                                </div>

                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            <br />
                                            Date of Birth<br />
                                            जन्मतिथि<span style="color: red">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ReadOnly="true" ID="TextBox8" class="form-control" autocomplete="off" value="1999-12-03" TextMode="date"></asp:TextBox>

                                    </div>
                                </div>
                                <%--  <div class="col-md-3">
    <div class="form-group">
        <label>Date of Birth(जन्मतिथि)/ शब्दों में <spanstyle="color: red">*</span> </label>
        <asp:TextBox runat="server" ID="txtDobHindi" class="form-control  mt-4" autocomplete="off"  placeholder=""></asp:TextBox>

    </div>
</div>--%>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            <br />
                                            Institution of Posting<br />
                                            पदस्थी शाला/स्थान<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" ReadOnly="true" ID="TextBox9" value="भोपाल" class="form-control" autocomplete="off"></asp:TextBox>
                                        <%--  <asp:DropDownList runat="server" ID="ddlPosting" class="form-control mb-5 " autocomplete="off" >--%>
                                        <%-- <asp:ListItem>भोपाल</asp:ListItem>
                                <asp:ListItem>बैतूल</asp:ListItem>
                                     <asp:ListItem>इंदौर </asp:ListItem>
                                     <asp:ListItem>जबलपुर</asp:ListItem>
                                 </asp:DropDownList>--%>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="fs-6">
                                            <br />
                                            Dise Code of Institution<br />
                                            पदस्थी शाला का डाइस कोड<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" ReadOnly="true" ID="TextBox10" class="form-control" autocomplete="off" value="St Theresa Girls School/489754554"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            <br />
                                            Date Of First Posting<br />
                                            प्रथम नियुक्ति का दिनांक<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox11" class="form-control" autocomplete="off" ReadOnly="true" value="1992-09-17" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>


                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            <br />
                                            First Posting  designation<br />
                                            प्रथम नियुक्ति का पद<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox12" ReadOnly="true" class="form-control" autocomplete="off" value="प्राथमिक अध्यापक"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <div class="form-group">
                                        <label>
                                            Current Date Of Promotion
                                     <br />
                                            वर्तमान पद पर नियुक्ति का  दिनांक<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox13" class="form-control " autocomplete="off" ReadOnly="true" value="2024-01-23" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>



                                <div class="col-md-3 ">
                                    <div class="form-group">
                                        <label>
                                            Date Of Promotion
                                     <br />
                                            पदोन्नति का दिनांक<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox14" class="form-control " autocomplete="off" value="2024-01-23" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <div class="form-group">
                                        <label>
                                            Date OF Filiing Of Annual Immovabel Property Return<br />
                                            स्थाई संपत्ती विवरण दाखिल करने का दिनांक<span style="color: red;">*</span>
                                        </label>
                                        <asp:TextBox runat="server" ID="TextBox15" class="form-control" autocomplete="off" value="1989-12-10" TextMode="Date"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                        </fieldset>
                        <br />
                        <h5 class="fw-bold ml-3" style="color: var(--vz-primary);">PART-2 Self-Evaluation
  <br />
                            भाग दो-स्वमूल्यांकन</h5>
                        <br />

                        <fieldset>
                            <legend>Improving Attendance Of Childdren / छात्र उपिस्थिति में वृद्धि </legend>

                            <div class="row">
                                <div class="col-md-12">
                                    <table id="Table6" class="table table-bordered table-responsive-lg text-center " runat="server">
                                        <thead>
                                            <tr valign="middle">
                                                <th rowspan="2">S.No.<br />
                                                    सरल.क्र </th>
                                                <th rowspan="2">Class being taught<br />
                                                    पढाई जाने वाली कक्षा</th>
                                                <th colspan="2">Enrolment<br />
                                                    नामांकन</th>
                                                <th rowspan="2">Average Annual attendance in Percentege<br />
                                                    वार्षिक औसत उपिस्थिति</th>
                                                <th rowspan="2" style="width: 400px;">Remark
            <br />
                                                    टिप्पणी</th>
                                            </tr>

                                            <tr valign="middle">
                                                <td>Previous Session<br />
                                                    विगत सत्र</td>
                                                <td>Present Session<br />
                                                    वर्तमान सत्र</td>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr valign="middle">
                                                <td>1
                                                </td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहली कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control w-100%" placeholder="85%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>2</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="दूसरी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="92%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>3</td>
                                                <td cssclass="fw-bold text-center">  <input class="form-control" placeholder="तीसरी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="82%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>4</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="चौथी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="76%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>5</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="पाचंवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="89%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>6</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="छटवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="75%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>7
                                                </td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="सातवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="85%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>8</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="आठवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="92%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>9</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="नव्वी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="82%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>10</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="दसवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="76%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>11</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="ग्यारवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center">` <input class="form-control" placeholder="89%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>
                                            <tr valign="middle">
                                                <td>12</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="बरवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="पहला"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <input class="form-control" placeholder="दूसरा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="75%"></td>
                                                <td cssclass="fw-bold text-center">
                                                    <textarea class="form-control  w-100%"rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है"></textarea></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </fieldset>
                        <br />

                        <fieldset>
                            <legend>Complention of Syllabus Aganinst The Target / लक्ष्य के विरुद्ध पाठ्यक्रम  पूर्णता की स्थिति </legend>

                            <div class="row">
                                <div class="col-md-12 table-responsive">
                                    <table id="Table7" class="table table-bordered  text-center " runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th>S.No.<br />
                                                    सरल.क्र</th>
                                                <th>Class<br />
                                                    कक्षा</th>
                                                <th>Subject<br />
                                                    विषय</th>
                                                <th>Target (In % age)<br />
                                                    लक्ष्य (प्रतिशत में)</th>
                                                <th>Achievement (In % age)<br />
                                                    उपलब्धि (प्रतिशत में)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr valign="middle">
                                                <td>1</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="पहली कक्षा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="हिंदी"></td>
                                                <td cssclass="fw-bold text-center">100%</td>

                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="89%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>2</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="दूसरी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="गणित"></td>
                                                <td cssclass="fw-bold text-center">100%
                                                </td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="68%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>3</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="तीसरी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="अंग्रेजी"></td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="74%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>4</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="चौथी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="पर्यावरण"></td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="63%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>5</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="पाचंवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="हिंदी"></td>
                                                <td cssclass="fw-bold text-center">100%</td>

                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="89%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>6</td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="छटवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"> <input class="form-control" placeholder="गणित"></td>
                                                <td cssclass="fw-bold text-center">100%
                                                </td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="68%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>7</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="सातवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="अंग्रेजी"></td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="74%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>8</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="आठवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="विज्ञान"></td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="63%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>9</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="नव्वी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="हिंदी"></td>
                                                <td cssclass="fw-bold text-center">100%</td>

                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="89%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>10</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="दसवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="गणित"></td>
                                                <td cssclass="fw-bold text-center">100%
                                                </td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="68%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>11</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="ग्यारवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="गणित"></td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="74%"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>12</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="बरवी कक्षा"></td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="जीव विज्ञान"></td>
                                                <td cssclass="fw-bold text-center">100%</td>
                                                <td cssclass="fw-bold text-center"><input class="form-control" placeholder="63%"></td>

                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>
                                        <span class="fa-pull-left">Reasons, if any, for not completing the target
                                 <br />
                                            लक्ष्य  प्राप्ति न होने के कारण</span></label>
                                    <textarea class="form-control" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>
                        </fieldset>
                        <br />

                        <fieldset>
                            <legend>Performance / Learning of Student / प्रदर्शन/छात्रों का सीखना</legend>

                            <div class="row">
                                <div class="col-md-12 table-responsive">
                                    <table id="Table8" class="table table-bordered  text-center " runat="server">
                                        <thead>
                                            <tr valign="middle" >
                                                <th>S.No.<br />
                                                    सरल.क्र</th>
                                                <th style="width:120px;">Class<br />
                                                    कक्षा</th>
                                                <th style="width:100px;">Subject<br />
                                                    विषय</th>
                                                <th>No.of
                     Student<br />
                                                    छात्र संख्या
                                                </th>
                                                <th colspan="5">Previous class annual examination Result grade wises Student number<br />
                                                    पूर्व कक्षा के परीक्षा परिणाम के अनुसार छात्रों की ग्रेडवार संख्या
                                                </th>
                                                <th colspan="5">Achievement on the basis of annual examination result                          
                                                    <br />
                                                    वार्षिक परीक्षा के
आधार पर उपलब्धि<br />
                                                    (Student in Grade)<br />
                                                    (ग्रेडवार छात्र संख्या)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>A<br />
                                                    (अ)</td>
                                                <td>B<br />
                                                    (ब)</td>
                                                <td>C<br />
                                                    (स)</td>
                                                <td>D<br />
                                                    (द)</td>
                                                <td>E<br />
                                                    (ई)</td>


                                                <td>A<br />
                                                    (अ)</td>
                                                <td>B<br />
                                                    (ब)</td>
                                                <td>C<br />
                                                    (स)</td>
                                                <td>D<br />
                                                    (द)</td>
                                                <td>E<br />
                                                    (ई)</td>
                                            </tr>


                                           <%-- <tr valign="middle">
                                                <td>1</td>
                                                <td><input class="form-control" placeholder="पहली कक्षा"></td>
                                                <td><input class="form-control" placeholder="हिंदी"></td>
                                                <td><input class="form-control" placeholder="20"></td>
                                                <td><input class="form-control" placeholder="6"></td>
                                                <td><input class="form-control" placeholder="4"></td>
                                                <td><input class="form-control" placeholder="3"></td>
                                                <td><input class="form-control" placeholder="2"></td>
                                                <td><input class="form-control" placeholder="5"></td>
                                                <td><input class="form-control" placeholder="6"></td>
                                                <td><input class="form-control" placeholder="4"></td>
                                                <td><input class="form-control" placeholder="3"></td>
                                                <td><input class="form-control" placeholder="2"></td>
                                                <td><input class="form-control" placeholder="5"></td>


                                            </tr>
                                            <tr valign="middle">
                                                <td>2
                                                </td>
                                                <td><input class="form-control" placeholder="दूसरी कक्षा">
                                                </td>
                                                <td><input class="form-control" placeholder="गणित">
                                                </td>
                                                <td><input class="form-control" placeholder="30"></td>
                                                <td><input class="form-control" placeholder="6"></td>
                                                <td><input class="form-control" placeholder="4"></td>
                                                <td><input class="form-control" placeholder="8"></td>
                                                <td><input class="form-control" placeholder="2"></td>
                                                <td><input class="form-control" placeholder="10"></td>
                                                <td><input class="form-control" placeholder="6"></td>
                                                <td><input class="form-control" placeholder="4"></td>
                                                <td><input class="form-control" placeholder="8"></td>
                                                <td><input class="form-control" placeholder="2"></td>
                                                <td><input class="form-control" placeholder="10"></td>

                                            </tr>

                                            <tr valign="middle">
                                                <td>3
                                                </td>
                                                <td><input class="form-control" placeholder="तीसरी कक्षा">
 </td>
 <td><input class="form-control" placeholder="अंग्रेजी">
 </td>
 <td><input class="form-control" placeholder="50"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="15"></td>
 <td><input class="form-control" placeholder="5"></td>
 <td><input class="form-control" placeholder="12"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="9"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="12"></td>
                                            </tr>

                                            <tr valign="middle">
                                                <td>4
                                                </td>
                                               <td><input class="form-control" placeholder="चौथी  कक्षा">
 </td>
 <td><input class="form-control" placeholder="पर्यावरण">
 </td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>

                                            </tr>--%>
                                            <tr valign="middle">
                                                <td>1
                                                </td>
                                               <td><input class="form-control" placeholder="पाचंवी  कक्षा">
 </td>
 <td><input class="form-control" placeholder="हिंदी">
 </td>
 <td><input class="form-control" placeholder="65"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="9"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="12"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="9"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="12"></td>


                                            </tr>
                                        <%--    <tr valign="middle">
                                                <td>6
                                                </td>
                                               <td><input class="form-control" placeholder="छटवी कक्षा">
 </td>
 <td><input class="form-control" placeholder="गणित">
 </td>
 <td><input class="form-control" placeholder="20"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="3"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="5"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="3"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="5"></td>

                                            </tr>
                                            <tr valign="middle">
                                                <td>7
                                                </td>
                                               <td><input class="form-control" placeholder="सातवी कक्षा">
 </td>
 <td><input class="form-control" placeholder="अंग्रेजी">
 </td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>

                                            </tr>--%>
                                            <tr valign="middle">
                                                <td>2


                                                </td>
                                               <td><input class="form-control" placeholder="आठवी कक्षा">
 </td>
 <td><input class="form-control" placeholder="विज्ञान">
 </td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>

                                            </tr>
                                            <%--<tr valign="middle">
                                                <td>9
                                                </td>
                                                <td><input class="form-control" placeholder="नव्वी  कक्षा">
 </td>
 <td><input class="form-control" placeholder="गणित">
 </td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>



                                            </tr>--%>
                                            <tr valign="middle">
                                                <td>3
                                                </td>
                                               <td><input class="form-control" placeholder="दसवी  कक्षा">
 </td>
 <td><input class="form-control" placeholder="गणित">
 </td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>


                                            </tr>
                                            <%--<tr valign="middle">
                                                <td>11
                                                </td>
                                                <td><input class="form-control" placeholder="ग्यारवी कक्षा">
 </td>
 <td><input class="form-control" placeholder="गणित">
 </td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>


                                            </tr>--%>
                                            <tr valign="middle">
                                                <td>4
                                                </td>
                                                <td><input class="form-control" placeholder="बरवी कक्षा">
 </td>
 <td><input class="form-control" placeholder="जीव विज्ञान">
 </td>
 <td><input class="form-control" placeholder="30"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>
 <td><input class="form-control" placeholder="6"></td>
 <td><input class="form-control" placeholder="4"></td>
 <td><input class="form-control" placeholder="8"></td>
 <td><input class="form-control" placeholder="2"></td>
 <td><input class="form-control" placeholder="10"></td>


                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>
                                        Reasons of not achieving target
                                 <br />
                                        लक्ष्य  से कम उपलब्धि के कारण</label>
                                    <textarea class="form-control mb-2 fw-bold" id="workdescription1" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>



                        </fieldset>
                        <br />

                        <fieldset>
                            <legend>Role in academic/ 
                    
                      अकादमिक कार्यो में भूमिका</legend>
                            <%--  <div class="row ">
                      <div class="col-md-4">
                          <label>
                              Use of  teaching  learning aid
                              <br />
                              शिक्षक सहायक सामग्री का उपयोग 
                          </label>
                          <asp:TextBox runat="server" ID="txtteaching" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-4">
                          <label>
                              Use of  lesson plan<br />
                              पाठ्य योजना का उपयोग  
                          </label>
                          <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-4">
                          <label>
                              Innovation and impect<br />
                              नवाचार तथा उसका प्रभाव  
                          </label>
                          <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control"></asp:TextBox>
                      </div>
                  </div>


                  <div class="row mt-3">
                      <div class="col-md-4">
                          <label>
                              Checking of notebook's of students<br />
                              छात्रों की अभ्यास पुस्तिका की जांच 
                          </label>
                          <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-md-4">
                          <label>
                              Remedial teaching
                              <br />
                              निदात्मक शिक्षण
                          </label>
                          <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control "></asp:TextBox>
                      </div>
                      <div class="col-md-4">
                          <label>
                              Extra Classes<br />
                              अतिरिक्त कक्षा संचालन
                          </label>
                          <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control "></asp:TextBox>
                      </div>
                  </div>--%>
                            <table class="table table-bordered mt-3">
                                <thead>
                                    <tr>

                                        <th>S.No.<br />
                                            सरल क्र.</th>
                                        <th>Role in academic<br />

                                            अकादमिक कार्यो में भूमिका</th>
                                        <th>Please give details of the notable works done on the following points<br />
                                            कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                                    </tr>
                                </thead>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">1</td>
                                    <td>Use of  teaching  learning aid
                                        <br />
                                        शिक्षक सहायक सामग्री का उपयोग 
                                    </td>
                                    <td>
                                        <textarea class="form-control" placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">2</td>
                                    <td>Use of  lesson plan<br />
                                        पाठ्य योजना का उपयोग 
                                    </td>
                                    <td>
                                        <textarea class="form-control " placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>

                                <tr>

                                    <td class="text-center" style="position: relative; top: 10px">3</td>
                                    <td>Innovation and impect<br />
                                        नवाचार तथा उसका प्रभाव  
                                    </td>
                                    <td>
                                        <textarea class="form-control" placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                </tr>



                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">4</td>
                                    <td>Checking of notebook's of students<br />
                                        छात्रों की अभ्यास पुस्तिका की जांच 
                                    </td>
                                    <td>
                                        <textarea class="form-control" placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">5</td>
                                    <td>Remedial teaching
 <br />
                                        निदात्मक शिक्षण
                                    </td>
                                    <td>
                                        <textarea class="form-control " placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>

                                <tr>

                                    <td class="text-center" style="position: relative; top: 10px">6</td>
                                    <td>Extra Classes<br />
                                        अतिरिक्त कक्षा संचालन
                                    </td>
                                    <td>
                                        <textarea class="form-control" rows="1" placeholder="Nil" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                </tr>



                            </table>


                        </fieldset>
                        <br />


                        <fieldset>
                            <legend>Extraacurricular Activities / पाठ्येत्तर गतिविधियों मे भूमिका </legend>

                            <%-- <div class="row mt-3">
                       <div class="col-md-4">
                           <label>
                               Sports/Literary/Cultural Activities
                               <br />
                               खेल/साहित्यिक/सांस्कृतिक गतिविधियाँ 
                           </label>
                           <asp:TextBox runat="server" ID="TextBox6" CssClass="form-control "></asp:TextBox>
                       </div>
                       <div class="col-md-4">
                           <label>
                               Extra Ordinary Work in Hygiene/Environment
                               <br />
                               स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य</label>
                           <asp:TextBox runat="server" ID="TextBox7" CssClass="form-control "></asp:TextBox>
                       </div>
                       <div class="col-md-4">
                           <label>
                               Use of ICT in teaching and learning<br />
                               शिक्षण एवं सिखने में आई सी टी का उपयोग</label>
                           <asp:TextBox runat="server" ID="TextBox8" CssClass="form-control "></asp:TextBox>
                       </div>
                   </div>--%>
                            <table class="table table-bordered mt-3">
                                <thead>
                                    <tr>

                                        <th>S.No.<br />
                                            सरल क्र.</th>
                                        <th>Extraacurricular Activities
                                   <br />
                                            पाठ्येत्तर गतिविधियों मे भूमिका
                                

                                           </th>
                                        <th>Please give details of the notable works done on the following points<br />
                                            कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                                    </tr>
                                </thead>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">1</td>
                                    <td>Sports/Literary/Cultural Activities
 <br />
                                        खेल/साहित्यिक/सांस्कृतिक गतिविधियाँ 
                                    </td>
                                    <td>
                                        <textarea class="form-control" rows="1" placeholder="Nil" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>
                                <tr>
                                    <td class="text-center" style="position: relative; top: 10px">2</td>
                                    <td>Extra Ordinary Work in Hygiene/Environment
                                        <br />
                                        स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य
                                    </td>
                                    <td>
                                        <textarea class="form-control " rows="1" placeholder="Nil" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                                </tr>

                                <tr>

                                    <td class="text-center" style="position: relative; top: 10px">3</td>
                                    <td>Use of ICT in teaching and learning<br />
                                        शिक्षण एवं सिखने में आई सी टी का उपयोग
                                    </td>
                                    <td>
                                        <textarea class="form-control " placeholder="Nil" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                </tr>
                            </table>


                        </fieldset>
                        <br />
                        <fieldset>
                            <legend>Academic trsining attended during  Appraisal period / प्रतिवेदित अवधि मे प्रशिक्षण मे सहभागिता</legend>

                            <div class="row">
                                <div class="col-md-12">
                                    <table id="Table9" class="table table-bordered table-responsive-lg text-center " runat="server">
                                        <thead>
                                            <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                                <th>S.No.<br />
                                                    सरल.क्र</th>
                                                <th>Name of Training<br />
                                                    प्रशिक्षण का नाम</th>
                                                <%-- <th>Subject<br />
                                                    विषय</th>--%>
                                                <th>Period of Training (Days)<br />
                                                    प्रशिक्षण की अवधि (दिन में)</th>
                                                <th>Result/Grade<br />
                                                    उपलब्धि/ग्रेड</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr valign="middle">
                                                <td>1</td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="स्कूली शिक्षा"></asp:TextBox></td>
                                                <td>
                                                    <%--<asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="जीव विज्ञान"></asp:TextBox></td>
                                                <td>--%>
                                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="45 दिन"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox runat="server" CssClass="form-control fw-bold" placeholder="A"></asp:TextBox></td>

                                            </tr>
                                        </tbody>

                                    </table>
                                </div>
                            </div>


                        </fieldset>
                        <br />
                        <fieldset>
                            <legend>Any Other Work Which You Want to Mention as an Outstanding Contribution / 
                         कोई अन्य कार्य जिसे आप एक उत्कृष्ट योगदान के रूप में उल्लेख करना चाहते है</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <label>
                                    </label>
                                    <textarea class="form-control mb-2 fw-bold" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                                </div>
                            </div>

                        </fieldset>

                        <hr />
                        <div class="col-md-12">
                            <div class="form-group">
                                <button type="button" class=" Alert-Edit btn w-lg btn-success btn-border">
                                    Update 
                                </button>
                                <a href="EmployeeDetails.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>

                    </div>


                </div>
            </div>

        </div>

    </div>
    <div class="modal  fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">

                    <img src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                    <h3 class="modal-title  fw-bold  text-white ms-3">Resend To Reporting Officer/रिपोर्टिंग अधिकारी को पुनः भेजें</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Resend To Reporting Officer / रिपोर्टिंग अधिकारी को पुनः भेजें </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <label>
                                    Reporting Officer Unique ID 
                                 <br />
                                    रिपोर्टिंग अधिकारी यूनिक आईडी<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" AutoComplete="off" CssClass="form-control" onchange="myFunction()"></asp:TextBox>

                            </div>

                            <div class="col-md-4" style="display: none;" id="OfficerName">
                                <label>
                                    Reporting Officer Name
                                 <br />
                                    रिपोर्टिंग अधिकारी का नाम</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Dilip Raghuwanshi"></asp:TextBox>

                            </div>

                            <div class="col-md-4" style="display: none;" id="SankulCode">
                                <label>
                                    Reporting Officer Sankul Code<br />
                                    रिपोर्टिंग अधिकारी संकुल कोड</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="GOVT. HSS SHYAMPUR-23010804504"></asp:TextBox>
                            </div>
                        </div>
                    </fieldset>
                    <hr />
                    <%-- <div class="modal-footer justify-content-center">
                        <div style="display: none;" id="btn1">
                            <button type="button" class="btn btn-success Alert-Save btn-rounded">Send To Officer</button>
                            <a href="ReportingOfficerFill.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                    <div class="modal-footer">
                        <div style="display: none;" id="btn1">


                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="Alert-Save btn w-lg btn-success btn-border">
                                        Send To Officer
                                    </button>
                                    <a href="EmployeeDetails.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--    <script>
    function openPDF() {
        // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
        var pdfUrl = '../Document/Promotion-1.pdf';
        // Open the PDF in a new window or tab
        window.open(pdfUrl, '_blank');
    }
    </script>--%>
    <script>
        function myFunction() {
            document.getElementById('OfficerName').style.display = "block";
            document.getElementById('SankulCode').style.display = "block";
            document.getElementById('btn1').style.display = "block";


            //var x = document.getElementById("mySelect").value;
            //document.getElementById("demo").innerHTML = "You selected: " + x;
        }
    </script>
    <script>
        debugger;
        $(document).ready(function () {
            "use strict";

            var SweetAlert = function () { };

            // Initialize SweetAlert function
            SweetAlert.prototype.init = function () {
                // Handle click event for .Alert-Save class
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Resend this record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Resend Successfully!',
                                timer: 2000,
                            }).then(() => {
                                document.getElementById('show1').style.display = "block";
                            });

                            // Manipulate element displays after success
                            document.getElementById('show1').style.display = "block";
                            document.getElementById('show').style.display = "none";
                            document.getElementById('show2').style.display = "none";
                        }
                    });
                });
            }

            // Initialize SweetAlert
            var sweetAlert = new SweetAlert();
            sweetAlert.init();
        });
    </script>
    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
</asp:Content>

