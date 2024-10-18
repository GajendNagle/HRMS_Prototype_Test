<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SankulWiseSchoolReport.aspx.cs" Inherits="mis_HRMS_SankulWiseSchoolReport" %>

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
                            <a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Sankul Wise School Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">

            <%--<div class="marqueecontainer">
    <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
    <div>
        <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
            0
        </marquee>
    </div>
</div>--%>
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="card-title">Sankul Wise Counting Report / संकुलवार गणना रिपोर्ट</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div id="SearchDistrict">
                        <fieldset>
                            <legend>Sankul Wise Counting Report / संकुलवार गणना रिपोर्ट</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <label>
                                        Select District Name /
                                    <br />
                                        संभाग का नाम चुनें<span style="color: red">*</span>
                                    </label>


                                    <select class="form-control form-select select2" id="DdlList">

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

                            <hr />
                            <div class="row align-items-end">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <button type="button" onclick="ShowReport()" class="btn btn-success w-lg btn-border" id="btn1">Search</button>
                                        <a href="SankulWiseSchoolReport.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="Schoolreport" style="display: none">
                        <fieldset>
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
                                        <input type="text" id="searchInput" class="form-control" placeholder="Search...">
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">

                                <div class="col-md-12">
                                    <div class=" table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr style="white-space: nowrap">
                                                    <th>Sr. No. /<br />
                                                        सरल क्र.</th>
                                                    <th>District Name /<br />
                                                        जिले का नाम</th>
                                                    <th>Sankul Name/Code /<br />
                                                        संकुल नाम/कोड</th>
                                                    <th>No. of School /<br />
                                                        विद्यालयों की संख्या
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tr>
                                                <td>1</td>
                                                <td>Bhopal</td>
                                                <td>Crist Academy School(23356245856 )</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField()">5</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Bhopal</td>
                                                <td>Bal Bharti School(23354912798)</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField()">12</td>

                                            </tr>

                                            <tr>
                                                <td>3</td>
                                                <td>Bhopal</td>
                                                <td>Green Valley School (45987612345)</td>
                                                <td>15</td>
                                            </tr>

                                            <tr>
                                                <td>4</td>
                                                <td>Bhopal</td>
                                                <td>Silver Oak High School (78965432112)</td>
                                                <td>3</td>
                                            </tr>

                                            <tr>
                                                <td>5</td>
                                                <td>Bhopal</td>
                                                <td>Sunshine Public School (12345678901)</td>
                                                <td>18</td>
                                            </tr>
                                        </table>



                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="Schoolreport2" style="display: none">
                        <fieldset>
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
                                        <input type="text" id="searchInput2" class="form-control" placeholder="Search...">
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">

                                <div class="col-md-12">
                                    <div class=" table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr style="white-space: nowrap">
                                                    <th>Sr. No. /<br />
                                                        सरल क्र.</th>
                                                    <th>District Name /<br />
                                                        जिले का नाम</th>
                                                    <th>Sankul Name/Code /<br />
                                                        संकुल नाम/कोड</th>
                                                    <th>No. Of School /<br />
                                                        विद्यालयों की संख्या
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tr>
                                                <td>1</td>
                                                <td>Raisen</td>
                                                <td>Crist Academy School(23356245856 )</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField2()">5</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Raisen</td>
                                                <td>Bal Bharti School(23354912798)</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField2()">12</td>

                                            </tr>

                                            <tr>
                                                <td>3</td>
                                                <td>Raisen</td>
                                                <td>Green Valley School (45987612345)</td>
                                                <td>15</td>
                                            </tr>

                                            <tr>
                                                <td>4</td>
                                                <td>Raisen</td>
                                                <td>Silver Oak High School (78965432112)</td>
                                                <td>3</td>
                                            </tr>

                                            <tr>
                                                <td>5</td>
                                                <td>Raisen</td>
                                                <td>Sunshine Public School (12345678901)</td>
                                                <td>18</td>
                                            </tr>
                                        </table>



                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="Schoolreport3" style="display: none">
                        <fieldset>
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
                                        <input type="text" id="searchInput3" class="form-control" placeholder="Search...">
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">

                                <div class="col-md-12">
                                    <div class=" table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr style="white-space: nowrap">
                                                    <th>Sr. No. /<br />
                                                        सरल क्र.</th>
                                                    <th>District Name /<br />
                                                        जिले का नाम</th>
                                                    <th>Sankul Name/Code /<br />
                                                        संकुल नाम/कोड</th>
                                                    <th>No. Of School /<br />
                                                        विद्यालयों की संख्या
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tr>
                                                <td>1</td>
                                                <td>Rajgarh</td>
                                                <td>Crist Academy School(23356245856 )</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField3()">5</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Rajgarh</td>
                                                <td>Bal Bharti School(23354912798)</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField3()">12</td>

                                            </tr>

                                            <tr>
                                                <td>3</td>
                                                <td>Rajgarh</td>
                                                <td>Green Valley School (45987612345)</td>
                                                <td>15</td>
                                            </tr>

                                            <tr>
                                                <td>4</td>
                                                <td>Rajgarh</td>
                                                <td>Silver Oak High School (78965432112)</td>
                                                <td>3</td>
                                            </tr>

                                            <tr>
                                                <td>5</td>
                                                <td>Rajgarh</td>
                                                <td>Sunshine Public School (12345678901)</td>
                                                <td>18</td>
                                            </tr>
                                        </table>



                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="Schoolreport4" style="display: none">
                        <fieldset>
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
                                        <input type="text" id="searchInput4" class="form-control" placeholder="Search...">
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">

                                <div class="col-md-12">
                                    <div class=" table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr style="white-space: nowrap">
                                                    <th>Sr. No. /<br />
                                                        सरल क्र.</th>
                                                    <th>District Name /<br />
                                                        जिले का नाम</th>
                                                    <th>Sankul Name/Code /<br />
                                                        संकुल नाम/कोड</th>
                                                    <th>No. Of School /<br />
                                                        विद्यालयों की संख्या
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tr>
                                                <td>1</td>
                                                <td>Sehore</td>
                                                <td>Crist Academy School(23356245856 )</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField4()">5</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Sehore</td>
                                                <td>Bal Bharti School(23354912798)</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField4()">12</td>

                                            </tr>

                                            <tr>
                                                <td>3</td>
                                                <td>Sehore</td>
                                                <td>Green Valley School (45987612345)</td>
                                                <td>15</td>
                                            </tr>

                                            <tr>
                                                <td>4</td>
                                                <td>Sehore</td>
                                                <td>Silver Oak High School (78965432112)</td>
                                                <td>3</td>
                                            </tr>

                                            <tr>
                                                <td>5</td>
                                                <td>Sehore</td>
                                                <td>Sunshine Public School (12345678901)</td>
                                                <td>18</td>
                                            </tr>
                                        </table>



                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="Schoolreport5" style="display: none">
                        <fieldset>
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
                                        <input type="text" id="searchInput5" class="form-control" placeholder="Search...">
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">

                                <div class="col-md-12">
                                    <div class=" table-responsive">
                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr style="white-space: nowrap">
                                                    <th>Sr. No. /<br />
                                                        सरल क्र.</th>
                                                    <th>District Name /<br />
                                                        जिले का नाम</th>
                                                    <th>Sankul Name/Code /<br />
                                                        संकुल नाम/कोड</th>
                                                    <th>No. Of School /<br />
                                                        विद्यालयों की संख्या
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tr>
                                                <td>1</td>
                                                <td>Vidisha</td>
                                                <td>Crist Academy School(23356245856 )</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField5()">5</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Vidisha</td>
                                                <td>Bal Bharti School(23354912798)</td>
                                                <td style="color: blue; font-weight: bold" onclick="ShowField5()">12</td>

                                            </tr>

                                            <tr>
                                                <td>3</td>
                                                <td>Vidisha</td>
                                                <td>Green Valley School (45987612345)</td>
                                                <td>15</td>
                                            </tr>

                                            <tr>
                                                <td>4</td>
                                                <td>Vidisha</td>
                                                <td>Silver Oak High School (78965432112)</td>
                                                <td>3</td>
                                            </tr>

                                            <tr>
                                                <td>5</td>
                                                <td>Vidisha</td>
                                                <td>Sunshine Public School (12345678901)</td>
                                                <td>18</td>
                                            </tr>
                                        </table>



                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="HiddenField" style="display: none">
                        <fieldset>
                            <legend>Number of School in Bhopal / भोपाल में स्कूलों की संख्या</legend>

                            <div class="row d-flex justify-content-end">
                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" id="searchInput" class="form-control" placeholder="Search...">
                                    </div>
                                </div>
                                <div class="col-md-1 text-end">
                                    <div class="form-group">
                                        <button type="button" onclick="btn_back()" class="btn btn-danger btn-rounded w-55">Back</button>

                                    </div>
                                </div>

                            </div>



                            <%--<div class="row justify-content-end">
                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button type="button" onclick="btn_back()" class="btn btn-danger btn-rounded w-55">Back</button>

                                    </div>
                                </div>
                            </div>--%>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered table-responsive-lg" style="border: 2px">
                                        <%-- <thead>
    <tr>
        <th class="underline" colspan="4"><b>Child School to merge (स्कूल जिसमे विलय करना हैं)</b></th>
    </tr>
