<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="WorkWiseExpenditure.aspx.cs" Inherits="mis_Development_WorkWiseExpenditure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #divprint {
            display: none;
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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Development</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Work Wise Expenditure Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                <%--इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |--%>
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Work Wise Expenditure Report / कार्यवार व्यय रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <asp:Panel runat="server" ID="panel1">
            <div class="card-body" id="First">
                <%-- $(".divIDClass").hide();--%>
                <span id="ContentBody_lblMsg"></span>

                <%-- <legend>Add Project Creation / नई परियोजना जोड़े</legend>--%>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial year /
                                <br />
                                वितीय वर्ष का चयन करें
                                <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">2024-25</option>
                                <option value="Raisen">2023-24</option>
                                <option value="Rajgarh">2022-23</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Type /<br />
                                कार्यालय के प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--  <option value="--Select--">--Select--</option>--%>
                                <option value="0">All</option>
                                <option value="3">School</option>
                                <option value="3">Sankul</option>
                                <option value="3">BEO</option>
                                <option value="3">DEO</option>
                                <option value="3">JD</option>
                                <option value="3">HO</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Office Name /<br />
                                कार्यालय के नाम का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <%--<option value="--Select--">--Select--</option>--%>
                                <option value="0">All</option>
                                <option value="3">Maharishi Mahavidyalaya</option>

                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Sanction No. /<br />
                                स्वीकृति संख्या का चयन करें
                                <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="0">3124</option>
                                <option value="1">1223</option>
                                <option value="2">8269</option>


                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Installment /
 <br />
                                किस्त का चयन करें
                                <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="0">प्रथम किस्त</option>
                                <option value="1">द्वितीय किस्त</option>
                                <option value="2">तृतीय किस्त</option>
                                <option value="3">चतुर्थी किस्त   </option>
                                <option value="4">पञ्चमी किस्त   </option>
                                <option value="5">षष्ठी किस्त   </option>
                                <option value="6">सप्तमी किस्त </option>
                                <option value="7">अष्टमी किस्त  </option>
                                <option value="8">नवमी किस्त  </option>
                                <option value="9">दशमी किस्त </option>


                            </select>
                        </div>
                    </div>

                    <hr />
                    <div class="col-md-12">

                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Search" onclick="return confirm(&#39;Are you sure you want to save this record?&#39;);" class="btn btn-success btn-border" />
                        <a href="#" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>

                <fieldset>
                    <legend>Details</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <%-- <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>--%>
                        </div>

                    </div>

                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <tr>
                                        <th>Sr.No.
                                        </th>
                                        <th>Print 
                                        </th>
                                        <th>Office Name	
                                        </th>
                                        <th>Sanction Letter No
                                        </th>
                                        <th>Sanction Letter Date 
                                        </th>


                                        <th>Work Category
                                        </th>
                                        <th>Work Description</th>
                                        <th>Foundation</th>
                                        <th>Plinth</th>
                                        <th>Mid level completion</th>
                                        <th>Final level completion</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <button class="btn btn-info btn-rounded" onclick="printpage()"><i class="fa fa-print"></i></button>
                                        </td>
                                        <td>Subhash School</td>
                                        <td>8269</td>
                                        <td>01/01/2024</td>


                                        <td>स्कूल मरम्मत/निर्माण</td>
                                        <td>इमारत मरम्मत</td>
                                        <td>
                                            <button class="btn btn-info btn-rounded"><i class="fa fa-eye"></i></button>
                                        </td>
                                        <td>
                                            <button class="btn btn-info btn-rounded"><i class="fa fa-eye"></i></button>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>




                                </table>
                            </div>
                        </div>
                    </div>

                </fieldset>
            </div>

        </asp:Panel>



        <div id="divprint">
            <table width="100%" height="600px" align="center" bgcolor="white" class="table table-bordered text-center" style="border-collapse: collapse">
                <tr align="center">
                    <th colspan="3"><font size="10">Report</font></th>
                </tr>

                <!---row2--->
                <tr>
                    <td align='center'>Financial year</td>
                    <td>:-</td>
                    <td>2024-25</td>
                </tr>

                <tr>
                    <td align='center'>JD </td>
                    <td>:-</td>
                    <td>Bhopal</td>
                </tr>
                <tr>
                    <td align='center'>DEO</td>
                    <td>:-</td>
                    <td>vidisha</td>
                </tr>
                <tr>
                    <td align='center'>BEO</td>
                    <td>:-</td>
                    <td>Silwani</td>
                </tr>
                <tr>
                    <td align='center'>Sanction No.</td>
                    <td>:-</td>
                    <td>8269</td>
                </tr>
                <tr>
                    <td align='center'>Installment</td>
                    <td>:-</td>
                    <td>प्रथम किस्त</td>
                </tr>

            </table>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <table border="1" align="center" class="table table-bordered text-center" style="border-collapse: collapse" width="100%">
                <tr>
                    <th>Office Name</th>
                    <th>Sanction Letter No</th>
                    <th>Sanction Letter Date</th>
                    <th>Work Category</th>
                    <th>Work Sub Category</th>
                    <th>Mid level completion</th>
                    <th>Final level completion</th>
                </tr>
                <tr>
                    <td align="center">Subhash School</td>
                    <td align="center">8269</td>
                    <td align="center">01/01/2024</td>
                    <td align="center">बिल्डिंग निर्माण/मरम्मत</td>
                    <td align="center">बिल्डिंग निर्माण/मरम्मत</td>
                    <td align="center"></td>
                    <td align="center"></td>
                </tr>
            </table>
        </div>




    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printpage() {
            var divContents = document.getElementById("divprint").innerHTML;
            /* document.getElementById("First").style.display = "none";*/
            var a = window.open('', '_blank', 'height=1500, width=1500');
            a.document.write('<html>');
            a.document.write('<body > <h1> <br>');
            a.document.write(divContents);
            a.document.write('</body></html>');
            a.document.close();
            a.print();
        }
    </script>

</asp:Content>

