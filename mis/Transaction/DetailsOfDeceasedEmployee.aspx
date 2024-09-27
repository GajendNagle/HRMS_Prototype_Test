<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DetailsOfDeceasedEmployee.aspx.cs" Inherits="mis_Transaction_DetailsOfDeceasedEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
    </style>
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
                        <li class="breadcrumb-item">
                            <a href="#DEOCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>DEO Compassionate Appointment </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Decide on Pending Applications at DEO Level</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5" style="position: relative; bottom: 20px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
            <img src="../../img/Anukampa Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
					<div class="headertext btn btn-primary rounded-pill " style="padding-top:11px">
						अनुकंपा नियुक्ति पर अंतिम निर्णय
						विवरण
					</div>
					<div>
						<marquee style="width:100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
							अनुकंपा नियुक्ति पर अंतिम निर्णय लेने हेतु सम्बंधित पेज का उपयोग किया जाता हैं |
						</marquee>
					</div>
				</div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Details of Deceased Employee /
दिवंगत कर्मचारी का विवरण</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Enter Deceased Officer/Employee Code /<br />
दिवंगत अधिकारी/कर्मचारी कोड दर्ज करें <span style="color: red">*</span></label>
                            <input name="ename" value="BA3784" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Name of Deceased Government Servant /<br />
दिवंगत शासकीय सेवक का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" value="Iqbal Husain Mansuri" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Gender
                                <br />
                                लिंग<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">Male</option>
                                <option value="--Select--">Female</option>
                                <option value="--Select--">Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Cast
                                <br />
                                कैटेगरी<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">OBC</option>
                                <option value="--Select--">GENERAL</option>
                                <option value="--Select--">SC</option>
                                <option value="--Select--">ST</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <br />
                            <label>
                                Last Posting Disrict
                                <br />
                                अंतिम पोस्टिंग जिला<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">Shajapur</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <br />
                            <label>
                               Deceased Officer/Staff Cadre /<br />
दिवंगत अधिकारी/कर्मचारी कैडर<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">Regular Class-III</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Deceased Officer/Employee Designation
                                <br />
                                दिवंगत अधिकारी/कर्मचारी पदनाम <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">Accountant</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Last School/Office and Employee Address
                                <br />
                                अंतिम स्कूल/कार्यालय और कर्मचारी का पता<span style="color: red">*</span></label>
                            <input class="form-control" type="text" value="BEO, SHAJAPUR" />
                        </div>
                    </div>
                    <div id="handipaceType" class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Cause of Death
                                <br />
                                मृत्यु का कारण <span style="color: red">*</span></label>
                            <input class="form-control" value="कोविड-19 संक्रमण" type="text" />
                        </div>
                    </div>
                    <div id="HandicapePercentage" class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Date of Death /<br />
मृत्यु दिनांक <span style="color: red">*</span></label>
                            <input class="form-control" value="27/04/2021" type="text" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Number of Surviving Family Members /<br />
परिवार के जीवित सदस्यों की संख्या<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>7</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" id="DivCriticalIllness">
                        <div class="form-group">
                            <label>
                                Department Name
                                <br />
                                विभाग का नाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Education</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" >
                        <div class="form-group">
                            <label>
                               Application Date /<br />
आवेदन प्राप्त तिथि<span style="color: red">*</span></label>
                            <input class="form-control" type="text" value="12/06/2021" />
                        </div>
                    </div>
                </div>
            </fieldset>
            <br />
            <fieldset class="">
						<legend>Nominee Details /<br>उम्मीदवार की जानकारी</legend>
						<table class="table table-bordered table-responsive-lg">
							<thead>
								<tr>
									<th>Sr.No. /<br>क्रमांक</th>
									<th>Nominee Name /<br>उम्मीदवार का नाम</th>
									<th>Relation With Employee /<br>कर्मचारी के साथ संबंध</th>
									<th>Nominee Percentage /<br>उम्मीदवार प्रतिशत</th>
								</tr>
							</thead>
							<tbody>

									<tr>
										<td>1</td>
										<td>Kumar singh</td>
										<td>Freind</td>
										<td>100</td>
									</tr>
							</tbody>
						</table>
					</fieldset>
            <br />
            <fieldset class="mt-5">
                <legend>Information About all the Family Members of the Deceased Public Servant/Teacher /<br />मृतक लोकसेवक/ शिक्षक के परिवार के सभी सदस्यों की जानकारी</legend>
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <tbody>
                                    <tr>
                                        <th class="text-center">Sr.No./<br />