</thead>--%>
                                        <tbody>
                                            <tr style="white-space: nowrap">
                                                <th class="text-center">Sr. No./<br />
                                                    सरल क्र.</th>

                                                <th>Block /<br />
                                                    खंड</th>

                                                <th>School Name/Code<br />
                                                    विद्यालय का नाम / कोड</th>

                                                <th>UDICE Code /<br />
                                                    यूडीआईसीई कोड
                                                </th>
                                            </tr>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td>Berasia</td>
                                                <td>Bal Bhavan School</td>
                                                <td>0012345682</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td>Phanda</td>
                                                <td>Saraswati Vidya Mandir</td>
                                                <td>0012345678</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">3</td>
                                                <td>Huzur</td>
                                                <td>Saint Jyoti School</td>
                                                <td>0012345679</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">4</td>
                                                <td>Govindpura</td>
                                                <td>Vidya Niketan</td>
                                                <td>0012345680</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">5</td>
                                                <td>Arera Colony</td>
                                                <td>Navjeevan School</td>
                                                <td>0012345682</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="HiddenField2" style="display: none">
                        <fieldset>
                            <legend>Number of School in Raisen / रायसेन में स्कूलों की संख्या</legend>
                            <div class="row d-flex justify-content-end">
     <div class="col-md-4 text-end">
         <div class="form-group">
             <button class="btn btn-info btn-rounded w-55">Excel</button>
             <button class="btn btn-info btn-rounded w-55">PDF</button>
         </div>
     </div>
     <div class="col-md-2">
         <div class="form-group">
             <input type="text" id="searchInput" class="form-control" placeholder="Search...">
         </div>
     </div>
     <div class="col-md-1 text-end">
         <div class="form-group">
             <button type="button" onclick="btn_back2()" class="btn btn-danger btn-rounded w-55">Back</button>

         </div>
     </div>

 </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered table-responsive-lg" style="border: 2px">
                                        <%-- <thead>
    <tr>
        <th class="underline" colspan="4"><b>Child School to merge (स्कूल जिसमे विलय करना हैं)</b></th>
    </tr>
