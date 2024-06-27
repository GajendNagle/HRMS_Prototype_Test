<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="TeacherFillReport.aspx.cs" Inherits="mis_Transaction_TeacherFillReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />

    <style>
        textarea {
            resize: vertical;
            min-height: 40px; /* Set a minimum height */
        }


        #ddlPosition {
            position: relative;
            bottom: 20px;
        }
    </style>
    <style>
        #formContainer {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-top: 10px;
        }


        #Table1 {
            border-collapse: collapse;
            margin-bottom: 20px;
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentBody" runat="Server">
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
                            <a href="#ACR" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>ACR</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee ACR Apply</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%--  <div class="row page-titles mb-4">--%>
  <%--  <div class="row page-titles mb-4">--%>
  <div class="row align-content-end"><div class="col-md-5 ">
          <img src="../../img/Confidential.png" style="height: 60px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
      </div>
               <%--               <div class="row justify-content-end" onclick=" moveBetweenFieldsets(currentFieldset, nextFieldset) " style=" position:fixed; margin-left: 35.5rem" id="btnBack">
    <div class="col-md-3  justify-content-end">
           <div class="form-group">
        <button id="BtnBack" class="btn-info rounded-2 ml-5" type="button" onclick="Backclickfn()">BACK</button>
    </div>
        </div>
</div>--%>

      <div class="col-md-4">
          <div class="form-group">
              </div>

      </div>
<div class="col-md-3 justify-content-lg-end" style="position:relative; left:120px; top:10px;">
    <div class="form-group">
         <button id="BtnBack" class="btn-info rounded-2 ml-5" type="button" onclick="Backclickfn()">BACK</button>
        
    </div>
</div>
      </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4 class="card-title color_black">
                      PART-2 Self-Evaluation
                      भाग दो-स्वमूल्यांकन
                    </h4>
                         
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="Fieldset1" style="display: block">
                <fieldset>
                    <legend>Improving Attendance Of Childdren / छात्र उपिस्थिति में वृद्धि </legend>

                    <div class="row">
                        <div class="col-md-12">
                            <table id="Table1" class="table table-bordered table-responsive-lg text-center " runat="server">
                                <thead>
                                    <tr valign="middle">
                                        <th rowspan="2">S.No.<br />
                                            सरल.क्र </th>
                                        <th rowspan="2">Class being taught<br />
                                            पढाई जाने वाली कक्षा
                                           
                                        </th>
                                        <th colspan="2">Enrolment<br />
                                            नामांकन</th>
                                        <th rowspan="2">Average Annual attendance in Percentege<br />
                                            वार्षिक औसत उपिस्थिति प्रतिशत में</th>
                                        <th rowspan="2">Remark
                                            <br />
                                            टिप्पणी</th>
                                        <th rowspan="2" style="display: none;" id="action">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle"  class="text-white">
                                        <td>Previous Session<br />
                                            विगत सत्र</td>
                                        <td>Present Session
                                            <br />
                                            वर्तमान सत्र</td>
                                    </tr>
                                    <tr valign="middle">
                                        <td>1
                                        </td>
                                        <td>
                                            <select cssclass="form-control select2" id="ddlClass" class="form-control select2" style="width: 190px;" onchange="myaddbtn()">
                                                <option value="0">--Select--</option>
                                                <option>1st class/कक्षा पहली</option>
                                                <option>2nd class/कक्षा दूसरी</option>
                                                <option>3rd class/कक्षा तीसरी</option>
                                                <option>4th class/कक्षा चौथी</option>
                                                <option>5th class/कक्षा पाचंवी</option>
                                                <option>6th class/कक्षा छटवी</option>
                                                <option>7th class/कक्षा सातवी</option>
                                                <option>8th class/कक्षा आठवी</option>
                                                <option>9th class/कक्षा नव्वी</option>
                                                <option>10th class/कक्षा दसवी</option>
                                                <option>11th class/कक्षा ग्यारवी</option>
                                                <option>12th class/कक्षा बरवी</option>
                                            </select></td>
                                        <td>
                                            <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="a1" class="form-control datepickerYear" type="text" data-val="true" required="required" />
                                        </td>
                                        <td>
                                            <input maxlength="4" autocomplete="off" placeholder="--Select Year--" id="a2" class="form-control datepickerYear2" type="text" data-val="true" required="required" />
                                        </td>
                                        <td class="text-center">
                                            <input type="email" id="a3" class="form-control" style="width: 160px;"></td>
                                        <td>
                                            <textarea class="form-control mt-1" id="workdescription3" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                                        <td style="display: none;" id="btnaction">
                                            <button type="button" onclick="addData()" class="btn btn-success">Add</button>
                                        </td>


                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                </fieldset>
                <label>
                    <span class="fa-pull-left" style="color: red; font-size: 15px; position: relative; bottom: 3px;">Note:-</span>The Column Menttioning last year average attendance Will Not Apply for class<br />
                    कक्षा 1 के पिछले वर्ष की औसत उपिस्थिति लागू नहीं होगी|</label>
                                                  <hr />