क्रमांक</th>
                                        <th class="text-center">Name of Member/<br />
सदस्य का नाम</th>
                                        <th class="text-center">Gender/<br />
लिंग</th>
                                        <th class="text-center">Date of Birth/<br />
जन्म दिनांक</th>
                                        <th class="text-center">Relationship With the Past/<br />
दिवंगत के साथ संबंध</th>
                                        <th>Occupation/<br />
व्यवसाय</th>
                                    </tr>
                                    <tr>
												<td>1</td>
												<td>ABC</td>
												<td>0</td>
												<td>19/06/1997</td>
												<td>Son</td>
												<td>None</td>
											</tr>
                                    <tr>
												<td>2</td>
												<td>DEF</td>
												<td>0</td>
												<td>23/02/1994</td>
												<td>Son</td>
												<td>None</td>
											</tr>
                                    <tr>
												<td>3</td>
												<td>ABD</td>
												<td>0</td>
												<td>12/06/1991</td>
												<td>Son</td>
												<td>??????? ???? ???? </td>
											</tr>
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset class="mt-5">
                <legend>Details of the Family Member Applying for Appointment /<br />
परिवार के सदस्य का विवरण जिन्होंने नियुक्ति के लिए आवेदन किया है
                </legend>
                <div class="row">
                    <div class="col-md-12">
                        <div class="row form-group">
                            <div class="col-md-12">
                                <div class="table-responsive table-bordered">
                                    <table class="table text-center">
                                        <tbody>
                                            <tr>
                                               <th>Sr.No./<br>क्रमांक</th>
											<th>Applicant Name/<br>आवेदक का नाम</th>
											<th>Gender/<br>लिंग</th>
											<th>Date Of Birth/<br>जन्म तिथि</th>
											<th>Relation With Employee/<br>दिवंगत के साथ संबंध </th>
											<th>Martial Status/<br>वैवाहिक स्तिथि</th>
											<th>Educational Qualification/<br>शैक्षिक योग्यता</th>
											<th>Cadre for Appointment/<br>नियुक्ति हेतु संवर्ग</th>
											<th>Designation for Appointment/<br>नियुक्ति हेतु पदनाम</th>
											<th>
												Have Passed the PTET/<br>
												प्राथमिक शिक्षक हेतु प्राथमिक<br> शिक्षक पात्रता परीक्षा उत्तीर्ण की है
											</th>
                                            <tr>
                                              
												<td>1</td>
												<td>ABC</td>
												<td>0</td>
												<td>19/06/1997</td>
												<td>Son</td>
												<td>Un-Married</td>
												<td>Graduation</td>
												<td>शैक्षणिक संवर्ग</td>
												<td>Prathmik Shikshak</td>
												<td>Yes</td>
											
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="row align-items-end">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                आवेदन की स्थिति 
                                <br />
                                Application Status<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" value="आवेदन को संभागीय आयुक्त लोक शिक्षण फॉरवर्ड किया गया है" autocomplete="off" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                                Remark 
                                <br />
                                टिप्पणी <span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" value="शाजापुर जिले एवं संभाग में पद रिक्त नहीं होने से" autocomplete="off" />
                        </div>
                    </div>
                </div>--%>
                <br />
               
            </fieldset>
            <br />
                <fieldset>
	<legend>Applicant Documents /<br>आवेदक के दस्तावेज</legend>
	<div class="row">
		<div class="col-md-12">
			<table class="table table-bordered table-responsive-lg">
				<thead>
				<tr><th>Sr.No./<br>क्रमांक</th>
				<th>Document Name/<br>दस्तावेज का नाम</th>
				<th align="justify">View Documents/<br>दस्तावेज देंखे</th>
				</tr></thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><b>Death Certificate Of Deceased Government Servant/<br>दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र</b></td>
						<td style="text-align:center;">
							<a  href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td><b>Certificate of Date Of Birth of the Applicant/<br>आवेदक का जन्म तिथि का प्रमाण पत्र</b></td>
						<td style="text-align:center;">
							<a  href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td><b>Certificate Of Residence/Native/<br>निवास/मूल निवासी होने का प्रमाण पत्र</b></td>
						<td style="text-align:center;">
							<a  href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a>
						</td>
					</tr>
					<tr>
						<td>4</td>
						<td><b>Caste Certificate/<br>जाती प्रमाण पत्र</b></td>
						<td style="text-align:center;">
							<a  href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a></td>
					</tr>
					<tr>
						<td>5</td>
						<td><b>Certificate Of Passing Higher Secondary/Graduation or Other Examination/<br>हायर सेकेण्डरी / स्नातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र</b></td>
						<td style="text-align:center;">
							<a  href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a></td>
					</tr>
					<tr>
						<td>6</td>
						<td><b>Consent Certificate From the Head of the Family/<br>परिवार के मुखिया द्वारा सहमति प्रमाण पत्र</b></td>
						<td style="text-align:center;">
							<a  href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a></td>
					</tr>
					<tr>
						<td>7</td>
						<td><b>Applicant's Photo/<br>आवेदक का फोटो</b></td>
						<td style="text-align:center;">
							<a  href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a></td>
					</tr>
					<tr>
						<td>8</td>
						<td><b>Family Samagra Id/<br>परिवार की समग्र आईडी</b></td>
						<td style="text-align:center;">
							<a  href="#" class="btn btn-outline-primary"><i class="ri-eye-line"></i></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</fieldset>
    <br />
    <fieldset>
	<legend>Status of Proceedings /<br>कार्यवाही की स्थिति</legend>
	<div class="row">
		<div class="col-md-3">
			<div class="form-group">
				<label class="control-label">Action /<br>कार्यवाही<span style="color: red">*</span></label>
				<input class="form-control" value="आवेदन स्वीकार करें">
			</div>
		</div>
		<div class="col-md-9">
			<label>
				Remark /<br>
				रिमार्क<span style="color: red">*</span>
			</label>
			<input type="text" class="form-control" value="bcnvjgn">
		</div>
	</div>