</thead>--%>
                                        <tbody>
                                            <tr style="white-space: nowrap">
                                                <th class="text-center">Sr. No./<br />
                                                    सरल क्र.</th>

                                                <th>Block /<br />
                                                    खंड</th>

                                                <th>School Name/Code<br />
                                                    विद्यालय का नाम / कोड</th>

                                                <th>UDICE Code /<br />
                                                    यूडीआईसीई कोड
                                                </th>
                                            </tr>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td>Mandideep</td>
                                                <td>Bal Bhavan School</td>
                                                <td>0012345682</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td>Sultanpur</td>
                                                <td>Saraswati Vidya Mandir</td>
                                                <td>0012345678</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">3</td>
                                                <td>Shahganj</td>
                                                <td>Saint Jyoti School</td>
                                                <td>0012345679</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">4</td>
                                                <td>Bareli</td>
                                                <td>Vidya Niketan</td>
                                                <td>0012345680</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">5</td>
                                                <td>Sultanpur</td>
                                                <td>Navjeevan School</td>
                                                <td>0012345682</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="HiddenField3" style="display: none">
                        <fieldset>
                            <legend>Number of School in Rajgarh / राजगढ़ में स्कूलों की संख्या</legend>
                             <div class="row d-flex justify-content-end">
     <div class="col-md-4 text-end">
         <div class="form-group">
             <button class="btn btn-info btn-rounded w-55">Excel</button>
             <button class="btn btn-info btn-rounded w-55">PDF</button>
         </div>
     </div>
     <div class="col-md-2">
         <div class="form-group">
             <input type="text" id="searchInput" class="form-control" placeholder="Search...">
         </div>
     </div>
     <div class="col-md-1 text-end">
         <div class="form-group">
             <button type="button" onclick="btn_back3()" class="btn btn-danger btn-rounded w-55">Back</button>

         </div>
     </div>

 </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered table-responsive-lg" style="border: 2px">
                                        <%-- <thead>
    <tr>
        <th class="underline" colspan="4"><b>Child School to merge (स्कूल जिसमे विलय करना हैं)</b></th>
    </tr>
