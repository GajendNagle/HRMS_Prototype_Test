<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DepartmentWiseSchemeReport.aspx.cs" Inherits="mis_Scheme_DepartmentWise_Scheme_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
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
                            <a href="#SchemeReports" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme</span></a>
                        </li>
                        <%--  <li class="breadcrumb-item">
                        <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                            <span>ACR</span></a>
                    </li>--%>
                        <li class="breadcrumb-item"><span>Department Wise Scheme Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-10 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">विभागवार योजना रिपोर्ट</div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                Department Wise Scheme Report /
विभागवार योजना रिपोर्ट
                            </marquee>
                        </div>
                    </div>
                </div>
                <div class="col-xl-2 col-md-12 text-end" id="BtnBack" style="display: none;"><a class="btn btn-primary btn-label waves-effect waves-light rounded-pill" onclick="Backclickfn()"><i class="ri-arrow-go-back-line label-icon align-middle fs-14 me-1"></i>BACK</a> </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Department Wise Scheme Report/विभागवार योजना रिपोर्ट</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Financial Year<br />
                                वित्तीय वर्ष चुनें<span style="color: red">*</span></label>
                            <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-2025" type="text" data-val="true" value="2024-2025" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Department
                                <br />
                                विभाग  का नाम <span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlDistrict">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">School Education Department</option>
                                <option value="Raisen">Scheduled Caste Welfare Department</option>
                                <option value="Rajgarh">Tribal Affairs Department</option>
                                <option value="Sehore">Denotified, Nomadic and Semi Nomadic Tribes Welfare Department</option>
                                <option value="Vidisha">M.P. Backward Class Minority Department</option>
                                <option value="Ashoknagar">Social Justice Department Madhya Pradesh</option>

                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" onclick="div()" class="btn w-lg btn-success btn-border">Search</button>
                            <a href="DepartmentWiseSchemeReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="Show" style="display: none;">
                <legend>Scheme Details / योजना विवरण</legend>
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
                            <table class="table">

                                <thead>
                                    <tr valign="middle" style="white-space: nowrap;" class="text-center">
                                        <th rowspan="2">Sr.No.<br />
                                            सरल क्र. </th>
                                        <th rowspan="2">Financial Year<br />
                                            वित्तीय वर्ष</th>
                                        <th rowspan="2">Department<br />
                                            विभाग का नाम</th>
                                        <%--<th rowspan="2">Scheme Name<br />
                                            योजना का नाम</th>--%>
                                        <th rowspan="2">Scheme Code<br />
                                            योजना कोड</th>
                                        <th rowspan="2">Type of Scholarship<br />
                                            छात्रवृत्ति का प्रकार</th>
                                        <%--<th rowspan="2">Scheme Title<br />
                                            योजना का शीर्षक</th>--%>
                                        <th colspan="2">Rate Annual (10 months)<br />
                                            वार्षिक दर (10 माह)</th>
                                        <%-- <th colspan="1">Parent's Annual Income<br />
                                            माता-पिता की वार्षिक आय</th>--%>
                                        <th rowspan="2">Eligibility And Conditions<br />
                                            पात्रता एवं शर्ते</th>
                                        <th rowspan="2">View
     <br />
                                            देखें</th>
                                    </tr>
                                    <tr valign="middle" class="text-white">
                                        <th>Boy
                                            <br />

                                            बालक</th>
                                        <th>Girl<br />
                                            बालिका</th>
                                        <th></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle" style="white-space: nowrap;" class="text-center">
                                        <td>1.</td>
                                        <td>2024</td>
                                        <td>School Education Department</td>
                                        <%--  <td>समेकित छात्रवृति योजना</td>--%>
                                        <td>PR100147852</td>
                                        <td class="text-start">सामान्य निर्धन वर्ग छात्रवृति (कक्षा 6 से 8)(केवल शास. विद्या. के लिये) </td>
                                        <%--<td>समेकित छात्रवृति योजना</td>--%>
                                        <td>200</td>
                                        <td>300</td>
                                        <%--  <td>1.00लाख</td>--%>
                                        <td class="text-start">1- पालक की वार्षिक आय हेतु पालक का स्व हस्ताक्षरित स्व प्रमाणित घोषणा पत्र।<br />
                                            2-गरीबी रेखा से नीचे (वी.पी.एल. परिवार) के लिये वी.पी.एल. कार्ड की छाया प्रति।<br />

                                            3- गत वर्ष की कक्षा उत्तीर्ण होना चाहिये।

                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>
                                        </td>

                                    </tr>
                                    <tr valign="middle" style="white-space: nowrap;" class="text-center">
                                        <td>2.</td>
                                        <td>2024</td>

                                        <td>School Education Department</td>
                                        <%-- <td>समेकित छात्रवृति योजना</td>--%>
                                        <td>PR10017894</td>
                                        <td class="text-start">सुदामा प्री-मैट्रिक छात्रवृत्ति योजना (कक्षा 9वीं से 10वीं) (केवल शास विद्या के लिये) </td>
                                        <%--<td>समेकित छात्रवृति योजना</td>--%>
                                        <td>300</td>
                                        <td>400</td>
                                        <%--<td>1.00लाख</td>--%>
                                        <td class="text-start">1- पालक की वार्षिक आय हेतु पालक का स्व हस्ताक्षरित स्व प्रमाणित घोषणा पत्र
                                            <br />
                                            2-गरीबी रेखा से नीचे (वी.पी.एल. परिवार) के लिये वी.पी.एल. कार्ड की छाया प्रति
                                            <br />
                                            अथवा पालक का आय संबधी स्वहस्ताक्षरित स्व प्रमाणित घोषणा पत्र ।<br />

                                            3- गत वर्ष की कक्षा उत्तीर्ण होना चाहिये।

                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>
                                        </td>

                                    </tr>


                                    <tr valign="middle" style="white-space: nowrap;" class="text-center">
                                        <td>3.</td>
                                        <td>2024</td>

                                        <td>School Education Department</td>
                                        <%--<td>समेकित छात्रवृति योजना</td>--%>
                                        <td>PR100147369</td>
                                        <td class="text-start">स्वामी विवेकानंद पोस्ट मेट्रिक प्रावीण्य छात्रवृत्ति योजना (केवल शास विद्या. के लिये) </td>
                                        <%--<td>समेकित छात्रवृति योजना</td>--%>
                                        <td>500</td>
                                        <td>550</td>
                                        <%--<td>1.00लाख</td>--%>
                                        <td class="text-start">1- पालक की वार्षिक आय हेतु पालक का स्व हस्ताक्षरित स्व प्रमाणित घोषणा पत्र।<br />
                                            2-गरीबी रेखा से नीचे (वी.पी.एल. परिवार) के लिये वी.पी.एल. कार्ड की छाया प्रति
                                            <br />
                                            अथवा पालक का आय संबधी स्वहस्ताक्षरित स्व प्रमाणित घोषणा पत्र ।<br />
                                            3-कक्षा 10वीं की परीक्षा प्रथम श्रेणी में उत्तीर्ण कर कक्षा 11वीं में
                                            <br />
                                            तथा 11वीं की परीक्षा प्रथम श्रेणी में उत्तीर्ण कर कक्षा 12वीं में अध्ययनरत सामान्य वर्ग के छात्र/छात्रायें।<br />

                                            4- गत वर्ष की कक्षा उत्तीर्ण होना चाहिये।

                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>
                                        </td>

                                    </tr>



                                    <tr valign="middle" style="white-space: nowrap;" class="text-center">
                                        <td>4.</td>
                                        <td>2024</td>

                                        <td>School Education Department</td>
                                        <%--<td>समेकित छात्रवृति योजना</td>--%>
                                        <td>PR100147456</td>
                                        <td class="text-start">सुदाना शिष्यवृत्ति योजना (कक्षा 11वीं एवं 12वीं) प्रदेश के जिला / विकास

