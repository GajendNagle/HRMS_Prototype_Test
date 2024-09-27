<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="visitorsReg.aspx.cs" Inherits="mis_HostelManagment_visitorsReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                        <%--<li class="breadcrumb-item">
              <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
          </li>--%>
                        <li class="breadcrumb-item">
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HostelManagement')">
                                <span>Hostel Management</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Visitors Register</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="marqueecontainerinfo">
                                <div class="headertext btn btn-primary rounded-pill">
                                    Visitors Register
                                </div>
                                <div>
                                    <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                        Visitors Register/आगंतुक रजिस्टर
                                    </marquee>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 d-flex justify-content-end">
                            <a href="VisitorRegDetails.aspx" class="btn fw-bold btn-outline-primary">View Details</a>
                        </div>
                    </div>


                </div>
            </div>
        </div>

        <div class="card-body">
            <fieldset>
                <legend>Visitors Register/आगंतुक रजिस्टर</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Hostel/<br />
                                छात्रावास का चयन करे<span style="color: red;">*</span></label>
                            <select class="form-control select2">
                                <option selected="selected" value="0">All</option>
                                <option value="1">KGBV Girls Hostel</option>
                                <option value="2">KGBV Boys Hostel</option>
                                <option value="3">KGBV Combine Hostel</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Student Name (ID) /<br />
                                छात्र का नाम (आईडी) का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="studentid">
                                <option value="0">select</option>
                                <option value="1">Raadha Dawar(103201441)</option>
                                <option value="2">JEANA RAWAT(188599791)</option>
                                <option value="3">Ramesh Nargawa (108875539)</option>
                                <option value="4">SANGEETA DAWAR (112772962)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="studentname" style="display: none">
                        <div class="form-group">
                            <label>
                                Student Name /<br />
                                छात्र का नाम<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" value="Raadha Dawar" readonly />
                        </div>
                    </div>
                    <div class="col-md-3 text-center" id="studentphoto" style="display: none">
                        <div class="form-group">
                            <img class="profileimage w-50 h-25" src="../dist/images/avatar-13.png" id="uploadedImage" alt="Image Not Available"><br />
                            <label>
                                Photo/फोटो<span style="color: red;">*</span></label>

                        </div>
                    </div>
                    <div class="col-md-3" id="studentclass" style="display: none">
                        <div class="form-group">
                            <label>
                                Class/<br />
                                कक्षा<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" value="10th" readonly />
                        </div>
                    </div>
                    <div class="col-md-3" id="studentadd" style="display: none">
                        <div class="form-group">
                            <label>
                                Address/<br />
                                पता<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" value="12 Sector A, LIG" readonly />
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Relation with Student/<br />
                                छात्र के साथ संबंध का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>select</option>
                                <option value="1">Father</option>
                                <option value="2">Mother</option>
                                <option value="3">Brother</option>
                                <option value="4">Sister</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Visitor Name/<br />
                                आगंतुक का नाम दर्ज करें<span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Visitor Name" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Gender/<br />
                                लिंग का चयन करें <span style="color: red;">*</span></label>
                            <select class="form-select select2">
                                <option>Select</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Address/<br />
                                पता दर्ज करें <span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Address" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Visit Reason/<br />
                                मुलाकात का कारण दर्ज करें <span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Visit Reason" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Mobile Number/<br />
                                मोबाइल नंबर दर्ज करें <span style="color: red;">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Mobile Number" />
                        </div>
                    </div>
                 <div class="col-md-3">
         <div class="form-group">
             <label>
                 Is Document Available/<br /> क्या दस्तावेज़ उपलब्ध है<span style="color: red;">*</span></label>
             <select class="form-control select2" id="ab" onchange="toggleSection1()">
                 <option selected="selected" value="0">--Select --</option>
                 <option value="2">Yes</option>
                 <option value="1">No</option>
               <%--//  <option value="3">Himachal</option>--%>
             </select>
         </div>
     </div>
                    <div class="col-md-3" id="abc">
                        <div class="form-group">
                            <label>
                                Select ID Proof Type/<br />
                                आईडी प्रूफ़ प्रकार का चयन करें <span style="color: red;">*</span></label>
                            <select class="form-select select2">
                                <option>Select</option>
                                <option>Aadhar Card</option>
                                <option>PAN Card</option>
                            </select>
                        </div>
                    </div>
                               <div class="col-md-3" id="abc1" style="display:none">
               <div class="form-group">
                   <label>
                      Enter Details /<br />
                       विवरण प्रविष्ट करें <span style="color: red;">*</span></label>
                   <input type="text" class="form-control" placeholder="Enter Details" />
               </div>
           </div>
                    <div class="col-md-3" id="abc2" style="display:none">
                        <div class="form-group">
                            <label>
                                Upload Document/<br />
                                दस्तावेज़ अपलोड करें <span style="color: red;">*</span></label>
                            <input type="file" class="form-control" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border" onclick="div()">Save</button>
                            <a href="visitorsReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                        <span class="text-danger fw-bold">Note :-All Asterisk (*) Marked Fields Are Mandatory / तारांकन (*) से चिह्नित सभी फ़ील्ड अनिवार्य हैं |</span>
                    </div>
                </div>

            </fieldset>
            <%-- <fieldset id="show" style="display: none;">
                <legend>Details/विवरण</legend>
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
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No/
                               <br />
                                            सरल क्र.</th>
                                        <th>Date/<br />
                                            दिनांक</th>
                                        <th>Day/<br />
                                            दिन</th>
                                        <th>Unique ID/Student Name/
                       <br />
                                            आईडी/विद्यार्थी का नाम </th>
                                        <th>Student Relation/<br />
                                            छात्र संबंध </th>
                                        <th>Visitor Name/</th>
                                        <th>From Time/<br />
                                            समय से</th>
                                        <th>To Time/<br />
                                            समय तक </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>23/08/2024</td>
                                        <th>Friday</th>
                                        <td>Ashish Gupta/<br />
                                            EDP4454445</td>
                                        <td>Father</td>
                                        <td>Ram Gupta
                                        </td>
                                        <td>9:45 AM</td>
                                        <td>4:00 PM</td>
                                    </tr>
                                </tbody>
                                <tbody>
                                    <tr valign="middle">
                                        <td>2</td>
                                        <td>23/08/2024</td>
                                        <th>Friday</th>
                                        <td>Sita 