</thead>--%>
                                        <tbody>
                                            <tr style="white-space: nowrap">
                                                <th class="text-center">Sr. No./<br />
                                                    सरल क्र.</th>

                                                <th>Block /<br />
                                                    खंड</th>

                                                <th>School Name/Code<br />
                                                    विद्यालय का नाम / कोड</th>

                                                <th>UDICE Code /<br />
                                                    यूडीआईसीई कोड
                                                </th>
                                            </tr>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td>Biaora</td>
                                                <td>Bal Bhavan School</td>
                                                <td>0012345682</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td>Sarangpur</td>
                                                <td>Saraswati Vidya Mandir</td>
                                                <td>0012345678</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">3</td>
                                                <td>Mohangarh</td>
                                                <td>Saint Jyoti School</td>
                                                <td>0012345679</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">4</td>
                                                <td>Pachor</td>
                                                <td>Vidya Niketan</td>
                                                <td>0012345680</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">5</td>
                                                <td>Sultanpur</td>
                                                <td>Navjeevan School</td>
                                                <td>0012345682</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="HiddenField4" style="display: none">
                        <fieldset>
                            <legend>Number of School in Sehore / सीहोर में स्कूलों की संख्या</legend>
                            <div class="row d-flex justify-content-end">
     <div class="col-md-4 text-end">
         <div class="form-group">
             <button class="btn btn-info btn-rounded w-55">Excel</button>
             <button class="btn btn-info btn-rounded w-55">PDF</button>
         </div>
     </div>
     <div class="col-md-2">
         <div class="form-group">
             <input type="text" id="searchInput" class="form-control" placeholder="Search...">
         </div>
     </div>
     <div class="col-md-1 text-end">
         <div class="form-group">
             <button type="button" onclick="btn_back4()" class="btn btn-danger btn-rounded w-55">Back</button>

         </div>
     </div>

 </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered table-responsive-lg" style="border: 2px">
                                        <%-- <thead>
    <tr>
        <th class="underline" colspan="4"><b>Child School to merge (स्कूल जिसमे विलय करना हैं)</b></th>
    </tr>
