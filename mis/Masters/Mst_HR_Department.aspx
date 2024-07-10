<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_HR_Department.aspx.cs" Inherits="mis_HR_Mst_AppointmentDepartment" %>

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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HRMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>HR Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">Appointment Department Master Data</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से  Department का रजिस्ट्रेशन किया जाता हैं| जिससे कर्मचारी का रजिस्ट्रेशन करते समय जोड़ा जा सके, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Appointment Department Master <br> नियुक्ति विभाग मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset>
                <legend>Add Appointment Department / नियुक्ति विभाग जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter Department of Appointment(In English)<br />नियुक्ति विभाग का नाम दर्ज करे(अंग्रेज़ी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" autocomplete="off" placeholder="Enter Appointment Department" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter Department of Appointment(In Hindi)<br />नियुक्ति विभाग का नाम दर्ज करे(हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="विभाग का नाम दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter Appointed Department Code No. <br />
                                नियुक्ति विभाग संख्या दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Code No." />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label class="form-label">
                                Enter Effective Date<br />
                                प्रभावी तिथि दर्ज करे<span style="color: red;">*</span></label>
                            <input name="ctl00$ContentBody$TextBox1" type="date" id="ContentBody_TextBox1" class="form-control" placeholder="Select Date..." />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                                <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
                                Status
								<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                    <hr />
                        <input type="submit" name="ctl00$ContentBody$btnSave" value="Save" onclick="return confirm(&#39;Are you sure you want to save this record?&#39;);" class="btn btn-success btn-border" />
                        <a href="Mst_OfficeRegistration.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Appointed Department Details / नियुक्ति विभाग विवरण</legend>
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
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                <tr>
                                    <th>Sr.No. <br />
                                        सरल क्र.</th>
                                    <th>Department of Appointment(In English)<br />नियुक्ति विभाग का नाम(अंग्रेज़ी में) </th>
                                    <th>Department of Appointment(In Hindi)<br />नियुक्ति विभाग का नाम (हिंदी में)</th>
                                    <th>Effective Date <br />
                                        प्रभावी तिथि</th>
                                    <th>Appointed Department Code No. <br />
                                        नियुक्त विभाग कोड नं.</th>
                                    <th>Status(Active/InActive) <br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action <br />कार्यवाहीं</th>
                                </tr>
                                    </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Education Department</td>
                                    <td>शिक्षा विभाग</td>
                                    <td>01/04/2022</td>
                                    <td>12</td>
                                    <td>Active</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Rajya Shiksha Kendra</td>
                                    <td>राज्य शिक्षा केंद्र</td>
                                    <td>01/04/2023</td>
                                    <td>23</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function FbotonOn() {
            debugger
            confirm("Are you sure you want to save this record?");
        }
    </script>
</asp:Content>