Varma/<br />
                                            EDP4454445</td>
                                        <td>Mother</td>
                                        <td>Ashish 
Varma</td>
                                        <td>6:45 AM</td>
                                        <td>9:00 PM</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>--%>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function toggleSection1() {
            var A = document.getElementById("ab");
            var B = document.getElementById("abc1");
            var D = document.getElementById("abc2");
           // console.log(A);
            var C = document.getElementById("abc");
            if (A.value === "1") {
                C.style.display = "none";
                B.style.display = "block";
                D.style.display = "none";


            }
            else if (A.value === "2") {
                C.style.display = "block";
                B.style.display = "none";
                D.style.display = "block";
            }
            else {
                B.style.display = "none";
            }
        };
    </script>
    <script>
        // Function to format date in yyyy-mm-dd format
        function formatDate(date) {
            let day = String(date.getDate()).padStart(2, '0');
            let month = String(date.getMonth() + 1).padStart(2, '0'); // Months are zero-based
            let year = date.getFullYear();
            return `${year}-${month}-${day}`;
        }

        // Set today's date in yyyy-mm-dd format
        document.getElementById('fromDB').value = formatDate(new Date());
</script>
    <script>
        // jQuery code
        $(document).ready(function () {
            $('#studentid').on('change', function () {
                if ($(this).val() != 0) {
                    $('#studentname').show();
                    $('#studentclass').show();
                    $('#studentadd').show();
                    $('#studentphoto').show();
                } else {
                    $('#studentname').hide();
                    $('#studentclass').hide();
                    $('#studentadd').hide();
                    $('#studentphoto').hide();
                }
            });
        });
    </script>
    <script>
        function div() {

            document.getElementById("show").style.display = (document.getElementById("show").style.display == 'block') ? 'none' : 'block';

        }

    </script>

</asp:Content>

