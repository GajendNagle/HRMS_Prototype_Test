<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="RoomApprovalPandingDetails.aspx.cs" Inherits="mis_HostelManagment_RoomApprovalPandingDetails" %>

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
                        <li class="breadcrumb-item">
                            <a href="#HostelManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Hostel Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Hostel/Room Approval/Pending Process</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            विवरण
                        </div>
                        <div class="">
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                Hostel/Room Approval/Pending Process / छात्रावास/कक्ष अनुमोदन/लंबित प्रक्रिया
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div>
                <fieldset>
                    <legend>Hostel/Room Approval/Pending Process / छात्रावास/कक्ष अनुमोदन/लंबित प्रक्रिया</legend>
                    <div class="row align-items-end">
                                     <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Type /
                                    <br />
                                    प्रकार  चुनें<span style="color: red;">*</span></label>
                                <select class="form-control select2" onchange="funtShow()" id="val">
                                    <option selected="selected" value="0">--Select --</option>
                                    <%--<option value="1">KGBV Girls Hostel</option>--%>
                                    <option value="1">Hostel Change Process </option>
                                    <option value="2">Room Change Process </option>
                
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Hostel Name/
                                 <br />
                                    हॉस्टल का नाम चयन करे<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option selected="selected" value="0">--Select --</option>
                                    <option value="1">KGBV Girls Hostel</option>
                                    <option value="2">KGBV Boys Hostel</option>
                                    <option value="3">KGBV Combine Hostel</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Type /<br />
                                    प्रकार का चयन करे<span style="color: red;">*</span></label>
                                <select class="form-control select2">
                                    <option selected="selected" value="0">--Select --</option>
                                    <option value="1">Pending</option>
                                    <option value="2">Approval</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="col-md-12">
                        <div class="form-group ">
                            <button type="button" class=" btn btn-success w-lg btn-border" onclick="document.getElementById('Room_Details').style.display = 'block'">Search</button>
                            <a href="#" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </fieldset>
            </div>
            <fieldset id="Room_Details" style="display: none;">
                <legend>Details / विवरण </legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput2" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">

                            <table class="table text-center table-bordered" id="mainTable">
                                <thead>
                                    <tr>
                                        <th>Sr. No./
                                <br />
                                            क्र.सं.
                                        </th>
                                        <th>Process Type/ 
                                        <br />
                                            प्रक्रिया प्रकार
                                        </th>
                                        <th>Hostel Name/ 
                                        <br />
                                            छात्रावास का नाम
                                        </th>
                                        <th>Student Name/
                                        <br />
                                            विद्यार्थी का नाम
                                        </th>
                                        <th>Class/<br />
                                            कक्षा
                                        </th>
                                        <th>Room No./ 
                                        <br />
                                            कक्ष संख्या</th>
                                        <th>Apply Date/
                                        <br />
                                            आवेदन की तिथि</th>
                                        <th>Parent Name /
                                        <br />
                                            अभिभावक का नाम</th>
                                         <th>Parent Mobile No. /
                                        <br />
                                            अभिभावक का मोबाइल नो.</th>
                                                      <th>Status /
                                        <br />स्थिति
                                            .</th>
                                        <th>Action/
                                        <br />
                                            कार्यवाही
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Hostel Change Process</td>
                                        <td>Girls Hostel Phutera</td>
                                        <td>Sakshi</td>
                                        <td>12th</td>
                                        <td>101</td>
                                        <td>25/07/2024</td>
                                          <td>Ashok Satpute	</td>
                                       <td>7412589632</td>
                                       <td>Pending</td>
                                        <td>
                                            <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#examplesModal"><i class="ri-eye-line"></i></button></td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Room Change Process</td>
                                        <td>Girls Hostel Phutera</td>
                                        <td>Pushpa</td>
                                        <td>11th</td>
                                        <td>104</td>
                                        <td>02/11/2024</td>
                                        <td>Ramu Kaka</td>
                                       <td>7878787878</td>
                                        <td>Approved</td>
                                        <td>
                                            <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#examplesModal"><i class="ri-eye-line"></i></button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="modal fade" id="examplesModal" tabindex="-1" aria-labelledby="examplesModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl ">
                    <div class="modal-content">
                        <div class="modal-header">

                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Student Details / विद्यार्थी विवरण</legend>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table text-center table-bordered" style="white-space: nowrap;">
                                                <thead>
                                                    <tr>
                                                        <th>S No.<br />
                                                            क्र.सं.</th>
                                                        <th>Student Name/<br />
                                                            छात्र का नाम
                                                        </th>
                                                        <th>Class/<br />
                                                            कक्षा </th>
                                                        <th>Room No./<br />
                                                            कक्ष संख्या
                                                        </th>
                                                        <th>Parent Name/<br />
                                                            अभिभावक का नाम</th>
                                                        <th>Parents No./<br />
                                                            अभिभावक का नंबर
                                                        </th>
                                                        <th>Address/<br />
                                                            पता</th>
                                                        <th>School Name/<br />
                                                            विद्यालय का नाम
                                                        </th>
                                                        <th>Hostel Name/<br />
                                                            छात्रावास का नाम</th>
                                                        <th>Hostel Address/<br />
                                                            छात्रावास का पता
                                                        </th>
                                                        <th>Warden Name/<br />
                                                            वार्डन का नाम</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>01</td>
                                                        <td>Sakshi Satpute</td>
                                                        <td>12th</td>
                                                        <td>101</td>
                                                        <td>Ashok Satpute</td>
                                                        <td>7412589632</td>
                                                        <td>Rajeev Nagar Bhopal</td>
                                                        <td>SDM School MP</td>
                                                        <td>KGBV Boys Hostel</td>
                                                        <td>MP Nagar Bhopal</td>
                                                        <td>Satish Jain</td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                          
                                            
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Hostel Allotment Process/ छात्रावास आवंटन प्रक्रिया</legend>
                                <div class="row align-items-end">
                                                   <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Select Status /<br />
                                                स्थिति चुनें <span style="color: red;">*</span></label>
                                            <select class="form-control form-select select2"  id="txtBedNo1">
                                                <option value="0">--Select--</option>
                                                <option value="1">Approved</option>
                                                <option value="2">Reject</option>
                                             
                                            </select>

                                        </div>
                                    </div>
                                    <div class="col-md-3"  id="Room3">
                                        <div class="form-group">
                                            <label>
                                                Select Allotment Hostel Name/
                                                <br />
                                                आवंटित छात्रावास का नाम चुनें<span style="color: red;">*</span></label>
                                            <select class="form-control form-select select2" id="hostelSelect">
                                                <option value="0">--Select--</option>
                                                <option value="1">KGBV Girls Hostel</option>
                                                <option value="2">KGBV Boys Hostel</option>
                                                <option value="3">KGBV Combine Hostel</option>
                                            </select>
                                        </div>
                                    </div>
                                             <div class="col-md-3"  id="Room6">
                                        <div class="form-group">
                                            <label>
                                               Available Rooms/
                                                <br />
                                               उपलब्ध कमरे<span style="color: red;">*</span></label>
                                            <input type="text" class="form-control" value="4" readonly/>
                                        </div>
                                    </div>
                                             <div class="col-md-3"  id="Room5" style="display:none">
                                        <div class="form-group">
                                            <label>
                                                Select Allotment Hostel Name/
                                                <br />
                                                आवंटित छात्रावास का नाम चुनें<span style="color: red;">*</span></label>
                                            <select class="form-control form-select select2" id="hostelSelect1" disabled>
                                                <option value="0">--Select--</option>
                                                <option value="1" selected>KGBV Girls Hostel</option>
                                                <option value="2">KGBV Boys Hostel</option>
                                                <option value="3">KGBV Combine Hostel</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Hostel Address/<br />
                                                छात्रावास का पता दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" id="txtHostalAdd" class="form-control" readonly placeholder="Enter Hostel Address " />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Warden Name/
                                                    <br />
                                                वार्डन का नाम दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" id="txtWardenName" class="form-control" readonly placeholder="Enter Warden Name " />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Warden No./<br />
                                                वार्डन का नंबर दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" id="txtWardenNo" class="form-control" readonly placeholder="Enter Warden No." />
                                        </div>
                                    </div>
                                    <div class="col-md-3" id="Room1">
                                        <div class="form-group">
                                            <label>
                                                Enter Room No./<br />
                                                कक्ष संख्या दर्ज करें<span style="color: red;">*</span></label>                                          
                                            <select class="form-control form-select select2"  id="txtRoomNo">
                                                <option value="0">--Select--</option>
                                                <option value="111">111</option>
                                                <option value="112">112</option>
                                                <option value="113">113</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3" id="Room4">
                                        <div class="form-group">
                                            <label>
                                                Enter Bed No./<br />
                                                बिस्तर संख्या दर्ज करें<span style="color: red;">*</span></label>
                                            <select class="form-control form-select select2"  id="txtBedNo">
                                                <option value="0">--Select--</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                            </select>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Enter Room Allocation Date/<br />
                                                कक्ष आवंटन की तारीख दर्ज करें<span style="color: red;">*</span></label>
                                            <input type="text" id="txtRoomAllo" placeholder="DD/MM/YYYY" readonly class="form-control datepicker " />
                                        </div>
                                    </div>
                     
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>
                                                Remark /<br />
                                                टिप्पणी<span style="color: red;">*</span>
                                            </label>
                                            <textarea class="form-control" rows="1" placeholder="Remark"></textarea>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="col-md-12">
                                        <div class="form-group ">
                                            <button type="button" class="Alert-Confirmation btn btn-success w-lg btn-border">Save</button>
                                            <a  class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Clear</a>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>








