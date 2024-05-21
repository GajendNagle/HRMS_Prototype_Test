<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_AccountDetailsSchoolwise.aspx.cs" Inherits="mis_Scheme_Rpt_AccountDetailsSchoolwise" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Students whose electronic Pay Order failed</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>
                    <li class="breadcrumb-item active">Students whose electronic Pay Order failed</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body ">
            <fieldset>
                <legend>School wise Summary of Students whose electronic Pay Order failed</legend>
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <label class="font-bold">District Name<span style="color: red">*</span></label>
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
                    <div class="col-md-3">
                        <label class="font-bold">Block Name</label>
                        <asp:DropDownList runat="server" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Agar</asp:ListItem>
                            <asp:ListItem>Barod</asp:ListItem>
                            <asp:ListItem>Nalkheda</asp:ListItem>
                            <asp:ListItem>Susner</asp:ListItem>
                            <asp:ListItem>Alirajpur</asp:ListItem>
                            <asp:ListItem>Bhabra</asp:ListItem>
                            <asp:ListItem>Katthiwara</asp:ListItem>
                            <asp:ListItem>Sondwa</asp:ListItem>
                            <asp:ListItem>Udaygarh</asp:ListItem>
                            <asp:ListItem>Jobat</asp:ListItem>
                            <asp:ListItem>Anuppur</asp:ListItem>
                            <asp:ListItem>Jaithari</asp:ListItem>
                            <asp:ListItem>Kotma</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="font-weight-bold">Sankul Name<span style="color: red"> *</span></label>
                        <asp:DropDownList runat="server" CssClass="form-control select2">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>AKBARPUR GOVT. HS</asp:ListItem>
                            <asp:ListItem>BERASIA (BOYS) GOVT.HSS</asp:ListItem>
                            <asp:ListItem>DHAMARRA GOVT. HS</asp:ListItem>
                            <asp:ListItem>EENT KHEDI GOVT. HSS</asp:ListItem>
                            <asp:ListItem>BAIRAGARH (BOYS) GOVT.HSS</asp:ListItem>
                            <asp:ListItem>BERAISA (GIRLS) SN HSS</asp:ListItem>
                            <asp:ListItem>BAGRODA GOVT. HS</asp:ListItem>
                            <asp:ListItem>BARKHEDI (GIRLS) GOVT.HSS</asp:ListItem>
                            <asp:ListItem>GOVINDPURA (GIRLS) GO.HSS</asp:ListItem>
                            <asp:ListItem>GOVINDPURA (GIRLS) GO.HSS</asp:ListItem>
                            <asp:ListItem>GUNGA GOVT. HSS</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-weight-bold">School Name / UDISE Code<span style="color: red;"> *</span></label>
                            <asp:DropDownList CssClass="form-control select2" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>121-Sarasvati Gyan Mandir</asp:ListItem>
                                <asp:ListItem>101-Gyan Ganga Vidhya Mandir</asp:ListItem>
                                <asp:ListItem>012-Reema Gyan Mandir</asp:ListItem>
                                <asp:ListItem>131-Sarasvati Vidhya Mandir</asp:ListItem>
                                <asp:ListItem>122-Bal Bharti Higher Secondary School</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-lg-12 mt-3">
                        <div class="row justify-content-center">
                            <div class="col-lg-3 text-center">
                                <img src="../../img/captcha.png" width="150" />
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4 text-center">
                                <label class="font-bold">Please enter the code shown above</label>
                            </div>
                            <div class="col-lg-12"></div>

                            <div class="col-lg-1 ">
                                <div class="form-group">
                                    <input type="text" class="form-control text-center" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 text-center">
                        <div class="form-group">
                            <asp:Button runat="server" ID="btnShowStudentDetails" CssClass="btn btn-success btn-rounded" Text="Show Student Details" OnClick="btnShowStudentDetails_Click" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="accountBlock" runat="server" visible="false">
                <fieldset>
                    <legend>List Of Student Account Details School Wise</legend>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <div class="table-responsive table-bordered">
                                <table class="table text-center">                   
                                    <tbody>                              
                                        <tr>                             
                                            <th>Sr.No.</th>              
                                            <th>UDISE Code</th>
                                            <th>School</th>
                                            <th>Number of Students whose Payment Failed</th>
                                            <th>Number of Students whose Payment failed and their Accounts has been updated</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>23510802502</td>
                                            <td>GIRLS P.S. KANAD</td>
                                            <td>1</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>    
                                            <td>2</td>
                                            <td>23510802605</td>
                                            <td>P.S. DHOTI</td>
                                            <td>2</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>23510802111</td>
                                            <td>GMS AHIR BARDIYA</td>
                                            <td>1</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>235108021065</td>
                                            <td>P.S. KHEDA MADHOPUR</td>
                                            <td>3</td>
                                            <td>0</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>235108029065</td>
                                            <td>GIRLS GMS AGAR CHAWANI</td>
                                            <td>1</td>
                                            <td>0</td>
                                        </tr>
                                    </tbody>
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
</asp:Content>

