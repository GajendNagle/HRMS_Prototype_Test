﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DepartmentEnquiryList.aspx.cs" Inherits="mis_Transaction_DepartmentEnquiryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        /* Style for the modal */
        #Editmodal {
            display: none;
            position: fixed;
            
            left: 0;
            top: 0;
            /* width: 100%;
    height: 100%;*/
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            /* padding-top: 60px;*/
        }



        /* Close button style */
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

    <div class="row page-titles mb-4">
                   <div class="col-md-5 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                    <img src="../../img/Departmental%20Enquiry.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u>
                    </u>
                </p>
            </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                   <%-- <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=DepartmentEnquiry" title="click to go on">Department Enquiry</a></li>--%>
                     <li class="breadcrumb-item active">Department Enquiry</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
              <nav class="navbar navbar-expand-lg topbar ">
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

                      <a class="nav-link  text-white " href="DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i> Department Enquiry
                      </b></a>
                  </li>
                  <li>

                      <a class="nav-link  text-white " href="DepartmentEnquiryList.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i> Department Enquiry List
                      </b></a>
                  </li>
                  <li>

                      <a class="nav-link  text-white " href="Rpt_DepartmentEnquiry.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i> Department Enquiry Report
                      </b></a>
                  </li>
              </ul>

          </div>
      </div>
  </nav>
  <br />
            <fieldset>
                <legend>Department Enquiry list</legend>
                <div class="row justify-content-end">
                    <div class="col-md-2">
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
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table table-responsive">
                            <table id="tblList" class="table table-bordered">
                                <thead style="background-color: #416a59">
                                    <tr style="color: white">
                                        <th>Sr.No.</th>
                                        <th>अपचारी लोक सेवक का नाम</th>
                                        <th>जिला</th>
                                        <th>विकासखंड</th>
                                        <th>विभागीय जांचकर्ता अधिकारी का नाम</th>
                                        <th>प्रस्तुतकर्ता अधिकारी का नाम</th>
                                        <th>जांच अधिकारी के समक्ष अपचारी अधिकारी को प्रस्तुत होने की सूचना </th>
                                        <th>निलंबन दिनांक</th>
                                        <th>आरोपित दिनांक</th>
                                        <th>विभागीय जांच की संक्षिप्त दिनांक</th>
                                        <th>जांच आधिकारी के समक्ष अपचारी की प्रथम सुनवाई एवं आरोप पत्र का वाचन</th>
                                        <th>अभियोजन साक्ष्य की प्रस्तुती एवं प्रतिपरिक्षण </th>
                                        <th>बचाव सहायक साक्ष्य  की प्रस्तुती एवं प्रतिपरिक्षण </th>
                                        <th>प्रस्तुतकर्ता अधिकारी की ब्रीफ प्रस्तुती एवं प्रतिपरिक्षण </th>
                                        <th>ब्रीफ पर अपचारी कर्मचारी का प्रतिवाद</th>
                                        <th>अंतिम जांच प्रतिवेदन का अनुशासनिक अधिकारी को प्रेषण</th>
                                        <th>रिमार्क</th>
                                        <th>Action</th>

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
                                        <td >
                                            <%--<asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton9_Click"><i class="fa fa-eye"></i></asp:LinkButton></td>--%>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" OnClick="LinkButton9_Click" style="width:100px">Fill Details</asp:LinkButton></td>

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
                                            <asp:LinkButton ID="LinkButton10" runat="server" CssClass="btn btn-info" OnClick="LinkButton9_Click"  style="width:100px">Fill Details</asp:LinkButton></td>
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
                                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-info" OnClick="LinkButton9_Click"  style="width:100px">Fill Details</asp:LinkButton></td>
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
                        <legend> Witness Details</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Witness Name</label><span style="color: red;"><b></b></span>
                                    <input type="text" id="nameInput" placeholder="Witness Name" class="form-control" maxlength="50" autocomplete="off">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Witness Mobile No</label><span style="color: red;"><b></b></span>
                                    <input type="text" id="numberInput" placeholder="Mobile Details" class="form-control" maxlength="10" autocomplete="off">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Witness Email-Id</label><span style="color: red;"><b></b></span>
                                    <input type="email"
                                        id="emailInput"
                                        placeholder="Witness Email-Id" class="form-control" maxlength="50" autocomplete="off">
                                </div>
                            </div>
                            <div class="col-md-3 mt-4">
                                <button type="button" class="btn-success btn-rounded" onclick="addData()">Add Details</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-responsive-lg" id="outputTable" style="display:none;">
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