<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function funtShow() {
            debugger
            var check = document.getElementById("val");

            //var Room1 = document.getElementById("Room1");
            //var Room2 = document.getElementById("Room4");
            var Room3 = document.getElementById("Room3");
            var Room5 = document.getElementById("Room5");
            var Room6 = document.getElementById("Room6");


            if (check.value == "1") {
                //Room1.style.display = "none";
                //Room2.style.display = "none";
                Room3.style.display = "block";
                Room6.style.display = "block";

            }

            else if (check.value == "2") {
             /*   Room1.style.display = "block";*/
               /* Room2.style.display = "block";*/
                Room5.style.display = "block";
                Room3.style.display = "none";
                Room6.style.display = "none";
            }
            else {
               /* Room1.style.display = "block";*/
               /* Room2.style.display = "block";*/
                Room3.style.display = "block";
            }


        }
    </script>
    <script>
        $(document).ready(function () {
            $('.select2').select2();

            $('#hostelSelect').on('change', function () {
                const selectedHostel = $(this).val();

                // Dummy data for hostel details
                const hostelDetails = {
                    '1': { address: 'Girls Hostel Address', warden: 'Ms. Sharma', wardenNo: '1234567890', room: '111', bed: '1',date: '07/06/2020' },
                    '2': { address: 'Boys Hostel Address', warden: 'Mr. Kumar', wardenNo: '0987654321', room: '112', bed: '2', date: '14/06/2020' },
                    '3': { address: 'Combine Hostel Address', warden: 'Dr. Gupta', wardenNo: '1122334455', room: '113', bed: '3', date: '01/11/2020' }
                };

                if (selectedHostel !== '0') {
                    const details = hostelDetails[selectedHostel];
                    $('#txtHostalAdd').val(details.address);
                    $('#txtRoomAllo').val(details.date);
                    $('#txtWardenName').val(details.warden);
                    $('#txtWardenNo').val(details.wardenNo);
                    $('#txtRoomNo').val(details.room).trigger('change'); // Trigger change for Select2 dropdown
                    $('#txtBedNo').val(details.bed).trigger('change');
                } else {
                    $('#txtHostalAdd').val('');
                    $('#txtRoomAllo').val('');
                    $('#txtWardenName').val('');
                    $('#txtWardenNo').val('');
                    $('#txtRoomNo').val('0').trigger('change');
                    $('#txtBedNo').val('0').trigger('change');
                }
            });
        });
</script>




    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <script>
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format: 'dd/mm/yyyy',
                autoclose: true,
                todayHighlight: true
            });
        });
    </script>
</asp:Content>