</thead>--%>
                                        <tbody>
                                            <tr style="white-space: nowrap">
                                                <th class="text-center">Sr. No./<br />
                                                    सरल क्र.</th>

                                                <th>Block /<br />
                                                    खंड</th>

                                                <th>School Name/Code<br />
                                                    विद्यालय का नाम / कोड</th>

                                                <th>UDICE Code /<br />
                                                    यूडीआईसीई कोड
                                                </th>
                                            </tr>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td>Ashta</td>
                                                <td>Bal Bhavan School</td>
                                                <td>0012345682</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td>Ichhawar</td>
                                                <td>Saraswati Vidya Mandir</td>
                                                <td>0012345678</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">3</td>
                                                <td>Bareli</td>
                                                <td>Saint Jyoti School</td>
                                                <td>0012345679</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">4</td>
                                                <td>Goharganj</td>
                                                <td>Vidya Niketan</td>
                                                <td>0012345680</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">5</td>
                                                <td>Khilchipur</td>
                                                <td>Navjeevan School</td>
                                                <td>0012345682</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                    <div id="HiddenField5" style="display: none">
                        <fieldset>
                            <legend>Number of School in Vidisha / विदिशा में स्कूलों की संख्या</legend>
                             <div class="row d-flex justify-content-end">
     <div class="col-md-4 text-end">
         <div class="form-group">
             <button class="btn btn-info btn-rounded w-55">Excel</button>
             <button class="btn btn-info btn-rounded w-55">PDF</button>
         </div>
     </div>
     <div class="col-md-2">
         <div class="form-group">
             <input type="text" id="searchInput" class="form-control" placeholder="Search...">
         </div>
     </div>
     <div class="col-md-1 text-end">
         <div class="form-group">
             <button type="button" onclick="btn_back5()" class="btn btn-danger btn-rounded w-55">Back</button>

         </div>
     </div>

 </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered table-responsive-lg" style="border: 2px">
                                        <%-- <thead>
    <tr>
        <th class="underline" colspan="4"><b>Child School to merge (स्कूल जिसमे विलय करना हैं)</b></th>
    </tr>
