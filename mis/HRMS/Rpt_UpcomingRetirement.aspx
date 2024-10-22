<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_UpcomingRetirement.aspx.cs" Inherits="mis_HRMS_Rpt_UpcomingRetirement" %>

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
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">Upcoming Retirement Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Upcoming Retirement Report / आगामी सेवानिवृत्ति रिपोर्ट
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Upcoming Retirement Report / आगामी सेवानिवृत्ति रिपोर्ट</legend>

                <div class="row align-items-end">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Academic year<br />
                                शैक्षणिक वर्ष का चयन करें <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>2024-25</option>
                                <option>2023-24</option>
                                <option>2022-23</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select District Name
              <br />
                                जिला नाम का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">

                                <option value="Select">Select</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Raisen">Raisen</option>
                                <option value="Rajgarh">Rajgarh</option>
                                <option value="Sehore">Sehore</option>
                                <option value="Vidisha">Vidisha</option>
                                <option value="Ashoknagar">Ashoknagar</option>
                                <option value="Shivpuri">Shivpuri</option>
                                <option value="Datia">Datia</option>
                                <option value="Guna">Guna</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Harda">Harda</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Betul">Betul</option>
                                <option value="Morena">Morena</option>
                                <option value="Sheopur">Sheopur</option>
                                <option value="Bhind">Bhind</option>
                                <option value="Barwani">Barwani</option>
                                <option value="Burhanpur">Burhanpur</option>
                                <option value="Dhar">Dhar</option>
                                <option value="Indore">Indore</option>
                                <option value="Jhabua">Jhabua</option>
                                <option value="Khandwa">Khandwa</option>
                                <option value="Khargone">Khargone</option>
                                <option value="Alirajpur">Alirajpur</option>
                                <option value="Balaghat">Balaghat</option>
                                <option value="Chhindwara">Chhindwara</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Katni">Katni</option>
                                <option value="Mandla">Mandla</option>
                                <option value="Narsinghpur">Narsinghpur</option>
                                <option value="Seoni">Seoni</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Satna">Satna</option>
                                <option value="Sidhi">Sidhi</option>
                                <option value="Singroli">Singroli</option>
                                <option value="Chhatarpur">Chhatarpur</option>
                                <option value="Damoh">Damoh</option>
                                <option value="Panna">Panna</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Tikamgarh">Tikamgarh</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Umaria">Umaria</option>
                                <option value="Dindori">Dindori</option>
                                <option value="Anuppur">Anuppur</option>
                                <option value="Dewas">Dewas</option>
                                <option value="Mandsaur">Mandsaur</option>
                                <option value="Neemuch">Neemuch</option>
                                <option value="Ratlam">Ratlam</option>
                                <option value="Shajapur">Shajapur</option>
                                <option value="Ujjain">Ujjain</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select  Block Name
            <br />
                                विकासखण्ड  का नाम चुनें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl03" class="form-control select2">

                                <option value="Select">Select</option>
                                <option value="Agar">Agar</option>
                                <option value="Barod">Barod</option>
                                <option value="Nalkheda">Nalkheda</option>
                                <option value="Susner">Susner</option>
                                <option value="Alirajpur">Alirajpur</option>
                                <option value="Bhabra">Bhabra</option>
                                <option value="Katthiwara">Katthiwara</option>
                                <option value="Sondwa">Sondwa</option>
                                <option value="Udaygarh">Udaygarh</option>
                                <option value="Jobat">Jobat</option>
                                <option value="Anuppur">Anuppur</option>
                                <option value="Jaithari">Jaithari</option>
                                <option value="Kotma">Kotma</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Sankul Code/ Name
                                <br />
                                संकुल कोड / नाम<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlOffice" onchange="BindSankul();">
                                <option>Select</option>
                                <option value="(2345040410) AAMAI HS NEW JSK">AAMAI HS NEW JSK-(2345040410)</option>
                                <option value="(2332030006) AKBARPUR GOVT. HS">AKBARPUR GOVT. HS-(2332030006)</option>
                                <option value="(2327100059) B.HSS BISTAN">B.HSS BISTAN-(2327100059)</option>
                                <option value="(2345090040) BAIHAR HSS BOYS NEW JSK">BAIHAR HSS BOYS NEW JSK-(2345090040)</option>
                                <option value="(2345030063) BAMHANI HS NEW JSK">BAMHANI HS NEW JSK-(2345030063)</option>
                            </select>
                        </div>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border  w-lg" onclick="document.getElementById('table1').style.display='block'">Search</button>
                        <a href="Rpt_UpcomingRetirement.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none;">
                <legend>Details / विवरण</legend>
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
                                        <th>Sr.No./
                                            <br />
                                            क्रमांक</th>
                                        <th>Academic Year/<br />
                                            शैक्षणिक वर्ष</th>
                                        <th>Employee Name/Code<br />
                                            कर्मचारी का नाम/कोड</th>
                                        <th>Panel/<br />
                                            पैनल
                                        </th>
                                        <th>DDO/Sankul Name-Code/
    <br />
                                            डीडीओ/संकुल नाम-कोड
                                        </th>
                                        <th>Employee OIS/Code
     <br />
                                            कर्मचारी OIS/कोड</th>
                                        <th>Employee Date Of Birth/
    <br />
                                            कर्मचारी की जन्म तिथि</th>
                                        <th>First Joining Date/
                               <br />
                                            प्रथम ज्वाइनिंग तिथि</th>
                                        <th>Retirement Date/
                               <br />
                                            सेवानिवृत्ति तिथि</th>

                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>2024</td>
                                    <td>Ankit Verma-E00587</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                     <td>B.HSS BISTAN-2380245356</td>
                                    <td>02-06-1940</td>
                                    <td>31-07-1962</td>
                                    <td>03-05-2024</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>2024</td>
                                    <td>Ankit Verma-E00231</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                     <td>B.HSS BISTAN-2380298356</td>
                                    <td>02-06-1940</td>
                                    <td>04-07-1962</td>
                                    <td>30-05-2024</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>2024</td>
                                    <td>Saksham Modi-E00549</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                     <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>02-03-1941</td>
                                    <td>05-12-1962</td>
                                    <td>30-06-2024</td>

                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>2024</td>
                                    <td>Nirmala Ahirwar-E00897</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                      <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>01-05-1941</td>
                                    <td>11-07-1962</td>
                                    <td>30-06-2024</td>

                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>2024</td>
                                    <td>E00798-Seema Yadav</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                    <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>08-12-1940</td>
                                    <td>05-02-1963</td>
                                    <td>31-07-2024</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>2024</td>
                                    <td>E00160-Akhilesh Verma</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                     <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>04-04-1942</td>
                                    <td>07-07-1962</td>
                                    <td>31-07-2024</td>

                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>2024</td>
                                    <td>E00012-Shubham Verma</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                     <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>02-03-1941</td>
                                    <td>06-03-1962</td>
                                    <td>30-07-2024</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>2024</td>
                                    <td>E00902-Vishal Saksena</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                     <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>09-10-1940</td>
                                    <td>11-12-1963</td>
                                    <td>31-07-2024</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>2024</td>
                                    <td>E00231-Ankit Verma</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                     <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>02-06-1942</td>
                                    <td>15-07-1962</td>
                                    <td>31-07-2024</td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>2024</td>
                                    <td>E00231-Ankit Verma</td>
                                    <td>HS-2 Hindi</td>
                                    <td>B.HSS BISTAN-2380298356</td>
                                     <td>Govt.HSS BISTAN-2380298356</td>
                                    <td>02-06-1942</td>
                                    <td>08-07-1962</td>
                                    <td>30-08-2024</td>
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
</asp:Content>