<div class="col-md-12">
    <div class="form-group">
        <button type="button" class="Alert-Save1  btn w-lg btn-success btn-border">
            Save/Next
        </button>
        <a href="TeacherFillReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
    </div>
</div>
               <%-- <div class="row justify-content-center">
                    <div class="col-md-3 text-center mt-4">
                        <div class="form-group">
                            <button type="button" class="Alert-Save1 btn btn-success btn-rounded ">
                                Save/Next
                            </button>
                            <%-- <asp:Button runat="server" class="Alert-Save2 btn btn-success btn-rounded" Text="Save/Next"  />
                            <a href="TeacherFillReport.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>--%>
            </div>
            <div runat="server" id="fieldset2" style="display: none">
                <fieldset>
                    <legend>Complention of Syllabus Aganinst The Target / लक्ष्य के विरुद्ध पाठ्यक्रम  पूर्णता की स्थिति </legend>

                    <div class="row">
                        <div class="col-md-12 table-responsive">
                            <table id="Table2" class="table table-bordered  text-center " runat="server">
                                <thead>
                                    <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                        <th>S.No.
                                            <br />
                                            सरल.क्र</th>
                                        <th>Class<br />
                                            कक्षा</th>
                                        <th>Subject<br />
                                            विषय</th>
                                        <th>Target (In % age)<br />
                                            लक्ष्य (प्रतिशत में)</th>
                                        <th>Achievement (In % age)<br />
                                            उपलब्धि (प्रतिशत में)</th>
                                        <th style="display: none;" id="action2">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr valign="middle">
                                        <td>1</td>
                                        <td>
                                            <%--<asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>--%>
                                            <select cssclass="form-control select2" id="ddlClass2" class="form-control select2" style="width: 190px;" onchange="myaddbtn1()">
                                                <option value="0">--Select--</option>
                                                <option>1st class/कक्षा पहली</option>
                                                <option>2nd class/कक्षा दूसरी</option>
                                                <option>3rd class/कक्षा तीसरी</option>
                                                <option>4th class/कक्षा चौथी</option>
                                                <option>5th class/कक्षा पाचंवी</option>
                                                <option>6th class/कक्षा छटवी</option>
                                                <option>7th class/कक्षा सातवी</option>
                                                <option>8th class/कक्षा आठवी</option>
                                                <option>9th class/कक्षा नव्वी</option>
                                                <option>10th class/कक्षा दसवी</option>
                                                <option>11th class/कक्षा ग्यारवी</option>
                                                <option>12th class/कक्षा बरवी</option>
                                            </select>
                                        </td>
                                        <td>
                                            <%--    <input type="email" class="form-control">--%>
                                            <select name="ctl00$ContentBody$ctl01" id="b1" class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="English">English</option>
                                                <option value="Science">Science</option>
                                                <option value="Mathes">Mathes</option>
                                                <option value="Social Science">Social Science</option>
                                                <option value="Hindi">Hindi</option>
                                                <option value="Sanskrit">Sanskrit</option>

                                            </select>
                                        </td>
                                        <td>
                                            <input type="email" id="b2" placeholder="100%" class="form-control text-center"></td>
                                        <td>
                                            <input type="email" id="b3" class="form-control"></td>
                                        <td style="display: none;" id="btnaction2">

                                            <button type="button" onclick="addData1()" class="btn btn-success">Add</button></td>

                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>
                                Reasons, if any, for not completing the target 
                                <br />
                                लक्ष्य  प्राप्ति न होने के करण<span style="color: red">*</span></label>
                            <textarea class="form-control" id="workdescription" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reasons  Maxmum 100 words"></textarea>
                        </div>
                    </div>
                </fieldset><hr />
                <div class="col-md-12">
    <div class="form-group">
        <button type="button" class="Alert-Save2  btn w-lg btn-success btn-border">
            Save/Next
        </button>
        <a href="TeacherFillReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
    </div>
</div>
               <%-- <div class="row justify-content-center">
                    <div class="col-md-3 text-center mt-4">
                        <div class="form-group">
                            <button type="button" class="Alert-Save2 btn btn-success btn-rounded ">
                                Save/Next
                            </button>
                            <a href="TeacherFillReport.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>--%>

            </div>
            <div runat="server" id="fieldset3" style="display: none">
                <fieldset>
                    <legend>Academic Performance and Syllabus Completion Status  / शैक्षणिक प्रदर्शन और पाठ्यक्रम समापन की स्थिति</legend>

                    <div class="row">
                        <div class="col-md-12 table-responsive">
                            <table id="Table3" class="table table-bordered  text-center  " runat="server" >
                                <thead>
                                    <tr valign="middle">
                                        <th>S.No.<br />
                                            सरल.क्र</th>
                                        <th>Class<br />
                                            कक्षा</th>
                                        <th>Subject<br />
                                            विषय</th>
                                        <th>No.of
                     Student<br />
                                            छात्र संख्या
                                        </th>
                                        <th colspan="5">Previous class annual
