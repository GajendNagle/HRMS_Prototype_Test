<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Gradation.aspx.cs" Inherits="mis_HRMS_Gradation" %>

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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">Installment Generate</li>
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
                            Installment Generate / किस्त जनरेट
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
                <legend>Gradation</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Enter Unique ID<br />
                                यूनिक आईडी दर्ज करें<span style="color: red">*</span>
                            </label>
                            <input type="text" class="form-control" placeholder="Enter Order No." />
                        </div>
                    </div>
                </div>
                <fieldset>
                    <legend>Details</legend>
                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Name<br />
                                    नाम<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="Mamta Kori" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Category<br />
                                    श्रेणी<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="Obc" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Gender<br />
                                    लिंग<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="Female" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Of Birth<br />
                                    जन्म तिथि<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="2000-02-03" readonly="readonly" />
                            </div>
                        </div>
                    </div>

                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Of Birth<br />
                                    जन्म तिथि<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="2000-02-03" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Mode of Appointment<br />
                                    नियुक्ति का तरीका<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="DIR" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Profession ai Qualification<br />
                                    व्यवसाय और योग्यता<span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="BED" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    UG Subject<br />
                                    यूजी विषय
                                    <span style="color: red">*</span>
                                </label>
                                <input type="text" class="form-control" value="Social Science" readonly="readonly" />
                            </div>
                        </div>

                    </div>

                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    PG Subject-1<span style="color: red">*</span>
                                    <br />
                                    पीजी विषय-1
                                </label>
                                <input type="text" class="form-control" value="Political Science" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    PG Subject-2<span style="color: red">*</span>
                                    <br />
                                    पीजी विषय-2
                                </label>
                                <input type="text" class="form-control" value="Physics" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Home District<span style="color: red">*</span>
                                    <br />
                                    होम ज़िला
                                </label>
                                <input type="text" class="form-control" value="Physics" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Of First Appointment in Gov Service<span style="color: red">*</span>
                                    <br />
                                    ज़िला
                                </label>
                                <input type="text" class="form-control" value="2024-02-05" readonly="readonly" />
                            </div>
                        </div>
                    </div>

                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    First Appointment Designation<span style="color: red">*</span>
                                    <br />
                                    पहला नियुक्ति पदनाम
                                </label>
                                <input type="text" class="form-control" value="UDT" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Inter division/local body samvillion/Transfer Date<span style="color: red">*</span>
                                    <br />
                                    इंटर डिवीजन/स्थानीय निकाय सैमविलियन/ट्रांसफर तिथि
                                </label>
                                <input type="text" class="form-control" value="2024-02-05" readonly="readonly" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Present Posting Place<span style="color: red">*</span>
                                    <br />
                                    वर्तमान पोस्टिंग स्थान
                                </label>
                                <input type="text" class="form-control" value="MS Bargwan" readonly="readonly" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    UDISE in Case of School<span style="color: red">*</span>
                                    <br />

                                </label>
                                <input type="text" class="form-control" value="23380200101" readonly="readonly" />
                            </div>
                        </div>
                    </div>

                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Present Posting District<span style="color: red">*</span>
                                    <br />
                                    वर्तमान पोस्टिंग जिला

                                </label>
                                <input type="text" class="form-control" value="23380200101" readonly="readonly" />
                            </div>
                        </div>
                    </div>

                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Of Appointment in UDT By Promotion<span style="color: red">*</span>
                                    <br />
                                    यूडीटी में पदोन्नति द्वारा नियुक्ति की तिथि

                                </label>
                                <input type="date" class="form-control" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Of Appointment in Present Cadre<span style="color: red">*</span>
                                    <br />
                                    वर्तमान कैडर में नियुक्ति की तिथि

                                </label>
                                <input type="date" class="form-control" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Of Seniority in Present Cadre<span style="color: red">*</span>
                                    <br />
                                    वर्तमान कैडर में नियुक्ति की तिथि

                                </label>
                                <input type="date" class="form-control" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Of Appointment in HM<span style="color: red">*</span>
                                    <br />
                                    वर्तमान कैडर में नियुक्ति की तिथि

                                </label>
                                <input type="date" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>
                                    Remark<span style="color: red">*</span>
                                    <br />
                                    टिप्पणी

                                </label>
                                <input type="date" class="form-control" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Seniority Sequence<span style="color: red">*</span>
                                    <br />
                                    वरिष्ठता अनुक्रम

                                </label>
                                <input type="text" class="form-control" placeholder="Enter Seniority Sequence" />
                            </div>

                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display = 'block'">Save</button>
                            <a href="Gradation.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>

                </fieldset>
            </fieldset>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

