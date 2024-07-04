<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="mis_Student_StudentDetails_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
    <style>@media print {
    @page {
        size: A4;
        margin: 5mm;
    }

    body {
        font-size: 11px;
        transform-origin: top left;
        transform: scale(calc(100% / var(--print-scale, 1)));
    }

    .page-break {
        page-break-after: always;
    }
}

textarea::-webkit-scrollbar {
    width: 0;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
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
                          <a href="#StudentDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Student Directory</span></a>
                      </li>
                      <%--  <li class="breadcrumb-item">
                      <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('StudentDirectory')">
                          <span>ACR</span></a>
                  </li>--%>
                      <li class="breadcrumb-item"><span>Student Registration Details</span></li>
                  </ol>
              </div>
          </div>
</div></div>
   <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Student Registration  Details/विद्यार्थी  पंजीकरण विवरण
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset id="show2" runat="server">
    <legend>Student Registration  Details /विद्यार्थी  पंजीकरण विवरण  </legend>
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
    <div class="row align-items-end">
        <div class="col-md-12">
            <div class="table-responsive">
                <table id="Table1" class="table table-bordered text-center" runat="server">
                    <thead>
                        <tr valign="middle" style="white-space: nowrap;">
                            <th>S.No.<br />
                                सं.क्र.</th>
                            
                          <%--  <th>Financial Year<br />
                                वित्तीय वर्ष</th>--%>
                            <th>Student Name<br />
                                विद्यार्थी  का नाम</th>
                            <th>Gender<br />
                                लिंग </th>
                            <th>Date Of Birth <br />
                                जन्म की तारीख</th>
                            <th>Category<br />
वर्ग
                               </th>
                            <th>State<br />
                                राज्य </th>
                            <th>Division<br />
                                संभाग </th>
                            <th>District<br />
                                जिला </th>
                            <th>Block<br />
                                ब्लॉक </th>
                            <th>View Student Application<br />
    विद्यार्थी  आवेदन देखें</th>
                            

                        </tr>
                    </thead>
                    <tbody>
                        <tr valign="middle">
                            <td>1</td>
                          
                            <td>Riya Gupta</td>
                            <td>Female</td>
                            <td>7/11/2002</td>
                            <td>OBC</td>
                            <td>Madhya Pradesh</td>
                            <td>Bhopal</td>
                           
                            <td>Bhopal</td> 
                            <td>Hoshur</td>
                              <td>

      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
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
                         <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-xl">
          <div class="modal-content">
              <div class="modal-header" style="background-color: var(--vz-primary);">
                  <img id="imgLogoP2" src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />
                  <h3 class="modal-title  fw-bold  text-white ms-3" id="exampleModalLabel1">Student Registration Details/विद्यार्थी  पंजीकरण विवरण</h3>
                  <button type="button" class="btn-close bg-white" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <fieldset>
                    <legend>General Information/सामान्य जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                       Student  Name (English)<br />

                                    विद्यार्थी  का नाम (अंग्रेजी में)<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Riya Gupta" readonly />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                      Student  Name (Hindi)<br />

                                    विद्यार्थी  का नाम (हिंदी में)<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="रिया गुप्ता" readonly />
                            </div>
                        </div>
                       
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Gender<br />
                                    लिंग<span style="color: red">*</span></label>
                                <select class="form-control" placeholder="Female" readonly="true">
                                    <option>Female</option>
                                    <%--<option>Select</option>
                                    <option>Male</option>
                                    <option>Female</option>--%>
                                </select>
                            </div>
                        </div>
                         <div class="col-md-3">
     <div class="form-group">
         <label>
                Date of Birth<br />
             जन्म तिथि<span style="color: red">*</span></label>
         <input name="ename" id="DOB" <%--type="date"--%> class="form-control" autocomplete="off" placeholder="07/11/2002" readonly />
     </div>
 </div>
                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Category<br />
                                    श्रणी<span style="color: red">*</span></label>
                                <select class="form-control" readonly="true">
                                    <option value="Bhopal">OBC</option>
                                    <%-- <option value="Select">Select</option>
                                    <option value="Bhopal">General</option>
                                    <option value="Bhopal">OBC</option>
                                    <option value="Bhopal">SC</option>
                                    <option value="Bhopal">ST</option>--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">

                                <label>
                                       Caste<br />
                                    जाति<span style="color: red">*</span></label>
                                <select class="form-control" readonly="true">
                                    <%--<option value="Select">Select</option>--%>
                                    <option value="Bhopal">Hindu</option>
                                    <%--  <option value="Bhopal">Muslim</option>
                                    <option value="Bhopal">Sikh</option>
                                    <option value="Bhopal">Christian</option>--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Father's Name 
                                <br />

                                    पिता का नाम<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Ram Gupta" readonly />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                       Mother's Name 
                                <br />

                                    माता का नाम<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Nikita Gupta" readonly />
                            </div>
                        </div>

                    </div>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                      Mobile No<br />
                                    मोबाइल नंबर<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="8956231478" readonly />
                            </div>
                        </div>
                        <div class="col-md-3">

                            <div class="form-group">
                                <label>
                                       BPL<br />
                                    गरीबी रेखा से नीचे<span style="color: red">*</span></label>
                                <select class="form-control" readonly="true" >
                              
                                    <option value="yes">Yes</option>
                                   
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                      Disability
                                <br />
                                    विकलांगता<span style="color: red">*</span></label>
                                <select id="options" class="form-control " onchange="myFunction3()" readonly="true" >
                                     <option value="yes">Yes</option>
                                   
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3 hidden" id="hiddenElement">
                            <div class="form-group">
                                <label>
                                       Disability type<br />
                                    विकलांगता का प्रकार
                                <span style="color: red">*</span></label>
                                <select id="ddlHandicappedType" class="form-control " readonly="true">
                                    
                                    <option value="Cancer/ कैंसर">Blindnes/अंधापन</option>
                                   <%-- <option value="Low Vision/कम दृष्टि">Low Vision/कम दृष्टि</option>
                                    <option value="Hearing Impaiment/ श्रवण हानि">Hearing Impaiment/ श्रवण हानि</option>
                                    <option value="Speech and Language / वाणी और भाषा">Speech  Language / वाणी और भाषा</option>
                                    <option value="Loco Moto Disability / लोको मोटो विकलांगता">Loco Moto Disability / लोको मोटो विकलांगता</option>
                                    <option value="Mental Illness /मानसिक बिमारी">Mental Illness /मानसिक बिमारी</option>
                                    <option value="Specipic Illness /विशिष्ट बीमारी">Specipic Illness /विशिष्ट बीमारी</option>
                                    <option value="Intellectual Disability / बौद्धिक विकलांगता">Intellectual Disability / बौद्धिक विकलांगता</option>
                                    <option value="Leprosy Cured Person /कुष्ठ रोग से ठीक हुआ व्यक्ति">Leprosy Cured Person /कुष्ठ रोग से ठीक हुआ व्यक्ति</option>
                                    <option value="Autism Spectrum Disorder /ऑटिज्म स्पेक्ट्रम डिस्ऑर्डर">Autism Spectrum Disorder /ऑटिज्म स्पेक्ट्रम डिस्ऑर्डर</option>
                                    <option value="Multiple Disability / एकाधिक विकलांगता">Multiple Disability / एकाधिक विकलांगता</option>
                                    <option value="Cerebral Palsy / मस्तिष्क पक्षाघात">Cerebral Palsy / मस्तिष्क पक्षाघात</option>
                                    <option value="Dwarfism / बौनापन">Dwarfism / बौनापन</option>
                                    <option value="Muscular Dystrophy">Muscular Dystrophy</option>
                                    <option value="Chronic Disease / मांसपेशीय दुर्विकास">Chronic Disease / मांसपेशीय दुर्विकास</option>
                                    <option value="Multiple Sclerosis / मल्टीपल स्क्लेरोसिस">Multiple Sclerosis / मल्टीपल स्क्लेरोसिस</option>
                                    <option value="Thalassemia / थैलेसीमिया">Thalassemia / थैलेसीमिया</option>
                                    <option value="Hemophilia / हीमोफीलिया">Hemophilia / हीमोफीलिया</option>
                                    <option value="Sickle Cell Disease / सिकल सेल रोग">Sickle Cell Disease / सिकल सेल रोग</option>
                                    <option value="Acid Attack Victim / एसिड अटैक पीड़िता">Acid Attack Victim / एसिड अटैक पीड़िता</option>
                                    <option value="Parkinson's Disease / पार्किंसंस रोग">Parkinson's Disease / पार्किंसंस रोग</option>--%>

                                </select>


                            </div>
                        </div>
                        <div id="HandicapePercentage" class="col-md-3" >
                            <div class="form-group">
                                <label>
                                      Handicapped Percentage 
     <br />
                                    विकलांग का प्रतिशत<span style="color: red">*</span></label>
                                <select id="ddlHandicappedPercentage" class="form-control " readonly="true">
                                 <%--   <option>Select</option>--%>
                                    <option value="40 to 50">41 to 50</option>
                                   <%-- <option value="51 to 60">51 to 60</option>
                                    <option value="61 to 70">61 to 70</option>
                                    <option value="71 to 80">71 to 80</option>
                                    <option value="81 to 90">81 to 90</option>
                                    <option value="91 to 100">1  to 100</option>--%>
                                </select>
                            </div>
                        </div>
                    </div>


                </fieldset>
                <fieldset>
                    <legend>Address Information/
पता की जानकारी</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                      State Name<br />
                                    राज्य का नाम<span style="color: red">*</span></label>
                                <select class="form-control" readonly="true">
                                    <option value="Bhopal">Madhya Pradesh</option>
                                    <%--<option value="Select">Select</option>
                                    <option value="Bhopal">Madhya Pradesh</option>
                                    <option value="Bhopal">Chhattisgarh</option>
                                    <option value="Rajasthan">Rajasthan</option>
                                    <option value="Maharashtra">Maharashtra</option>
                                    <option value="Nagaland">Nagaland</option>
                                    <option value="Nashik">Nashik</option>
                                    <option value="West">West</option>
                                    <option value="Bengal">Bengal</option>
                                    <option value="Telangana">Telangana</option>
                                    <option value="Assam">Assam</option>
                                    <option value="Tripura">Tripura</option>
                                    <option value="Tamil">Tamil</option>
                                    <option value="Nadu">Nadu</option>
                                    <option value="Gujarat">Gujarat</option>
                                    <option value="Sikkim">Sikkim</option>
                                    <option value="Andhra">Andhra Pradesh</option>
                                    <option value="Uttar">Uttar Pradesh</option>
                                    <option value="Punjab">Punjab</option>
                                    <option value="Karnataka">Karnataka</option>
                                    <option value="Meghalaya">Meghalaya</option>
                                    <option value="Uttarakhand">Uttarakhand</option>
                                    <option value="Goa">Goa</option>
                                    <option value="Haryana">Haryana</option>
                                    <option value="Mizoram">Mizoram</option>
                                    <option value="Arunachal">Arunachal Pradesh</option>
                                    <option value="Bihar">Bihar</option>
                                    <option value="Himachal">Himachal</option>
                                    <option value="Kerala">Kerala</option>
                                    <option value="Jharkhand">Jharkhand</option>
                                    <option value="Orissa">Orissa</option>--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                       Division Name
                                    <br />
                                    संभाग का नाम
                                </label>
                                <select class="form-control" readonly="true">
                                    <option value="Bhopal">Bhopal</option>
                                 <%--   <option value="Select">Select</option>
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
                                    <option value="Narmadapuram">Narmadapuram</option>--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                        District Name<br />
                                    ज़िला का नाम<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control " readonly="true">
                                    <option value="Bhopal">Bhopal</option>
                                   <%-- <option value="Select">Select</option>
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
                                    <option value="Ujjain">Ujjain</option>--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Block Name
                                    <br />
                                    विकासखण्ड का नाम<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl03" class="form-control" readonly="true">
                                    <option value="Agar">Hoshur</option>
                                   <%-- <option value="Select">Select</option>
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
                                    <option value="Kotma">Kotma</option>--%>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Village Name <br />
                                    गाँव का नाम<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control"  autocomplete="off" placeholder="
Berasia"
                                    readonly />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>
                                      Address
                                    <br />
                                    पता <span style="color: red">*</span></label>
                                <textarea class="form-control  w-100"
                                    placeholder="Berasia Bhopal M.P" rows="1" autocomplete="off" readonly></textarea>
                            </div>
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>Family Other Information/परिवार की अन्य जानकारी</legend>

                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                       Is Vimukti<br />

                                    विमुक्ति है /नहीं<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control " readonly="true">
                                    <%--<option>Select</option>
                                    <option>YES</option>--%>
                                    <option>NO</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                        Is Single Child<br />
                                    भाई बहन की संख्या<span style="color: red">*</span></label>
                                <select id="child" name="ctl00$ContentBody$ctl02" class="form-control " readonly="true" onchange="myFunction4()">
                                   <%-- <option value="0">Select</option>
                                    <option value="1">YES</option>--%>
                                    <option value="2">NO</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="Sibling">
                            <div class="form-group">
                                <label>
                                        No Of Sibling's<br />
                                    भाई बहन की संख्या<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control " readonly="true">
                                   <%-- <option>Select</option>--%>
                                    <%--<option>1</option>--%>
                                    <option>2</option>
                                   <%-- <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>--%>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Select Fatherless<br />

                                    पितृहीन <span style="color: blue; font-size: 12px;">(पिता की ना होने की 
स्थिति में )</span><span style="color: red">*</span></label>
                                <select id="Fatherless" name="ctl00$ContentBody$ctl02" class="form-control " readonly="true">
                                   <%-- <option value="0">Select</option>
                                    <option value="1">YES</option>--%>
                                    <option value="2">NO</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Family/Father Occupation
                                    <br />
                                    परिवार/पिता का व्यवसाय <span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Teacher" readonly  />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                 Family Income(Yearly)<br />
                                    पारिवारिक  वार्षिक आय <span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="64000" readonly />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Previous Acedemic Information/विगत शैक्षणिक वर्ष की जानकारी</legend>
                    <div class="row align-items-end">

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                       School UDISE Code<br />
                                   स्कूल का UDISE कोड</label>
                                <input id="ddlSchoolDise" class="form-control"  autocomplete="off" placeholder="23320400117-GOVT HSS AHAMDABAD" readonly onchange="myFunction7()" />
                                   <%-- <option>Select</option>
                                    <option>23320400117-GOVT HSS AHAMDABAD</option>
                                    <option>23320303134-GOVT HSS KHAJURI KALAN</option>
                                    <option>23320212709-GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</option>
                                    <option>23320110008-GOVT HSS GUNGA</option>
                                    <option>23340101207-M.P. CONVENT BADI</option>
                                    <option>23340202202-GMS BERKHEDI BARAMAD GADHI</option>
                                    <option>23340300401-UEGS KUSNAGAR AMGAWAN</option>
                                    <option>23340402101-GGPS BAMULIYA DANGI</option>
                                    <option>23340502509-GHSS BANGAWAN</option>
                                    <option>23340603802-GAYANDEEP M S CHANDAN PIPALIYA</option>
                                </input>--%>
                            </div>
                        </div>
                        <div class="col-md-3" id="school" >
                            <div class="form-group">
                                <label>
                                     School Name<br />
                                    स्कूल  का नाम</label>
                                <select class="form-control" readonly="true">
                                 
                                    <option>GOVT HSS AHAMDABAD</option>
                                   <%-- <option>GOVT HSS KHAJURI KALAN</option>
                                    <option>GOVT HSS MAHARANA PRATAP PHANDA KALAN (HARIHAR NAGAR)</option>
                                    <option>GOVT HSS GUNGA</option>
                                    <option>M.P. CONVENT BADI</option>
                                    <option>GMS BERKHEDI BARAMAD GADHI</option>
                                    <option>UEGS KUSNAGAR AMGAWAN</option>
                                    <option>GGPS BAMULIYA DANGI</option>
                                    <option>GHSS BANGAWAN</option>
                                    <option>GAYANDEEP M S CHANDAN PIPALIYA</option>--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Class<br />
                                    कक्षा<span style="color: red">*</span></label>
                                <select class="form-control " readonly="true" id="class" onchange="myFunction5()">
                                 <%--   <option value="0">Select</option>--%>
                                  <%--  <option value="1">1st Class</option>
                                    <option value="2">2nd Class</option>
                                    <option value="3">3rd Class</option>
                                    <option value="4">4th Class</option>
                                    <option value="5">5th Class</option>
                                    <option value="6">6th Class</option>
                                    <option value="7">7th Class</option>
                                    <option value="8">8th Class</option>
                                    <option value="9">9th Class</option>--%>
                                    <option value="10">10th Class</option>
                                 <%--   <option value="11">11th Class</option>
                                    <option value="12">12th Class</option>--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="subject" style="display:none;">
                            <div class="form-group">
                                <label>
                                     Subject<br />

                                    विषय<span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="0">Select</option>
                                    <option value="1">Biology</option>
                                    <option value="2">Mathematics </option>
                                    <option value="3">Commerce</option>
                                    <option value="4">Arts</option>


                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                      Percentage<br />
                                    प्रतिशत<span style="color: red">*</span>
                                </label>
                                <select id="percentage" name="percentage" class="form-control " readonly="true">
                                   <%-- <option>Select</option>
                                    <option value="0">0%</option>
                                    <option value="10">10%</option>
                                    <option value="20">20%</option>
                                    <option value="30">30%</option>
                                    <option value="40">40%</option>
                                    <option value="50">50%</option>
                                    <option value="60">60%</option>
                                    <option value="70">70%</option>--%>
                                    <option value="80">80%</option>
                                   <%-- <option value="90">90%</option>
                                    <option value="100">100%</option>--%>
                                </select>

                            </div>
                        </div>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Current Acedemic Information/वर्तमान शैक्षणिक वर्ष जानकारी</legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Class<br />
                                    कक्षा<span style="color: red">*</span></label>
                                <select class="form-control " readonly="true" id="class1" onchange="myFunction6()">
                                   <%-- <option value="0">Select</option>
                                    <option value="1">1st Class</option>
                                    <option value="2">2nd Class</option>
                                    <option value="3">3rd Class</option>
                                    <option value="4">4th Class</option>
                                    <option value="5">5th Class</option>
                                    <option value="6">6th Class</option>
                                    <option value="7">7th Class</option>
                                    <option value="8">8th Class</option>
                                    <option value="9">9th Class</option>
                                    <option value="10">10th Class</option>--%>
                                    <option value="11">11th Class</option>
                                <%--    <option value="12">12th Class</option>--%>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3" id="subject1">
                            <div class="form-group">
                                <label>
                                     Subject<br />

                                    विषय<span style="color: red">*</span></label>
                                <select class="form-control " readonly="true">
                                    <%--<option value="0">Select</option>
                                    <option value="1">Biology</option>--%>
                                    <option value="2">Mathematics </option>
                                <%--    <option value="3">Commerce</option>
                                    <option value="4">Arts</option>--%>


                                </select>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Student Bank Account Information/

विद्यार्थी  बैंक खाते की जानकारी</legend>
                    <div class="row">
                       
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     IFSC Code<br />
                                    आई.एफ.एस.सी कोड<span style="color: red">*</span></label>
                             <input class="form-control "  readonly  id="IFSC" placeholder="SBIN0051467" autocomplete="off"  onchange="myFunction8()"/>
                               <%--     <option value="0">Select</option>
                                    <option value="1">SBIN0051467</option>
                                    <option value="2">ORBC0101947</option>
                                    <option value="3">CBIN0287003</option>
                                    <option value="4">CBIN0284742</option>
                                    <option value="4">CBIN0281071</option>


                                </inpute>--%>
                            </div>
                        </div>
                         <div class="col-md-3"  id="bankname">
     <div class="form-group">
         <label>
              Bank Name<br />
             बैंक का नाम<span style="color: red">*</span></label>
         <input class="form-control " readonly  placeholder="STATE BANK OF INDIA BHOPAL" autocomplete="off" />
            <%-- <option value="0">Select</option>
             <option value="1">STATE BANK OF INDIA BHOPAL</option>
             <option value="2">ORIENTAL BANK OF COMMERCE BHOPAL </option>
             <option value="3">CENTRAL BANK OF INDIA HOSHANGABAD</option>
             <option value="4">CENTRAL BANK OF INDIA BABAI</option>
             <option value="4">CENTRAL BANK OF INDIA BETUL</option>--%>
     </div>
 </div>
                        <div class="col-md-3"  id="Branch">
                            <div class="form-group">
                                <label>
                                     Branch<br />
                                    शाखा<span style="color: red">*</span></label>
                                <input name="ename" type="text" readonly class="form-control" autocomplete="off" placeholder="Bhopal" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Account No.<br />
                                    खाता नंबर<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="1111456237864" readonly />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                     Account Holder Name<br />
                                    खाता धारक का नाम<span style="color: red">*</span></label>
                                <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Riya Gupta" readonly />
                            </div>
                        </div>
                    </div>
                   

                </fieldset>
            </div>
            <%--<div id="show1">
                
                <fieldset>
                    <legend>Document / दस्तावेज़</legend>
                    <div class="row align-items-end">
                        <div>
                            <h5 style="font-weight: 400;">Note :<span style="color: red;">Please upload a PDF or JPG file that is less than 700 KB in size.</span></h5>
                        </div>
                    </div>
                    <div class="row align-items-end mt-4">
                        <div id="DocAppointment" class="col-md-4">
                            <label>
                               Upload Student Photo<br />
                              
विद्यार्थी  फोटो अपलोड करें :
                            </label>
                        </div>
                        <div id="DocAppointment1" class="col-md-4">
                            <input type="file" id="fileInput1" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="DocAppointment2" class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>


                        </div>
                    </div>

                    <div class="row align-items-end mt-3">
                    
                        <div  class="col-md-4" id="DisCertificate">
                            <label>
                                Upload Student Disability Certificate<br />
                                विद्यार्थी  विकलांगता प्रमाणपत्र अपलोड करें
 :
                            </label>
                        </div>
                        <div class="col-md-4" id="file">
                            <input type="file" id="fileInput3" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div class="col-md-4" id="eye">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>


                        </div>
                        
                            
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="DocCaste" class="col-md-4">
                            <label>
                                Upload Student Cast/Category Certificate<br />
                             विद्यार्थी  का जाति और श्रेणी प्रमाणपत्र अपलोड करें:
                            </label>
                        </div>
                        <div id="DocCaste1" class="col-md-4">
                            <input type="file" id="fileInput2" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="DocCaste2" class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="DocPresentpost" class="col-md-4">
                            <label>
                               Student Upload Transfer Certificate<br />
                             विद्यार्थी  का   स्थानांतरण  प्रमाण पत्र अपलोड करें :
                            </label>
                        </div>
                        <div id="DocPresentpost1" class="col-md-4">
                            <input type="file" id="fileInput4" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="DocPresentpost2" class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="Dochandicapped" class="col-md-4">
                            <label>
                            Upload  Student   Bank Passbook <br />
                               विद्यार्थी  का बैंक पासबुक  अपलोड करें :
                            </label>
                        </div>
                        <div id="Dochandicapped1" class="col-md-4">
                            <input type="file" id="fileInput6" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="Dochandicapped2" class="col-md-4">
                            <a href=""  class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></a>

                        </div>
                    </div>
                    <div class="row align-items-end mt-3">
                        <div id="CriticalIllness" class="col-md-4">
                            <label>
                                Upload Family Income Proof<br />
                                पारिवारिक आय प्रमाण अपलोड करें:
                            </label>
                        </div>
                        <div id="CriticalIllness1" class="col-md-4">
                            <input type="file" id="fileInput010" style="margin-left: 0px;" class="form-control" onchange="displayImage(this)" />
                        </div>
                        <div id="CriticalIllness3" class="col-md-4">
                            <button type="submit" class="btn view-btn btn-outline-info"><i class="fas fa-eye"></i></button>

                        </div>
                    </div>

                </fieldset>
                <hr />
              
                 <div class="modal-footer justify-content-center d-print-none">
     <button type="button" class="btn btn-primary mr-2" onclick="printModalContent('staticBackdrop'); ">Print</button>
     <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
 </div>
        </div>--%>
            </div>
       </div>
                             </div>
            </div></div>
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
    <script>function autoResize(textarea) {
        textarea.style.height = 'auto'; // Reset height to auto
        textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
    }

    function printModalContent(modalId) {
        var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
        document.body.innerHTML = modalContent.innerHTML
        window.print();
        window.location.href = "Rpt_EmployeeACR.aspx";
    }
    document.addEventListener('keydown', function (event) {
        if (event.ctrlKey && event.key === 'p') {
            // Prevent default behavior of Ctrl+P (opening print dialog)
            event.preventDefault();
            // Print the content of the active modal
            var activeModal = document.querySelector('.modal.show');
            if (activeModal) {
                var modalId = activeModal.getAttribute('id');
                printModalContent(modalId);
            }
        }
    });

    </script>
</asp:Content>

