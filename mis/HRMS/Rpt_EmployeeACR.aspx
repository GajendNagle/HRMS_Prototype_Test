<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_EmployeeACR.aspx.cs" Inherits="mis_Transaction_Rpt_EmployeeACR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #ddlPosition {
            position: relative;
            bottom: 20px;
        }
    </style>
    <style>
        td, th {
            padding: 0.4rem !important;
            vertical-align: middle;
        }

        @media print {
            @page {
                size: A4;
                margin: 5mm;
            }

            body {
                font-size: 11px;
                transform-origin: top left;
                transform: scale(calc(100% / var(--print-scale, 1)));
            }

            .page-break {
                page-break-after: always;
            }
        }

        textarea::-webkit-scrollbar {
            width: 0;
        }

        textarea {
            resize: vertical;
            min-height: 40px;
            /*Set a minimum height */
        }

        #ddlPosition {
            position: relative;
            bottom: 20px;
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
                            <a href="#ACRReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>ACR Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Reporting Officer Fill By ACR</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%--  <div class="row page-titles mb-4">--%>
    <%--  <div class="row page-titles mb-4">--%>
     <div class="row"><div class="col-md-5 ">
          <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
      </div></div>
    

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4>PART-1 Basic Information Print/
                   भाग एक- सामान्य जानकारी प्रिंट
                    </h4>
                </div>
            </div>
        </div>
        <br />
        <div class="card-body">


            <%--        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
            </div>--%>

            <div runat="server" id="show">

                <fieldset>
                    <legend>EMPLOYEE PERSONAL INFORMATION / कर्मचारी की व्यक्तिगत जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Financial Year<br />
                                    वार्षिक प्रतिवेदन अवधि वर्ष <span style="color: red">*</span>
                                </label>
                                <asp:DropDownList runat="server" ID="ddlyera" CssClass="form-control select2">
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
                                <asp:TextBox runat="server" ReadOnly="true" ID="txtName" class="form-control" autocomplete="off" value="गोपाल वर्मा"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Unique ID<br />
                                    कर्मचारी आई.डी
                                     <span style="color: red">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="TextBox4" ReadOnly="true" class="form-control" autocomplete="off" value="EDP4561231556"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation
                                     <br />
                                    पद नाम <span style="color: red">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="DropDownList1" class="form-control " autocomplete="off" ReadOnly="true" value="सहायक शिक्षक"></asp:TextBox>
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
                                <asp:TextBox runat="server" ReadOnly="true" ID="TXTDOB" class="form-control" autocomplete="off" value="1999-12-03" TextMode="date"></asp:TextBox>

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
                                <asp:TextBox runat="server" ReadOnly="true" ID="ddlPosting" value="भोपाल" class="form-control" autocomplete="off"></asp:TextBox>
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
                                <asp:TextBox runat="server" ReadOnly="true" ID="txtpriviesdesinnetion" class="form-control" autocomplete="off" value="St Theresa Girls School/489754554"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    <br />
                                    Date Of First Posting<br />
                                    प्रथम नियुक्ति का दिनांक<span style="color: red;">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="txtFirstPosting" class="form-control" autocomplete="off" ReadOnly="true" value="1992-09-17" TextMode="Date"></asp:TextBox>

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
                                <asp:TextBox runat="server" ID="TextBox2" ReadOnly="true" class="form-control" autocomplete="off" value="प्राथमिक अध्यापक"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label>
                                    Current Date Of Promotion
                                     <br />
                                    वर्तमान पद पर नियुक्ति का  दिनांक<span style="color: red;">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="TextBox3" class="form-control " autocomplete="off" ReadOnly="true" value="2024-01-23" TextMode="Date"></asp:TextBox>

                            </div>
                        </div>



                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label>
                                    Date Of Promotion
                                     <br />
                                    पदोन्नति का दिनांक<span style="color: red;">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="txtPrmaotion" class="form-control " autocomplete="off" value="2024-01-23" TextMode="Date"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label>
                                    Date OF Filiing Of Annual Immovabel Property Return<br />
                                    स्थाई संपत्ती विवरण दाखिल करने का दिनांक<span style="color: red;">*</span>
                                </label>
                                <asp:TextBox runat="server" ID="TextBox5" class="form-control" autocomplete="off" value="1989-12-10" TextMode="Date"></asp:TextBox>

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
                            <table id="Table5" class="table table-bordered table-responsive-lg text-center " runat="server">
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
                                        <th rowspan="2">Remark
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
                                        <td cssclass="fw-bold text-center">पहली कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">85%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td cssclass="fw-bold text-center">दूसरी</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">92%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>
                                        <td cssclass="fw-bold text-center">तीसरी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">82%</td>
                                        <td cssclass="Fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>4</td>
                                        <td cssclass="fw-bold text-center">चौथी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">76%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>5</td>
                                        <td cssclass="fw-bold text-center">पाचंवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">89%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>6</td>
                                        <td cssclass="fw-bold text-center">छटवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">75%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>7
                                        </td>
                                        <td cssclass="fw-bold text-center">सातवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">85%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>8</td>
                                        <td cssclass="fw-bold text-center">आठवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">92%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>9</td>
                                        <td cssclass="fw-bold text-center">नव्वी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">82%</td>
                                        <td cssclass="Fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>10</td>
                                        <td cssclass="fw-bold text-center">दसवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">76%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>11</td>
                                        <td cssclass="fw-bold text-center">ग्यारवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">`189%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>12</td>
                                        <td cssclass="fw-bold text-center">बरवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पहला</td>
                                        <td cssclass="fw-bold text-center">दूसरा</td>
                                        <td cssclass="fw-bold text-center">75%</td>
                                        <td cssclass="fw-bold text-center">नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
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
                            <table id="Table2" class="table table-bordered  text-center " runat="server">
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
                                        <td cssclass="fw-bold text-center">पहली कक्षा</td>
                                        <td cssclass="fw-bold text-center">हिंदी</td>
                                        <td cssclass="fw-bold text-center">100%</td>

                                        <td cssclass="fw-bold text-center">89%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td cssclass="fw-bold text-center">दूसरी कक्षा</td>
                                        <td cssclass="fw-bold text-center">गणित</td>
                                        <td cssclass="fw-bold text-center">100%
                                        </td>
                                        <td cssclass="fw-bold text-center">68%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>3</td>
                                        <td cssclass="fw-bold text-center">तीसरी कक्षा</td>
                                        <td cssclass="fw-bold text-center">अंग्रेजी</td>
                                        <td cssclass="fw-bold text-center">100%</td>
                                        <td cssclass="fw-bold text-center">74%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>4</td>
                                        <td cssclass="fw-bold text-center">चौथी कक्षा</td>
                                        <td cssclass="fw-bold text-center">पर्यावरण</td>
                                        <td cssclass="fw-bold text-center">100%</td>
                                        <td cssclass="fw-bold text-center">63%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>5</td>
                                        <td cssclass="fw-bold text-center">पाचंवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">हिंदी</td>
                                        <td cssclass="fw-bold text-center">100%</td>

                                        <td cssclass="fw-bold text-center">89%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>6</td>
                                        <td cssclass="fw-bold text-center">छटवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">गणित</td>
                                        <td cssclass="fw-bold text-center">100%
                                        </td>
                                        <td cssclass="fw-bold text-center">68%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>7</td>
                                        <td cssclass="fw-bold text-center">सातवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">अंग्रेजी</td>
                                        <td cssclass="fw-bold text-center">100%</td>
                                        <td cssclass="fw-bold text-center">74%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>8</td>
                                        <td cssclass="fw-bold text-center">आठवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">विज्ञान</td>
                                        <td cssclass="fw-bold text-center">100%</td>
                                        <td cssclass="fw-bold text-center">63%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>9</td>
                                        <td cssclass="fw-bold text-center">नव्वी कक्षा</td>
                                        <td cssclass="fw-bold text-center">हिंदी</td>
                                        <td cssclass="fw-bold text-center">100%</td>

                                        <td cssclass="fw-bold text-center">89%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>10</td>
                                        <td cssclass="fw-bold text-center">दसवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">गणित</td>
                                        <td cssclass="fw-bold text-center">100%
                                        </td>
                                        <td cssclass="fw-bold text-center">68%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>11</td>
                                        <td cssclass="fw-bold text-center">ग्यारवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">गणित</td>
                                        <td cssclass="fw-bold text-center">100%</td>
                                        <td cssclass="fw-bold text-center">74%</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>12</td>
                                        <td cssclass="fw-bold text-center">बरवी कक्षा</td>
                                        <td cssclass="fw-bold text-center">जीव विज्ञान</td>
                                        <td cssclass="fw-bold text-center">100%</td>
                                        <td cssclass="fw-bold text-center">63%</td>

                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>
                                <span class="fa-pull-left">Reasons, if any, fro not completing the target
                                 <br />
                                    लक्ष्य  प्राप्ति न होने के करण</span></label>
                            <textarea class="form-control" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Nil"></textarea>
                        </div>
                    </div>
                </fieldset>
                <br />

                <fieldset>
                    <legend>Academic Performance and Syllabus Completion Status  / शैक्षणिक प्रदर्शन और पाठ्यक्रम समापन की स्थिति</legend>

                    <div class="row">
                        <div class="col-md-12 table-responsive">
                            <table id="Table3" class="table table-bordered  text-center " runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No.<br />
                                            सरल.क्र</th>
                                        <th>Class<br />
                                            कक्षा</th>
                                        <th>Subject<br />
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


                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>पहली कक्षा</td>
                                        <td>हिंदी</td>
                                        <td>20</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>5</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>5</td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>2
                                        </td>
                                        <td>दूसरी कक्षा
                                        </td>
                                        <td>गणित
                                        </td>
                                        <td>30</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>8</td>
                                        <td>2</td>
                                        <td>10</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>8</td>
                                        <td>2</td>
                                        <td>10</td>

                                    </tr>

                                    <tr valign="middle">
                                        <td>3
                                        </td>
                                        <td>तीसरी कक्षा
                                        </td>
                                        <td>अंग्रेजी
                                        </td>
                                        <td>50
                                        </td>
                                        <td>10</td>
                                        <td>15</td>
                                        <td>5</td>
                                        <td>12</td>
                                        <td>8</td>
                                        <td>10</td>
                                        <td>15</td>
                                        <td>5</td>
                                        <td>12</td>
                                        <td>8</td>

                                    </tr>

                                    <tr valign="middle">
                                        <td>4
                                        </td>
                                        <td>चौथी  कक्षा
                                        </td>
                                        <td>पर्यावरण
                                        </td>
                                        <td>25
                                        </td>
                                        <td>5</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>8</td>
                                        <td>2</td>
                                        <td>5</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>8</td>
                                        <td>2</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>5
                                        </td>
                                        <td>पाचंवी कक्षा
                                        </td>
                                        <td>हिंदी
                                        </td>
                                        <td>68
                                        </td>
                                        <td>10</td>
                                        <td>30</td>
                                        <td>9</td>
                                        <td>6</td>
                                        <td>12</td>
                                        <td>10</td>
                                        <td>30</td>
                                        <td>9</td>
                                        <td>6</td>
                                        <td>12</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>6
                                        </td>
                                        <td>छटवी कक्षा
                                        </td>
                                        <td>गणित
                                        </td>
                                        <td>20</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>5</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>5</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>7
                                        </td>
                                        <td>सातवी कक्षा
                                        </td>
                                        <td>अंग्रेजी
                                        </td>
                                        <td>30</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>8</td>
                                        <td>2</td>
                                        <td>10</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>8</td>
                                        <td>2</td>
                                        <td>10</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>8
                                        </td>
                                        <td>आठवी कक्षा
                                        </td>
                                        <td>विज्ञान
                                        </td>
                                        <td>50
                                        </td>
                                        <td>10</td>
                                        <td>15</td>
                                        <td>5</td>
                                        <td>12</td>
                                        <td>8</td>
                                        <td>10</td>
                                        <td>15</td>
                                        <td>5</td>
                                        <td>12</td>
                                        <td>8</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>9
                                        </td>
                                        <td>नव्वी कक्षा
                                        </td>
                                        <td>हिंदी
                                        </td>
                                        <td>25
                                        </td>
                                        <td>5</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>8</td>
                                        <td>2</td>
                                        <td>5</td>
                                        <td>6</td>
                                        <td>4</td>
                                        <td>8</td>
                                        <td>2</td>


                                    </tr>
                                    <tr valign="middle">
                                        <td>10
                                        </td>
                                        <td>दसवी कक्षा
                                        </td>
                                        <td>गणित
                                        </td>
                                        <td>68
                                        </td>
                                        <td>10</td>
                                        <td>30</td>
                                        <td>9</td>
                                        <td>6</td>
                                        <td>12</td>
                                        <td>10</td>
                                        <td>30</td>
                                        <td>9</td>
                                        <td>6</td>
                                        <td>12</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>11
                                        </td>
                                        <td>ग्यारवी कक्षा
                                        </td>
                                        <td>गणित
                                        </td>
                                        <td>40
                                        </td>
                                        <td>8</td>
                                        <td>6</td>
                                        <td>10</td>
                                        <td>5</td>
                                        <td>11</td>
                                        <td>8</td>
                                        <td>6</td>
                                        <td>10</td>
                                        <td>5</td>
                                        <td>11</td>

                                    </tr>
                                    <tr valign="middle">
                                        <td>12
                                        </td>
                                        <td>बरवी कक्षा
                                        </td>
                                        <td>जीव विज्ञान
                                        </td>
                                        <td>45
                                        </td>
                                        <td>6</td>
                                        <td>7</td>
                                        <td>15</td>
                                        <td>10</td>
                                        <td>7</td>
                                        <td>6</td>
                                        <td>7</td>
                                        <td>15</td>
                                        <td>10</td>
                                        <td>7</td>

                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>
                                Reasons Of Not achieving target
                                 <br />
                                लक्ष्य  से कम उपलब्धि के करण</label>
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
                                   <br />

                                    अकादमिक कार्यो में भूमिका</th>
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
                            <table id="Table4" class="table table-bordered table-responsive-lg text-center " runat="server">
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


                <div class="modal-footer justify-content-center" id="button">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Print</button>


                </div>

            </div>
        </div>

    </div>


    <div class="modal fade" id="staticBackdrop" tabindex="-1" aria-labelledby="staticBackdropModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header d-print-none">
                    <h3 class="modal-title w-100 text-center" id="staticBackdropLabel"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-print-block" id="printSection">
                    <fieldset>
                        <br />

                        <div class="row text-center">
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>
                            <div class="col-sm-8 text-center">

                                <h3><strong><b>व्याख्याता/शिक्षक की गोपनीय चरित्रावली का प्रारूप</b></strong></h3>
                                <h4><strong><b>स्कूल शिक्षा विभाग मध्य प्रदेश शासन</b></strong></h4>
                                <h4><strong><b>जिला:- भोपल</b></strong></h4>
                            </div>
                            <div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                            </div>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                        <div class="row">

                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col text-start">
                                        <span class="fw-bold">वार्षिक प्रतिवेदन अवधि वर्ष :-</span>

                                        <span class="fw-bold">2023-2024</span>
                                    </div>

                                    <div class="col text-end">
                                        <span class="fw-bold">आवेदन दिनाँक:-</span>
                                        <span class="fw-bold">09-03-2024</span>

                                    </div>
                                </div>


                            </div>

                            <div class="col-md-12">
                                <h4 class="text-center mt-2 mb-2 font-bold"><u>:: For Teacher's Cadre (Class 1st to 12th)::<br />
                                    <span class="fs-5">:: शिक्षक संवर्ग के लिए कक्षा 1 से 12 ::</span></u></h4>
                            </div>
                            <div class="col-12">

                                <h5 class="font-bold"><u>EMPLOYEE PERSONAL INFORMATION / कर्मचारी की व्यक्तिगत जानकारी</u> :-</h5>
                            </div>

                            <div class="col-md-12">
                                <table class="table table-bordered th-left">
                                    <tr valign="middle">

                                        <th>Name
                                            <br />
                                            नाम</th>
                                        <td>सिया वर्मा</td>
                                        <th>Designation
                                            <br />
                                            पद नाम</th>
                                        <td>स्नातकोत्तर शिक्षक(PGT)</td>

                                    </tr>
                                    <tr valign="middle">

                                        <th>Unique ID
                                            <br />
                                            कर्मचारी आई.डी </th>
                                        <td>EDP4561231556</td>
                                        <th>Date of Birth
                                            <br />
                                            जन्मतिथि</th>
                                        <td>03-Dec-1999
                                        </td>
                                    </tr>
                                    <tr valign="middle">
                                        <th>Institution of Posting
                                            <br />
                                            पदस्थी शाला/स्थान </th>
                                        <td>Bhopal<br />
                                            भोपाल</td>
                                        <th>Dise Code of Institution
                                            <br />
                                            पदस्थी शाला का डाइस कोड </th>
                                        <td>St Theresa Girls School/489754554</td>
                                    </tr>
                                    <tr valign="middle">
                                        <th>Date OF First Posting  
                                            <br />



                                            प्रथम नियुक्ति का दिनांक</th>
                                        <td>17-Sep-1992

                                        </td>
                                        <th>First Posting designation<br />

                                            प्रथम नियुक्ति का पद</th>
                                        <td>प्राथमिक अध्यापक</td>
                                    </tr>
                                    <tr valign="middle">
                                        <th>Current Date Of Promotion<br />
                                            वर्तमान पद पर नियुक्ति का दिनांक</th>
                                        <td>01/23/2024</td>
                                        <th>Date Of Promotion<br />
                                            पदोन्नति का दिनांक</th>
                                        <td>01/23/2024</td>
                                    </tr>
                                    <tr valign="middle">
                                        <th>Date OF Filiing of annual Immovabel Property Return  
                                            <br />
                                            स्थाई संपत्ती विवरण दाखिल करने का दिनांक </th>
                                        <td>10-Dec-1989
                                        </td>

                                    </tr>
                                </table>

                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <div class="row">
                            <div class="col-12">

                                <h4 class="text-center mt-2 mb-2 font-bold">:: <u>Self-Evaluation ::<br />
                                    <span class="fs-5">:: स्वमूल्यांकन ::</span></u></h4>
                            </div>
                            <div class="col-12">

                                <h5 class=" font-bold"><u>Improving Attendance Of Childdren  / छात्र उपिस्थिति में वृद्धि</u> :-</h5>
                            </div>
                            <br />

                            <div class="col-12">
                                <table class="table table-bordered  text-center ">
                                    <tbody>
                                        <tr valign="middle">
                                            <th rowspan="2">S.No.<br />
                                                सरल.क्र </th>
                                            <th rowspan="2">Class being taught<br />
                                                पढाई जाने वाली कक्षा</th>
                                            <th colspan="2">Enrolment<br />
                                                नामांकन</th>
                                            <th rowspan="2">Average Annual attendance 
                
                    in Percentege<br />
                                                वार्षिक औसत उपिस्थिति</th>
                                            <th rowspan="2">Remark
                                           <br />
                                                टिप्पणी</th>
                                        </tr>


                                        <tr valign="middle">
                                            <th>Previous Session<br />
                                                विगत सत्र</th>
                                            <th>Present Session
                                                <br />
                                                वर्तमान सत्र</th>
                                        </tr>

                                        <tr valign="middle">
                                            <td>1
                                            </td>
                                            <td>पहली कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>85%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>2</td>
                                            <td>दूसरी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>92%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>3</td>
                                            <td>तीसरी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>82%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>4</td>
                                            <td>चौथी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>76%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>5</td>
                                            <td>पाचंवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>89%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>6</td>
                                            <td>छटवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>75%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>7
                                            </td>
                                            <td>सातवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>85%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>


                                        </tr>
                                        <tr valign="middle">
                                            <td>8</td>
                                            <td>आठवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>92%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>9</td>
                                            <td>नव्वी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>82%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>10</td>
                                            <td>दसवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>76%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>11</td>
                                            <td>ग्यारवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>`189%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>12</td>
                                            <td>बरवी कक्षा</td>
                                            <td>पहला</td>
                                            <td>दूसरा</td>
                                            <td>75%</td>
                                            <td>नियमित उपस्थिति बनाए रखना छात्रों के लिए महत्वपूर्ण है</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </fieldset>
                    <div class="page-break"></div>

                    <fieldset>
                        <div class="row">
                            <div class="col-12">
                                <h5 class=" font-bold"><u>Complention of Syllabus Aganinst The Target / लक्ष्य के विरुद्ध पाठ्यक्रम  पूर्णता की स्थिति</u> :-</h5>

                            </div>
                            <br />
                            <div class="col-12">
                                <table class="table table-bordered text-center ">
                                    <tbody>
                                        <tr valign="middle">
                                            <th>S.No.
      <br />
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


                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>पहली कक्षा</td>
                                            <td>हिंदी</td>
                                            <td>100%</td>

                                            <td>89%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>2</td>
                                            <td>दूसरी कक्षा</td>
                                            <td>गणित</td>
                                            <td>100%
                                            </td>
                                            <td>68%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>3</td>
                                            <td>तीसरी कक्षा</td>
                                            <td>अंग्रेजी</td>
                                            <td>100%</td>
                                            <td>74%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>4</td>
                                            <td>चौथी कक्षा</td>
                                            <td>पर्यावरण</td>
                                            <td>100%</td>
                                            <td>63%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>5</td>
                                            <td>पाचंवी कक्षा</td>
                                            <td>हिंदी</td>
                                            <td>100%</td>

                                            <td>89%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>6</td>
                                            <td>छटवी कक्षा</td>
                                            <td>गणित</td>
                                            <td>100%
                                            </td>
                                            <td>68%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>7</td>
                                            <td>सातवी कक्षा</td>
                                            <td>अंग्रेजी</td>
                                            <td>100%</td>
                                            <td>74%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>8</td>
                                            <td>आठवी कक्षा</td>
                                            <td>विज्ञान</td>
                                            <td>100%</td>
                                            <td>63%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>9</td>
                                            <td>नव्वी कक्षा</td>
                                            <td>हिंदी</td>
                                            <td>100%</td>

                                            <td>89%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>10</td>
                                            <td>दसवी कक्षा</td>
                                            <td>गणित</td>
                                            <td>100%
                                            </td>
                                            <td>68%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>11</td>
                                            <td>ग्यारवी कक्षा</td>
                                            <td>गणित</td>
                                            <td>100%</td>
                                            <td>74%</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>12</td>
                                            <td>बरवी कक्षा</td>
                                            <td>जीव विज्ञान</td>
                                            <td>100%</td>
                                            <td>63%</td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>

                            <div class="col-12">
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr valign="middle">

                                            <th style="width: 60%">Reasons, if any, for not completing the target
                                                <br />
                                                लक्ष्य प्राप्ति न होने के कारण </th>
                                            <td style="padding: 0.75rem;" class=" text-center"><span>Nill</span></td>

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </fieldset>
                    <br />
                    <fieldset>
                        <div class="row">
                            <div class="col-12">

                                <h5 class=" font-bold"><u>Academic Performance and Syllabus Completion Status  / शैक्षणिक प्रदर्शन और पाठ्यक्रम समापन की स्थिति</u>:-</h5>
                            </div>
                            <br />

                            <div class="col-12">
                                <table class="table table-bordered text-center">
                                    <tbody>
                                        <tr>
                                            <th>S.No.<br />
                                                सरल.क्र</th>
                                            <th>Class<br />
                                                कक्षा</th>
                                            <th>Subject<br />
                                                विषय</th>
                                            <th>No.of
                     Student<br />
                                                छात्र संख्या
                                            </th>
                                            <th colspan="5">Previous class annual
examination Result grade
wises Student number<br />
                                                पूर्व कक्षा के परीक्षा परिणाम के
अनुसार छात्रों की ग्रेडवार संख्या
                                            </th>
                                            <th colspan="5">Achievement on the basis
of annual examination result
                                                <br />
                                                वार्षिक परीक्षा के
आधार पर उपलब्धि<br />
                                                (Student in Grade)<br />
                                                (ग्रेडवार छात्र संख्या)</th>
                                        </tr>


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
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>पहली कक्षा</td>
                                            <td>हिंदी</td>
                                            <td>20</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>5</td>


                                        </tr>
                                        <tr valign="middle">
                                            <td>2
                                            </td>
                                            <td>दूसरी कक्षा
                                            </td>
                                            <td>गणित
                                            </td>
                                            <td>30</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>10</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>10</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>3
                                            </td>
                                            <td>तीसरी कक्षा
                                            </td>
                                            <td>अंग्रेजी
                                            </td>
                                            <td>50
                                            </td>
                                            <td>10</td>
                                            <td>15</td>
                                            <td>5</td>
                                            <td>12</td>
                                            <td>8</td>
                                            <td>10</td>
                                            <td>15</td>
                                            <td>5</td>
                                            <td>12</td>
                                            <td>8</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>4
                                            </td>
                                            <td>चौथी  कक्षा
                                            </td>
                                            <td>पर्यावरण
                                            </td>
                                            <td>25
                                            </td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>5
                                            </td>
                                            <td>पाचंवी कक्षा
                                            </td>
                                            <td>हिंदी
                                            </td>
                                            <td>68
                                            </td>
                                            <td>10</td>
                                            <td>30</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>12</td>
                                            <td>10</td>
                                            <td>30</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>12</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>6
                                            </td>
                                            <td>छटवी कक्षा
                                            </td>
                                            <td>गणित
                                            </td>
                                            <td>20</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>3</td>
                                            <td>2</td>
                                            <td>5</td>

                                        </tr>
                                        <tr valign="middle">
                                            <td>7
                                            </td>
                                            <td>सातवी कक्षा
                                            </td>
                                            <td>अंग्रेजी
                                            </td>
                                            <td>30</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>10</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>10</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>8
                                            </td>
                                            <td>आठवी कक्षा
                                            </td>
                                            <td>विज्ञान
                                            </td>
                                            <td>50
                                            </td>
                                            <td>10</td>
                                            <td>15</td>
                                            <td>5</td>
                                            <td>12</td>
                                            <td>8</td>
                                            <td>10</td>
                                            <td>15</td>
                                            <td>5</td>
                                            <td>12</td>
                                            <td>8</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>9
                                            </td>
                                            <td>नव्वी कक्षा
                                            </td>
                                            <td>हिंदी
                                            </td>
                                            <td>25
                                            </td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                            <td>5</td>
                                            <td>6</td>
                                            <td>4</td>
                                            <td>8</td>
                                            <td>2</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>10
                                            </td>
                                            <td>दसवी कक्षा
                                            </td>
                                            <td>गणित
                                            </td>
                                            <td>68
                                            </td>
                                            <td>10</td>
                                            <td>30</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>12</td>
                                            <td>10</td>
                                            <td>30</td>
                                            <td>9</td>
                                            <td>6</td>
                                            <td>12</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>11
                                            </td>
                                            <td>ग्यारवी कक्षा
                                            </td>
                                            <td>गणित
                                            </td>
                                            <td>40
                                            </td>
                                            <td>8</td>
                                            <td>6</td>
                                            <td>10</td>
                                            <td>5</td>
                                            <td>11</td>
                                            <td>8</td>
                                            <td>6</td>
                                            <td>10</td>
                                            <td>5</td>
                                            <td>11</td>
                                        </tr>
                                        <tr valign="middle">
                                            <td>12
                                            </td>
                                            <td>बरवी कक्षा
                                            </td>
                                            <td>जीव विज्ञान
                                            </td>
                                            <td>45
                                            </td>
                                            <td>6</td>
                                            <td>7</td>
                                            <td>15</td>
                                            <td>10</td>
                                            <td>7</td>
                                            <td>6</td>
                                            <td>7</td>
                                            <td>15</td>
                                            <td>10</td>
                                            <td>7</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-12">
                                <table class="table table-bordered ">
                                    <tbody>
                                        <tr valign="middle">
                                            <th style="width: 60%">Reasons, if any, for not completing the target
                                                <br />
                                                लक्ष्य प्राप्ति न होने के कारण </th>
                                            <td style="padding: 0.75rem;" class="text-center text-"><span>Nill</span></td>
                                    </tbody>
                                </table>

                            </div>
                        </div>


                    </fieldset>

                    <div class="page-break"></div>

                    <fieldset>
                        <div class="row">
                            <div class="col-12">
                                <h5 class=" font-bold"><u>Role in academic / अकादमिक कार्यो में भूमिका  </u>:-</h5>
                            </div>
                            <br />
                            <div class="col-md-12">
                                <table class="table table-bordered th-left">
                                    <tr>

                                        <th>S.No.<br />
                                            सरल क्र.</th>
                                        <th>Role in academic<br />

                                            अकादमिक कार्यो में भूमिका</th>
                                        <th>Please give details of the notable works done on the following points<br />
                                            कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                                    </tr>
                                    <tr valign="middle">
                                    <tbody>
                                        <tr valign="middle">
                                            <th>1</th>
                                            <th>Use of teaching learning aid
                                                <br />
                                                शिक्षक सहायक सामग्री का उपयोग </th>
                                            <td>Nill</td>
                                        </tr>

                                        <tr valign="middle">
                                            <th>2</th>
                                            <th>Use of lesson plan<br />
                                                पाठ्य योजना का उपयोग</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>3</th>
                                            <th>Innovation and impect
                                                <br />
                                                नवाचार तथा उसका प्रभाव</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>4</th>
                                            <th>Checking of notebook's of students
                                                <br />
                                                छात्रों की अभ्यास पुस्तिका की जांच</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>5</th>
                                            <th>Remedial teaching
                                                <br />
                                                निदात्मक शिक्षण</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>6</th>
                                            <th>Extra Classes
                                                <br />
                                                अतिरिक्त कक्षा संचालन </th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </fieldset>

                    <br />
                    <fieldset>
                        <div class="row">
                            <div class="col-12">
                                <h5 class=" font-bold"><u>Extraacurricular Activities / पाठ्येत्तर गतिविधियों मे भूमिका   </u>:-</h5>
                            </div>
                            <br />
                            <div class="col-md-12">
                                <table class="table table-bordered th-left">
                                    <tr>

                                        <th>S.No.<br />
                                            सरल क्र.</th>
                                        <th>Extraacurricular Activities
          <br />
                                            पाठ्येत्तर गतिविधियों मे भूमिका
          <br />

                                            अकादमिक कार्यो में भूमिका</th>
                                        <th>Please give details of the notable works done on the following points<br />
                                            कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                                    </tr>
                                    <tr valign="middle">
                                    <tbody>
                                        <tr valign="middle">
                                            <th>1</th>
                                            <th>Sports/Literary/Cultural Activities
                                                <br />
                                                खेल/साहित्यिक/सांस्कृतिक गतिविधियाँ </th>
                                            <td>Nill</td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>2</th>
                                            <th>Extra Ordinary Work in Hygiene/Environment
                                                <br />
                                                स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य</th>
                                            <td>Nil
                                            </td>
                                        </tr>
                                        <tr valign="middle">
                                            <th>3</th>
                                            <th>Use of ICT in teaching and learning<br />
                                                शिक्षण एवं सिखने में आई सी टी का उपयोग</th>
                                            <td>Nil
                                            </td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <div class="row">
                            <div class="col-12">
                                <h5 class=" font-bold"><u>Academic trsining attended during Appraisal period / प्रतिवेदित अवधि मे प्रशिक्षण मे सहभागिता </u>:-</h5>
                            </div>
                            <br />
                            <div class="col-md-12">
                                <table class="table table-bordered th-left">
                                    <tbody>
                                        <tr valign="middle">
                                            <th>S.No.<br />
                                                सरल.क्र</th>
                                            <th>Name of Training<br />
                                                प्रशिक्षण का नाम</th>
                                            <%-- <th>Subject<br />
                                                विषय</th>--%>
                                            <th>Period of Training<br />
                                                प्रशिक्षण की अवधि</th>
                                            <th>Result/Grade<br />
                                                उपलब्धि/ग्रेड</th>
                                        </tr>


                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>स्कूली शिक्षा</td>
                                            <%--   <td>जीव विज्ञान</td>--%>
                                            <td>45 दिन</td>
                                            <td>"A"</td>

                                        </tr>
                                    </tbody>

                                </table>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <table class="table table-bordered th-left">
                                    <tbody>
                                        <tr valign="middle" style="width: 50%">
                                            <th>Any Other Work Which You Want to Mention as an Outstanding Contribution
                                                <br />
                                                कोई अन्य कार्य जिसे आप एक उत्कृष्ट योगदान के रूप में उल्लेख करना चाहते है </th>
                                            <td style="width: 50%" class="text-center">Nill</td>
                                        </tr>
                                    </tbody>
                                </table>


                            </div>
                        </div>
                        <br />
                    </fieldset>

                </div>
                <div class="modal-footer justify-content-center d-print-none">
                    <button type="button" class="btn btn-primary" onclick=" printModalContent('staticBackdrop'); ">Print</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>


        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }

        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
            document.body.innerHTML = modalContent.innerHTML
            window.print();
            window.location.href = "Rpt_EmployeeACR.aspx";
        }
        document.addEventListener('keydown', function (event) {
            if (event.ctrlKey && event.key === 'p') {
                // Prevent default behavior of Ctrl+P (opening print dialog)
                event.preventDefault();
                // Print the content of the active modal
                var activeModal = document.querySelector('.modal.show');
                if (activeModal) {
                    var modalId = activeModal.getAttribute('id');
                    printModalContent(modalId);
                }
            }
        });

    </script>

</asp:Content>