</thead>--%>
                                        <tbody>
                                            <tr style="white-space: nowrap">
                                                <th class="text-center">Sr. No./<br />
                                                    सरल क्र.</th>

                                                <th>Block /<br />
                                                    खंड</th>

                                                <th>School Name/Code<br />
                                                    विद्यालय का नाम / कोड</th>

                                                <th>UDICE Code /<br />
                                                    यूडीआईसीई कोड
                                                </th>
                                            </tr>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td>Berasia</td>
                                                <td>Bal Bhavan School</td>
                                                <td>0012345682</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td>Phanda</td>
                                                <td>Saraswati Vidya Mandir</td>
                                                <td>0012345678</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">3</td>
                                                <td>Huzur</td>
                                                <td>Saint Jyoti School</td>
                                                <td>0012345679</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">4</td>
                                                <td>Govindpura</td>
                                                <td>Vidya Niketan</td>
                                                <td>0012345680</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">5</td>
                                                <td>Arera Colony</td>
                                                <td>Navjeevan School</td>
                                                <td>0012345682</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </fieldset>
                    </div>



                </div>
            </div>

        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function ShowReport() {
            var DdlList = document.getElementById("DdlList");
            var Schoolreport = document.getElementById("Schoolreport");
            var Schoolreport2 = document.getElementById("Schoolreport2");
            var Schoolreport3 = document.getElementById("Schoolreport3");
            var Schoolreport4 = document.getElementById("Schoolreport4");
            var Schoolreport5 = document.getElementById("Schoolreport5");

            var HiddenField = document.getElementById("HiddenField");
            var HiddenField2 = document.getElementById("HiddenField2");
            var HiddenField3 = document.getElementById("HiddenField3");
            var HiddenField4 = document.getElementById("HiddenField4");
            var HiddenField5 = document.getElementById("HiddenField5");

            // Check the value of the dropdown
            if (DdlList.value === "Bhopal") {
                Schoolreport.style.display = 'block';
                Schoolreport2.style.display = 'none';
                Schoolreport3.style.display = 'none';
                Schoolreport4.style.display = 'none';
                Schoolreport5.style.display = 'none';



            }
            else if (DdlList.value === "Raisen") {
                Schoolreport.style.display = 'none';
                Schoolreport2.style.display = 'block';
                Schoolreport3.style.display = 'none';
                Schoolreport4.style.display = 'none';
                Schoolreport5.style.display = 'none';
            }
            else if (DdlList.value === "Rajgarh") {
                Schoolreport.style.display = 'none';
                Schoolreport2.style.display = 'none';
                Schoolreport3.style.display = 'block';
                Schoolreport4.style.display = 'none';
                Schoolreport5.style.display = 'none';

            }
            else if (DdlList.value === "Sehore") {
                Schoolreport.style.display = 'none';
                Schoolreport2.style.display = 'none';
                Schoolreport3.style.display = 'none';
                Schoolreport4.style.display = 'block';
                Schoolreport5.style.display = 'none';

            }
            else if (DdlList.value === "Vidisha") {
                Schoolreport.style.display = 'none';
                Schoolreport2.style.display = 'none';
                Schoolreport3.style.display = 'none';
                Schoolreport4.style.display = 'none';
                Schoolreport5.style.display = 'block';

            }

            else {
                Schoolreport.style.display = 'none';
                Schoolreport2.style.display = 'none';
                Schoolreport3.style.display = 'none';
                Schoolreport4.style.display = 'none';
                Schoolreport5.style.display = 'none';
            }
        }
    </script>
    <script>
        function ShowField() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'block';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'none';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'none';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'none';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'none';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'none';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'none';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'none';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'none';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'none';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'none';
        }
    </script>
    <script>
        function ShowField2() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'none';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'block';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'none';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'none';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'none';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'none';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'none';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'none';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'none';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'none';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'none';
        }
    </script>

    <script>
        function ShowField3() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'none';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'none';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'block';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'none';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'none';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'none';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'none';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'none';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'none';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'none';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'none';
        }
    </script>

    <script>
        function ShowField4() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'none';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'none';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'none';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'block';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'none';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'none';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'none';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'none';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'none';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'none';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'none';
        }
    </script>

    <script>
        function ShowField5() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'none';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'none';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'none';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'none';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'block';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'none';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'none';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'none';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'none';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'none';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'none';
        }

    </script>
    <script>
        function btn_back() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'none';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'none';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'none';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'none';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'none';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'block';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'none';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'none';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'none';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'none';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'block';


        }
    </script>

    <script>
        function btn_back2() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'none';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'none';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'none';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'none';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'none';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'none';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'block';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'none';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'none';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'none';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'block';


        }
    </script>

    <script>
        function btn_back3() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'none';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'none';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'none';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'none';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'none';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'none';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'none';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'block';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'none';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'none';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'block';


        }
    </script>

    <script>
        function btn_back4() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'none';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'none';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'none';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'none';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'none';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'none';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'none';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'none';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'block';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'none';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'block';


        }
    </script>

    <script>
        function btn_back5() {
            var HiddenField = document.getElementById("HiddenField").style.display = 'none';
            var HiddenField2 = document.getElementById("HiddenField2").style.display = 'none';
            var HiddenField3 = document.getElementById("HiddenField3").style.display = 'none';
            var HiddenField4 = document.getElementById("HiddenField4").style.display = 'none';
            var HiddenField5 = document.getElementById("HiddenField5").style.display = 'none';

            var Schoolreport = document.getElementById("Schoolreport").style.display = 'none';
            var Schoolreport2 = document.getElementById("Schoolreport2").style.display = 'none';
            var Schoolreport3 = document.getElementById("Schoolreport3").style.display = 'none';
            var Schoolreport4 = document.getElementById("Schoolreport4").style.display = 'none';
            var Schoolreport5 = document.getElementById("Schoolreport5").style.display = 'block';
            var SearchDistrict = document.getElementById("SearchDistrict").style.display = 'block';


        }
    </script>

</asp:Content>