खण्ड मुख्यालय<br />
                                            स्थित शासकीय उत्कृष्ट विद्यालयों में कक्षा 11वीं एवं 12वीं मे अध्ययनरत छात्रावास मे
                                            <br />
                                            निवास करने वाले,सामान्य  वर्ग के निर्धन छात्र/छात्राये</td>
                                        <%--<td>समेकित छात्रवृति योजना</td>--%>
                                        <td>5000</td>
                                        <td>5250</td>
                                        <%--<td>1.00लाख</td>--%>
                                        <td class="text-start">1- पालक की वार्षिक आय हेतु पालक का स्व हस्ताक्षरित स्व प्रमाणित घोषणा पत्र।<br />
                                            2-गरीबी रेखा से नीचे (वी.पी.एल. परिवार) के लिये वी.पी.एल. कार्ड की छाया प्रति
                                            <br />
                                            अथवा पालक का आय संबधी स्वहस्ताक्षरित स्व प्रमाणित घोषणा पत्र ।<br />
                                            3-कक्षा 10वीं में बोर्ड परीक्षा प्रथम श्रेणी में उत्तीर्ण कर वर्तमान मे कक्षा 11वी अथवा 12वी
                                            <br />
                                            में अध्ययनरत तथा छात्रावास मे निवास करने वाले छात्र/छात्राये

                                            <br />
                                            4- गत वर्ष की कक्षा उत्तीर्ण होना चाहिये।

                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </button>
                                        </td>

                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>

            </fieldset>
            <div class="modal  fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: var(--vz-primary);">
                            <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                            <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1">Scheme Application / योजना आवेदन</h3>
                            <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>Scheme Details / योजना का विवरण </legend>
                                <div class="row align-items-end">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Scheme Applicable From
                    <br />
                                                योजना लागू<span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%-- <option value="--Select--">--Select--</option>--%>
                                                <option value="General">2023-2024</option>
                                                <%--<option value="General">2024-2025</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Scheme Owned Department
                        <br />
                                                योजना स्वामित्व विभाग<span style="color: red">*</span></label>
                                            <select id="dates-field2" class="form-control " disabled>
                                                <option value="School Educstion Department">School Education Department</option>
                                                <%--<option value="Scheduled Cast Welfare Department">Scheduled Cast Welfare Department</option>
                <option value="Tribal Affairs Department">Tribal Affairs Department</option>
                <option value="GOVT BEEJ NIGAM">GOVT BEEJ NIGAM</option>
                <option value="Backward Classes and Minorities Department">Backward Classes and Minorities Department</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <%--  <div class="col-md-4">
                <div class="form-group">
                    <label>
                        Scheme Owned Department
                    <br />
                        योजना स्वामित्व विभाग<span style="color: red">*</span></label>
                    <select id="dates-field2" class="multiselect-ui color" multiple="multiple" style="border: 1px solid #7c4baf;" >
                        <option value="School Educstion Department">School Educstion Department</option>
                        <option value="Scheduled Cast Welfare Department">Scheduled Cast Welfare Department</option>
                        <option value="Tribal Affairs Department">Tribal Affairs Department</option>
                        <option value="GOVT BEEJ NIGAM">GOVT BEEJ NIGAM</option>
                        <option value="Backward Classes and Minorities Department">Backward Classes and Minorities Department</option>
                    </select>
                </div>
            </div>--%>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Scheme Name (In English)<br />
                                                योजना का नाम (अंग्रेजी में)<span style="color: red">*</span></label>
                                            <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="Bhopal Girls School." readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Scheme Name (In Hindi)<br />
                                                योजना का नाम (हिंदी में)<span style="color: red">*</span></label>
                                            <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="भोपाल गर्ल्स स्कूल." readonly />

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Eligible for Category
                    <br />
                                                पात्र श्रेणी <span style="color: red">*</span></label>
                                            <select id="dates-field2" class="form-control" disabled>
                                                <%-- <option value="General">General</option>
                <option value="OBC">OBC</option>--%>
                                                <option value="SC">SC</option>
                                                <%-- <option value="ST">ST</option>--%>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Eligible for Minority Community<br />
                                                अल्पसंख्यक समुदाय के लिए पात्र<span style="color: red">*</span></label>
                                            <select id="dates-field2" class=" form-control" disabled>
                                                <%--     <option value="Jain">Jain</option>
                <option value="Muslim">Muslim</option>
                <option value="Sikh">Sikh</option>--%>
                                                <option value="Others">Others</option>
                                                <%--  <option value="None">None</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for BPL Status<br />
                                                बीपीएल स्थिति के लिए लागू
                    <span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%-- <option>--Select--</option>--%>
                                                <option>Yes</option>
                                                <%--  <option>No</option>--%>
                                            </select>


                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for Vimukt<br />
                                                विमुक्त के लिए लागू<span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%--  <option>--Select--</option>--%>
                                                <option>Yes</option>
                                                <%--    <option>No</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for Maximum Sibling Count<br />
                                                अधिकतम भाई-बहन की संख्या के लिए लागू
                    <span style="color: red">*</span></label>
                                            <select class="form-control " disabled>
                                                <%-- <option>--Select--</option>
                <option>1</option>
                <option>2</option>--%>
                                                <option>3</option>
                                                <%-- <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4" id="ApplicableforDisability">
                                        <div class="form-group">
                                            <label>
                                                Applicable for Disability<br />
                                                विकलांगता के लिए लागू<span style="color: red">*</span></label>
                                            <select class="form-control" disabled id="disabilityChooser">
                                                <%-- <option>--Select--</option>--%>
                                                <option>Yes</option>
                                                <%-- <option>No</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4" id="ApplicableforDisabilityType" style="display: none;">
                                        <div class="form-group">
                                            <label>
                                                Applicable for Disability Type<br />
                                                विकलांगता प्रकार के लिए लागू
                    <span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%--   <option>--Select--</option>
                <option>Blindness</option>--%>
                                                <option>Low Vision</option>
                                                <%--  <option>Hearing Impairment</option>
                <option>Locomotor Disability</option>
                <option>Speech and Language Disability</option>
                <option>Hearing Impairment</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4" id="SelectDisabilityPercentage" style="display: none;">
                                        <div class="form-group">
                                            <label>
                                                Select Disability Percentage<br />
                                                विकलांगता प्रतिशत चुनें
                    <span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%--   <option>--Select--</option>
                <option>10 %</option>
                <option>20 %</option>
                <option>30 %</option>--%>
                                                <option>40 %</option>
                                                <%--  <option>50 %</option>
                <option>60 %</option>
                <option>70 %</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for Single Girl Child<br />
                                                इकलौती बेटी के लिए लागू
                    <span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%-- <option>--Select--</option>--%>
                                                <option>Yes</option>
                                                <%--   <option>No</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for Father-less Students<br />
                                                पिता रहित छात्रों के लिए लागू
                    <span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%--    <option>--Select--</option>--%>
                                                <option>Yes</option>
                                                <%-- <option>No</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Father-less Student<br />
                                                पिता-विहीन विद्यार्थी का चयन करें
                    <span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%--  <option>--Select--</option>
                <option>Boy</option>--%>
                                                <option>Girl</option>
                                                <%--<option>Both</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4" id="ApplicableforFamily">
                                        <div class="form-group">
                                            <label>
                                                Applicable for Family Income Range<br />
                                                पारिवारिक आय सीमा<span style="color: red">*</span></label>
                                            <select id="dates-field2" class="form-control" disabled>
                                                <%--   <option value="0-50000">0-50000</option>
                <option value="50001-100000">50001-100000</option>--%>
                                                <option value="100001-350000">100001-300000</option>
                                                <%-- <option value="300000-500000">300000-500000</option>
                <option value="more than 500000">more than 500000</option>--%>
                                            </select>
                                            <div id="errorMessage" class="error-message" style="display: none;">Please upload Income Tax Certificate for more than 300000.</div>

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Select Family Occupation<br />
                                                पारिवारिक व्यवसाय चुनें<span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%-- <option>--Select--</option>--%>
                                                <option>Teacher</option>
                                                <%--  <option>Labour</option>
                <option>Farmer</option>
                <option>Business</option>
                <option>Govt. Employee</option>
                <option>Pvt. Employee</option>
                <option>Retired</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Select Family Residence<br />
                                                पारिवारिक निवास का चयन करें<span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%-- <option>--Select--</option>--%>
                                                <option>Within State</option>
                                                <%--   <option>Outside State</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <%--   <hr />
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="form-group">
                    <button type="button" class="Alert-Confirmation2 btn btn-outline-success btn-border w-lg">Save & Next</button>

                    <a href="SchemeApplication.aspx" class=" btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>
            </div>
        </div>--%>
                            </fieldset>
                            <fieldset>
                                <legend>Eligibility and Conditions / पात्रता एवं शर्तें</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for School Management Group<br />
                                                लागू स्कूल प्रबंधन समूह <span style="color: red">*</span></label>
                                            <select class="form-control" disabled>
                                                <%--  <option value="--Select--">--Select--</option>--%>
                                                <option value="State Government">State Government</option>
                                                <%-- <option value="Central Government">Central Government</option>
                 <option value="Government">Government Aided</option>
                 <option value="Other">Other</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for School Management Group Details<br />
                                                लागू स्कूल प्रबंधन समूह के लिए विवरण<span style="color: red">*</span></label>
                                            <select class="form-control " disabled>
                                                <%--  <option value="--Select--">--Select--</option>--%>
                                                <option value="Department of Education">Department of Education</option>
                                                <%-- <option value="Ministory of Labour">Ministory of Labour</option>
                 <option value="Local Body">Local Body</option>
                 <option value="Others">Others</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for Board Type<br />
                                                लागू बोर्ड प्रकार<span style="color: red">*</span></label>
                                            <select id="dates-field2" class="form-control" disabled>
                                                <option value="MP Board">MP Board</option>
                                                <%--  <option value="CBSE">CBSE</option>
                 <option value="ICSE">ICSE</option>
                 <option value="Madras Board">Madras Board</option>
                 <option value="Others State University">Others State University</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                School Type<br />
                                                स्कूल का प्रकार <span style="color: red">*</span></label>
                                            <select class="form-control " disabled>
                                                <%--   <option value="--Select--">--Select--</option>--%>
                                                <option value="Government">Government</option>
                                                <%-- <option value="Private">Private</option>
                 <option value="Both">Both</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for School Category<br />
                                                लागू स्कूल श्रेणी <span style="color: red">*</span></label>
                                            <select id="dates-field2" class="form-control" disabled>
                                                <%-- <option value="--Select--">--Select--</option>
                <option value="Primary">Primary</option>
                 <option value="Upper Primary">Upper Primary</option>
                 <option value="Middle School">Middle School</option>--%>
                                                <%--  <option value="High School">High School</option>--%>
                                                <option value="Higher Secondary School">Higher Secondary School</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Applicable for School Category Details<br />
                                                लागू स्कूल श्रेणी विवरण<span style="color: red">*</span></label>
                                            <select id="dates-field2" class="form-control" disabled>
                                                <%--<option value="1-5">1-5</option>
                 <option value="6-8">6-8</option>
                 <option value="9-10">9-10</option>--%>
                                                <option value="9-12">9-12</option>
                                                <%-- <option value="11-12">11-12</option>
                 <option value="1-8">1-8</option>
                 <option value="1-10">1-10</option>
                 <option value="1-12">1-12</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Maximum Education Gap of<br />
                                                अधिकतम शिक्षा अंतर<span style="color: red">*</span></label>
                                            <select class="form-control select2" disabled>
                                                <%--   <option value="--Select--">--Select--</option>
                 <option value="1 Years">1 Years</option>--%>
                                                <option value="2 Years">2 Years</option>
                                                <%-- <option value="3 Years">3 Years</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Select Applicable for Student Residence<br />
                                                छात्र निवास के लिए लागू का चयन करें<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="StudentResidence" disabled>
                                                <%--<option value="--Select--">--Select--</option>
                 <option value="Day Scholar">Day Scholar</option>--%>
                                                <option value="Hosteller">Hosteller</option>
                                                <%--  <option value="Both">Both</option>--%>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-4" id="SelectApplicableGender">
                                        <div class="form-group">
                                            <label>
                                                Select Applicable Gender
                                                <br />
                                                लागू लिंग चुनें<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="GenderChooser" disabled>
                                                <%-- <option value="Select">Select</option>--%>
                                                <option value="Boys">Boys</option>
                                                <%--  <option value="Girls">Girls</option>
                 <option value="Both">Both</option>--%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4" id="forBoys" style="display: none;">
                                        <div class="form-group">
                                            <label>
                                                Scheme Beneficiary Amount (for Boys)<br />
                                                योजना लाभार्थी राशि (लड़कों के लिये)<span style="color: red">*</span></label>
                                            <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="5000/-" readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-4" id="forGirls" style="display: none;">
                                        <div class="form-group">
                                            <label>
                                                Scheme Beneficiary Amount (for Girls)<br />
                                                योजना लाभार्थी राशि(लड़कियों के लिये)<span style="color: red">*</span></label>
                                            <input name="ename" id="DOB" type="text" class="form-control" autocomplete="off" placeholder="10000/-" readonly />
                                        </div>
                                    </div>

                                    <div class="col-md-4" style="display: none" id="Hostller">
                                        <div class="form-group">
                                            <label>
                                                Enter Beneficiary Amount (Hostller)<br />
                                                लाभार्थी राशि दर्ज करें (छात्रावास)<span style="color: red">*</span></label>
                                            <input name="ename" id="Amount" type="text" class="form-control" autocomplete="off" placeholder="100000/-" readonly />
                                        </div>
                                    </div>
                                    <div class="col-md-4" id="AdditionalBenefitAmount" style="display: none;">
                                        <div class="form-group">
                                            <label>
                                                Additional Benefit Amount for Physically Challenged<br />
                                                शारीरिक रूप से विकलांगों के लिए अतिरिक्त लाभ राशि<span style="color: red">*</span></label>
                                            <select class="form-control select2" id="Challenged" disabled>
                                                <%--  <option value="Select">Select</option>
                 <option value="10%">10%</option>
                 <option value="20%">20%</option>
                 <option value="30%">30%</option>--%>
                                                <option value="40%">40%</option>
                                                <%-- <option value="50%">50%</option>
                 <option value="60%">60%</option>
                 <option value="70%">70%</option>
                 <option value="80%">80%</option>--%>
                                            </select>

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Select Applicable for Student's DOB<br />
                                                छात्र की लागू जन्मतिथि का चयन करें<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" value="Education" readonly />

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                Scheme Valid Upto<br />
                                                योजना वैध<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" value="Education" readonly />
                                        </div>
                                    </div>
                                </div>
                                <%-- <hr />
 <div class="row justify-content-center">
     <div class="col-md-12">
         <div class="form-group">
             <button type="button" class=" Alert-Confirmation2 btn btn-outline-success  btn-border w-lg">Save</button>
             <a href="SchemeApplication.aspx" class=" btn btn-outline-danger btn-border w-lg">Clear</a>
         </div>
     </div>
 </div>--%>
                            </fieldset>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function div() {

            document.getElementById("Show").style.display = "";

        }
    </script>
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true,
            orientation: 'bottom'
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });

        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });


    </script>
</asp:Content>

