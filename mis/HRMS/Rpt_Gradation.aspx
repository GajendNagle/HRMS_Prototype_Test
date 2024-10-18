<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_Gradation.aspx.cs" Inherits="mis_HRMS_Rpt_Gradation" %>

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
                            <a href="#HRIMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRIMS</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Gradation Report</span></li>
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
                            Gradation Report / पदक्रम रिपोर्ट
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
                <legend>Gradation Report / पदक्रम रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Division Name
     <br />
                                संभाग का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Narmadapuram">Narmadapuram</option>
                                <option value="Indore">Indore</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Rewa">Rewa</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Shahdol">Shahdol</option>
                                <option value="Ujjain">Ujjain</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select District Name
             <br />
                                जिला का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
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

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Designation
                                <br />
                                पदनाम का चयन करें</label>
                            <select class="form-control select2">
                                <option>All</option>
                                <option value="Bhopal">DEO</option>
                                <option value="Gwalior">JD</option>
                                <option value="Narmadapuram">Ucch Madhyamik Shikshak</option>
                                <option value="Narmadapuram">Madhyamik Shikshak</option>

                            </select>
                        </div>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display = 'block'">Search</button>
                        <a href="Rpt_Gradation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none">
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
                                        <th>Sr.No.
                                            <br />
                                            क्रमांक</th>
                                        <th>Unique Id
                <br />
                                            यूनिक आईडी
                                        </th>
                                        <th>Name<br />
                                            नाम</th>
                                        <th>Category<br />
                                            श्रेणी</th>
                                        <th>Gender<br />
                                            लिंग
                                        </th>
                                        <th>Date Of Birth<br />
                                            जन्म तिथि</th>
                                        <th>Appointment Type<br />
                                            नियुक्ति का प्रकार</th>
                                        <th>Subject Panel<br />
                                             विषय पैनल</th>
                                        <th>Home District
                <br />
                                            होम जिला
                                        </th>
                                        <th>Date Of First Appointment in Gov Service
                <br />
                                            सरकारी सेवा में प्रथम नियुक्ति की तिथि
                                        </th>
                                        <th>First Appointment Designation
                <br />
                                            प्रथम नियुक्ति पदनाम
                                        </th>
                                        <th>Date Of Appointment in UDT By Promotion
                <br />
                                            यू.डी.टी. में पदोन्नति द्वारा नियुक्ति की तिथि
                                        </th>
                                        <th>Date Of Appointment in Present Cadre
                <br />
                                            वर्तमान कैडर में नियुक्ति की तिथि
                                        </th>
                                        <th>Date Of Seniority in Present Cadre
                <br />
                                            वर्तमान कैडर में वरिष्ठता की तिथि
                                        </th>
                                        <th>Date Of Appointment in HM
                <br />
                                            एचएम में नियुक्ति की तिथि
                                        </th>
                                        <th>Inter Division/Local body Samvilion/Transfer Date
                <br />
                                            अंतर संभाग/स्थानीय निकाय संविलियन/स्थानांतरण तिथि
                                        </th>
                                      <%--  <th>Present Posting Place
                <br />
                                            वर्तमान पोस्टिंग स्थान
                                        </th>--%>
                                        <th>Present DDO/Sankul Name Code
                <br />
                                            वर्तमान डीडीओ/संकुल नाम कोड
                                        </th>
                                        <th>Present OIS Name Code
                <br />
                                            वर्तमान OIS नाम कोड 
                                        </th>
                                        <th>Present Posting District
                <br />
                                            वर्तमान पोस्टिंग जिला
                                        </th>
                                        <th>Employee Qualification
                <br />
                                            कर्मचारी योग्यता
                                        </th>
                                        <th>Remark
                <br />
                                            टिप्पणी
                                        </th>

                                    </tr>
                                </thead>

                                <tr>
                                    <td>1</td>
                                    <td>AN5449</td>
                                    <td>Mamta Kori</td>
                                    <td>Sc</td>
                                    <td>Female</td>
                                    <td>25-07-1962</td>
                                    <td>Dir</td>
                                    <td>HS-2 Science</td>
                                    <td>Katni</td>
                                    <td>24-02-1981</td>
                                    <td>UDT</td>
                                    <td>Nil</td>
                                    <td>24-02-1981</td>
                                    <td>20-04-1981</td>
                                    <td>02-06-1981</td>
                                    <td>Nil</td>
                                    <%--<td>MS BARGWAN</td>--%>
                                    <td>GHS ADARSH GIRLS SIDHI-23380200101</td>
                                    <td>Govt.HSS KERPANI SARSALA-23802OS356</td>
                                    <td>Panna</td>
                                    <td>Architecture</td>
                                    <td>NO</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>MA4567</td>
                                    <td>Maniram Ahirvar</td>
                                    <td>Sc</td>
                                    <td>Male</td>
                                    <td>18-10-1961</td>
                                    <td>Dir</td>
                                    <td>HS-1 Hindi</td>
                                    <td>Katni</td>
                                    <td>24-02-1981</td>
                                    <td>UDT</td>
                                    <td>Nil</td>
                                    <td>24-02-1981</td>
                                    <td>20-04-1981</td>
                                    <td>02-06-1981</td>
                                    <td>Nil</td>
                                    <%--<td>MS BARGWAN</td>--%>
                                    <td>GHS ADARSH GIRLS SIDHI-23380200101</td>
                                    <td>Govt.HSS KERPANI SARSALA-23802OS356</td>
                                    <td>Katni</td>
                                    <td>Architecture</td>
                                    <td>NO</td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>Ganga Ram Maravi</td>
                                    <td>Mamta Kori</td>
                                    <td>Sc</td>
                                    <td>Male</td>
                                    <td>25-07-1963</td>
                                    <td>Dir</td>
                                    <td>HS-3 English</td>
                                    <td>Katni</td>
                                    <td>24-02-1981</td>
                                    <td>UDT</td>
                                    <td>Nil</td>
                                    <td>24-02-1981</td>
                                    <td>20-04-1981</td>
                                    <td>02-06-1981</td>
                                    <td>Nil</td>
                                    <%--<td>MS BARGWAN</td>--%>
                                    <td>GHS ADARSH GIRLS SIDHI-23380200101</td>
                                    <td>Govt.HSS KERPANI SARSALA-23802OS356</td>
                                    <td>Rewa</td>
                                    <td>Architecture</td>
                                    <td>NO</td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>AN5449</td>
                                    <td>Mamta Kori</td>
                                    <td>Sc</td>
                                    <td>Female</td>
                                    <td>25-07-1962</td>
                                    <td>Dir</td>
                                    <td>HS-2 Science</td>
                                    <td>Katni</td>
                                    <td>24-02-1981</td>
                                    <td>UDT</td>
                                    <td>Nil</td>
                                    <td>24-02-1981</td>
                                    <td>20-04-1981</td>
                                    <td>02-06-1981</td>
                                    <td>Nil</td>
                                    <%--<td>MS BARGWAN</td>--%>
                                    <td>GHS ADARSH GIRLS SIDHI-23380200101</td>
                                    <td>Govt.HSS KERPANI SARSALA-23802OS356</td>
                                    <td>Mandsaur</td>
                                    <td>Architecture</td>
                                    <td>NO</td>
                                </tr>

                                <tr>
                                    <td>5</td>
                                    <td>AN5449</td>
                                    <td>Mamta Kori</td>
                                    <td>Sc</td>
                                    <td>Female</td>
                                    <td>25-07-1962</td>
                                    <td>Dir</td>
                                    <td>HS-2 Science</td>
                                    <td>Katni</td>
                                    <td>24-02-1981</td>
                                    <td>UDT</td>
                                    <td>Nil</td>
                                    <td>24-02-1981</td>
                                    <td>20-04-1981</td>
                                    <td>02-06-1981</td>
                                    <td>Nil</td>
                                    <%--<td>MS BARGWAN</td>--%>
                                    <td>GHS ADARSH GIRLS SIDHI-23380200101</td>
                                    <td>Govt.HSS KERPANI SARSALA-23802OS356</td>
                                    <td>Sidhi</td>
                                    <td>Architecture</td>
                                    <td>NO</td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>AN5449</td>
                                    <td>Mamta Kori</td>
                                    <td>Sc</td>
                                    <td>Female</td>
                                    <td>25-07-1962</td>
                                    <td>Dir</td>
                                    <td>HS-2 Science</td>
                                    <td>Katni</td>
                                    <td>24-02-1981</td>
                                    <td>UDT</td>
                                    <td>Nil</td>
                                    <td>24-02-1981</td>
                                    <td>20-04-1981</td>
                                    <td>02-06-1981</td>
                                    <td>Nil</td>
                                    <%--<td>MS BARGWAN</td>--%>
                                    <td>GHS ADARSH GIRLS SIDHI-23380200101</td>
                                    <td>Govt.HSS KERPANI SARSALA-23802OS356</td>
                                    <td>Gwalior</td>
                                    <td>Architecture</td>
                                    <td>NO</td>
                                </tr>

                                <tr>
                                    <td>7</td>
                                    <td>AN5449</td>
                                    <td>Mamta Kori</td>
                                    <td>Sc</td>
                                    <td>Female</td>
                                    <td>25-07-1962</td>
                                    <td>Dir</td>
                                    <td>HS-2 Science</td>
                                    <td>Katni</td>
                                    <td>24-02-1981</td>
                                    <td>UDT</td>
                                    <td>Nil</td>
                                    <td>24-02-1981</td>
                                    <td>20-04-1981</td>
                                    <td>02-06-1981</td>
                                    <td>Nil</td>
                                    <%--<td>MS BARGWAN</td>--%>
                                    <td>GHS ADARSH GIRLS SIDHI-23380200101</td>
                                    <td>Govt.HSS KERPANI SARSALA-23802OS356</td>
                                    <td>Narsighpur</td>
                                    <td>Architecture</td>
                                    <td>NO</td>
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