examination Result grade
wises Student number<br />
                                            पूर्व कक्षा के परीक्षा परिणाम के
अनुसार छात्रों की ग्रेडवार संख्या
                                        </th>
                                        <th colspan="5">Achievement on the basis
of annual examination result
                                            <br />
                                            वार्षिक परीक्षा के
आधार पर उपलब्धि<br />
                                            (Student in Grade)<br />
                                            (ग्रेडवार छात्र संख्या)</th>
                                        <th style="display: none;" id="action3">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>A<br />
                                            (अ)</td>
                                        <td>B<br />
                                            (ब)</td>
                                        <td>C<br />
                                            (स)</td>
                                        <td>D<br />
                                            (द)</td>
                                        <td>E<br />
                                            (ई)</td>


                                        <td>A<br />
                                            (अ)</td>
                                        <td>B<br />
                                            (ब)</td>
                                        <td>C<br />
                                            (स)</td>
                                        <td>D<br />
                                            (द)</td>
                                        <td>E<br />
                                            (ई)</td>
                                        <td></td>
                                    </tr>

                                    <tr valign="middle">
                                        <td>1
                                        </td>
                                        <td>
                                            <select class="form-control select2" style="width: 70px;" id="ddlClass3" onchange="myaddbtn2()">
                                                <option value="0">--Select--</option>
                                                <option>1st class/कक्षा पहली</option>
                                                <option>2nd class/कक्षा दूसरी</option>
                                                <option>3rd class/कक्षा तीसरी</option>
                                                <option>4th class/कक्षा चौथी</option>
                                                <option>5th class/कक्षा पाचंवी</option>
                                                <option>6th class/कक्षा छटवी</option>
                                                <option>7th class/कक्षा सातवी</option>
                                                <option>8th class/कक्षा आठवी</option>
                                                <option>9th class/कक्षा नव्वी</option>
                                                <option>10th class/कक्षा दसवी</option>
                                                <option>11th class/कक्षा ग्यारवी</option>
                                                <option>12th class/कक्षा बरवी</option>
                                            </select></td>
                                        <td>
                                            <%-- <input type="email"  class="form-control" style="width: 70px;">--%>
                                            <select name="ctl00$ContentBody$ctl01" id="c1" class="form-control select2">
                                                <option value="--Select--">--Select--</option>
                                                <option value="English">English</option>
                                                <option value="Science">Science</option>
                                                <option value="Mathes">Mathes</option>
                                                <option value="Social Science">Social Science</option>
                                                <option value="Hindi">Hindi</option>
                                                <option value="Sanskrit">Sanskrit</option>

                                            </select>
                                        </td>
                                        <td>
                                            <input type="email" id="c2" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c3" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c4" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c5" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c6" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c7" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c8" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c9" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c10" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c11" class="form-control" style="width: 70px;"></td>
                                        <td>
                                            <input type="email" id="c12" class="form-control" style="width: 70px;"></td>
                                        <td style="display: none;" id="btnaction3">

                                            <button type="button" onclick="addData2()" class="btn btn-success">Add</button></td>

                                    </tr>

                                </tbody>
                            </table>

                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-6">
                            <label>
                                Reasons Of Not achieving target
                                <br />
                                लक्ष्य  से कम उपलब्धि के करण<span style="color: red">*</span></label>
                            <textarea class="form-control mb-2" id="workdescription1" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter Reasons Maxmum 100 words"></textarea>
                        </div>
                    </div>



                    <label>
                        <span style="color: red; font-size: 15px;">Note:-</span>
                        1. * A-80% or avove, B-60-79%, C-45-59%, D-33-45%,E< 33% (Rounding off Will be in  higher number)<br />
                        &emsp; &emsp;&emsp; <span>अ-80 प्रतिशत या अधिक ,ब 60-79 प्रतिशत, स.45-59 प्रतिशत, द 33-45 प्रतिशत, ई 33 प्रतिशत से काम</span><br />
                        &emsp; &emsp; &emsp;<span>2.कक्षा 5वी 8वी 10वी 12वी हेतु बोर्ड पैटर्न/बोर्ड परीक्षा  के परिणाम अंकित किये जाये </span>|</label>

                </fieldset>
              <%--  <div class="row justify-content-center">
                    <div class="col-md-12 text-center ">
                        <div class="form-group">
                            <button type="button" class="Alert-Save3 btn btn-success btn-rounded ">
                                Save/Next
                            </button>
                            <a href="TeacherFillReport.aspx" class="btn btn-danger  btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>--%>
                <hr /><div class="col-md-12">
    <div class="form-group">
        <button type="button" class="Alert-Save3  btn w-lg btn-success btn-border">
            Save/Next
        </button>
        <a href="TeacherFillReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
    </div>
