<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AnnualPropertyDetailsForm.aspx.cs" Inherits="mis_Transaction_AnnualPropertyDetailsForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <style>
        #divarea, #divarea2 {
            display: none;
        }

        .form-control:read-only {
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%-- <div class="row page-titles mb-4">
         <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/PropertyReturnNew.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br /></u></p>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=APRMS" title="click to go on">APRMS</a></li>
                    <li class="breadcrumb-item active">Fill Employee APR Form</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card  shadow">
        <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
            <b>मध्यप्रदेश शासकीय सेवक (आचरण) नियम, 1959 के नियम 18 (3) के अधीन प्रथम श्रेणी, द्वितीय श्रेणी तथा तृतीय श्रेणी सेवा के प्रत्येक सदस्य से यह अपेक्षित है कि यह सेवा में पहली नियुक्ति के समय और उसके बाद प्रत्येक बारह महीने की अवधि के पश्चात् यह घोषणा-पत्र भर कर प्रस्तुत करें और उसमें वह उनके स्वामित्व को तथा उसके  द्वारा अर्जित अथवा उसे विरासत में मिली या उसके अपने नाम पर उसके परिवार के किसी सदस्य के नाम पर या किसी अन्य व्यक्ति के नाम पर पट्टे या बंधक पर उसके द्वारा धारित समस्त अचल संपति का ब्यौरा दे |   </b>
        </p>
        <%--<div class="modal-footer justify-content-end">
   </div>--%>
    <%--  <div class="card-header card-border-info">--%>
    <%--<h2>कर्मचारी की अचल संपत्ति का विवरण(Immovable Annual Property Details)</h2>
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <li>

                                <a class="nav-link  text-white " href="AnnualPropertyDetails.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white " href="AnnualPropertyDetailsForm.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Fill Employee APR Form</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white " href="AnnualPropertyDetailReport.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Print Employee APR Form</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white " href="UploadAprForm.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Upload Employee APR Form</b></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>--%>
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
                            <a href="#EmpAPRMS" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee APRMS</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee APR Form</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%--  <div class="row page-titles mb-4">--%>
  <%--  <div class="col-md-5 " style="position: relative; bottom: 20px; right: 25px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -4.5rem">
        <%--    <img src="https://dpihrms.tserver.co.in/img/PropertyReturnNew.png" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)" style="">
        </p>
    </div>--%>
    <%--  <div class="col-md-5 " style="position:relative;bottom:30px; right:25px;">
      <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -4.5rem">
          <img src="https://dpihrms.tserver.co.in/img/PropertyReturnNew.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
          </u>
      </p>
                         
      </div>--%>
    <div class="row align-content-end"><div class="col-md-5 ">
        <img src="https://dpihrms.tserver.co.in/img/PropertyReturnNew.png"  style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
    </div></div>

   <div class="card card-border-primary">
    <div class="card-header">
        <div class="row align-items-end">
            <div class="col-lg-12">
                <h5 class="card-title">Employee APR Form/
                 
