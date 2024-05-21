<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_CompassionateAppointment.aspx.cs" Inherits="mis_HRMS_Rpt_CompassionateAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        #Approve {
            display: none;
        }

        #Pending {
            display: none;
        }

        #Reject {
            display: none;
        }

        #All {
            display: none;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Compassionate Report</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Reports" title="click to go on">Report</a></li>
                        <li class="breadcrumb-item active">Compassionate Report</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <fieldset>
                    <legend>अनुकंपा नियुक्ति रिपोर्ट</legend>
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>जिला का चयन करे<span style="color: red">*</span></label>
                                <select class="form-control select2" id="ddlDistrict">
                                    <option value="0">--Select--</option>
                                    <option value="1">Bhopal</option>
                                    <option value="1">Raisen</option>
                                    <option value="1">Rajgarh</option>
                                    <option value="1">Sehore</option>
                                    <option value="1">Vidisha</option>
                                    <option value="1">Ashoknagar</option>
                                    <option value="1">Shivpuri</option>
                                    <option value="1">Datia</option>
                                    <option value="1">Guna</option>
                                    <option value="1">Gwalior</option>
                                    <option value="1">Harda</option>
                                    <option value="1">Hoshangabad</option>
                                    <option value="1">Betul</option>
                                    <option value="1">Morena</option>
                                    <option value="1">Sheopur</option>
                                    <option value="1">Bhind</option>
                                    <option value="1">Barwani</option>
                                    <option value="1">Burhanpur</option>
                                    <option value="1">Dhar</option>
                                    <option value="1">Indore</option>
                                    <option value="1">Jhabua</option>
                                    <option value="1">Khandwa</option>
                                    <option value="1">Khargone</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>अनुकंपा नियुक्ति आवेदन  स्टेटस <span style="color: red">*</span></label>
                                <select class="form-control select2" id="ddlApprove">
                                    <option value="--Select--">--Select--</option>
                                    <option value="0">All</option>
                                    <option value="1">Approve</option>
                                    <option value="2">Pending</option>
                                    <option value="3">Reject</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="form-group">
                                <label>दिनांक से <span style="color: red">*</span></label>
                                <input type="date" class="form-control" />

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>दिनांक तक <span style="color: red">*</span></label>
                                <input type="date" class="form-control" />

                            </div>
                        </div>

                        <div class="col-md-2 mt-4">
                            <div class="form-group">
                                <button type="button" class="btn btn-success btn-rounded btn-block" onclick="showhide()">Search</button>

                            </div>
                        </div>

                        <div class="col-md-2 mt-4">
                            <div class="form-group">
                                <a class="btn btn-danger btn-block btn-rounded">Clear</a>

                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>अनुकंपा नियुक्ति रिपोर्ट</legend>

                    <div id="All">
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
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table  text-center">
                                    <tr>
                                        <th>क्र.</th>
                                        <th>दिवंगत कर्मचारी/ अधिकारी</th>
                                        <th>पद</th>
                                        <th>मृत्यु दिनांक</th>
                                        <th>आवेदक का नाम</th>
                                        <th>जेंडर</th>
                                        <th>आवेदक की जन्म तिथि</th>
                                        <th>मोबाइल नंबर</th>
                                        <th>आवेदक का दिवंगत  शिक्षक के साथ सम्बन्ध</th>
                                        <th>आवेदक की वैवाहिक स्थिति</th>
                                        <th>नियुक्ति हेतु पद का चयनित विकल्प</th>
                                        <th>आवेदक की शेक्षणिक योग्यता</th>
                                        <th style="width: 20%;">प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की स्थिति  </th>
                                        <th>स्टेटस</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Phul Singh Kushawah</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>BRAJESH KUSHWAH</td>
                                        <td>M</td>
                                        <td>10/08/1997</td>
                                        <td>9926354455</td>
                                        <td>Son</td>
                                        <td>Unmarried</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>हाँ</td>
                                        <td>Approved</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Rameshwar Verma</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>Ajay Verma</td>
                                        <td>M</td>
                                        <td>10/08/1999</td>
                                        <td>9926354455</td>
                                        <td>Son</td>
                                        <td>Married</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>नहीं</td>
                                        <td>Pending</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Ram Verma</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>Ayush Verma</td>
                                        <td>M</td>
                                        <td>10/08/1999</td>
                                        <td>9926354455</td>
                                        <td>Son</td>
                                        <td>Married</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>नहीं</td>
                                        <td>Reject</td>
                                    </tr>

                                    <tr>
                                        <td>4</td>
                                        <td>Raghu Verma</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>Ashoak Verma</td>
                                        <td>M</td>
                                        <td>10/08/1999</td>
                                        <td>9955455455</td>
                                        <td>Son</td>
                                        <td>Married</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>नहीं</td>
                                        <td>Reject</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="Approve">
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
                                    <input type="text" id="searchIfnput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center">
                                    <tr>
                                        <th>क्र.</th>
                                        <th>दिवंगत कर्मचारी/ अधिकारी</th>
                                        <th>पद</th>
                                        <th>मृत्यु दिनांक</th>
                                        <th>आवेदक का नाम</th>
                                        <th>जेंडर</th>
                                        <th>आवेदक की जन्म तिथि</th>
                                        <th>मोबाइल नंबर</th>
                                        <th>आवेदक का दिवंगत  शिक्षक के साथ सम्बन्ध</th>
                                        <th>आवेदक की वैवाहिक स्थिति</th>
                                        <th>नियुक्ति हेतु पद का चयनित विकल्प</th>
                                        <th>आवेदक की शेक्षणिक योग्यता</th>
                                        <th style="width: 20%;">प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की स्थिति  </th>
                                        <th>स्टेटस</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Rajesh Kushawah</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>BRAJESH KUSHWAH</td>
                                        <td>M</td>
                                        <td>10/08/1997</td>
                                        <td>9926354455</td>
                                        <td>Son</td>
                                        <td>Unmarried</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>हाँ</td>
                                        <td>Approved</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Kamal Verma</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>Ajay Verma</td>
                                        <td>M</td>
                                        <td>10/08/1999</td>
                                        <td>9926354455</td>
                                        <td>Son</td>
                                        <td>Married</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>नहीं</td>
                                        <td>Approved</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div id="Reject">
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
                                    <input type="text" id="searchInsput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table  text-center">
                                    <tr>
                                        <th>क्र.</th>
                                        <th>दिवंगत कर्मचारी/ अधिकारी</th>
                                        <th>पद</th>
                                        <th>मृत्यु दिनांक</th>
                                        <th>आवेदक का नाम</th>
                                        <th>जेंडर</th>
                                        <th>आवेदक की जन्म तिथि</th>
                                        <th>मोबाइल नंबर</th>
                                        <th>आवेदक का दिवंगत  शिक्षक के साथ सम्बन्ध</th>
                                        <th>आवेदक की वैवाहिक स्थिति</th>
                                        <th>नियुक्ति हेतु पद का चयनित विकल्प</th>
                                        <th>आवेदक की शेक्षणिक योग्यता</th>
                                        <th style="width: 20%;">प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की स्थिति  </th>
                                        <th>स्टेटस</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>Rambabu Mewada</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>BRAJESH Mewada</td>
                                        <td>M</td>
                                        <td>10/08/1997</td>
                                        <td>9926354455</td>
                                        <td>Son</td>
                                        <td>Unmarried</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>नहीं</td>
                                        <td>Reject</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Rames Kumar</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>Ajay Kumar</td>
                                        <td>M</td>
                                        <td>10/08/1999</td>
                                        <td>9926354455</td>
                                        <td>Son</td>
                                        <td>Married</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>हाँ</td>
                                        <td>Reject</td> 
                                    </tr>
                                </table>
                            </div>
                        </div>

                    </div>


                    <div id="Pending">
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
                                    <input type="text" id="seaIfnput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table text-center">
                                    <tr>
                                        <th>क्र.</th>
                                        <th>दिवंगत कर्मचारी/ अधिकारी</th>
                                        <th>पद</th>
                                        <th>मृत्यु दिनांक</th>
                                        <th>आवेदक का नाम</th>
                                        <th>जेंडर</th>
                                        <th>आवेदक की जन्म तिथि</th>
                                        <th>मोबाइल नंबर</th>
                                        <th>आवेदक का दिवंगत  शिक्षक के साथ सम्बन्ध</th>
                                        <th>आवेदक की वैवाहिक स्थिति</th>
                                        <th>नियुक्ति हेतु पद का चयनित विकल्प</th>
                                        <th>आवेदक की शेक्षणिक योग्यता</th>
                                        <th style="width: 20%;">प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण की स्थिति  </th>
                                        <th>स्टेटस</th>
                                    </tr>

                                    <tr>
                                        <td>1</td>
                                        <td>Rambabu Singh Kushawah</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>BRAJESH KUSHWAH</td>
                                        <td>M</td>
                                        <td>10/08/1997</td>
                                        <td>9926354455</td>
                                        <td>Son</td>
                                        <td>Unmarried</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>नहीं</td>
                                        <td>Pending </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Rameshwar Mishra</td>
                                        <td>Asstt Teacher (LDT)</td>
                                        <td>28/12/2021</td>
                                        <td>Ajay Mishra</td>
                                        <td>M</td>
                                        <td>10/08/1999</td>
                                        <td>9926354455</td>
                                        <td>Son</td>
                                        <td>Married</td>
                                        <td>Madhymik Shikshak</td>
                                        <td>GRADUATE</td>
                                        <td>हाँ</td>
                                        <td>Pending </td>

                                    </tr>

                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script> 
        function showhide() {
            var ddlApprove = document.getElementById("ddlApprove");
            var states = ["All", "Approve", "Pending", "Reject"];

            for (var i = 0; i < states.length; i++) {
                var element = document.getElementById(states[i]);
                element.style.display = ddlApprove.value === i.toString() ? "block" : "none";
            }
        }

    </script>
</asp:Content>