</fieldset>
    <%--<div class="row">
        <div class="col-md-12">
            <div class="row form-group">
                <div class="col-md-12">
                    <div class="table-responsive table-bordered">
                        <table class="table ">
                            <tbody>
                                <tr>
                                    <th>Sr. No.<br />
                                        सरल क्र.</th>
                                    <th>Document<br />
                                        दस्तावेज </th>
                                    <th>View Document<br />
                                        दस्तावेज देखे</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र</td>
                                    <td><a class="btn btn-success">View</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>जन्मतिथि के प्रमाणीकरण हेतु हाई स्कूल की अंक सूची अथवा सक्षम अधिकारी द्वारा जारी किया गया जन्म प्रमाण पत्र</td>
                                    <td><a class="btn btn-success">View</a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>स्थानीय / मूल निवासी होने का प्रमाण पत्र</td>
                                    <td><a class="btn btn-success">View</a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>यदि आवेदक अनुसूचित जाति/जनजाति तथा अन्य पिछड़े वर्ग का हो तो प्रमाण पत्र.</td>
                                    <td><a class="btn btn-success">View</a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>हायर सेकेण्डरी घातक या अन्य परीक्षा उत्तीर्ण करने का प्रमाण पत्र.</td>
                                    <td><a class="btn btn-success">View</a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>परिवार के सभी सदस्यों द्वारा आवेदक को अनुकंपा नियुक्ति का लाभ लेने की सहमति का शपथ पत्र</td>
                                    <td><a class="btn btn-success">View</a></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>आवेदक का फोटो अपलोड करे.</td>
                                    <td><a class="btn btn-success">View</a></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>राशन कार्ड / सेवा पुस्तिका अथवा अन्य प्रमाणित दस्तावेज जिसमे परिवार के सदस्यों की जानकारी हो</td>
                                    <td><a class="btn btn-success">View</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
            <fieldset class="mt-5">
                <legend>Decision on Application /<br />
आवेदन पर निर्णय </legend>
                <div class="row form-group align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Select Action /<br />
