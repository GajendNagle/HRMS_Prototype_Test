<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DepartmentEnquiryList.aspx.cs" Inherits="mis_Transaction_DepartmentEnquiryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #Editmodal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            /* padding-top: 60px;*/
        }

        th {
            white-space: nowrap;
        }


        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
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
                            <a href="#DepartmentalEnquiry" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Departmental Enquiry</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Departmental Enquiry List</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5 align-self-center" style="position: relative; bottom: 35px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
            <img src="../../img/Departmental%20Enquiry.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)" /><u>
            </u>
        </p>
    </div>

    
            <div class="card card-border-primary" id="divDataofAU5693" runat="server">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Departmental Enquiry List<br />
                                विभागीय पूछताछ सूची</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <%--<nav class="navbar navbar-expand-lg topbar ">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#"></a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                                    <li>

                                        <a class="nav-link  text-white " href="DepartmentEnquiryNotes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग पूछताछ
                                        </b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="DepartmentEnquiryList.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग पूछताछ सूची
                                        </b></a>
                                    </li>
                                    <li>

                                        <a class="nav-link  text-white " href="Rpt_DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>विभाग पूछताछ रिपोर्ट
                                        </b></a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <br />--%>
                    <fieldset>
                        <legend>Department Enquiry list / विभाग पूछताछ सूची</legend>
                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table id="tblList" class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Sr.No. <br />
                                                    सरल क्र.</th>
                                                <th>Name of Delinquent Public Servant 
                                            <br />
                                                    अपचारी लोक सेवक का नाम
                                                </th>
                                                <th>District <br />
                                                    जिला</th>
                                                <th>Development Block                                              <br />
                                                    विकासखंड</th>
                                                <th>Name of Departmental Investigating Officer <br />
                                                    विभागीय जांचकर्ता अधिकारी का नाम </th>
                                                <th>Name of Presenting Officer <br />
                                                    प्रस्तुतकर्ता अधिकारी का नाम </th>
                                                <th>Notice of Appearance of Delinquent Officer Before the<br />
                                                      Investigating Oficer <br />
                                                    जांच अधिकारी के समक्ष अपचारी अधिकारी को प्रस्तुत होने की सूचना</th>
                                                <th>Date of Suspension <br />
                                                    निलंबन दिनांक </th>
                                                <th>Imputed Date <br />
                                                    आरोपित दिनांक </th>
                                                <th>Date of Departmental Inquiry 
                                            <br />
                                                    विभागीय जांच की संक्षिप्त दिनांक </th>
                                                <th>First Hearing of Delinquent Before the Investigating Officer and
                                                    <br />
                                                       Reading of the Charge Sheet <br />
                                                    जांच आधिकारी के समक्ष अपचारी की प्रथम सुनवाई एवं आरोप पत्र का वाचन </th>
                                                <th>Presentation and Cross-Examination of<br />
                                                    Prosecution Evidence <br />
                                                    अभियोजन साक्ष्य की प्रस्तुती एवं प्रतिपरिक्षण </th>
                                                <th>Presentation and Cross-Examination of<br />
                                                    Defense Supporting Evidence <br />
                                                    बचाव सहायक साक्ष्य  की प्रस्तुती एवं प्रतिपरिक्षण </th>
                                                <th>Brief Presentation and Cross-Examination of
                                                    <br />
                                                    the Presenting Officer 
                                                    <br />
                                                    प्रस्तुतकर्ता अधिकारी की ब्रीफ प्रस्तुती एवं प्रतिपरिक्षण  </th>
                                                <th>Delinquent Employee's Counter<br />
                                                    Argument on brief <br />
                                                    ब्रीफ पर अपचारी कर्मचारी का प्रतिवाद</th>
                                                <th>Dispatch of Final Investigation
                                                   
                                                    Report to Disciplinary<br /> Officer <br />
                                                    अंतिम जांच प्रतिवेदन का अनुशासनिक अधिकारी को प्रेषण </th>
                                                <th>Remark <br />
                                                    रिमार्क </th>
                                                <th>Action<br /> कार्यवाहीं</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>श्री फागू लाल पटेल  उ.मा.शि.शा.उ.मा.वि.सर्रा  </td>
                                                <td>दमोह</td>
                                                <td>तेंदुखेडा </td>
                                                <td>श्रीमती मीना मसराम अपर कलेक्टर, जिला दमोह</td>

                                                <td>श्री एस.के. नेमा जिला शिक्षा अधि. जिला दमोह</td>
                                                <td>01/02/2024</td>
                                                <td>01/03/2024</td>
                                                <td>11/03/2024</td>
                                                <td>13/03/2024</td>
                                                <td>15/03/2024</td>
                                                <td>17/03/2024</td>
                                                <td>18/03/2024</td>
                                                <td>19/03/2024</td>
                                                <td>20/03/2024</td>
                                                <td>21/03/2024</td>
                                                <td>उपरोक्त कार्यवाही की जा रही है</td>
                                                <td>
                                                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton9_Click"><i class="fa fa-eye"></i></asp:LinkButton></td>--%>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton9_Click" Style="width: 100px">Fill Details</asp:LinkButton></td>

                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>श्री पुरुषोत्तम  लाल पटेल  उ.श्रे.शि.शा.उ.मा.वि. सैल वाडा</td>
                                                <td>दमोह</td>
                                                <td>तेंदु </td>
                                                <td>श्री व्ही.पी. पाटेल सहा.संचालक वि.ख.शि. अधि.जबेरा, जिला दमोह</td>

                                                <td>श्री रघुराज सिंह ठाकुर प्राचार्य शा.उत्कृष्ट उ.मा.विद्या तेंदुखेडा जिला दमोह</td>
                                                <td>11/02/2024</td>
                                                <td>01/03/2024</td>
                                                <td>11/03/2024</td>
                                                <td>13/03/2024</td>
                                                <td>14/03/2024</td>
                                                <td>15/03/2024</td>
                                                <td>18/03/2024</td>
                                                <td>19/03/2024</td>
                                                <td>20/03/2024</td>
                                                <td>21/03/2024</td>
                                                <td>मुख्य कार्यालय द्वारा प्रतीक्षारत है</td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton10" runat="server" CssClass="btn btn-info" OnClick="LinkButton9_Click" Style="width: 100px">Fill Details</asp:LinkButton></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>श्री राम प्रशाद गोटिया मा.शि.शा.उ.मा.वि. सैलवाडा</td>
                                                <td>दमोह</td>
                                                <td>तेंदुखेडा</td>
                                                <td>श्री व्ही.पी. पाटेल सहा.संचालक वि.ख.शि. अधि.जबेरा, जिला दमोह</td>

                                                <td>श्री रघुराज सिंह ठाकुर प्राचार्य शा.उत्कृष्ट उ.मा.विद्या तेंदुखेडा जिला दमोह</td>
                                                <td>03/02/2024</td>
                                                <td>01/03/2024</td>
                                                <td>11/03/2024</td>
                                                <td>13/03/2024</td>
                                                <td>16/03/2024</td>
                                                <td>17/03/2024</td>
                                                <td>18/03/2024</td>
                                                <td>19/03/2024</td>
                                                <td>20/03/2024</td>
                                                <td>21/03/2024</td>
                                                <td>कार्यालय द्वारा जिला न्यायालय को प्रेषित किया गया</td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-info" OnClick="LinkButton9_Click" Style="width: 100px">Fill Details</asp:LinkButton></td>
                                            </tr>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
            <div id="Editmodal" class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                <div class="modal-dialog modal-xxl " style="width: 65%; margin-top: 6%;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myLargeModalLabel2" style="font-weight: bold">Witness Detail</h4>
                            <button type="button" class="btn-close" onclick="CloseModal()" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">

                            <fieldset>
                                <legend>Witness Details</legend>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Witness Name</label><span style="color: red;"><b></b></span>
                                            <input type="text" id="nameInput" placeholder="Witness Name" class="form-control" maxlength="50" autocomplete="off"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Witness Mobile No</label><span style="color: red;"><b></b></span>
                                            <input type="text" id="numberInput" placeholder="Mobile Details" class="form-control" maxlength="10" autocomplete="off"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Witness Email-Id</label><span style="color: red;"><b></b></span>
                                            <input type="email"
                                                id="emailInput"
                                                placeholder="Witness Email-Id" class="form-control" maxlength="50" autocomplete="off"/>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <button type="button" class="btn-success btn-rounded" onclick="addData()">Add Details</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-responsive-lg" id="outputTable" style="display: none;">
                                                <tr>
                                                    <th style="background-color: #416a59">S. No.</th>
                                                    <th style="background-color: #416a59">Witness Name</th>
                                                    <th style="background-color: #416a59">Witness Email-Id</th>
                                                    <th style="background-color: #416a59">Mobile Details</th>
                                                </tr>
                                            </table>
                                            <%--End my code for table addDetails  --%>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Department Enquiry Status </label>
                                        <asp:RadioButtonList ID="lstStatus" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Selected="True">Open &nbsp;</asp:ListItem>
                                            <asp:ListItem>Close</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>
                            <%-- my Code Hide Show --%>
                            <div id="myDiv" style="display: none;">

                                <div class="row">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Order No</label><span style="color: red;"><b>*</b></span>
                                            <asp:TextBox ID="txtOrderNo" runat="server" CssClass="form-control" placeholder="Enter Order No." MaxLength="20" AutoComplete="off"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Order Date</label><span style="color: red;"><b>*</b></span>
                                            <asp:TextBox ID="txtOrderDate" runat="server" TextMode="Date" CssClass="form-control" MaxLength="20" AutoComplete="off"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Remark</label><span style="color: red;"><b>*</b></span>
                                            <asp:TextBox ID="txtRemark" runat="server" placeholder="Enter Remark" CssClass="form-control" TextMode="MultiLine" MaxLength="200" AutoComplete="off"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <div class="row">
                                        <div>

                                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded">Save</button>

                                            <button type="button" class="btn btn-danger btn-rounded" onclick="CloseModal()">Close</button>
                                        </div>
                                    </div>
                                </div>

                                <%-- my Code Hide Show --%>
                            </div>
                        </div>

                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
            </div>
        
    <!-- /.modal -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <%-- my Script code  --%>
    <script>
        $(document).ready(function () {
            $('#<%= lstStatus.ClientID %> input').change(function () {
                if ($(this).val() === "Close") {
                    $('#myDiv').show();
                } else {
                    $('#myDiv').hide();
                }
            });
        });
    </script>
    <%-- my Script code  --%>
    <script>
        function openModal() {
            document.getElementById('Editmodal').style.display = 'block';
        }
        function CloseModal() {
            document.getElementById('Editmodal').style.display = 'none';
        }
    </script>


    <script>
        function addData() {
            document.getElementById("outputTable").style.display = "table";
            // Get input values
            let name =
                document.getElementById("nameInput").value;
            let email =
                document.getElementById("numberInput").value;
            let mobile =
                document.getElementById("emailInput").value;
            //let address =
            //	document.getElementById("addressInput").value;

            // Get the table and insert a new row at the end
            let table = document.getElementById("outputTable");
            let newRow = table.insertRow(table.rows.length);
            if (table.rows.length <= 3) {
                newRow.insertCell(0).innerHTML = table.rows.length - 1;
                newRow.insertCell(1).innerHTML = name;
                newRow.insertCell(2).innerHTML = email;
                newRow.insertCell(3).innerHTML = mobile;
                document.getElementById("nameInput").value = "";
                document.getElementById("numberInput").value = "";
                document.getElementById("emailInput").value = "";
            }
            // Insert data into cells of the new row
            /*newRow.insertCell(3).innerHTML = address;*/

        }
    </script>

</asp:Content>