</div>
            </div>
            <div runat="server" id="fieldset4" style="display: none">

                <%--         <fieldset>--%>
                <h4 class="fw-bold mb-5">Role in academic and Extra Curriculum activities
                    <br />
                    अकादमिक एवं पाठ्येत्तर गतिविधियों मे भूमिका<br />
                </h4>
           <%--     <span class="fw-bold">कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्य का विवरण दे:-</span>--%>
                <fieldset>
                    <legend>Role in academic/ 
                      
                        अकादमिक कार्यो में भूमिका</legend>
                    <%--  <div class="row ">
                        <div class="col-md-4">
                            <label>
                                Use of  teaching  learning aid
                                <br />
                                शिक्षक सहायक सामग्री का उपयोग 
                            </label>
                            <asp:TextBox runat="server" ID="txtteaching" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Use of  lesson plan<br />
                                पाठ्य योजना का उपयोग  
                            </label>
                            <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Innovation and impect<br />
                                नवाचार तथा उसका प्रभाव  
                            </label>
                            <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>


                    <div class="row mt-3">
                        <div class="col-md-4">
                            <label>
                                Checking of notebook's of students<br />
                                छात्रों की अभ्यास पुस्तिका की जांच 
                            </label>
                            <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Remedial teaching
                                <br />
                                निदात्मक शिक्षण
                            </label>
                            <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control "></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Extra Classes<br />
                                अतिरिक्त कक्षा संचालन
                            </label>
                            <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control "></asp:TextBox>
                        </div>
                    </div>--%>
                    <table class="table table-bordered mt-3">
                        <thead>
                            <tr>

                                <th>S.No.<br />
                                    सरल क्र.</th>
                                <th>Role in academic<br />

                                    अकादमिक कार्यो में भूमिका</th>
                                <th>Please give details of the notable works done on the following points<br />
                                    कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                            </tr>
                        </thead>
                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">1</td>
                            <td>Use of  teaching  learning aid
  <br />
                                शिक्षक सहायक सामग्री का उपयोग 
                            </td>
                            <td>
                                <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                        </tr>
                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">2</td>
                            <td>Use of  lesson plan<br />
                                पाठ्य योजना का उपयोग 
                            </td>
                            <td>
                                <textarea class="form-control " rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                        </tr>

                        <tr>

                            <td class="text-center" style="position: relative; top: 10px">3</td>
                            <td>Innovation and impect<br />
                                नवाचार तथा उसका प्रभाव  
                            </td>
                            <td>
                                <textarea class="form-control " rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                        </tr>



                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">4</td>
                            <td>Checking of notebook's of students<br />
                                छात्रों की अभ्यास पुस्तिका की जांच 
                            </td>
                            <td>
                                <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                        </tr>
                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">5</td>
                            <td>Remedial teaching
   <br />
                                निदात्मक शिक्षण
                            </td>
                            <td>
                                <textarea class="form-control " rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                        </tr>

                        <tr>

                            <td class="text-center" style="position: relative; top: 10px">6</td>
                            <td>Extra Classes<br />
                                अतिरिक्त कक्षा संचालन
                            </td>
                            <td>
                                <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                        </tr>



                    </table>


                </fieldset>
                <br />


                <fieldset>
                    <legend>Extraacurricular Activities / पाठ्येत्तर गतिविधियों मे भूमिका </legend>

                    <%-- <div class="row mt-3">
                        <div class="col-md-4">
                            <label>
                                Sports/Literary/Cultural Activities
                                <br />
                                खेल/साहित्यिक/सांस्कृतिक गतिविधियाँ 
                            </label>
                            <asp:TextBox runat="server" ID="TextBox6" CssClass="form-control "></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Extra Ordinary Work in Hygiene/Environment
                                <br />
                                स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य</label>
                            <asp:TextBox runat="server" ID="TextBox7" CssClass="form-control "></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Use of ICT in teaching and learning<br />
                                शिक्षण एवं सिखने में आई सी टी का उपयोग</label>
                            <asp:TextBox runat="server" ID="TextBox8" CssClass="form-control "></asp:TextBox>
                        </div>
                    </div>--%>
                    <table class="table table-bordered mt-3">
                        <thead>
                            <tr>

                                <th>S.No.<br />
                                    सरल क्र.</th>
                                <th>Extraacurricular Activities
                                    <br />
                                    पाठ्येत्तर गतिविधियों मे भूमिका
                                    <br />

                                    अकादमिक कार्यो में भूमिका</th>
                                <th>Please give details of the notable works done on the following points<br />
                                    कृपया निम्नानुसार बिन्दुओ पर किए गए उल्लखनीय कार्यो का विवरण दे</th>

                            </tr>
                        </thead>
                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">1</td>
                            <td>Sports/Literary/Cultural Activities
  <br />
                                खेल/साहित्यिक/सांस्कृतिक गतिविधियाँ 
                            </td>
                            <td>
                                <textarea class="form-control" rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                        </tr>
                        <tr>
                            <td class="text-center" style="position: relative; top: 10px">2</td>
                            <td>Extra Ordinary Work in Hygiene/Environment
 <br />
                                स्वच्छता/पर्यावरण के क्षेत्र में किया गया कार्य
                            </td>
                            <td>
                                <textarea class="form-control " rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>


                        </tr>

                        <tr>

                            <td class="text-center" style="position: relative; top: 10px">3</td>
                            <td>Use of ICT in teaching and learning<br />
                                शिक्षण एवं सिखने में आई सी टी का उपयोग
                            </td>
                            <td>
                                <textarea class="form-control " rows="1" oninput="autoResize(this)" autocomplete="off"></textarea></td>
                        </tr>
                    </table>


                </fieldset>
                <br />
                <div>
                    <fieldset>
                        <legend>Academic trsining attended during  Appraisal period / प्रतिवेदित अवधि मे प्रशिक्षण मे  सहभागिता</legend>

                        <div class="row">
                            <div class="col-md-12">
                                <table id="Table4" class="table table-bordered table-responsive-lg text-center " runat="server">
                                    <thead>
                                        <tr valign="middle" style="background-color: #1B5B5C;" class="text-white">
                                            <th>S.No./<br />
                                                सरल.क्र</th>
                                            <th>Name of Training/<br />
                                                प्रशिक्षण का नाम</th>
                                            <%--<th>Subject/<br />
                                                विषय</th>--%>
                                            <th>Period of Training (Days)/<br />
                                                प्रशिक्षण की अवधि (दिन में)</th>
                                            <th>Result/Grade<br />
                                                उपलब्धि/ग्रेड</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr valign="middle">
                                            <td>1</td>
                                            <td>
                                                <asp:TextBox runat="server" ID="D1" CssClass="form-control"></asp:TextBox></td>
                                            <td>
                                                <asp:TextBox runat="server" ID="D2" CssClass="form-control"></asp:TextBox></td>
                                            <%-- <td>
                                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox></td>--%>
                                            <td>
                                                <asp:TextBox runat="server" ID="D3" CssClass="form-control"></asp:TextBox></td>
                                            <td id="btnaction5">

                                                <button type="button" onclick="addData5()" class="btn btn-success">Add</button></td>


                                        </tr>
                                    </tbody>

                                </table>
                            </div>
                        </div>

                        <label><span class="fa-pull-left" style="color: red; font-size: 15px; position: relative; bottom: 3px;">Note:-</span> * यदि प्रशिक्षण  में किये गये मूल्यांकन में ग्रेड प्राप्त  हुआ है, तो उल्लेखित किया जाए है|</label>
                    </fieldset>
                </div>
                <br />
                <fieldset>
                    <legend>Any Other Work Which You Want to Mention as an Outstanding Contribution / कोई अन्य कार्य जिसे आप एक उत्कृष्ट योगदान के रूप में उल्लेख करना चाहते है|</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <label>
                            </label>
                            <textarea class="form-control mb-2" id="workdescription2" rows="1" oninput="autoResize(this)" autocomplete="off" placeholder="Enter  Other Work Outstanding Contribution in Maxmum 100 words"></textarea>
                        </div>
                    </div>

                </fieldset>
            <%--    <div class="row justify-content-center">
                    <div class="col-md-3 text-center mt-3" style="position: relative; top: 20px;">
                        <div class="form-group">
                            <%-- <button type="button" class="btn btn-success btn-rounded " data-toggle="modal" data-target="#myModal">
                                Send to Officer

                            </button>

                            <button type="button" class="btn btn-success btn-rounded" data-bs-toggle="modal" data-bs-target="#exampleModal">Save  </button>
                            <a href="TeacherFillReport.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>
                </div>--%>
                <hr /><div class="col-md-12">
    <div class="form-group">
        <button type="button" class="  btn w-lg btn-success btn-border"  data-bs-toggle="modal" data-bs-target="#exampleModal">
            Save
        </button>
        <a href="TeacherFillReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
    </div>
