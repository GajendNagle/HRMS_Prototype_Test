<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PromotionProcess.aspx.cs" Inherits="mis_Transaction_PromotionProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showdetails {
            display: none;
        }

        #divNewPromotion {
            display: none;
        }

        #OfficeCode {
            display: none;
        }

        #SchoolCode {
            display: none;
        }

        #radioCode {
            display: none;
        }

        #fileno {
            display: none;
        }

        #checkbox {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">




        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Promotion Process</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Promotion" title="click to go on">Promotion</a></li>
                        <li class="breadcrumb-item active">Promotion Process</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>Employee Promotion</legend>
                    <div class="row">
                        <%-- <div class="col-md-3">
                            <div class="form-group">
                                <label>Division / संभाग <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Bhopal">Bhopal</option>
                                    <option value="Indore">Indore</option>
                                    <option value="Gwalior">Gwalior</option>
                                    <option value="Jabalpur">Jabalpur</option>
                                    <option value="Ujjain">Ujjain</option>
                                    <option value="Sagar">Sagar</option>
                                    <option value="Rewa">Rewa</option>
                                    <option value="Chambal">Chambal</option>
                                    <option value="Shahdol">Shahdol</option>
                                    <option value="Hoshangabad">Hoshangabad</option>
                                    <option value="Narmadapuram">Narmadapuram</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">District<span style="color: red">*</span></label>
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
                            <div class="form-group">
                                <label>Designation Type/पदनाम का प्रकार <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Indore">Ministry (मंत्रालय)</option>
                                    <option value="Gwalior">Executive (कार्यकारी)</option>
                                    <option value="Jabalpur">Teacher (अध्यापक)</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Designation Name/पदनाम<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Additional Director">Additional Director</option>
                                    <option value="Joint Director">Joint Director</option>
                                    <option value="Deputy Director">Deputy Director</option>
                                    <option value="Asstt Director">Asstt Director</option>
                                    <option value="Regional Librarian">Regional Librarian</option>
                                    <option value="Planning Officer">Planning Officer</option>
                                    <option value="Director (ELTI)">Director (ELTI)</option>
                                    <option value="Director(SISE)">Director(SISE)</option>
                                    <option value="Principal (PGBT)">Principal (PGBT)</option>
                                    <option value="Principal (DIET)">Principal (DIET)</option>
                                    <option value="Principal HSS">Principal HSS</option>
                                    <option value="Principal HS">Principal HS</option>
                                    <option value="Lecturer">Lecturer</option>
                                    <option value="HM(MS)">HM(MS)</option>
                                    <option value="Teacher (UDT)">Teacher (UDT)</option>
                                    <option value="Music Teacher">Music Teacher</option>
                                    <option value="Tabla Teacher">Tabla Teacher</option>
                                    <option value="Craft Teacher">Craft Teacher</option>
                                    <option value="HM(PS)">HM(PS)</option>
                                    <option value="Asstt Teacher(LDT)">Asstt Teacher(LDT)</option>
                                    <option value="Varistha Adhyapak">Varistha Adhyapak</option>
                                    <option value="Adhyapak">Adhyapak</option>
                                    <option value="Sahayak Adhyapak">Sahayak Adhyapak</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Name-Code /
                                    <br />
                                    कर्मचारी का नाम-कोड<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="Yes">Rohan-20562</option>
                                    <option value="No">Aalok-03265</option>
                                    <option value="No">Sahil-95865</option>
                                </select>
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Code /
                                    कर्मचारी का कोड</label>
                                <asp:TextBox ID="txtEmpCodeno" runat="server" CssClass="form-control" MaxLength="20" AutoComplete="off"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-5" style="margin-top: 1.8rem !important;">
                            <div class="form-group ">
                                <button type="button" onclick="Hideshow()" class="btn btn-success btn-rounded ">Search</button>
                                <a href="PromotionProcess.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div id="showdetails">
                    <fieldset>
                        <legend>CURRENT PAYSCALE</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        कर्मचारी का नाम-कोड/Employee Name-Code
                                        <br />
                                    </label>
                                    <input name="ename" type="text" value="AU4336-Ashok Patidar" disabled class="form-control" autocomplete="off" placeholder="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Designation / पद</label>
                                    <input name="ename" type="text" value="Attendant" disabled class="form-control" autocomplete="off" placeholder="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Gender/लिंग</label>
                                    <input name="ename" type="text" value="Male" disabled class="form-control" autocomplete="off" placeholder="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        DDO-Sankul Code-Name/
                                        डीडीओ-संकुल कोड-नाम<span style="color: red">*</span></label>
                                    <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>OIS Code-Name/ओआईएस कोड-नाम<span style="color: red">*</span></label>
                                    <input name="txtPresentParentInstitution" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Name of the Present Parent Institution" value="52125212542-Naveen HHS school Bhopal" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>District/जिला<span style="color: red">*</span></label>
                                    <input name="txtPresentParentInstitution" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Name of the Present Parent Institution" value="Shajapur" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Class / श्रेणी</label>
                                    <input name="ename" type="text" value="Class IV" disabled class="form-control" autocomplete="off" placeholder="" />
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pay Commission / वेतन आयोग</label>
                                    <input name="ename" type="text" value="Seventh Pay Commission" disabled class="form-control" autocomplete="off" placeholder="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pay Scale / वेतनमान</label>
                                    <input name="ename" type="text" value="5200-20200" disabled class="form-control" autocomplete="off" placeholder="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Level / स्तर</label>
                                    <input name="ename" type="text" value="Level-7" disabled class="form-control" autocomplete="off" placeholder="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Basic Salary / मूल वेतन</label>
                                    <input name="ename" type="text" value="43500.00" disabled class="form-control" autocomplete="off" placeholder="" />
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>NEW PROMOTION DETAIL</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Promotion with Transfer<span style="color: red">*</span></label>
                                    <asp:DropDownList ID="ddlYesorNo" runat="server" CssClass="form-control"
                                        onchange="TransferYesOrNo($(this).val())">
                                        <asp:ListItem Value="2">No</asp:ListItem>
                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                    </asp:DropDownList>
                                    <%-- <div class="custom-control custom-radio">
                                        <input onclick="toggleDivs()" type="radio" id="customRadio1" name="customRadio1" class="form-check-input">
                                        <label class="form-check-label" for="customRadio11">Yes</label>
                                       
                                        <input onclick="toggleDivs()" type="radio" id="customRadio2" checked="checked" name="customRadio1" class="form-check-input">
                                        <label class="form-check-label" for="customRadio11">No</label>
                                    </div>--%>
                                </div>
                            </div>
                            <div class="col-md-3" id="DivDistrictTransfer" style="display: none;">
                                <div class="form-group">
                                    <label>District<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Ujjain">Ujjain</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Morena">Morena</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3" id="DivSankulTransfer" style="display: none;">
                                <div class="form-group">
                                    <label>
                                        DDO-Sankul Code-Name/डीडीओ-संकुल कोड-नाम<span style="color: red">*</span></label>
                                    <select class="form-control">
                                        <option>Select</option>
                                        <option value="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD">15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3" id="DivOisSchoolTransfer" style="display: none;">
                                <div class="form-group">
                                    <label>OIS Code-Name/ओआईएस कोड-नाम<span style="color: red">*</span></label>
                                    <select name="txtPresentParentInstitution" class="form-control">
                                        <option>Select</option>
                                        <option value="52125212542-Naveen HHS school Bhopal">52125212542-Naveen HHS school Bhopal</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3" id="DivTransferOrderNo" style="display: none;">
                                <div class="form-group">
                                    <label>Transfer Order No./स्थानान्तरण आदेश न.<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" class="form-control" ID="txtTransferorderNo" MaxLength="10" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3" id="DivTransferOrderDate" style="display: none;">
                                <div class="form-group">
                                    <label>Transfer Order No./स्थानान्तरण आदेश न.<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" class="form-control" ID="txtTransferOrderDate" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Designation / पद<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Yes">Attendent</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Class / श्रेणी<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Yes">Class I</option>
                                        <option value="Yes">Class II</option>
                                        <option value="Yes">Class III</option>
                                        <option value="Yes">Class IV</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pay Commission / वेतन आयोग<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Yes">First Pay Commission</option>
                                        <option value="Yes">Second Pay Commission</option>
                                        <option value="Yes">Third Pay Commission</option>
                                        <option value="Yes">Fourth Pay Commission</option>
                                        <option value="Yes">Fifth Pay Commission</option>
                                        <option value="Yes">Sixth Pay Commission</option>
                                        <option value="Yes">Seventh Pay Commission</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Pay Scale / वेतनमान<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Yes">5200-20200</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Level / स्तर<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Yes">Level-1</option>
                                        <option value="Yes">Level-2</option>
                                        <option value="Yes">Level-3</option>
                                        <option value="Yes">Level-4</option>
                                        <option value="Yes">Level-5</option>
                                        <option value="Yes">Level-6</option>
                                        <option value="Yes">Level-7</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Basic Salary / मूल वेतन<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Yes">43500.00</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>File No.<span style="color: red">*</span></label>
                                    <input type="text" autocomplete="off" class="form-control" placeholder="Enter File No." name="name" value="" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Date of Relivieving/कार्यमुक्ति की तिथि<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtRelievinMonth" runat="server" TextMode="Month" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Promotion Order No./पदोन्नति आदेश न.<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" class="form-control" ID="txtPromotionOrderNo" MaxLength="10" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Promotion Order No./पदोन्नति आदेश न.<span style="color: red">*</span></label>
                                    <asp:TextBox runat="server" class="form-control" ID="txtPromotionOrderdate" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Remark/टिप्पणी<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtRemark" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <fieldset style="display: none;">
                            <legend>Promotion with Transfer</legend>
                            <div class="row">
                                <%--  <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Promotion with Transfer<span style="color: red">*</span></label>
                                        <div class="custom-control custom-radio">
                                            <input onclick="toggleDivs()" type="radio" id="customRadio1" name="customRadio1" class="form-check-input">
                                            <label class="form-check-label" for="customRadio11">Yes  </label>
                                            <br />
                                            <input onclick="toggleDivs()" type="radio" id="customRadio2" checked="checked" name="customRadio1" class="form-check-input">
                                            <label class="form-check-label" for="customRadio11">No</label>
                                        </div>
                                    </div>
                                </div>--%>
                            </div>
                            <div id="divNewPromotion">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Division / संभाग <span style="color: red">*</span></label>
                                            <select class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="Bhopal">Bhopal</option>
                                                <option value="Indore">Indore</option>
                                                <option value="Gwalior">Gwalior</option>
                                                <option value="Jabalpur">Jabalpur</option>
                                                <option value="Ujjain">Ujjain</option>
                                                <option value="Sagar">Sagar</option>
                                                <option value="Rewa">Rewa</option>
                                                <option value="Chambal">Chambal</option>
                                                <option value="Shahdol">Shahdol</option>
                                                <option value="Hoshangabad">Hoshangabad</option>
                                                <option value="Narmadapuram">Narmadapuram</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>District / जिला <span style="color: red">*</span></label>
                                            <select class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="Bhopal">Bhopal</option>
                                                <option value="Indore">Indore</option>
                                                <option value="Gwalior">Gwalior</option>
                                                <option value="Jabalpur">Jabalpur</option>
                                                <option value="Ujjain">Ujjain</option>
                                                <option value="Sagar">Sagar</option>
                                                <option value="Rewa">Rewa</option>
                                                <option value="Satna">Satna</option>
                                                <option value="Guna">Guna</option>
                                                <option value="Chhindwara">Chhindwara</option>
                                                <option value="Morena">Morena</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Block<span style="color: red">*</span></label>
                                            <select class="form-control select2">
                                                <option value="--Select--">--Select--</option>
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
                                            <label>OIS Udise Code-Name<span style="color: red">*</span></label>
                                            <select id="ddlSchoolCode" class="form-control select2">
                                                <option value="0">--Select--</option>
                                                <option value="1">43512 - AAMAI HS NEW JSK</option>
                                                <option value="2">2312 - AKBARPUR GOVT. HS</option>
                                                <option value="3">23231 - B.HSS BISTAN</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <input type="checkbox" />
                                            <label>विभाग के आदेशानुसार पदोन्‍नति की प्रक्रिया की जा रही है।<span style="color: red">*</span></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <div class="row justify-content-center">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <button type="button" class="Alert-Save btn btn-success  btn-rounded">Add</button>
                                    <a href="PromotionProcess.aspx" class=" btn btn-danger  btn-rounded">Clear</a>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="divEnteredDetails" style="display: none;">
                        <legend>Details</legend>

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

                        <div class="row">
                            <div class="col-md-12 form-group">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th rowspan="2">Sr.No.</th>
                                            <th rowspan="2">Action</th>
                                            <th rowspan="2">Employee ID-Name</th>
                                            <th rowspan="2">Employee Designation</th>
                                            <th rowspan="2">File No.</th>
                                            <th colspan="7" class="text-center">Current Details</th>
                                            <th colspan="7" class="text-center">New Details</th>
                                            <th rowspan="2">View Service Book</th>
                                            <th rowspan="2">Delete</th>
                                        </tr>
                                        <tr>
                                            <th>Class</th>
                                            <th>Type of Post</th>
                                            <th>Designation</th>
                                            <th>Department</th>
                                            <th>Pay Scale</th>
                                            <th>Level</th>
                                            <th>OIS-Udise Code</th>

                                            <th>Class</th>
                                            <th>Type of Post</th>
                                            <th>Designation</th>
                                            <th>Department</th>
                                            <th>Pay Scale</th>
                                            <th>Level</th>
                                            <th>OIS-Udise Code</th>
                                        </tr>
                                        <tr>
                                            <th>1</th>
                                            <td>
                                                <input id="chckTransfer" type="checkbox" /></td>
                                            <td>543545-Ashok Kumar</td>
                                            <td>Teacher</td>
                                            <td>254786</td>

                                            <td>Class IV</td>
                                            <td>Regular</td>
                                            <td>Attendant</td>
                                            <td>Administration</td>
                                            <td>5200-20200</td>
                                            <td>Level-7</td>
                                            <td>7894500</td>

                                            <td>Class V</td>
                                            <td>Regular</td>
                                            <td>Attendant</td>
                                            <td>Administration</td>
                                            <td>7600-30250</td>
                                            <td>Level-8</td>
                                            <td>6294520</td>

                                            <td><a onclick="openPDF()" class="btn" onclientclick="return false;"><i class="fas fa-eye"></i>View</a></td>
                                            <td class="text-center"><a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a></td>
                                        </tr>
                                        <%--<tr>
                                            <th>2</th>
                                            <td>
                                                <input id="chckTransfer2" onclick="checkClick();" type="checkbox" /></td>
                                            <td>234343-Shiv Sharan</td>
                                            <td>Teacher</td>

                                            <td>Class IV</td>
                                            <td>Regular</td>
                                            <td>Attendant</td>
                                            <td>Administration</td>
                                            <td>5200-20200</td>
                                            <td>Level-7</td>
                                            <td>7894500</td>

                                            <td>Class VI</td>
                                            <td>Regular</td>
                                            <td>Attendant</td>
                                            <td>Administration</td>
                                            <td>10000-55000</td>
                                            <td>Level-8</td>
                                            <td>6294520</td>

                                            <td><a onclick="openPDF()" class="btn" onclientclick="return false;"><i class="fas fa-eye"></i>View</a></td>
                                            <td class="text-center"><a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a></td>
                                        </tr>--%>
                                    </table>
                                </div>
                            </div>
                            <%--                            <div class="col-md-12">
                                <div>
                                    <p id="note"><b>Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                                </div>
                                <br />
                            </div>--%>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <input type="button" class="Alert-Save2 btn btn-success btn-rounded" value="Promotion/Transfer Process" />
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="divTransfer" style="display: none;">
                        <legend>Final Details</legend>
                        <div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>File No. / फाइल नंबर<span style="color: red">*</span></label>
                                        <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." value="254786" readonly />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Order Date / आदेश तारीख<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Effective Date / प्रभावी तारीख<span style="color: red">*</span></label>
                                        <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Upload Documents<span style="color: red">*</span></label>
                                        <input name="ename" type="file" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Remark</label>
                                        <input type="text" class="form-control" placeholder="Enter Remark" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-md-2 mt-4">
                                    <div class="form-group">
                                        <input type="button" class="Alert-Save2 btn btn-success btn-block btn-rounded" value="Promotion Process" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="divOrderDetails" style="display: none;">
                        <legend>Details</legend>
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tr>
                                        <th>Sr.No.</th>
                                        <th>File No.</th>
                                        <th>Order Date</th>
                                        <th>Effective Date</th>
                                        <th>Generate Order</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>254786</td>
                                        <td>05/02/2024</td>
                                        <td>06/02/2024</td>
                                        <td>
                                            <button onclick="openPDF1()" type="button" class=" btn "><i class="fa fa-download dnldIcon"></i></button>
                                    </tr>
                                </table>
                            </div>
                        </div>

                    </fieldset>

                </div>
                <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">
                                <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation Type</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Type </strong>from the dropdown and the data will be populated from the <strong>Designation Type Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Name </strong>from the dropdown and the data will be populated from the <strong>Designation Name Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Employee Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Employee Name </strong>from the dropdown and the data will be populated from the <strong>Employee Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Search </strong>
                                    <ul>
                                        <li>User should be able to click on Search button.</li>
                                        <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                    </ul>
                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>CURRENT PAYSCALE</strong>
                                    <ul>
                                        <li>All the fields of the <strong>Current Payscale </strong>will fill automatically according to the employee.</li>
                                    </ul>
                                </li>

                                <li><b>NEW PROMOTION DETAIL</b>
                                </li>
                                <li><strong>Class </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Class</strong>from the dropdown and the data will be populated from the <strong>Class Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Type of Post  </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Type of Post </strong>from the dropdown and the data will be populated from the <strong>Type of Post  Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation </strong>from the dropdown and the data will be populated from the <strong>Designation Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Department </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Department </strong>from the dropdown and the data will be populated from the <strong>Department Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Pay Commission </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Pay Commission </strong>from the dropdown and the data will be populated from the <strong>Pay Commission Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Pay Scale </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Pay Scale </strong>from the dropdown and the data will be populated from the <strong>Pay Scale Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Level </strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Level </strong>from the dropdown and the data will be populated from the <strong>Level Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Basic Salary</strong>
                                    <ul>
                                        <li>User will be able to enter the <strong>Basic Salary </strong>and the text field will accept <strong>only numerical values.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Promotion with Transfer</strong>
                                    <ul>
                                        <li>User will be able to Select Yes/No radio button.</li>
                                        <li>If User select Yes Dropdown(Division, District, Block) and RadioButton(Office Code/School Code) will be visible.</li>
                                        <li>If User select No Dropdown(Division, District, Block) and RadioButton(Office Code/School Code) will be hidden.</li>
                                    </ul>
                                </li>
                                <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Block Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Block Name </strong>from the dropdown and the data will be populated from the <strong>Block Master</strong> and data cascade from <strong>District Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Office Code / School Code*</strong>
                                    <ul>
                                        <li>User will be able to Select Yes/No radio button.</li>
                                        <li>If User select Office Code, Office Code Dropdown and File No. and Checkbox will be visible and School Code Dropdown will be hide.</li>
                                        <li>If User select School Code, School Code Dropdown and File No. and Checkbox will be visible and Office Code Dropdown will be hide.</li>
                                    </ul>
                                </li>
                                <li><strong>Save</strong>
                                    <ul>
                                        <li>User Can Click Save Button.</li>
                                        <li>On save button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?"). </li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!") </li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
        <div id="popup" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="card">
                        <div class="card-header">
                            Total Post Details/कुल पद विवरण
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>Post</th>
                                                <th>Total Post</th>
                                                <th>vacant post</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Principal</td>
                                                <th>1</th>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Teacher</td>
                                                <th>4</th>
                                                <td>2</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Peon</td>
                                                <th>3</th>
                                                <td>1</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row fa-pull-right">
                                    <div class="col-md-2">
                                        <button type="button" class="btn btn-dark waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function toggleDivs() {
            var checkbox1 = document.getElementById("customRadio1");
            var checkbox2 = document.getElementById("customRadio2");
            var customRadio3 = document.getElementById("customRadio3");
            var customRadio4 = document.getElementById("customRadio4");
            var divNewPromotion = document.getElementById("divNewPromotion");
            var radioCode = document.getElementById("radioCode");
            var OfficeCode = document.getElementById("OfficeCode");
            var SchoolCode = document.getElementById("SchoolCode");
            var fileno = document.getElementById("fileno");
            var checkbox = document.getElementById("checkbox");

            if (checkbox1.checked) {
                divNewPromotion.style.display = "block"
                radioCode.style.display = "block"
            } else if (checkbox2.checked) {
                divNewPromotion.style.display = "none";
                radioCode.style.display = "none";
                OfficeCode.style.display = "none";
                fileno.style.display = "none";
                checkbox.style.display = "none";
                SchoolCode.style.display = "none";
                customRadio3.checked = false;
                customRadio4.checked = false;
            } else {
                divNewPromotion.style.display = "none";
                radioCode.style.display = "none";
                OfficeCode.style.display = "none";
                fileno.style.display = "none";
                checkbox.style.display = "none";
                SchoolCode.style.display = "none";
            }
        }

        function toggleDropdown() {
            var checkbox1 = document.getElementById("customRadio3");
            var checkbox2 = document.getElementById("customRadio4");
            var OfficeCode = document.getElementById("OfficeCode");
            //var fileno = document.getElementById("fileno");
            var checkbox = document.getElementById("checkbox");
            var SchoolCode = document.getElementById("SchoolCode");

            if (checkbox1.checked) {
                OfficeCode.style.display = "block"
                //fileno.style.display = "block"
                checkbox.style.display = "block"
                SchoolCode.style.display = "none"
            } else if (checkbox2.checked) {
                OfficeCode.style.display = "none"
                SchoolCode.style.display = "block"
                //fileno.style.display = "block"
                checkbox.style.display = "block"
            }
            else {
                OfficeCode.style.display = "none"
                SchoolCode.style.display = "none"
                //fileno.style.display = "none"
                checkbox.style.display = "none"
            }
        }

        function ShowPopUP() {
            var OfficeCode = document.getElementById("ddlOfficeCode");
            var SchoolCode = document.getElementById("ddlSchoolCode");
            if (OfficeCode.value > 0 || SchoolCode.value > 0) {
                $('#popup').modal('show');
            } else if (OfficeCode.value == 0 || SchoolCode.value === 0) {
                $('#popup').modal('hide');
            }
            else {
                $('#popup').modal('hide');
            }
        }

        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/E-Service Book.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }

        function openPDF1() {
            var pdfUrl = '../Document/Promotion-1.pdf';
            window.open(pdfUrl, '_blank');
        }

        function checkClick() {
            var chckTransfer = document.getElementById("chckTransfer");
            var divTransfer = document.getElementById("divTransfer");

            if (chckTransfer.checked) {
                divTransfer.style.display = "block";
            } else {
                divTransfer.style.display = "none";
            }
        }
    </script>
    <script>
        function Hideshow() {

            var x = document.getElementById("showdetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    //Swal.fire({
                    //    title: 'Are you sure?',
                    //    text: "Do you want to save this record ?",
                    //    type: 'warning',
                    //    showCancelButton: true,
                    //    confirmButtonColor: '#3085D6',
                    //    cancelButtonColor: '#d33',
                    //    confirmButtonText: 'Yes'
                    //    // animation: false,
                    //    // customClass: {
                    //    //     popup: 'animated tada'
                    //    // }
                    //}).then((result) => {
                    //    if (result.value) {
                    //        Swal.fire({
                    //            type: 'success',
                    //            title: 'Success!',
                    //            text: 'Record Saved Successfully!',
                    //            timer: 2000
                    //            // animation: false,
                    //            // customClass: {
                    //            //     popup: 'animated tada'
                    //            // }
                    //        }
                    //        )
                    //        var x = document.getElementById("divEnteredDetails");
                    //        if (x.style.display === "none") {
                    //            x.style.display = "block";
                    //        } else {
                    //            x.style.display = "block";
                    //        }
                    //    }
                    //})

                    var x = document.getElementById("divEnteredDetails");
                    if (x.style.display === "none") {
                        x.style.display = "block";
                    } else {
                        x.style.display = "block";
                    }

                });

                $('.Alert-Save2').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Saved Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery)

    </script>
    <script>
        function TransferYesOrNo(ths) {
            if (ths == "1") {
                document.getElementById("DivDistrictTransfer").style = "block";
                document.getElementById("DivSankulTransfer").style = "block";
                document.getElementById("DivOisSchoolTransfer").style = "block";
                document.getElementById("DivTransferOrderNo").style = "block";
                document.getElementById("DivTransferOrderDate").style = "block";
            }
            else {
                document.getElementById("DivDistrictTransfer").style.display = "none";
                document.getElementById("DivSankulTransfer").style.display = "none";
                document.getElementById("DivOisSchoolTransfer").style.display = "none";
                document.getElementById("DivTransferOrderNo").style.display = "none";
                document.getElementById("DivTransferOrderDate").style.display = "none";
            }
        }
    </script>
</asp:Content>