कार्रवाई का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2" id="Actionddl" onchange="ShowHideHandicape()">
                                <option>--Select--</option>
                                <option value="Appointment order issued">Appointment order issued</option>
                                <option value="Application Reject">Application Reject</option>
                                <option value="Paid Amount">Paid Amount</option>
                                <option value="NOC has been released, the case has been sent to the District Collector">NOC has been released, the case has been sent to the District Collector</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" id="div2">
                        <div class="form-group">
                            <label>
                                To which Post Does the Applicant Want to be Appointed?
                                <br />
                                आवेदक किस पद पर नियुक्ति चाहता है<span style="color: red">*</span></label>
                            <select class="form-control select2" id="ddlSapthpatr5" onchange="ShowHide()">
                                <option value="">--Select--</option>
                                <option value="1">शैक्षणिक संवर्ग</option>
                                <option value="2">लिपिक संवर्ग</option>
                                <option value="3">चतुर्थ श्रेणी</option>
                            </select>
                        </div>
                    </div>

                                    


                    <div class="col-md-6 col-lg-4 col-xl-3" id="DivReason">
                        <div class="form-group">
                            <label>
                                Reason of Rejectance/Return
            <br />
                                अस्वीकार्य/वापसी के कारण <span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" id="Mydocu" style="display: none;">
                        <div class="form-group">
                            <label>
                                Upload Noc Document /<br />
एनओसी डॉक्यूमेंट अपलोड करें<span style="color: red">*</span></label>
                            <asp:FileUpload runat="server" CssClass="form-control"></asp:FileUpload>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" id="MydocuNote" style="display: none;">
                        <div class="form-group">
                            <h6 style="font-weight: 500;">Note  <span style="color: red;">File should be in PDF format and size less than 500kb</span></h6>
                        </div>
                    </div>
                </div>
                <div class="row align-items-end" id="div1">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Enter Appointment Letter No. /<br />
नियुक्ति पत्र संख्या दर्ज करें <span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                              Enter Appointment Order No. /<br />
नियुक्ति आदेश संख्या दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Select Letter Date/<br />
पत्र की तारीख का चयन करें<span style="color: red">*</span></label>
                            <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Applied Cadre/<br />
आवेदित संवर्ग<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Applied Designation/<br />
आवेदित पदनाम<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
OIS type/<br />
ओआईएस टाइप<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>Office</option>
                                <option>Institute</option>
                                <option>School</option>
                            </select>
                            </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Applied Designation/<br />
आवेदित पदनाम<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option>Select</option>
                                <option>Bhopal</option>
                            </select>  </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Enter Code of the Organization in Which Appointed /<br />
नियुक्त संस्था का कोड दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Code of the organization in which appointment" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                              Upload Order Document /<br />
अपलोड आदेश दस्तावेज<span style="color: red">*</span></label>
                            <input name="ename" type="file" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                </div>
                <div class="row" id="div3">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Enter Order No. /<br />
आदेश क्रमांक दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Enter Cheque No. /<br />
चेक नंबर दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Cheque No." />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Enter Cheque Issue Date /<br />
चेक जारी तिथि दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Enter Payment Amount /<br />
भुगतान की रकम दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Payment Amount" />
                        </div>
                    </div>
                      <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                              Enter Account Holder Name /
खाताधारक का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder=" Enter Account Holder Name" />
                        </div>
                    </div>
                      <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                               Enter Bank Account No. /
बैंक खाता क्रमांक का नाम दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Bank Account No." />
                        </div>
                    </div>
                </div>
               <%-- <div class="row" id="div11">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>
                              Enter Reason Of Reject /<br />