</div>
            </div>
        </div>
    </div>

    <div class="modal  fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">

                    <img src="../dist/images/Emblem_of_Madhya_Pradesh.svg.png" style="width: 90px; height: auto; background: none" class="responsive" />

                    <h3 class="modal-title  fw-bold  text-white ms-3">Send To Reporting Officer</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Send To Reporting Officer / रिपोर्टिंग अधिकारी को भेजें </legend>
                        <div class="row">
                            <div class="col-md-4">
                                <label>
                                    Reporting Officer Unique ID 
                                 <br />
                                    रिपोर्टिंग अधिकारी यूनिक आईडी<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" AutoComplete="off" CssClass="form-control" onchange="myFunction()"></asp:TextBox>

                            </div>

                            <div class="col-md-4" style="display: none;" id="OfficerName">
                                <label>
                                    Reporting Officer Name
                                 <br />
                                    रिपोर्टिंग अधिकारी का नाम <span style="color: red">*</span></label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="Dilip Raghuwanshi"></asp:TextBox>

                            </div>

                            <div class="col-md-4" style="display: none;" id="SankulCode">
                                <label>
                                    Reporting Officer Sankul Code<br />
                                    रिपोर्टिंग अधिकारी संकुल कोड</label>
                                <asp:TextBox runat="server" CssClass="form-control" placeholder="GOVT. HSS SHYAMPUR-23010804504"></asp:TextBox>
                            </div>
                        </div>
                    </fieldset>
                    <hr />
                   <%-- <div class="modal-footer justify-content-center">
                        <div style="display: none;" id="btn1">
                            <button type="button" class="btn btn-success Alert-Save btn-rounded">Send To Officer</button>
                            <a href="ReportingOfficerFill.aspx" class="btn btn-danger btn-rounded">Clear</a>
                        </div>
                    </div>--%>
                    <div class="modal-footer">
                        <div style="display: none;" id="btn1">
                   <div class="col-md-12">
    <div class="form-group">
        <button type="button" class="Alert-Save btn w-lg btn-success btn-border">
           Send To Officer
        </button>
        <a href="TeacherFillReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
    </div>
