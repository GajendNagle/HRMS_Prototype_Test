<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_Project.aspx.cs" Inherits="mis_Development_Rpt_Project" %>

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
                        <li class="breadcrumb-item">
                            <a href="#DevelopmentReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')" aria-expanded="false"><span>Civil Construction Report</span></a>
                        </li>
                        <li class="breadcrumb-item">Project Report</li>
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
                            Project Report / परियोजना रिपोर्ट
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
                <legend>Project Report / परियोजना रिपोर्ट</legend>

                <div class="row align-items-end">
                    <div class="col-md-4">
                        <label>
                            Select Year<br />
                            वर्ष का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>2024</option>
                            <option>2023</option>
                            <option>2022</option>
                            <option>2021</option>
                        </select>
                    </div>

                    <div class="col-md-4">
                        <label>
                            Select Office Type<br />
                            कार्यालय के प्रकार का चयन करें</label>
                        <select class="form-control select2">
                            <option value="0">All</option>
                            <option value="3">School</option>
                            <option value="3">Sankul</option>
                            <option value="3">BEO</option>
                            <option value="3">DEO</option>
                            <option value="3">JD</option>
                            <option value="3">HO</option>

                        </select>
                    </div>

                    <div class="col-md-4">
                        <label>
                            Select Office Name<br />
                            कार्यालय के नाम का चयन करें</label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option value="3">GOVT HSS MAHARANA PRATAP</option>
                            <option value="3">GOVT HSS BOYS, KOTRA SULTANABAD</option>
                            <option value="3">GOVT HSS EX, SUBHASH,SHIVAJI</option>
                            <option value="3">GOVT HSS KHAJURI KALAN</option>
                        </select>
                    </div>
                </div>
                <div class="row align-items-end">
                    <div class="col-md-4">
                        <label>
                            Select Project Group<br />
                            प्रोजेक्ट समूह का चयन करें</label>
                        <select class="form-control select2">
                            <option value="0">Select</option>
                            <option value="3">स्कूल निर्माण	</option>
                            <option value="3">सी.सी रोड कार्य</option>
                            <option value="3">पेयजल व्यवस्था</option>

                        </select>
                    </div>
                    <div class="col-md-4">
                        <label>
                            Select Project Category<br />
                            प्रोजेक्ट श्रेणी का चयन करें</label>
                        <select class="form-control select2" onchange="OnChange()">
                            <option value="0">Select</option>
                            <option value="3">विद्यालय का रख-रखाव कार्य	</option>
                            <option value="3">पेयजल व्यवस्था		</option>
                            <option value="3">स्कूल मार्ग निर्माण	</option>

                        </select>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display = 'block'">Search</button>
                        <a href="Rpt_Project.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
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
                                        <th>Sr.No.
        <br />
                                            क्रमांक</th>
                                        <th></th>
                                        <th>Year<br />
                                            वर्ष
                                        </th>
                                        <th>Office Name<br />
                                            कार्यालय का नाम </th>
                                        <th>Approval number<br />
                                            स्वीकृति क्रमांक</th>
                                        <th>Acceptance Date<br />
                                            स्वीकृति दिनांक
                                        </th>
                                        <th>Project group<br />
                                            परियोजना समूह</th>
                                        <th>Project Category<br />
                                            परियोजना श्रेणी </th>
                                        <th>Work<br />
                                            कार्य</th>
                                        <th>Subwork<br />
                                            उपकार्य</th>
                                        <th>Project Location<br />
                                            परियोजना स्थान </th>
                                        <th>Amount<br />
                                            मात्रा</th>
                                        <th>Unit<br />
                                            इकाई</th>
                                        <th>Sanction amount<br />
                                            स्वीकृति राशि</th>
                                        <th>deposit on completion of work
                                <br />
                                            कार्य पूर्णता पर जमा राशि
                                        </th>
                                        <th>Second Installment Amount
                                <br />
                                            कुल व्यय के उपरांत शेष राशि
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td><a class="btn btn-outline-success"><i class="fa fa-plus success" onclick="document.getElementById('NewGrid').style.display = ''"></i></a></td>
                                        <td>2023</td>
                                        <td>GOVT HSS MAHARANA PRATAP</td>
                                        <td>1111</td>
                                        <td>30/11/2023</td>
                                        <td>स्कूल निर्माण</td>
                                        <td>विद्यालय का रख-रखाव कार्य</td>
                                        <td>वन कर्मचारी आवास/कार्यालय</td>
                                        <td>समिति कार्यालय भवन</td>
                                        <td>JK-474</td>
                                        <td>100.00</td>
                                        <td>वर्गमीटर</td>
                                        <td>500000.00</td>
                                        <td>300000.00</td>
                                        <td>200000.00</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row form-group" id="NewGrid" style="display:none">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Installment Number
                                            <br />
                                           किस्त क्रमांक</th>
                                        <th>Installment amount
                                            <br />किस्त राशि</th>
                                        <th>installment release date
                                            <br />किस्त विमुक्त दिनाँक
                                        </th>
                                        <th>Amount utilized from installment<br />
                                            किस्त में से उपयोग की गई राशि</th>
                                        <th>Amount after use<br />
                                            उपयोग के बाद शेष राशि</th>
                                        <th>Installment Utilization Certificate Date
                                            <br />किस्त उपयोगिता प्रमाण पत्र दिनांक
                                        </th>
                                        <th>Foundation<br />
                                            नींव</th>
                                        <th>Mid Level Completion<br />
                                           मध्य स्तर पूर्णता</th>
                                        <th>Final Level Completion<br />
                                            अंतिम स्तर का समापन</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>250000</td>
                                        <td>1/09/2023</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        
                                    </tr>

                                </tbody>
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
        document.getElementById('toggle-icon').addEventListener('click', function () {
            const additionalGrid = document.getElementById('additional-grid');
            const icon = document.getElementById('toggle-icon');

            if (additionalGrid.classList.contains('hidden')) {
                additionalGrid.classList.remove('hidden');
                icon.classList.remove('fa-plus');
                icon.classList.add('fa-minus');
            } else {
                additionalGrid.classList.add('hidden');
                icon.classList.remove('fa-minus');
                icon.classList.add('fa-plus');
            }
        });
</script>
</asp:Content>

