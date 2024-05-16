﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DepartmentEnquiry.aspx.cs" Inherits="mis_Transaction_DepartmentEnquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        input[type="submit"].btn-block, input[type="reset"].btn-block, input[type="button"].btn-block {
            width: 100%;
            margin-top: 20px;
        }

        label {
            font-weight: 600;
        }




        html body .font-bold {
            font-weight: 700;
            font-size: 12px;
        }

        #divEmpData {
            margin-bottom: 100px;
        }

        .form-group label {
            font-weight: 600;
            font-size: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                    <img src="../../img/Departmental%20Enquiry.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u>
                    </u>
                </p>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=DepartmentEnquiry" title="click to go on">Department Enquiry</a></li>
                        <li class="breadcrumb-item active">Department Enquiry</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow" id="divDataofAU5693" runat="server">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="fw-bold text-dark">
                                Employee Unique Id<br />
                                अपचारी लोक सेवक की यूनिक आई.डी. <span style="color: red">*</span>
                            </label>

                            <asp:TextBox runat="server" ID="txtEmployeeId" CssClass="form-control" placeholder="Search" AutoComplete="off">
  
                            </asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-2 mt-4">
                        <asp:Button type="button" ID="Button1" OnClick="showDataBtn_Click" Text="Search" runat="server" class="btn btn-success btn-rounded w-100 btn-block" />
                    </div>
                </div>

                <fieldset runat="server" id="divEmpData" visible="false">
                    <legend>Employee Information
                    </legend>

                    <div class="row mt-2">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Name<br>
                                    कर्मचारी का नाम<span style="color: red">*</span></label>
                                <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Arjun Talwar" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Unique ID
                                    <br>
                                    यूनिक आई.डी<span style="color: red">*</span></label>
                                <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" placeholder="AR4781" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation
                                    <br>
                                    पदनाम <span style="color: red">*</span></label>
                                <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Teacher(UDT)" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">
                                District<br>
                                ज़िला<span style="color: red">*</span></label>
                            <input name="txtDistrict" type="text" class="form-control" readonly autocomplete="off" placeholder="Bhopal" />
                        </div>
                        <div class="col-md-3">
                            <label class="font-bold">
                                Block<br>
                                ब्लॉक<span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="GovindPura" />
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Sankul Code/ Name
                    <br />
                                    संकुल कोड / नाम<span style="color: red">*</span></label>
                                <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="15151235256-PVT VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                            </div>
                        </div>


                        <div class="col-md-3">
                            <label class="font-bold">
                                School<br>
                                स्कूल <span style="color: red">*</span></label>
                            <input name="txtBlock" type="text" class="form-control" readonly autocomplete="off" placeholder="VINAYAK PUBLIC SCHOOL TARRAKHURD SCHOOL" />
                        </div>
                    </div>
                </fieldset>
                <br />
                <%--start Second FieldSet   --%>
                <fieldset id="DivVibhgiyData" runat="server" visible="false">
                    <legend>मंडल परीक्षा की गोपनीयता भंग संबंधी विभागीय  जाँच की अघतन स्तिथि  का  विवरण 
                    </legend>

                    <div class="row mt-2">
                        <div class="col-md-4">
                            <div class="form-group">

                                <br />
                                <br />
                                <label class="font-bold">
                                    Name of Departmental Investigating Officer<br>
                                    विभागीय जांचकर्ता अधिकारी का नाम<span style="color: red">*</span></label>
                                <input name="txtEmpName" type="text" class="form-control" autocomplete="off" placeholder="Enter Name of departmental investigating officer" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">


                                <br />
                                <br />
                                <label class="font-bold">
                                    Name of Presenting Officer<br>
                                    प्रस्तुतकर्ता अधिकारी का नाम<span style="color: red">*</span></label>
                                <input name="txtUniqueID" type="text" class="form-control" autocomplete="off" placeholder="Enter Name of Presenting Officer" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">




                                <label class="font-bold mt-4">
                                    Notice To The Delinquent Officer To Appear Before The Investigating Officer<br>
                                    जाँच अधिकारी के समक्ष अपचारी अधिकारी को प्रस्तुत होने की सुचना <span style="color: red">*</span></label>
                                <input type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label class="font-bold">
                                Suspension Date<br>
                                निलंबन दिनांक<span style="color: red">*</span></label>
                            <input type="date" class="form-control" autocomplete="off" />
                        </div>
                        <div class="col-md-4">
                            <label class="font-bold">
                                Imputed Date<br>
                                आरोपित दिनांक<span style="color: red">*</span></label>
                            <input type="date" class="form-control" autocomplete="off" />
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="font-bold">
                                    Brief Date of Departmental Inquiry/
                                    <br />
                                    विभागीय जााँच की संक्षिप्त दिनांक<span style="color: red">*</span></label>
                                <input type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>


                        <div class="col-md-4">
                            <label class="font-bold">
                                First Hearing of The Criminal Before The Investigating Officer And Reading of The Charge Sheet<br>
                                जाँच अधिकारी के समक्ष अपचारी की प्रथम सुनवाई एवं आरोप पत्र का वाचन  <span style="color: red">*</span></label>
                            <input type="date" class="form-control" autocomplete="off" />
                        </div>
                        <div class="col-md-4">
                            <label class="font-bold">
                                Presentation And Cross-Examination of Prosecution Evidence<br>
                                अभियोजन साक्ष्य  की प्रस्तुति एवं प्रतिपरीक्षण  <span style="color: red">*</span></label>
                            <input type="date" class="form-control" autocomplete="off" />
                        </div>




                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="font-bold">
                                    Presentation And Cross-Examination of Defense Supporting Evidence
                                    <br>
                                    बचाव सहायक साक्ष्य  की प्रस्तुति  एवं प्रतिपरीक्षण<span style="color: red">*</span></label>
                                <input type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-4 mt-2">
                            <label class="font-bold">
                                Presenting The Presenting Officer's Brief And Making It Available To The Delinquent Employee<br>
                                प्रस्तुतकर्ता अधिकारी की ब्रीफ प्रस्तुति एवं अपचारी कर्मचारी को उपलब्ध करना<span style="color: red">*</span></label>
                            <input type="date" class="form-control" autocomplete="off" />
                        </div>
                        <div class="col-md-4">
                            <br />
                            <br />
                            <label class="font-bold">
                                Delinquent Employee's Counter Argument on Brief<br>
                                ब्रीफ पर अपचारी कर्मचारी का प्रतिवाद <span style="color: red">*</span></label>
                            <input type="date" class="form-control" autocomplete="off" />
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <br />
                                <br />
                                <label class="font-bold">
                                    Dispatch of Final Investigation Report To Disciplinary Officer/
         <br />
                                    अंतिम जाँच प्रतिवेदन का अनुशासकीय  अधिकारी को प्रेषण<span style="color: red">*</span></label>
                                <input type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>


                        <div class="col-md-12">
                            <label class="font-bold">
                                Remark/
                                रिमार्क  <span style="color: red">*</span></label>
                            <%--<input type="text" class="form-control" autocomplete="off" placeholder="Enter Remark" />--%>
                            <asp:TextBox runat="server" placeholder="Enter Remark" CssClass="form-control" TextMode="MultiLine" MaxLength="200" AutoComplete="off"></asp:TextBox>

                        </div>

                        <div class="col-md-12 mt-4 text-center">

                            <button type="button" class="Alert-Confirmation btn btn-success btn-rounded ">Save</button>
                            <a class="btn btn-danger btn-rounded" href="DepartmentEnquiry.aspx">Clear</a>
                        </div>
                    </div>
                </fieldset>

                <%--End Second FieldSet   --%>
            </div>
        </div>
    </div>
    <%--   </div>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>