कर्मचारी एपीआर फॉर्म
                </h5>
            </div>
        </div>
    </div>
    <div class="card-body">
    <fieldset id="show1" runat="server">
        <legend>Fill Annual Property Details/वार्षिक संपत्ति विवरण भरें</legend>
        <div class="row align-content-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Select Financial Year<br />
                        वित्तीय वर्ष चुनें<span style="color: red">*</span></label>
                    <input maxlength="4" id="Year" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                </div>
            </div>
            <div class="col-md-3" id="DivEmp">
                <div class="form-group">
                    <label>
                        Employee Name<br />
                        कर्मचारी का नाम<span style="color: red">*</span></label>
                    <input class="form-control" id="txtemplname" autocomplete="off"  type="text" name="txtemplname" value="Rajesh Agrawal" readonly />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Designation<br />
                        पद<span style="color: red">*</span></label>
                    <input class="form-control" id="txtempldesigntn" autocomplete="off" readonly type="text" name="txtempldesigntn" value="प्राथमिक अध्यापक(PRT)" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Employee Code<br />
                        कर्मचारी कोड<span style="color: red">*</span></label>
                    <input class="form-control" id="txtempluniquecode" autocomplete="off" readonly type="text" name="txtempluniquecode" value="AB4545" />
                </div>
            </div>

        </div>
        <div class="row  align-content-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Current Salary<br />
                        वर्तमान वेतन <span style="color: red">*</span></label>
                    <input class="form-control" id="txtcursalary" autocomplete="off" readonly type="text" name="txtcursalary" value="25000" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Increment Date<br />
                        वेतन वृद्धि तिथि<span style="color: red">*</span></label>
                    <input name="ename" id="dob" type="date" class="form-control" autocomplete="off" />
                </div>
            </div>
        </div>
        <div class="row  align-content-end">
            <div class="col-md-6 align-self-center" style="color: red">
                <label class="fs-5">Note: सर्वप्रथम वित्तीय वर्ष का चयन करें</label>
            </div>
        </div>

        <%--<div class="row justify-content-center">
                    <div class="col-md-4 text-center">

                        <asp:Button runat="server" ID="btnsave" type="button" class="btn btn-success btn-rounded" Text="Save & Next" OnClick="btnsave_Click" />
                        <a href="AnnualPropertyDetailsForm.aspx" id="ContentBody_clearfirst" class="btn btn-danger btn-rounded">Clear</a>
                    </div>
                </div>--%>
    </fieldset>

    <fieldset id="show2" runat="server">
        <legend>Property Details / संपत्ति ब्यौरा</legend>
        <div class="row  align-content-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Division<br />
                        संभाग का नाम <span style="color: red">*</span></label>
                    <select class="form-control select2" id="ddlDivision">
                        <option value="--Select--">--Select--</option>
                        <option value="Bhopal">Bhopal(भोपाल)</option>
                        <option value="Gwalior">Gwalior(ग्वालियर)</option>
                        <option value="Narmadapuram">Narmadapuram(नर्मदापुरम)</option>
                        <option value="Indore">Indore(इंदौर)</option>
                        <option value="Jabalpur">Jabalpur(जबलपुर)</option>
                        <option value="Rewa">Rewa(रीवा)</option>
                        <option value="Sagar">Sagar(सागर)</option>
                        <option value="Shahdol">Shahdol(शाहडोल)</option>
                        <option value="Ujjain">Ujjain(उज्जैन)</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        District<br />
                        जिले का नाम <span style="color: red">*</span></label>
                    <select class="form-control select2" id="ddlDistrict">
                        <option value="--Select--">--Select--</option>
                        <option value="Bhopal">Bhopal(भोपाल)</option>
                        <option value="Raisen">Raisen(रायसेन)</option>
                        <option value="Rajgarh">Rajgarh(राजगढ़)</option>
                        <option value="Sehore">Sehore(सीहोर)</option>
                        <option value="Vidisha">Vidisha(विदिशा)</option>
                        <option value="Ashoknagar">Ashoknagar(अशोकनगर)</option>
                        <option value="Shivpuri">Shivpuri(शिवपुरी)</option>
                        <option value="Datia">Datia(दतिया)</option>
                        <option value="Guna">Guna(गुना)</option>
                        <option value="Gwalior">Gwalior(ग्वालियर)</option>
                        <option value="Harda">Harda(हरदा)</option>
                        <option value="Hoshangabad">Hoshangabad(होशंगाबाद)</option>
                        <option value="Betul">Betul(बेतुल)</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Block<br />
                        विकासखंड का नाम <span style="color: red">*</span></label>
                    <select class="form-control select2" id="ddlBlock">
                        <option value="--Select--">--Select--</option>
                        <option value="Agar">Agar(आगर)</option>
                        <option value="Barod">Barod(बड़ौद)</option>
                        <option value="Nalkheda">Nalkheda(नलखेड़ा)</option>
                        <option value="Susner">Susner(सुसनेर)</option>
                        <option value="Alirajpur">Alirajpur(आलीराजपुर)</option>
                        <option value="Bhabra">Bhabra(भाबरा)</option>
                        <option value="Katthiwara">Katthiwara(कट्ठीवाड़ा)</option>
                        <option value="Sondwa">Sondwa(सोंडवा)</option>
                        <option value="Udaygarh">Udaygarh(उदयगढ़)</option>
                        <option value="Jobat">Jobat(जोबट)</option>
                        <option value="Anuppur">Anuppur(अनुपपुर)</option>
                        <option value="Jaithari">Jaithari(जैतहरी)</option>
                        <option value="Kotma">Kotma(कोतमा)</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Gram Panchayat<br />
                        ग्राम पंचायत का नाम
                    </label>
                    <select class="form-control select2" id="ddlGramPanchayat">
                        <option value="--Select--">--Select--</option>
                        <option value="Bagiyatola ">Bagiyatola(बगियाटोला) </option>
                        <option value="Barod">Barod(बड़ौद)</option>
                        <option value="Belgaon">Belgaon(बेलगांव) </option>
                        <option value="Beliya">Beliya Chhot(बेलिया छोट) </option>
                        <option value="Benibahra">Benibahra(बेनीबहरा) </option>
                    </select>
                </div>
            </div>
        </div>
        <div class="row  align-content-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Gram<br />
                        ग्राम का नाम</label>
                    <select class="form-control select2" id="ddlGram">
                        <option value="--Select--">--Select--</option>
                        <option value="DONGRATOLA ">DONGRATOLA(डोंगराटोला) </option>
                        <option value="Barod">BARGAWAN(बरगवां) </option>
                        <option value="Nalkheda">Belgaon(बेलगांव) </option>
                        <option value="Susner">NAGARA BAND(नागरा बैंड) </option>
                        <option value="Alirajpur">NIMHA(निम्हा) </option>
                    </select>
                </div>
            </div>
            <div class="col-md-3" id="divpd">
                <div class="form-group">
                    <label>
                        Property Detail<br />
                        संपत्ति विवरण <span style="color: red">*</span></label>
                    <select id="ddlproprty" class="form-control" onchange="ProprtyArea()">
                        <option value="0">--select--</option>
                        <option value="1">Residential Property(आवासीय संपत्ति)</option>
                        <option value="2">Commercial Property(व्यावसायिक संपत्ति)</option>
                        <option value="3">Land/Plot(भूमि/प्लॉट)</option>
                        <option value="4">Agricultural Land(कृषि भूमि)</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3" id="divarea">
                <div class="form-group">
                    <label>
                        Total Area Sq.Ft<br />
                        कुल क्षेत्रफल वर्ग फुट <span style="color: red">*</span></label>
                    <input name="totlareasqft" type="text" class="form-control" autocomplete="off" placeholder="Total Area Square Feet" />

                </div>
            </div>
            <div class="col-md-3" id="divarea2">
                <div class="form-group">
                    <label>
                        Total Area Hectare<br />
                        कुल क्षेत्रफल हेक्टेयर <span style="color: red">*</span></label>
                    <input name="totlareaHectare" type="text" class="form-control" autocomplete="off" placeholder="Total Area Hectare" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Current Value<br />
                        वर्तमान मूल्य <span style="color: red">*</span></label>
                    <input name="Current Value" id="txtValue" type="text" class="form-control" autocomplete="off" placeholder="Current Value" />
                </div>
            </div>
        </div>
        <div class="row  align-content-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Property Owner<br />
                        संपत्ति मालिक <span style="color: red">*</span></label>
                    <select id="ddlpropertyowner" onchange="HidedivOwner();" class="form-control">
                        <option value="0">--select--</option>
                        <option value="1">Self(स्वयं)</option>
                        <option value="2">Wife(पत्नी के नाम)</option>
                        <option value="3">Son(पुत्र के नाम)</option>
                        <option value="4">Daughter(पुत्री के नाम)</option>
                        <option value="5">Other(अन्य)</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3" id="divOwner">
                <div class="form-group">
                    <label>
                        Owner Name<br />
                        संपत्ति मालिक का नाम <span style="color: red">*</span></label>
                    <asp:TextBox runat="server" ID="ownername" class="form-control" autocomplete="off" placeholder="संपत्ति मालिक का नाम"></asp:TextBox>
                </div>
            </div>
        </div>


        <fieldset>
            <legend>Seller Detail/ विक्रेता विवरण</legend>
            <div class="row  align-content-end">
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                            Property Source<br />
                            संपत्ति स्रोत <span style="color: red">*</span></label>
                        <select class="form-control select2" id="ddlPropertySource">
                            <option value="Select">--Select--</option>
                            <option value="0">संपत्ति रसीद</option>
                            <option value="1">संपत्ति पट्टा </option>
                            <option value="2">बंधक विरासत</option>
                            <option value="3">उपहार</option>
                            <option value="4">अन्य</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                            Purchase Date<br />
                            खरीद की तारीख<span style="color: red">*</span></label>
                        <input name="Purchase Date" id="txtPurchase" type="date" class="form-control" autocomplete="off" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                            Seller  Mobile No<br />
                            विक्रेता का मोबाइल नंबर<span style="color: red">*</span></label>
                        <input name="SellerMblNo" id="monumber" type="text" class="form-control" autocomplete="off" placeholder="विक्रेता का मोबाइल नंबर दर्ज करे" />
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>
                            Seller  Address<br />
                            विक्रेता का पता<span style="color: red">*</span></label>
                        <input name="SellerAddress" id="address" type="text" class="form-control" autocomplete="off" placeholder="विक्रेता का पता दर्ज करे" />
                    </div>
                </div>
            </div>
        </fieldset>
        <div class="row align-items-end">
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Property Annual Income<br />
                        संपत्ति से वार्षिक आय
                    </label>
                    <input name="संपत्ति से वार्षिक आय" type="text" id="Income" class="form-control" autocomplete="off" placeholder="संपत्ति से वार्षिक आय दर्ज करे" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>
                        Accusation<br />
                        अभियुक्ति
                    </label>
                    <input name="अभियुक्ति" id="Accusation" type="text" class="form-control" autocomplete="off" placeholder="अभियुक्ति दर्ज करे" />
                </div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-4 text-center">
                <button id="btnAdd" type="button" onclick="addData2()" class="btn w-lg btn-success btn-border">Add</button>
                <a href="AnnualPropertyDetailsForm.aspx" id="ContentBody_clearfirst" class="btn btn-outline-danger w-lg btn-border">Clear</a>
            </div>
        </div>

    </fieldset>
    <fieldset id="Fieldset1" style="display: none;">
        <legend>Employee Annual Property Detail Report/कर्मचारी की अचल संपत्ति का विवरण रिपोर्ट </legend>
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
                    <table id="Table1" class="table table-bordered text-center">
                        <thead>
                            <tr valign="middle" style="background-color: #1B5B5C; white-space: nowrap;" class="text-white">
                                <th>S.No.<br />
                                    क्र.सं</th>
                                <th>Financial Year<br />
                                    वित्तीय वर्ष</th>
                                <th class="d-none d-md-table-cell">Employee Name<br />
                                    कर्मचारी का नाम</th>
                                <th class="d-none d-md-table-cell">Designation<br />
                                    पद </th>
                                <th>Employee Code<br />
                                    कर्मचारी कोड</th>
                                <th>Current Salary<br />
                                    वर्तमान वेतन</th>
                                <th>Increment Date<br />
                                    वेतन वृद्धि तिथि </th>
                                <th>Division<br />
                                    संभाग </th>
                                <th>District<br />
                                    जिला </th>
                                <th>Block<br />
                                    ब्लॉक </th>
                                <th>Gram Panchaya<br />
                                    /ग्राम पंचायत</th>
                                <th>Gram/Village<br />
                                    ग्राम/गांव</th>
                                <th>Property Detail<br />
                                    संपत्ति विवरण</th>
                               <%-- <th>Total Area<br />
                                    कुल क्षेत्रफल</th>--%>
                                <th>Current Value<br />
                                    वर्तमान मूल्य</th>
                                <th>Property Owner<br />
                                    संपत्ति का मालिक </th>
                                <th>Property Source<br />
                                    संपत्ति का स्रोत</th>
                                <th>Purchase Date<br />
                                    खरीद की तारीख</th>
                                <th>Seller Mobile No<br />
                                    विक्रेता का मोबाइल नंबर</th>
                                <th>Seller Address<br />
                                    विक्रेता का पता</th>
                                <th>Property Annual Income<br />
                                    संपत्ति से वार्षिक आय</th>
                                <th>Accusation<br />
                                    अभियुक्ति</th>
                                 <th>Action</th>
                                

                            </tr>
                        </thead>
                        <tbody>

                        </tbody>

                    </table>
                </div>
            </div>
        </div>
        <hr />
         <button type="button" class="Alert-Confirmation btn w-lg btn-success btn-border">Submit</button>

    </fieldset>
        </div></div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>

        function HidedivOwner() {
            var ddlpropertyowner = document.getElementById('ddlpropertyowner');
            var selectedValue = ddlpropertyowner.value;
            var DivEmp = document.getElementById('DivEmp');
            var divOwner = document.getElementById('divOwner');
            /*console.log(selectedValue);*/

            if (selectedValue == "1") {
                DivEmp.style.display = 'block';
                //divOwner.style.display = 'none';
                document.getElementById('<%=ownername.ClientID%>').value = document.getElementById('txtemplname').value
            } else if (selectedValue == "2" || selectedValue == "3" || selectedValue == "4" || selectedValue == "5") {
                DivEmp.style.display = 'none';
                divOwner.style.display = 'block';
                document.getElementById('<%=ownername.ClientID%>').value = '';
            } else {
                DivEmp.style.display = 'none';
                divOwner.style.display = 'none';
                document.getElementById('<%=ownername.ClientID%>').value = '';
            }
        }

        function ProprtyArea() {
            var ddlproprty = document.getElementById('ddlproprty');
            var selectedValue = ddlproprty.value;
            var divarea = document.getElementById('divarea');
            var divarea2 = document.getElementById('divarea2');
            console.log(selectedValue);

            if (selectedValue == "1" || selectedValue == "2" || selectedValue == "3") {
                divarea.style.display = 'block';
                divarea2.style.display = 'none';

            } else if (selectedValue == "4") {
                divarea.style.display = 'none';
                divarea2.style.display = 'block';
            } else {
                divarea.style.display = 'none';
                divarea2.style.display = 'none';
            }
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
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
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
   <script>

       debugger
       function addData2() {
           document.getElementById("Fieldset1").style.display = 'block';
           let name = document.getElementById("Year").value;
           let email = document.getElementById("txtemplname").value;
           let mobile = document.getElementById("txtempldesigntn").value;
           let PreviousGradea = document.getElementById("txtempluniquecode").value;
           let PreviousGradeab = document.getElementById("txtcursalary").value;
           let PreviousGradec = document.getElementById("dob").value;
           let PreviousGraded = document.getElementById("ddlDivision").value;
           let PreviousGradee = document.getElementById("ddlDistrict").value;
           let Gradea = document.getElementById("ddlBlock").value;
           let Gradeb = document.getElementById("ddlGramPanchayat").value;
           let Gradec = document.getElementById("ddlGram").value;
           let Graded = document.getElementById("ddlproprty").value;
           let Gradee = document.getElementById("txtValue").value;
           let Gradef = document.getElementById("ddlpropertyowner").value;
           let Gradeg = document.getElementById('<%=ownername.ClientID%>').value;
        let Gradeh = document.getElementById("ddlPropertySource").value;
        let Gradei = document.getElementById("txtPurchase").value;
        let Gradej = document.getElementById("monumber").value;
           let Gradek = document.getElementById("address").value;
           let Gradek = document.getElementById("Income").value;
           let Gradek = document.getElementById("Accusation").value;

        // Get the table and insert a new row at the end
        let table = document.getElementById('Table1');
        let newRow = table.getElementsByTagName('tbody')[0].insertRow();
        // Insert data into cells of the new row
        newRow.insertCell(0).innerHTML = table.rows.length - 1;
        newRow.insertCell(1).innerHTML = name;
        newRow.insertCell(2).innerHTML = email;
        newRow.insertCell(3).innerHTML = mobile;
        newRow.insertCell(4).innerHTML = PreviousGradea;
        newRow.insertCell(5).innerHTML = PreviousGradeab;
        newRow.insertCell(6).innerHTML = PreviousGradec;
        newRow.insertCell(7).innerHTML = PreviousGraded;
        newRow.insertCell(8).innerHTML = PreviousGradee;
        newRow.insertCell(9).innerHTML = Gradea;
        newRow.insertCell(10).innerHTML = Gradeb;
        newRow.insertCell(11).innerHTML = Gradec;
        newRow.insertCell(12).innerHTML = Graded;
        newRow.insertCell(13).innerHTML = Gradee;
        newRow.insertCell(14).innerHTML = Gradef;
        newRow.insertCell(15).innerHTML = Gradeg;
        newRow.insertCell(16).innerHTML = Gradeh;
        newRow.insertCell(17).innerHTML = Gradei;
        newRow.insertCell(18).innerHTML = Gradej;
           newRow.insertCell(19).innerHTML = Gradek;
           newRow.insertCell(20).innerHTML = Gradek;

         // Add action field
         newRow.insertCell(21);

         // Create buttons for action
         const actionButtonTd= newRow.cells[21];
         actionButtonTd.innerHTML += '<a class="Alert-Edit"><i class="fa fa-pen"></i></a>| <a class="Alert-Delete"><i class="fa fa-trash"></i></a>';

         // Clear input fields after adding the row
         clearInputs2();
    };

    // Function to clear input fields after adding a row
    function clearInputs2() {
       document.getElementById("Year").value ="";
       document.getElementById("txtemplname").value ="";
       document.getElementById("txtempldesigntn").value ="";
       document.getElementById("txtempluniquecode").value ="";
       document.getElementById("txtcursalary").value ="";
       document.getElementById("dob").value ="";
       document.getElementById("ddlDivision").value ="";
       document.getElementById("ddlDistrict").value ="";
       document.getElementById("ddlBlock").value ="";
       document.getElementById("ddlGramPanchayat").value ="";
       document.getElementById("ddlGram").value ="";
       document.getElementById("ddlproprty").value ="";
       document.getElementById("txtValue").value ="";
       document.getElementById("ddlpropertyowner").value ="";
       document.getElementById("<%=ownername.ClientID%>").value = "";
           document.getElementById("ddlPropertySource").value = "";
           document.getElementById("txtPurchase").value = "";
           document.getElementById("monumber").value = "";
           document.getElementById("address").value = "";
           document.getElementById("rowspan").value = "";
           document.getElementById("Action").value = "";
       }

   </script>
</asp:Content>