</div></div></div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            document.getElementById('OfficerName').style.display = "block";
            document.getElementById('SankulCode').style.display = "block";
            document.getElementById('btn1').style.display = "block";


            //var x = document.getElementById("mySelect").value;
            //document.getElementById("demo").innerHTML = "You selected: " + x;
        }
    </script>
    <%--<script>
        document.getElementById('<%=btnaction.ClientID%>').style.display = "table-cell";


        function myaddbtn() {
            var ForwordTo = document.getElementById("ddlClass").value;
            if (ForwordTo != "0") {
                document.getElementById('<%=action.ClientID%>').style.display = "table-cell";

                document.getElementById('<%=btnaction.ClientID%>').style.display = "table-cell";
            }
        }

    </script>--%>
    <script>
        function myaddbtn() {
            var ForwordTo = document.getElementById("ddlClass").value;

            // Check if the selected value is not "0"
            if (ForwordTo !== "0") {
                // Display the elements with IDs 'action' and 'btnaction'
                var actionElement = document.getElementById('<%= action.ClientID %>');
                var btnactionElement = document.getElementById('<%= btnaction.ClientID %>');

                if (actionElement) {
                    actionElement.style.display = "table-cell";
                }

                if (btnactionElement) {
                    btnactionElement.style.display = "table-cell";
                }
            }
        }
    </script>

    <script>


        function myaddbtn1() {
            var ForwordTo = document.getElementById("ddlClass2").value;
            if (ForwordTo != "0") {
                document.getElementById('<%=action2.ClientID%>').style.display = "table-cell";

                document.getElementById('<%=btnaction2.ClientID%>').style = "display:table-cell";
            }
        }
    </script>
    <script>function myaddbtn2() {
            var ForwordTo = document.getElementById("ddlClass3").value;
            if (ForwordTo != "0") {
                document.getElementById('<%=action3.ClientID%>').style.display = "table-cell";

                document.getElementById('<%=btnaction3.ClientID%>').style = "display:table-cell";
    }
}</script>
    <script>
        debugger
        function
            addData() {
        // Get input values
        // Check if the maximum number of rows (5) has been reached
          <%--  let table = document.getElementById("<%= Table1.ClientID %>");
            if (table.rows.length - 3 >= 12) {
                alert("Maximum 5 rows allowed.");
                return; // Exit the function if the maximum limit is reached
            }--%>

            // Get input values
            let name = document.getElementById("ddlClass").value;
            let email = document.getElementById("a1").value;
            let mobile = document.getElementById("a2").value;
            let address = document.getElementById("a3").value;
            let Remark = document.getElementById("workdescription3").value;

            // Get the table and insert a new row at the end
            let table = document.getElementById("<%= Table1.ClientID %>");
            let newRow = table.insertRow(table.rows.length);
            if (table.rows.length - 3 >= 13) {
                alert("Maximum 12 rows allowed.");
                return; // Exit the function if the maximum limit is reached
            }

            // Insert data into cells of the new row
            newRow.insertCell(0).innerHTML = table.rows.length - 3;
            newRow.insertCell(1).innerHTML = name;
            newRow.insertCell(2).innerHTML = email;
            newRow.insertCell(3).innerHTML = mobile;
            newRow.insertCell(4).innerHTML = address;
            newRow.insertCell(5).innerHTML = Remark;

            clearInputs();
        }
        function clearInputs() {
            debugger;
            // Clear input fields
            //document.getElementById("ddlClass").Items.Insert(0, new ListItem("--Select--", "0"));
            document.getElementById("ddlClass").selectedIndex = 0;
            $('#ddlClass').trigger('change');
            document.getElementById("a1").value = "";
            document.getElementById("a2").value = "";
            document.getElementById("a3").value = "";
            document.getElementById("workdescription3").value = "";
        }
    </script>


    <script>
        function addData5() {
            // Get input values
            let email = document.getElementById('<%=D1.ClientID%>').value;
            let mobile = document.getElementById('<%=D2.ClientID%>').value;
            let PreviousGradea = document.getElementById('<%=D3.ClientID%>').value;
            //let PreviousGradeab = document.getElementById("D4").value;
            //let PreviousGradec = document.getElementById("D5").value;

            // Get the table reference
            let table = document.getElementById('<%=Table4.ClientID%>'); // Assuming "Table4" is the ID of your table element

            // Check if the maximum number of rows (5) has been reached
            if (table.rows.length - 1 > 5) {
                alert("Maximum 5 rows allowed.");
                return; // Exit the function if the maximum limit is reached
            }

            // Insert a new row at the end
            let newRow = table.insertRow(table.rows.length);

            // Insert data into cells of the new row
            let cellIndex = newRow.insertCell(0);
            cellIndex.innerHTML = table.rows.length - 2; // Adjust based on your table structure

            newRow.insertCell(1).innerHTML = email;
            newRow.insertCell(2).innerHTML = mobile;
            newRow.insertCell(3).innerHTML = PreviousGradea;
            //newRow.insertCell(4).innerHTML = PreviousGradeab;
            //newRow.insertCell(5).innerHTML = PreviousGradec;

            clearInputs5();
        }

        function clearInputs5() {
            // Clear input fields
            document.getElementById('<%=D1.ClientID%>').value = "";
            document.getElementById('<%=D2.ClientID%>').value = "";
            document.getElementById('<%=D3.ClientID%>').value = "";

            // You may choose to clear more input fields if needed
        }

        // Adding event listener to a button with id "addButton"
    ////////document.getElementById('<%=btnaction5.ClientID%>').addEventListener("click", addData5);
    </script>

    <script>
        function addData1() {
            // Get input values
            let name = document.getElementById("ddlClass2").value;
            let subject = document.getElementById("b1").value;
            let mobile = document.getElementById("b2").value;
            let address = document.getElementById("b3").value;



            // Get the table and insert a new row at the end
            let table = document.getElementById("<%= Table2.ClientID %>");
            let newRow = table.insertRow(table.rows.length);
            if (table.rows.length - 1 >= 13) {
                alert("Maximum 12 rows allowed.");
                return; // Exit the function if the maximum limit is reached
            }


            // Insert data into cells of the new row
            newRow.insertCell(0).innerHTML = table.rows.length - 2;
            newRow.insertCell(1).innerHTML = name;
            newRow.insertCell(2).innerHTML = subject;
            newRow.insertCell(3).innerHTML = '100%';
            newRow.insertCell(4).innerHTML = address;

            clearInputs1();
        }



        function clearInputs1() {
            debugger;
            // Clear input fields
            //document.getElementById("ddlClass").Items.Insert(0, new ListItem("--Select--", "0"));
            document.getElementById("ddlClass2").selectedIndex = 0;
            $('#ddlClass2').trigger('change');
            document.getElementById("b1").value = "";
            document.getElementById("b2").value = "";
            document.getElementById("b3").value = "";

        }


    </script>

    <script>
        /* debugger*/
        function
            addData2() {
            // Get input values
            let name = document.getElementById("ddlClass3").value;
            let email = document.getElementById("c1").value;
            let mobile = document.getElementById("c2").value;
            let PreviousGradea = document.getElementById("c3").value;
            let PreviousGradeab = document.getElementById("c4").value;
            let PreviousGradec = document.getElementById("c5").value;
            let PreviousGraded = document.getElementById("c6").value;
            let PreviousGradee = document.getElementById("c7").value;
            let Gradea = document.getElementById("c8").value;
            let Gradeb = document.getElementById("c9").value;
            let Gradec = document.getElementById("c10").value;
            let Graded = document.getElementById("c11").value;
            let Gradee = document.getElementById("c12").value;

            // Get the table and insert a new row at the end
            let table = document.getElementById("<%= Table3.ClientID %>");
           <%--   let table = document.getElementById("<%= Table3.ClientID %>");--%>
            let newRow = table.insertRow(table.rows.length);
            if (table.rows.length - 3 >= 13) {
                alert("Maximum 12 rows allowed.");
                return; // Exit the function if the maximum limit is reached
            }


            // Insert data into cells of the new row
            newRow.insertCell(0).innerHTML = table.rows.length - 3;
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


            clearInputs3();
        }
        function clearInputs3() {
            debugger;
            // Clear input fields
            //document.getElementById("ddlClass").Items.Insert(0, new ListItem("--Select--", "0"));
            document.getElementById("ddlClass3").selectedIndex = 0;
            $('#ddlClass3').trigger('change');
            //document.getElementById("a1").value = "";
            //document.getElementById("a2").value = "";
            //document.getElementById("a3").value = "";
            //document.getElementById("workdescription3").value = "";


            let email = document.getElementById("c1").value = "";
            let mobile = document.getElementById("c2").value = "";
            let PreviousGradea = document.getElementById("c3").value = "";
            let PreviousGradeab = document.getElementById("c4").value = "";
            let PreviousGradec = document.getElementById("c5").value = "";
            let PreviousGraded = document.getElementById("c6").value = "";
            let PreviousGradee = document.getElementById("c7").value = "";
            let Gradea = document.getElementById("c8").value = "";
            let Gradeb = document.getElementById("c9").value = "";
            let Gradec = document.getElementById("c10").value = "";
            let Graded = document.getElementById("c11").value = "";
            let Gradee = document.getElementById("c12").value = "";

        }
    </script>


    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Send this record ?",
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
                                timer: 2000,

                                // animation: false,<a href="">TeacherFillReport.aspx</a>
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            ).then(() => {
                                // Redirect to another page after success message is closed
                                window.location.href = 'TeacherFillReport.aspx';
                            });
                            var x = document.getElementById("EmployeeDetails2");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
                    })
                }),
                    $('.Alert-Save1').click(function () {
                        Swal.fire({
                            title: 'Are you sure?',
                            text: "Do you want to proceed further ?",
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
                                    text: 'Record proceed Successfully!',
                                    timer: 2000
                                    // animation: false,
                                    // customClass: {
                                    //     popup: 'animated tada'
                                    // }

                                })
                                document.getElementById('<%= fieldset2.ClientID %>').style.display = "block";
                                document.getElementById('<%= fieldset3.ClientID %>').style.display = "none";
                                document.getElementById('<%= fieldset4.ClientID %>').style.display = "none";
                                document.getElementById('<%= Fieldset1.ClientID %>').style.display = "none";

                            }
                        })
                    }),
                    $('.Alert-Save2').click(function () {
                        Swal.fire({
                            title: 'Are you sure?',
                            text: "Do you want to proceed further ?",
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
                                    text: 'Record proceed Successfully!',
                                    timer: 2000
                                    // animation: false,
                                    // customClass: {
                                    //     popup: 'animated tada'
                                    // }

                                })
                                document.getElementById('<%= fieldset2.ClientID %>').style.display = "none";
                                document.getElementById('<%= fieldset3.ClientID %>').style.display = "block";
                                document.getElementById('<%= fieldset4.ClientID %>').style.display = "none";
                                document.getElementById('<%= Fieldset1.ClientID %>').style.display = "none";

                            }
                        })
                    }), $('.Alert-Save3').click(function () {
                        Swal.fire({
                            title: 'Are you sure?',
                            text: "Do you want to proceed further ?",
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
                                    text: 'Record proceed Successfully!',
                                    timer: 2000
                                    // animation: false,
                                    // customClass: {
                                    //     popup: 'animated tada'
                                    // }

                                })
                                document.getElementById('<%= fieldset2.ClientID %>').style.display = "none";
                                document.getElementById('<%= fieldset3.ClientID %>').style.display = "none";
                                document.getElementById('<%= fieldset4.ClientID %>').style.display = "block";
                                document.getElementById('<%= Fieldset1.ClientID %>').style.display = "none";

                            }
                        })
                    })


            };
            //init
            $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);
    </script>
    <script>function autoResize(textarea) {
            textarea.style.height = 'auto'; // Reset height to auto
            textarea.style.height = (textarea.scrollHeight) + 'px'; // Set the height to the scroll height
        }</script>
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });
        $('.datepickerYear2').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear2").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                //setDefaultFinancialYear();
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
            var financialYear = currentYear + '-' + (nextYear);
            $(".datepickerYear").val(financialYear);
        }
        // Set default value to current financial year on page load
        $(document).ready(function () {
            //setDefaultFinancialYear();
        });</script>

    <%--btn back--%>


    <script>  function Backclickfn() {
                var fieldset1 = document.getElementById('<%= Fieldset1.ClientID %>');
                var fieldset2 = document.getElementById('<%= fieldset2.ClientID %>');
                var fieldset3 = document.getElementById('<%= fieldset3.ClientID %>');
                var fieldset4 = document.getElementById('<%= fieldset4.ClientID %>');

      if (fieldset4.style.display === 'block') {
          fieldset4.style.display = 'none';
          fieldset3.style.display = 'block';
      } else if (fieldset3.style.display === 'block') {
          fieldset3.style.display = 'none';
          fieldset2.style.display = 'block';
      } else if (fieldset2.style.display === 'block') {
          fieldset2.style.display = 'none';
          fieldset1.style.display = 'block';
      } else {

          window.location.href = 'ConfedicialReport.aspx';
      }

      }

    </script>
</asp:Content>

