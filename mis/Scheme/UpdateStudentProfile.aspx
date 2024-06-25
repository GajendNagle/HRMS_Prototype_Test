<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="UpdateStudentProfile.aspx.cs" Inherits="mis_Scheme_UpdateStudentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .modal-dialog {
            max-width: 675px;
            margin: 1.75rem auto;
        }

        .modal-content {
            width: 159%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <%--<div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Update Student Profile</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=StudentProfileMgmt" title="click to go on">Student Profile Management</a></li>
                    <li class="breadcrumb-item active">Update Student Profile</li>
                </ol>
            </div>
        </div>
    </div>--%>

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
                            <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#StudentProfileMgmt" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('SchemeManagement')">
                                <span>Student Profile Management</span></a>
                        </li>
                        <li class="breadcrumb-item">Update Student Profile for Scholarships</li>
                        <li class="breadcrumb-item">Update Student Profile</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">Update Student Profile /
                        छात्र प्रोफ़ाइल अपडेट करें</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center">
                        <h5 class="page-title">: : Update Student Profile : :</h5>
                    </div>
                </div>
            </div>

            <fieldset>
                <legend>student details / छात्र विवरण</legend>
                <div class="row justify-content-center">
                    <div class="col-lg-2">
                        <div>
                            <div class="card-header bg-transparent text-center">
                                <img class="profile_img" src="../dist/images/avatar-13.png" alt="">
                            </div>
                            <h4 style="font-weight: bold; text-align: center; color: maroon !important;" class="text-uppercase text-gray-silver">Rounak Nath</h4>

                        </div>
                    </div>
                    <div class="col-lg-10">

                        <table class="table table-bordered table-custom">

                            <tbody>
                                <tr>
                                    <th>9 digit student ID.<br />
                                        9 अंको का स्टूडेंट आई डी. :</th>
                                    <td>196496693</td>
                                    <th>परिवार  आई डी
                                        <br />
                                        Family ID:</th>
                                    <td>26123832</td>
                                </tr>
                                <tr>
                                    <th>full name of student<br />
                                        विद्यार्थी का पूरा नाम :</th>
                                    <td>Rounak Nath</td>
                                    <th>DOB<br />
                                        जन्मतिथि :</th>
                                    <td>01/01/2015</td>
                                </tr>
                                <tr>
                                    <th>Gender<br />
                                        लिंग :</th>
                                    <td>
                                        <select class="form-control form-select select2" disabled="disabled">
                                            <option>--Select--</option>
                                            <option>01 Male</option>
                                            <option selected="selected">02 Female</option>
                                            <option>03 Transgender</option>
                                        </select>
                                    </td>
                                    <th>Name of the settlement in which the student resides<br />
                                        बसाहट का नाम जिसमे छात्र निवास करता है :</th>
                                    <td>
                                        <select class="form-control form-select select2" disabled="disabled">
                                            <option>--Select--</option>
                                            <option selected>Beelkha</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>


            </fieldset>
            <fieldset>
                <legend>Family details / पारिवारिक विवरण</legend>
                <table class="table table-bordered table-custom">
                    <tbody>
                        <tr>
                            <th>Is the student an orphan<br />
                                क्या विद्यार्थी अनाथ है:</th>
                            <td>
                                <asp:RadioButtonList runat="server" CssClass="rblResult" RepeatDirection="Horizontal">
                                    <asp:ListItem>हाँ</asp:ListItem>
                                    <asp:ListItem>नही</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                        </tr>
                        <tr>
                            <th>Father's full name<br />
                                पिता का पूरा नाम:</th>
                            <td>
                                <input type="text" class="form-control" value="Ramesh Singh" disabled="disabled" /></td>

                            <th>Is the father from heaven<br />
                                क्या पिता स्वर्गवासी है :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option>हाँ</option>
                                    <option>नहीं</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>father's business<br />
                                पिता का  व्यवसाय :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option>कृषक</option>
                                    <option>मजदुर</option>
                                    <option>सरकारी कर्मचारी</option>
                                    <option>प्राइवेट कर्मचारी</option>
                                    <option>व्यवसायी</option>
                                    <option selected="selected">अस्वच्छ धंधा </option>
                                </select>
                            </td>

                            <th>Type Of Unclean Occupation<br />
                                अस्वच्छ धंधे का प्रकार :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option>Tanners And Flyers</option>
                                    <option selected>Person Who Are Manual Scavengers</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Mother's Name<br />
                                माता का नाम :</th>
                            <td>
                                <input type="text" class="form-control" value="Bati Bai" disabled="disabled" /></td>

                        </tr>
                        <tr>
                            <th>Mother's Business<br />
                                माता का व्यवसाय :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option>गृहणी</option>
                                    <option>कृषक</option>
                                    <option>मजदुर</option>
                                    <option>सरकारी कर्मचारी</option>
                                    <option>प्राइवेट कर्मचारी</option>
                                    <option>व्यवसायी</option>
                                    <option selected="selected">अस्वच्छ धंधा </option>
                                </select>
                            </td>

                            <th>Type Of Unclean Occupation<br />
                                अस्वच्छ धंधे का प्रकार :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option selected>Tanners And Flyers</option>
                                    <option>Person Who Are Manual Scavengers</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Annual Family Income<br />
                                परिवार की वार्षिक आय :</th>
                            <td>
                                <input type="text" class="form-control" value="" /></td>

                            <th>Religion<br />
                                धर्म :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option selected>Hindu</option>
                                    <option>Muslim</option>
                                    <option>Sikh</option>
                                    <option>Christian</option>
                                    <option>Other</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Caste<br />
                                जाति :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option>01 SC</option>
                                    <option selected>02 ST</option>
                                    <option>03 OBC</option>
                                    <option>04 Gen</option>
                                </select>
                            </td>
                            <th>Sub Caste<br />
                                उपजाति :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option selected="selected">बैगा</option>
                                    <option>घुम्मकड़</option>
                                    <option>अर्ध-घुम्मकड़</option>
                                    <option>विमुक्त</option>
                                    <option>गोंड</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Digital Caste Certificate Number (provided by Lok Seva Kendra)<br />
                                डिजिटल जाति प्रमाणपत्र संख्या (लोक सेवा केंद्र द्वारा प्रदय) :</th>
                            <td>
                                <input type="text" class="form-control" value="" placeholder="Digital Cast Certificate Number" /></td>
                            <th>Is it a liberated/nomadic/semi-nomadic caste?<br />
                                क्या विमुक्त /घुमक्कड़/अर्ध-घुमक्कड़ जाति है :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option>हाँ</option>
                                    <option>नहीं</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>how many brothers/sisters do you have<br />
                                कितने भाई/ बहन है :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option>-- 0 --</option>
                                    <option>-- 1 --</option>
                                    <option>-- 2 --</option>
                                    <option>-- 3 --</option>
                                    <option>-- 4 --</option>
                                    <option>-- 5+ --</option>
                                </select>
                            </td>
                            <th>Is the father or guardian an income tax payer or owns more than 10 acres of land? (Is proof attached?)<br />
                                क्या पिता या पालक आयकर दाता है अथवा 10 एकड़ से अधिक भूमि है ?(प्रमाण सलग्न है?) :</th>
                            <td>
                                <asp:RadioButtonList runat="server" CssClass="rblResult" RepeatDirection="Horizontal">
                                    <asp:ListItem>हाँ</asp:ListItem>
                                    <asp:ListItem>नही</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <th>Are only two students from the family taking scholarship? (certificate attached?)<br />
                                क्या परिवार से केवल दो ही छात्रो द्वारा छात्रवृति ली जा रही है ?(प्रमाण पत्र सलग्न है?) :</th>
                            <td>
                                <asp:RadioButtonList runat="server" CssClass="rblResult" RepeatDirection="Horizontal">
                                    <asp:ListItem>हाँ</asp:ListItem>
                                    <asp:ListItem>नही</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                        </tr>
                        <tr>
                            <th>Is the family BPL? Are you a cardholder?<br />
                                क्या परिवार बी.पी.एल. कार्डधारी है? :</th>
                            <td>
                                <label>हाँ</label>
                            </td>

                            <th>Is the student homeless?<br />
                                विद्यार्थी बेघर है? :</th>
                            <td>
                                <select class="form-control form-select select2">
                                    <option>--Select--</option>
                                    <option selected>1 With Parent/ Guardian</option>
                                </select>
                            </td>

                        </tr>
                        <tr>
                            <th>Mobile number of student/parent/guardian<br />
                                विद्यार्थी/ पालक/ अभिभावक का मोबाइल नंबर :</th>
                            <td>
                                <input type="text" class="form-control" value="" /></td>

                            <th>Email ID of student/parent/guardian<br />
                                विद्यार्थी/ पालक/ अभिभावक की ईमेल आई डी :</th>
                            <td>
                                <input type="text" class="form-control" value="" /></td>

                        </tr>

                    </tbody>
                </table>
            </fieldset>
            <fieldset>
                <legend>School Details /
                    स्कूल विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>Current Class<br />
                                        वर्तमान कक्षा :</th>
                                    <td>
                                        <label>9</label>
                                    </td>
                                    <th>Admission date in current class<br />
                                        वर्तमान कक्षा में प्रवेश दिनांक :</th>
                                    <td>
                                        <label>08/07/2023</label></td>

                                </tr>
                                <tr>
                                    <th>Date Of Entry Into Class<br />
                                        कक्षा में प्रवेश की तिथि (DD/MM/YYYY):</th>
                                    <td>
                                        <label></label>
                                    </td>
                                    <th>Last year's class<br />
                                        गत वर्ष की कक्षा :</th>
                                    <td>
                                        <label>8</label>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Name of last class's institution<br />
                                        गत कक्षा की संस्था का नाम :</th>
                                    <td>
                                        <input type="text" class="form-control" value="" /></td>
                                    <th>Student Status<br />
                                        विद्यार्थी की स्थिति :</th>
                                    <td>
                                        <select class="form-control form-select select2">
                                            <option>--Select--</option>
                                            <option>01 Continue in the Same School</option>
                                            <option>02 Continue in the Another School</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Attendance Report / उपस्थिति विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>Last year student attendance day<br />
                                        गत वर्ष के विद्यार्थी की उपस्थिति दिवस :</th>
                                    <td>
                                        <input type="text" class="form-control" value="" /></td>
                                    <th>Working days in the current academic year<br />
                                        वर्तमान शैक्षणिक वर्ष में कार्य दिवस :</th>
                                    <td>
                                        <input type="text" class="form-control" value="" /></td>
                                </tr>
                                <tr>
                                    <th>Attendance day in the current academic year<br />
                                        वर्तमान शैक्षणिक वर्ष में उपस्थिति दिवस :</th>
                                    <td>
                                        <input type="text" class="form-control" value="" /></td>
                                    <th>Attendance percentage<br />
                                        उपस्थिति प्रतिशत :</th>
                                    <td>
                                        <label>82.00</label></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Academic Details / शैक्षणिक विवरण </legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>Year of last class examination<br />
                                        गत कक्षा की परीक्षा का वर्ष :</th>
                                    <td>
                                        <select class="form-control form-select select2">
                                            <option>--Select--</option>
                                            <option selected>2023-24</option>
                                            <option>2022-23</option>
                                            <option>2021-22</option>
                                        </select>
                                    </td>
                                    <th>Last annual result<br />
                                        गत वार्षिक परिणाम :</th>
                                    <td>
                                        <select class="form-control form-select select2">
                                            <option>--Select--</option>
                                            <option>हाँ</option>
                                            <option>नहीं</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Passing percentage<br />
                                        उत्तीर्ण प्रतिशत :</th>
                                    <td>
                                        <input type="text" class="form-control" value="" /></td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>PWD Details / पीडब्ल्यूडी विवरण </legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>Type Of Disability<BR />नि:शक्तता का प्रकार :</th>
                                    <td>
                                        <select class="form-control form-select select2">
                                            <option>--Select--</option>
                                            <option>01 Locomotor Disability </option>
                                            <option>02 Visual Impairment</option>
                                            <option>03 Hearing Impairment</option>
                                            <option>04 Intellectual Disability</option>
                                            <option>05 Mental Behaviour (Mental Illness)</option>
                                            <option>06 Multiple Disabilities</option>
                                        </select>
                                    </td>
                                    <th>Percentage of disability (%)<br />नि:शक्तता  का  प्रतिशत (%) :</th>
                                    <td>
                                        <input type="text" class="form-control" value="" /></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Bank Details / बैंक विवरण</legend>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-bordered table-custom">
                            <tbody>
                                <tr>
                                    <th>Bank Account Number<br />बैंक खाता क्रमांक : </th>
                                    <td>
                                        <label>6367120000055</label>
                                        <span><a href="#" style="color: red; font-weight: 900">बैंक खाता क्रमांक एवं बैंक का आई.एफ.एस. कोड  अपडेट करने के लिए यहाँ क्लिक करें</a></span>
                                    </td>
                                    <th> I.F. S. code<br />बैंक का आई. एफ. एस. कोड :</th>
                                    <td>
                                        <label>CNRB0006367</label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </fieldset>

            <div class="row justify-content-center">
                <div class="col-lg-3 text-center">
                    <img src="../../img/captcha.png" width="150" />
                </div>
                <div class="col-lg-12"></div>
                <div class="col-lg-4 text-center">
                    <label class="font-bold">Please enter the code shown above</label>
                </div>
                <div class="col-lg-12"></div>

                <div class="col-lg-2  text-center">
                    <div class="form-group">
                        <input type="text" class="form-control text-center" />
                    </div>
                </div>
                <hr />
                <div class="col-md-12">
                    <button type="button" class="btn btn-success btn-border w-lg" onclick="ShowSchemePopup()">Submit</button>
                    <%--<asp:Button runat="server" ID="btnDraftSave" CssClass="btn btn-success btn-rounded" Text="Draft Save"  />
                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-success btn-rounded" Text="Submit" />--%>
                    <a href="UpdateStudentProfile.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                </div>


            </div>
        </div>
    </div>
    <div class="modal" tabindex="-1" role="dialog" id="SchemeModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">छात्रवृत्ति योजनाएं</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <table class="table table-responsive table-bordered">
                                <thead>
                                    <tr>
                                        <th>योजना क्रमांक</th>
                                        <th>योजना का नाम</th>
                                        <th>राशि </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>A-1</td>
                                        <td>सामान्य निर्धन वर्ग छात्रवृत्ति (कक्षा 6से 8) (केवल शास. विद्या. के लिये</td>
                                        <td>400</td>
                                    </tr>
                                    <tr>
                                        <td>B-1</td>
                                        <td>सुदामा प्री-मेट्रिक छात्रवृत्ति योजना (कक्षा 9वीं से 10वीं) (केवल शास विद्या. के लिये)</td>
                                        <td>800</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="printableArea" class="col-md-6">
                            <%--<img style="height: 200px;" src="../dist/images/login/ID%20Card.png" />--%>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-responsive table-bordered">
                                        <thead>
                                            <tr style="background-color: #20b0e0 !important; border-style: hidden;">
                                                <%--<th style="border-style: hidden; padding: 0rem;">
                                                    <img src="../dist/images/LOGO.jpg" style="width: 50px; height: 50px;" /></th>--%>
                                                <th colspan="5" style="padding: 6px;" class="text-center">
                                                    <div class="row">
                                                        <div class="col-md-1 justify-content-center">
                                                            <img src="../dist/images/LOGO.jpg" style="width: 60px; height: 60px;" />
                                                        </div>
                                                        <div class="col-md-11 justify-content-center">
                                                            Maharshi Vishwavidyalaya Bhopal MP<br />
                                                            <label style="margin-bottom: 0rem;">Identity Card</label>
                                                            <br />
                                                            1920-2021
                                                        </div>
                                                    </div>
                                                </th>
                                            </tr>
                                            <%--    <tr style="background-color: #d7dee0 !important; color: black; border-style: hidden;">
                                                <th style="padding: 0rem !important;" colspan="4" class="text-center">
                                                    <label style="margin-bottom: 0rem;">Identity Card</label><br />
                                                    1920-2021</th>
                                             
                                                <td rowspan="3" colspan="2" style="padding: 0rem !important; text-align: center; background-color: white !important;">
                                                    <img src="../dist/images/avatar-13.png" style="width: 97px; height: 90px;" /></td>
                                            </tr>--%>
                                            <tr style="background: white; color: black; border-style: hidden;">
                                                <td style="padding: 0rem !important; border-style: hidden;">&nbsp;&nbsp;Student Name :</td>
                                                <td style="padding: 0rem !important; border-style: hidden;" colspan="3">Arghadip Das</td>
                                                <td rowspan="2" colspan="2" style="padding: 0rem !important; text-align: center; background-color: white !important;">
                                                    <img src="../dist/images/avatar-13.png" style="width: 97px; height: 90px;" /></td>
                                            </tr>



                                            <tr style="background: white; color: black; border-style: hidden;">
                                                <td style="padding: 0rem !important; border-style: hidden;">&nbsp;&nbsp;Guardian's Name :</td>
                                                <td style="padding: 0rem !important; border-style: hidden;" colspan="3">&nbsp;&nbsp;Bibhas Das</td>
                                            </tr>

                                            <tr style="background: white; color: black; border-style: hidden;">
                                                <td style="padding: 0rem !important; border-style: hidden;">&nbsp;&nbsp;Address :</td>
                                                <td style="padding: 0rem !important; border-style: hidden;" colspan="3">Keushi</td>
                                                <td rowspan="2" style="padding: 0rem !important; text-align: center">
                                                    <img src="../dist/images/qr.png" style="width: 80px; height: 70px; margin-top: 1rem;" /></td>
                                            </tr>
                                            <tr style="background: white; color: black; border-style: hidden;">
                                                <td style="padding: 0rem !important; border-style: hidden;">&nbsp;&nbsp;Class :</td>
                                                <td style="padding: 0rem !important; border-style: hidden;">IV</td>
                                                <td style="padding: 0rem !important; border-style: hidden;">Section :</td>
                                                <td style="padding: 0rem !important; border-style: hidden;">A</td>
                                            </tr>
                                            <tr style="background: white; color: black; border-style: hidden;">
                                                <td style="padding: 0rem !important; border-style: hidden;">&nbsp;&nbsp;Date Of Issue :</td>
                                                <td style="padding: 0rem !important; border-style: hidden;">03/12/2019</td>
                                                <td style="padding: 0rem !important; border-style: hidden;">&nbsp;&nbsp;Validity :</td>
                                                <td style="padding: 0rem !important; border-style: hidden;">&nbsp;&nbsp;22/12/2020</td>
                                            </tr>
                                            <tr style="background-color: #20b0e0 !important;">
                                                <td colspan="5" style="padding-bottom: 2rem; text-align: right;">Signature Of Principal</td>
                                            </tr>
                                        </thead>

                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <%-- <button type="button" class="btn btn-success Alert-ApprovelT" onclientclick="return false;" onclick="()" data-bs-dismiss="modal">Forward To DEO</button>--%>
                    <button onclientclick="return false;" type="button" class="Alert-ApproveT btn btn-success" data-bs-dismiss="modal">Submit</button>
                    <%--  <button onclientclick="return false;" type="button" class="Alert-ApproveT btn btn-success" data-bs-dismiss="modal">Print</button>--%>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                    <a class="Alert-ApproveT btn btn-success" href="#" title="External Link" onclick="printDiv('printableArea')" target="_blank">Print Student Card </a>
                    <%--  <button class="Alert-ApproveT btn btn-success" type="button"  onclick="printDiv('printableArea')" value="print a div!"> Print Student Card </button>--%>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        //$(document).ready(function () {

        //});

        function ShowSchemePopup() {
            $("#SchemeModal").modal("show");
        }
    </script>
    <script>
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;

            document.body.innerHTML = printContents;

            window.print();

            document.body.innerHTML = originalContents;
        }
    </script>
</asp:Content>