अस्वीकार का कारण दर्ज करें<span style="color: red">*</span></label>
                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Reason of Return/Reject" />
                        </div>
                    </div>
                </div>--%>
            </fieldset>
            <hr />
            <div class="row ">
                <div class="col-md-12">
                    <button id="Button2" type="button" class="fw-bold btn w-lg btn-outline-success btn-border Alert-Save" onclick="myFunction()">Update</button>
                    <a href="DetailsOfDeceasedEmployee.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                </div>
            </div>
        </div>
    </div>
    <script>
        function ShowHide() {
            var div1 = document.getElementById("ddlSapthpatr5");
            var div11 = document.getElementById("DivDesignation");
            var Div2 = document.getElementById("DivQualificationStatus");
            var div3 = document.getElementById("DivNote");
            var Div5 = document.getElementById("Divyear");
            var div6 = document.getElementById("DivQualification");
            if (div1.value === '1') {
                div11.style.display = "block"; // Show the Divbutton
            }
            else {
                DivDesignation.style.display = "none";
                Div2.style.display = "none";
                div3.style.display = "none";
                div11.style.display = "none";// Hide the Divbutton
                div6.style.display = "none";
                Div5.style.display = "none";
            }
        }
        function ShowHide1() {

            var Div2 = document.getElementById("DivQualificationStatus");
            var div3 = document.getElementById("DivNote");
            var Div4 = document.getElementById("ddlSapthpatr6");
            var Div5 = document.getElementById("Divyear");
            var div6 = document.getElementById("DivQualification");
            if (Div4.value === '1') {
                div3.style.display = "block";
                Div2.style.display = "none";
                div6.style.display = "none";
                Div5.style.display = "none";
            }
            else if (Div4.value === '2') {

                Div2.style.display = "block";
                div3.style.display = "block";
                div6.style.display = "none";
                Div5.style.display = "none";
            }
            else {
                Div2.style.display = "none";
                div3.style.display = "block";
                div6.style.display = "none";
                Div5.style.display = "none";
                Div5.style.display = "none";
            }
        }
        function ShowHide2() {
            var Div5 = document.getElementById("Divyear");
            var div6 = document.getElementById("DivQualification");
            var Div7 = document.getElementById("ddlSapthpatr1");
            if (Div7.value === '1') {
                div6.style.display = "block";
                Div5.style.display = "block";
            }
            else {
                div6.style.display = "none";
                Div5.style.display = "none";
            }
        }
    </script>
    <script>
        function myFunction() {
            document.getElementById("empDetail").style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Update This Record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'

                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Tour Apply Successfully!',
                                timer: 2000
                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");

                            if (x.style.display === "none") {
                                x.style.display = "block";
                            }
                            else {
                                x.style.display = "block";
                            }
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
            }(window.jQuery);
    </script>
    <script>
        div1.style.display = "none";
        div2.style.display = "none";
        div3.style.display = "none";
        Mydocu.style.display = "none";
        MydocuNote.style.display = "none";
        DivReason.style.display = "none";
        function ShowHideHandicape() {
            debugger
            var ddlHandicape = document.getElementById("Actionddl");
            var div1 = document.getElementById("div1");
            var div2 = document.getElementById("div2");
            var DivReason = document.getElementById("DivReason");
            var div3 = document.getElementById("div3");
            var Mydocu = document.getElementById("Mydocu");
            var MydocuNote = document.getElementById("MydocuNote");
            div1.style.display = "none";
            div2.style.display = "none";
            DivReason.style.display = "none";
            div3.style.display = "none";
            Mydocu.style.display = "none";
            MydocuNote.style.display = "none";
            if (ddlHandicape.value == "Paid Amount") {
                div1.style.display = "none";
                div2.style.display = "none";
                DivReason.style.display = "none";
                Mydocu.style.display = "none";
                MydocuNote.style.display = "none";
                div3.style.display = "flex";
            }
            else if (ddlHandicape.value == "Application Reject") {
                div1.style.display = "none";
                div2.style.display = "none";
                DivReason.style.display = "block";
                div3.style.display = "none";
                div3.style.display = "none";
            }
            else if (ddlHandicape.value == "Appointment order issued") {
                div1.style.display = "flex";
                div2.style.display = "none";
                DivReason.style.display = "none";
                div3.style.display = "none";
                Mydocu.style.display = "none";
                MydocuNote.style.display = "none";
            }
            else if (ddlHandicape.value == "NOC has been released, the case has been sent to the District Collector") {
                div1.style.display = "none";
                div2.style.display = "none";
                DivReason.style.display = "none";
                div3.style.display = "none";
                Mydocu.style.display = "flex";
                MydocuNote.style.display = "inline";
            }
            else {
                div1.style.display = "none";
                div2.style.display = "none";
                DivReason.style.display = "none";
                div3.style.display = "none";
                Mydocu.style.display = "none";
                MydocuNote.style.display = "none";
            }
        }
    </script>
</asp:Content>


