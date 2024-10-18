<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchoolinchargeReport.aspx.cs" Inherits="mis_Registration_SchoolinchargeReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table tr th {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <h4 class="card-title">School Incharge Report / विद्यालय प्रभारी की रिपोर्ट</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div id="lblMsg"></div>

            <fieldset>
                <legend>School Incharge Report / विद्यालय प्रभारी की रिपोर्ट</legend>

                <div class="row align-items-baseline">

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select District /<br />
                                जिला का चयन करें <span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddldistrict">
                                <option>--Select--</option>
                                <option>Bhopal</option>
                                <option>Raisen</option>
                                <option>Rajgarh</option>
                                <option>Sehore</option>
                                <option>Vidisha</option>
                                <option>Ashoknagar</option>
                                <option>Shivpuri</option>
                                <option>Datia</option>
                                <option>Guna</option>
                                <option>Gwalior</option>
                                <option>Harda</option>
                                <option>Hoshangabad</option>
                                <option>Betul</option>
                                <option>Morena</option>
                                <option>Sheopur</option>
                                <option>Bhind</option>
                                <option>Barwani</option>
                                <option>Burhanpur</option>
                                <option>Dhar</option>
                                <option>Indore</option>
                                <option>Jhabua</option>
                                <option>Khandwa</option>
                                <option>Khargone</option>
                                <option>Alirajpur</option>
                                <option>Balaghat</option>
                                <option>Chhindwara</option>
                                <option>Jabalpur</option>
                                <option>Katni</option>
                                <option>Mandla</option>
                                <option>Narsinghpur</option>
                                <option>Seoni</option>
                                <option>Rewa</option>
                                <option>Satna</option>
                                <option>Sidhi</option>
                                <option>Singroli</option>
                                <option>Chhatarpur</option>
                                <option>Damoh</option>
                                <option>Panna</option>
                                <option>Sagar</option>
                                <option>Tikamgarh</option>
                                <option>Shahdol</option>
                                <option>Umaria</option>
                                <option>Dindori</option>
                                <option>Anuppur</option>
                                <option>Dewas</option>
                                <option>Mandsaur</option>
                                <option>Neemuch</option>
                                <option>Ratlam</option>
                                <option>Shajapur</option>
                                <option>Ujjain</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Block /
                                <br />
                                ब्लॉक का चयन करें  <span style="color: red">*</span>
                            </label>
                            <select class="form-control select2">
                                <option>--Select--</option>
                                <option>Agar</option>
                                <option>Barod</option>
                                <option>Nalkheda</option>
                                <option>Susner</option>
                                <option>Alirajpur</option>
                                <option>Bhabra</option>
                                <option>Katthiwara</option>
                                <option>Sondwa</option>
                                <option>Udaygarh</option>
                                <option>Jobat</option>
                                <option>Anuppur</option>
                                <option>Jaithari</option>
                                <option>Kotma</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Sankul Name /
                                <br />
                                संकुल नाम का चयन करें <span style="color: red">*</span>
                            </label>
                            <select class="form-control select2">
                                <option>--Select--</option>
                                <option>AKBARPUR GOVT. HS</option>
                                <option>BERASIA (BOYS) GOVT.HSS</option>
                                <option>DHAMARRA GOVT. HS</option>
                                <option>EENT KHEDI GOVT. HSS</option>
                                <option>BAIRAGARH (BOYS) GOVT.HSS</option>
                                <option>BERAISA (GIRLS) SN HSS</option>
                                <option>BAGRODA GOVT. HS</option>
                                <option>BARKHEDI (GIRLS) GOVT.HSS</option>
                                <option>GOVINDPURA (GIRLS) GO.HSS</option>
                                <option>GUNGA GOVT. HSS</option>
                            </select>
                        </div>
                    </div>

                </div>
                <hr />

                <div class="row">
                    <div class="col mt-4">
                        <div class="form-group">
                            <button class="btn btn-outline-success btn-border w-lg" onclick="myFunction(); return false">Search</button>
                            <a href="SchoolinchargeReport.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>

                </div>
            </fieldset>
            <fieldset id="data" style="display: none;">
                <legend>Report / विवरण</legend>
                <div class="row mt-4 justify-content-end">
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

                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr style="background-color: #527b883b; white-space: nowrap;" class="text-white">
                                <th style="background-color: #527b883b;">Sr.No. /<br />
                                    सरल.क्र.</th>
                                <th style="background-color: #527b883b;">District Name /<br />
                                    जिला का नाम</th>
                                <th style="background-color: #527b883b;">School Name / Code /<br />
                                    स्कूल का नाम / कोड</th>
                                <th style="background-color: #527b883b;">Sankul Name / Code /<br />
                                    संकुल नाम / कोड</th>
                                <th style="background-color: #527b883b;">School DISE Code /<br />
                                    स्कूल DISE कोड</th>
                                <th style="background-color: #527b883b;">Incharge Name / ID<br />
                                    प्रभारी का नाम/आईडी</th>
                                <th style="background-color: #527b883b;">Mobile No. /<br />
                                    मोबाइल नंबर</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="text-align: center;">1</td>
                                <td>Bhopal</td>
                                <td>Govt. HSS School - (1234)</td>
                                <td>Akbarpur Sankul - (5678)</td>
                                <td>9876543210</td>
                                <td>Ravi Kumar / 8901</td>
                                <td>9123456789</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">2</td>
                                <td>Indore</td>
                                <td>Govt. Girls HSS - (2234)</td>
                                <td>Berasiya Sankul - (6678)</td>
                                <td>9876543211</td>
                                <td>Vikas Jain / 8902</td>
                                <td>9123456790</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">3</td>
                                <td>Jabalpur</td>
                                <td>Govt. Boys HSS - (3234)</td>
                                <td>Dhamarra Sankul - (7678)</td>
                                <td>9876543212</td>
                                <td>Sunil Patel / 8903</td>
                                <td>9123456791</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">4</td>
                                <td>Gwalior</td>
                                <td>Govt. Model School - (4234)</td>
                                <td>Eent Khedi Sankul - (8678)</td>
                                <td>9876543213</td>
                                <td>Anil Singh / 8904</td>
                                <td>9123456792</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">5</td>
                                <td>Ujjain</td>
                                <td>Govt. HSS Ujjain - (5234)</td>
                                <td>Bairagarh Sankul - (9678)</td>
                                <td>9876543214</td>
                                <td>Rahul Verma / 8905</td>
                                <td>9123456793</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">6</td>
                                <td>Sagar</td>
                                <td>Govt. HSS Sagar - (6234)</td>
                                <td>Bagroda Sankul - (1078)</td>
                                <td>9876543215</td>
                                <td>Arun Yadav / 8906</td>
                                <td>9123456794</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">7</td>
                                <td>Satna</td>
                                <td>Govt. HSS Satna - (7234)</td>
                                <td>Barkhedi Sankul - (2078)</td>
                                <td>9876543216</td>
                                <td>Kamal Gupta / 8907</td>
                                <td>9123456795</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">8</td>
                                <td>Rewa</td>
                                <td>Govt. Model Rewa - (8234)</td>
                                <td>Govindpura Sankul - (3078)</td>
                                <td>9876543217</td>
                                <td>Mohit Singh / 8908</td>
                                <td>9123456796</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">9</td>
                                <td>Chhindwara</td>
                                <td>Govt. HSS Chhindwara - (9234)</td>
                                <td>Gunga Sankul - (4078)</td>
                                <td>9876543218</td>
                                <td>Ajay Saxena / 8909</td>
                                <td>9123456797</td>
                            </tr>
                            <tr>
                                <td style="text-align: center;">10</td>
                                <td>Dhar</td>
                                <td>Govt. HSS Dhar - (10234)</td>
                                <td>Susner Sankul - (5078)</td>
                                <td>9876543219</td>
                                <td>Ashish Patel / 8910</td>
                                <td>9123456798</td>
                            </tr>
                        </tbody>



                    </table>



                </div>
            </fieldset>
        </div>

    </div>

    <script>
        function myFunction() {
            var data = document.getElementById("data").style.display = 'block';
        }
    </script>

    <script> 
        function myFunction() {
            var data = document.getElementById('data');
            /* var Field2 = document.getElementById('Field2');*/
            /* var Fieldset1 = document.getElementById('Fieldset1');*/

            var नाम = document.getElementById('ddldistrict').value.trim();

            if (ddldistrict !== '') {
                data.style.display = 'block';
                //Fieldset1.style.display = 'block';

            }
        }

    </script>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

