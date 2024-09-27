<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SchemeRegistrationForm.aspx.cs" Inherits="mis_Scheme_SchemeRegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">


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
                            <li class="breadcrumb-item">Scheme Registration</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-7">
                        <h4 class="card-title">Scheme Registration / योजना पंजीयन
                        </h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <span id="ContentBody_lblMsg"></span>
                <fieldset>
                    <legend>विभाग एवं संबंधित योजना का पंजीकरण</legend>
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="departmentName">विभाग का नाम <span style="color: red;">*</span></label>

                                <asp:DropDownList class="form-select select2" runat="server">
                                    <asp:ListItem Value="1">स्कूल शिक्षा विभाग</asp:ListItem>
                                    <asp:ListItem Value="2">जनजातीय कार्य विभाग</asp:ListItem>
                                    <asp:ListItem Value="3">अनुसूचित जाति कल्याण विभाग</asp:ListItem>
                                    <asp:ListItem Value="4">उच्च शिक्षा विभाग</asp:ListItem>
                                    <asp:ListItem Value="5">पिछड़ा वर्ग व अल्पसंख्यक कल्याण विभाग</asp:ListItem>
                                    <asp:ListItem Value="6">सामाजिक न्याय एवं दिव्यांगजन सशक्तिकरण विभाग</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="schemeImplementedBy">विभाग द्वारा लागू योजना का नाम<span style="color: red;">*</span></label>

                                <asp:DropDownList class="form-select select2" runat="server" ID="ddlYojna" AutoPostBack="true" OnSelectedIndexChanged="ddlYojna_SelectedIndexChanged">

                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1">सामान्य निर्धन वर्ग छात्रवृत्ति (कक्षा ६से ८)(केवल शास. विद्या. के लिये)</asp:ListItem>
                                    <asp:ListItem Value="2">स्वामी विवेकानंद पोस्ट मेट्रिक प्रावीण्य छात्रवृत्ति योजना कक्षा ११वीं एवं १२वीं (केवल शास विद्या. के लिये)</asp:ListItem>
                                    <asp:ListItem Value="3">मृत/अपंग/से.नि. कर्मचारी के बच्चों को छात्रवृत्ति कक्षा १ से १२ तक (केवल शास. विद्या. के लिये)</asp:ListItem>
                                    <asp:ListItem Value="4">अनु. जनजाति कन्या साक्षरता प्रोत्साहन राशि कक्षा ११ के लिए</asp:ListItem>
                                    <asp:ListItem Value="5">विमुक्त, घुमक्कड एवं अर्द्ध घुमक्कड जनजाति वर्ग, पोस्टमेट्रिक छात्रवृत्ति (नवीन एवं नवीनीकरण) (गैर छात्रावासी) कक्षा ११ से १२</asp:ListItem>
                                    <asp:ListItem Value="6">पिछड़ा वर्ग पोस्ट मैट्रिक छात्रवृति योजना</asp:ListItem>
                                    <asp:ListItem Value="7">निःषक्तजन छात्रवृत्ति कक्षा १ से १२</asp:ListItem>
                                    <asp:ListItem Value="8">छात्र-छात्राओ को नि:शुल्क गणवेश</asp:ListItem>
                                    <asp:ListItem Value="9">नि:शुल्क साइकिल वितरण योजना</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="schemeImplementedBy">योजना का क्रमांक<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="schemeImplementedBy" placeholder="योजना का क्रमांक" required>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="departmentName">योजना का प्रवर्तन<span style="color: red;">*</span></label>
                                <asp:DropDownList class="form-select select2" runat="server">
                                    <asp:ListItem>केन्द्र</asp:ListItem>
                                    <asp:ListItem>राज्य योजना</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="schemeStartDate">योजना का प्रारंभ तिथि<span style="color: red;">*</span></label>
                                <input class="form-control" value="20/01/2020" id="schemeStartDate" required>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="schemeEndDate">योजना की समाप्ति तिथि<span style="color: red;">*</span></label>
                                <input class="form-control" value="22/12/2025" id="schemeEndDate">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="departmentName">शुल्क वितरण समय सीमा<span style="color: red;">*</span></label>
                                <asp:DropDownList class="form-select select2" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>मासिक</asp:ListItem>
                                    <asp:ListItem>त्रैमासिक</asp:ListItem>
                                    <asp:ListItem>वार्षिक</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="departmentName">पदाभिहित अधिकारी<span style="color: red;">*</span></label>
                                <input type="text" placeholder="पदाभिहित अधिकारी" class="form-control" value="संबंधित संकुल प्राचार्य" id="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="departmentName">लाभ की राशि<span style="color: red;">*</span></label>
                                <asp:TextBox runat="server" placeholder="लाभ की राशि" CssClass="form-control" ID="txtLAbKiRashi"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-4 mt-4">

                            <asp:Button runat="server" ID="btnsubmit" OnClick="btnsubmit_Click" CssClass="btn btn-outline-success btn-border  w-lg" Text="Submit" />

                        </div>
                    </div>
                </fieldset>
                <div>
                    <fieldset>
                        <legend>योजना की जानकारी</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="beneficiaryDepartment">विभाग का नाम<span style="color: red;">*</span></label>
                                    <asp:DropDownList runat="server" ID="beneficiaryDepartment" class="form-select select2">
                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                        <asp:ListItem Value="1">स्कूल शिक्षा विभाग</asp:ListItem>
                                        <asp:ListItem Value="2">जनजातीय कार्य विभाग</asp:ListItem>
                                        <asp:ListItem Value="3">अनुसूचित जाति कल्याण विभाग</asp:ListItem>
                                        <asp:ListItem Value="4">उच्च शिक्षा विभाग</asp:ListItem>
                                        <asp:ListItem Value="5">पिछड़ा वर्ग व अल्पसंख्यक कल्याण विभाग</asp:ListItem>
                                        <asp:ListItem Value="6">सामाजिक न्याय एवं दिव्यांगजन सशक्तिकरण विभाग</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">योजना का नाम<span style="color: red;">*</span></label>
                                    <asp:DropDownList runat="server" ID="ddlschemeName" class="form-select select2">

                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                        <asp:ListItem Value="1">सामान्य निर्धन वर्ग छात्रवृत्ति (कक्षा ६से ८)(केवल शास. विद्या. के लिये)</asp:ListItem>
                                        <asp:ListItem Value="2">सुदामा प्री-मेट्रिक छात्रवृत्ति योजना (कक्षा ९वीं से १०वीं) (केवल शास विद्या. के लिये)</asp:ListItem>
                                        <asp:ListItem Value="3">सुदामा शिष्यवृत्ति योजना (कक्षा ११वीं एवं १२वीं)</asp:ListItem>
                                        <asp:ListItem Value="4">स्वामी विवेकानंद पोस्ट मेट्रिक प्रावीण्य छात्रवृत्ति योजना कक्षा ११वीं एवं १२वीं (केवल शास विद्या. के लिये)</asp:ListItem>
                                        <asp:ListItem Value="5">मृत/अपंग/से.नि. कर्मचारी के बच्चों को छात्रवृत्ति कक्षा १ से १२ तक (केवल शास. विद्या. के लिये)</asp:ListItem>
                                        <asp:ListItem Value="6">इकलौती बेटी को शिक्षा विकास छात्रवृति कक्षा ११ एवं १२</asp:ListItem>
                                        <asp:ListItem Value="7">अनु. जनजाति कन्या साक्षरता प्रोत्साहन राशि कक्षा ११ के लिए</asp:ListItem>
                                        <asp:ListItem Value="8">विमुक्त, घुमक्कड एवं अर्द्ध घुमक्कड जनजाति वर्ग, पोस्टमेट्रिक छात्रवृत्ति (नवीन एवं नवीनीकरण) (गैर छात्रावासी) कक्षा ११ से १२</asp:ListItem>
                                        <asp:ListItem Value="9">पिछड़ा वर्ग पोस्ट मैट्रिक छात्रवृति योजना</asp:ListItem>
                                        <asp:ListItem Value="10">निःषक्तजन छात्रवृत्ति कक्षा १ से १२</asp:ListItem>
                                        <asp:ListItem Value="11">छात्र-छात्राओ को नि:शुल्क गणवेश</asp:ListItem>
                                        <asp:ListItem Value="12">नि:शुल्क साइकिल वितरण योजना</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">योजना कब से लागू<span style="color: red;">*</span></label>
                                    <asp:TextBox CssClass="form-control" runat="server" ReadOnly Text="20/01/2020"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">योजना का उद्देश्य<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" CssClass="form-control" Text="विद्यार्थियों की शिक्षा में निरंतरता एवं गुणवत्ता"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">लाभार्थी श्रेणी<span style="color: red;">*</span></label>
                                    <select class="form-select select2">

                                        <option value="0">Select</option>
                                        <option value="1">छात्रवृत्ति</option>
                                        <option value="2">स्टायपन्ड एवं किट ,अन्य</option>
                                        <option value="3">निःशुल्क सायकिल</option>
                                        <option value="3">वित्तीय सहायता /भत्ता</option>
                                        <option value="3">परिवहन भत्ता</option>
                                        <option value="3">निशुल्क बुक्स एवं स्टेशनरी डिस्ट्रीब्यूशन</option>
                                        <option value="3">प्रोत्साहन राशि</option>


                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">लाभार्थी वर्ग<span style="color: red;">*</span></label>
                                    <asp:DropDownList class="form-select select2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" ID="ddlCategory">
                                        <asp:ListItem Value="0">All</asp:ListItem>
                                        <asp:ListItem Value="1">GEN</asp:ListItem>
                                        <asp:ListItem Value="2">SC</asp:ListItem>
                                        <asp:ListItem Value="3">ST</asp:ListItem>
                                        <asp:ListItem Value="4">OBC</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">लाभार्थी का प्रकार<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option>Select</option>
                                        <option>सभी</option>

                                        <option>छात्र</option>
                                        <option>छात्रा</option>


                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">योजना का क्षेत्र<span style="color: red;">*</span></label>
                                    <select class="form-select select2">

                                        <option>Select</option>
                                        <option>शहरी</option>
                                        <option>ग्रामीण</option>
                                        <option>सभी</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option>6</option>

                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option>8</option>

                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>9</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>लाभार्थि के लिए शर्ते / लाभार्थी चयन प्रक्रिया</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="beneficiaryDepartment">मूल निवासी<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option value="se">Select</option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">आवेदक की आयु<span style="color: red;">*</span></label>
                                    <select id="schemeName" class="form-select select2">
                                        <option selected>Select</option>
                                        <option>10-15</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">बी.पी.एल<span style="color: red;">*</span></label>
                                    <select onchange="toggleFile()" id="ddlvpl" class="form-select select2">
                                        <option value="se">Select</option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        लागू स्कूल प्रबंधन समूह <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="State Government">State Government</option>
                                        <option value="Central Government">Central Government</option>
                                        <option value="Government">Government Aided</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        लागू स्कूल प्रबंधन समूह के लिए विवरण<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Department of Education">Department of Education</option>
                                        <option value="Ministory of Labour">Ministory of Labour</option>
                                        <option value="Local Body">Local Body</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>
                                        लागू बोर्ड प्रकार<span style="color: red">*</span></label>
                                    <select id="dates-field2" class="form-select select2 ">
                                        <option value="MP Board">MP Board</option>
                                        <option value="CBSE">CBSE</option>
                                        <option value="ICSE">ICSE</option>
                                        <option value="Madras Board">Madras Board</option>
                                        <option value="Others State University">Others State University</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="beneficiaryDepartment">विद्यालय<span style="color: red;">*</span></label>
                                    <select id="dates" class="form-select select2 ">
                                        <option value="">शासकीय </option>
                                        <option value="">अशासकीय </option>
                                        <option>सभी</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="schemeName">वार्षिक आय<span style="color: red;">*</span></label>
                                    <select class="form-select select2">

                                        <option value="1">0-100000 lakh</option>
                                        <option value="2">100000-200000</option>
                                        <option value="3">200000-250000</option>
                                        <option value="3">250000-300000</option>
                                        <option value="3">300000-400000</option>
                                        <option value="3">400000-500000</option>
                                        <option value="3">500000-600000</option>
                                        <option value="3">आय सीमा का बंधन नहीं</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3 mt-4 py-2">
                                <div class="form-group">

                                    <asp:TextBox ReadOnly runat="server" Text="आय संबंधी स्वहस्ताक्षरित स्व प्रमाणित छायाप्रति" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">गतवर्ष की कक्षा का परिणाम<span style="color: red;">*</span></label>
                                    <select class="form-select select2">

                                        <option value="1">उत्तीर्ण</option>
                                        <option value="2">अनुत्तीर्ण</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3" runat="server" id="DivNaveeen" visible="false">
                                <div class="form-group">
                                    <label for="schemeName">नवीन<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="नवीन" CssClass="form-control" />
                                    <span class="text-danger">केवल SC, ST, OBC हेतु</span>
                                </div>
                            </div>
                            <div class="col-md-3" runat="server" id="DivNaveeen2" visible="false">
                                <div class="form-group">
                                    <label for="schemeName">नवीनीकरण<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="नवीनीकरण" CssClass="form-control" />
                                    <span class="text-danger">केवल SC, ST, OBC हेतु</span>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="DivResult" runat="server" visible="false">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="कक्षा" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">परीक्षा<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="परीक्षा" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">उत्तीर्ण प्रतिशत<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="उत्तीर्ण प्रतिशत" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3 mt-3 py-3">
                                <a class="btn btn-outline-success btn-border  w-lg">Add</a>

                            </div>


                        </div>
                        <fieldset id="DivLabhKiRshi" runat="server" visible="false">
                            <legend>लाभार्थि को प्राप्त - अनुदान /ऋण /वित्तीय सहायता /पेंशन/लाभ की राशि</legend>

                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" placeholder="कक्षा" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="schemeName">बालक को प्राप्त लाभ की राशि <span style="color: red;">*</span></label>
                                        <select class="form-select select2">
                                            <option selected>Select</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2">

                                    <div class="form-group">
                                        <label for="schemeName">बालिका को प्राप्त लाभ की राशि<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" placeholder="बालिका को प्राप्त लाभ की राशि" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-2 mt-3 py-3">
                                    <a class="btn btn-outline-success btn-border  w-lg">Add</a>

                                </div>
                                <div class="col-md-1 mt-5 justify-content-start" runat="server" visible="false" id="DevScheckBox">
                                    <div class="form-check form-check-outline form-check-primary mb-3">
                                        <input class="form-check-input" type="checkbox" id="formCheck13">
                                        <label class="form-check-label" for="formCheck13">
                                            छात्रावास
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <div class="row" runat="server" visible="false" id="DivHostel">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label for="schemeName">छात्रावासी<span style="color: red;">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="1">Yes</option>
                                        <option value="2">No</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">छात्रावासी बालक को प्राप्त लाभ की राशि <span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option selected>Select</option>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">

                                <div class="form-group">
                                    <label for="schemeName">छात्रावासी बालिका को प्राप्त लाभ की राशि<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="बालिका को प्राप्त लाभ की राशि" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3 mt-3 py-3">
                                <a class="btn btn-outline-success btn-border  w-lg">Add</a>

                            </div>

                        </div>
                        <hr />
                        <div class="row" runat="server" visible="false" id="DivcycleYojna">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label for="schemeName">घर से विद्यालय की दूरी<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="घर से विद्यालय की दूरी" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">कन्या छात्रावास से विद्यालय की दूरी<span style="color: red;">*</span></label>
                                    <asp:TextBox runat="server" placeholder="कन्या छात्रावास से विद्यालय की दूरी" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <hr />

                    </fieldset>
                    <fieldset id="DivBetiYojna" runat="server" visible="false">
                        <div class="row mt-2">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">इकलौती बेटी<span style="color: red;">*</span></label>
                                    <select class="form-select select2">

                                        <option>Yes</option>
                                        <option>No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">अजिविका का माध्यम<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option selected>Select</option>
                                        <option>शासकीय </option>
                                        <option>अशासकीय </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4 mt-4 py-2">
                                <label class="form-control">माता-पिता के शासकीय सेवा में होने पर कार्यालय द्वारा जारी इकलौती बेटी प्रमाण पत्र</label>

                            </div>
                            <div class="col-md-2 mt-4 py-2">
                                <label class="form-control">10वी एवं 11 वीं की अंकसूची</label>

                            </div>
                            <div class="col-md-5 mt-4 py-2">
                                <label class="form-control">राशन कार्ड मे परिवार की सूचि की सत्यापित प्रति</label>

                            </div>
                            <div class="col-md-5 mt-4 py-2">
                                <label class="form-control">शासकीय सेवा में ना होने स्वहस्ताक्षरित स्व प्रमाणित घोषणा पत्र</label>

                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="DivPWD" runat="server" visible="false">
                        <div class="row mt-2">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">विकलांगता<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option selected>Select</option>
                                        <option>Yes</option>
                                        <option>No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">विकलांगता का प्रतिशत<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option selected>Select</option>
                                        <option>40</option>
                                        <option>50</option>
                                        <option>60</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">आय सीमा का बंधन नही<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option selected>Select</option>
                                        <option>Yes</option>
                                        <option>No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6 mt-4 py-2">
                                <label class="form-control">चिकित्सक का विकलांगता प्रमाण पत्र जिसमें न्यूनतम निःषक्तता 40 प्रतिशत या उससे अधिक का उल्लेख हो ।</label>

                            </div>

                        </div>
                    </fieldset>
                    <fieldset id="DivGov" runat="server" visible="false">
                        <div class="row mt-2">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">मृत /अपंग / से.नि.<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option selected>Select</option>
                                        <option>Yes</option>
                                        <option>No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="schemeName">अजिविका का माध्यम<span style="color: red;">*</span></label>
                                    <select class="form-select select2">
                                        <option selected>Select</option>
                                        <option>शासकीय </option>
                                        <option>अशासकीय </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6 mt-4 py-2">
                                <label class="form-control">अन्य छात्रवृत्ति का लाभ होने पर मृत/अपंग/से.नि. छात्रवृत्ति की पात्रता नहीं होगी</label>

                            </div>

                        </div>
                    </fieldset>

                    <fieldset id="DivTribal" runat="server" visible="false">
                        <legend><%--जनजातीय कार्य विभाग--%> लाभार्थि को प्राप्त - अनुदान /ऋण /वित्तीय सहायता /पेंशन/लाभ की राशि</legend>
                        <div runat="server" visible="false" id="DivSt1Scheme">
                            <div class="row mb-0">

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                    <div class="row mt-3 mb-0">
                                        <div class="col-md-3">
                                            <div class="form-check form-radio-outline form-radio-primary mb-3">
                                                <input class="form-check-input" type="radio" name="formradiocolor9" id="rb1">
                                                <label class="form-check-label" for="rb1">
                                                    बैगा
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-check form-radio-outline form-radio-primary mb-3">
                                                <input class="form-check-input" type="radio" name="formradiocolor9" id="rb2">
                                                <label class="form-check-label" for="rb2">
                                                    भारिया
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-check form-radio-outline form-radio-primary mb-3">
                                                <input class="form-check-input" type="radio" name="formradiocolor9" id="rb3">
                                                <label class="form-check-label" for="rb3">
                                                    सहरिया उपजाती मान्य
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">

                                    <div class="form-group">
                                        <label>बालक को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-0">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input class="form-control" value="आय प्रमाण पत्र की आवश्यकता नहीं" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input class="form-control" value="गत वर्ष अनुत्तीर्ण पर छात्रवृत्ति की पात्रता" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" value="नवीनीकरण हेतु सामान्य दरो पर पुनः आवेदन की आवश्यकता नहीं, आय सीमा नहीं" type="text" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div runat="server" visible="false" id="DivSt2Scheme">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>बालक को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="girlFinHelp2">बालिका को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <input class="form-control" value="" type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input class="form-control" value="आय प्रमाण पत्र की आवश्यकता नहीं" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input class="form-control" value="गत वर्ष अनुत्तीर्ण पर छात्रवृत्ति की पात्रता" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" value="नवीनीकरण हेतु सामान्य दरो पर पुनः आवेदन की आवश्यकता नहीं, आय सीमा नहीं" type="text" id="txt3" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div runat="server" visible="false" id="DivSt3Scheme">
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="कक्षा"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4" style="margin-top: 32px;">
                                    <div class="form-group">
                                        <input class="form-control" value="पिता या पालक आयकर दाता की श्रेणी में न आता हो" type="text" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="आय प्रमाण पत्र की आवश्यकता नहीं" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="गत वर्ष परिक्षा उत्तीर्ण" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="स्थायी जाति प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input class="form-control" value="आयकर दाता न होने का स्वघोषणा पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input class="form-control" value="सक्षम अधिकारी का आय प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="DivSC" runat="server" visible="false">
                        <legend>अनुसूचित जाति कल्याण विभाग</legend>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>बालिका को प्राप्त लाभ / वित्तीय सहायता</label>
                                    <select class="form-control select2">
                                        <option value="">Select</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4" style="margin-top: 32px;">
                                <div class="form-group">
                                    <input class="form-control" value="मूल निवासी प्रमाण पत्र" type="text" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-md-4" style="margin-top: 32px;">
                                <div class="form-group">
                                    <input class="form-control" value="स्थायी जाति प्रमाण पत्र" type="text" readonly="readonly">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-0">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input class="form-control" value="आय प्रमाण पत्र की आवश्यकता नहीं" type="text" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input class="form-control" value="गत वर्ष अनुत्तीर्ण पर छात्रवृत्ति की पात्रता" type="text" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control" value="नवीनीकरण हेतु सामान्य दरो पर पुनः आवेदन की आवश्यकता नहीं" type="text" readonly="readonly">
                                </div>
                            </div>
                        </div>
                        <div class="row mb-0">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>बालिका को प्राप्त लाभ / वित्तीय सहायता</label>
                                    <select class="form-control select2">
                                        <option value="">Select</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">

                                <div class="form-group">
                                    <label>बालक को प्राप्त लाभ / वित्तीय सहायता</label>
                                    <input class="form-control" value="" type="text">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-0">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input class="form-control" value="आय प्रमाण पत्र की आवश्यकता नहीं" type="text" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input class="form-control" value="गत वर्ष अनुत्तीर्ण पर छात्रवृत्ति की पात्रता" type="text" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control" value="नवीनीकरण हेतु सामान्य दरो पर पुनः आवेदन की आवश्यकता नहीं" type="text" readonly="readonly">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>बालिका को प्राप्त लाभ / वित्तीय सहायता</label>
                                    <select class="form-control select2">
                                        <option value="">Select</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input class="form-control" value="आय प्रमाण पत्र की आवश्यकता नहीं" type="text" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input class="form-control" value="गत वर्ष परिक्षा उत्तीर्ण" type="text" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input class="form-control" value="स्थायी जाति प्रमाण पत्र" type="text" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input class="form-control" value="आयकर दाता न होने का स्वघोषणा पत्र" type="text" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input class="form-control" value="सक्षम अधिकारी का आय प्रमाण पत्र" type="text" readonly="readonly">
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="DivOBC" runat="server" visible="false">
                        <legend><%--म.प्र. पिछड़ा वर्ग अल्पसंख्यक विभाग--%> लाभार्थि को प्राप्त - अनुदान /ऋण /वित्तीय सहायता /पेंशन/लाभ की राशि</legend>
                        <div id="DivOBC1" runat="server" visible="false">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" placeholder="कक्षा" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>बालक को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input class="form-control" value="स्थायी जाति प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input class="form-control" value="आय के संबंध में पालक का स्वघोषणा पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" value="नवीनीकरण हेतु पालक का स्वघोषणा पत्र गत वर्ष आय में वृद्धि नहीं" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" value="पिता या पालक आयकरदाता की श्रेणी में न आता हो या 10 एकड़ से अधिक भूमि न हो" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input class="form-control" value="मूल निवासी प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="DivOBC2" runat="server" visible="false">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" placeholder="कक्षा" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>बालक को प्राप्त लाभ</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-1 mt-5">
                                    <div class="form-check form-check-outline form-check-primary mb-3">
                                        <input class="form-check-input" type="checkbox" id="formCheck13">
                                        <label class="form-check-label" for="formCheck13">
                                            छात्रावास
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-2 mt-4">
                                    <div class="form-group">
                                        <input type="submit" value="जोड़े" class="btn btn-outline-success shadow btn-rounded w-lg" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>बालक को प्राप्त लाभ</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2 mt-5">
                                    <div class="form-check form-check-outline form-check-primary mb-3">
                                        <input class="form-check-input" type="checkbox" id="formCheck14">
                                        <label class="form-check-label" for="formCheck14">
                                            गैर छात्रावास
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-3 mt-4">
                                    <div class="form-group">
                                        <input type="submit" value="जोड़े" class="btn btn-outline-success shadow btn-rounded w-lg" />
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="गत वर्ष परिक्षा उत्तीर्ण" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="मूल निवासी प्रमाण पत्र " type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="स्थायी जाति प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input class="form-control" value="नवीनीकरण हेतु पालक का स्वघोषणा पत्र गत वर्ष आरा में वृद्धि नही हुई है" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="अंक सूचि की छायाप्रति" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="आय सीमा 3 लाख" type="text" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset id="DivVIMUKT" runat="server" visible="false">
                        <legend><%--विमुक्त, घुमक्कड़ एवं अर्द घुमक्कड़ जनजाति कल्याण विभाग--%> लाभार्थि को प्राप्त - अनुदान /ऋण /वित्तीय सहायता /पेंशन/लाभ की राशि</legend>
                        <div id="DivVIMUKT1" runat="server" visible="false">
                            <div class="row mb-0">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" placeholder="कक्षा" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>बालक को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="स्थायी जाति प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="आय सीमा का बंधन नही" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="एक वर्ष अनुत्तीर्ण पर पात्रता" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="मूल निवासी प्रमाण पत्र " type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input class="form-control" value="नवीनीकरण हेतु पुनः आवेदन की आवश्यकता नही" type="text" readonly="readonly">
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-0">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>बालक को प्राप्त लाभ / वित्तीय सहायता</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 mt-4">
                                    <div class="form-group">
                                        <input type="submit" value="जोड़े" class="btn btn-outline-success shadow btn-rounded w-lg" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="स्थायी जाति प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="आय सीमा का बंधन नही" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="एक वर्ष अनुत्तीर्ण पर पात्रता" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="मूल निवासी प्रमाण पत्र " type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input class="form-control" value="नवीनीकरण हेतु पुनः आवेदन की आवश्यकता नही" type="text" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="DivVIMUKT2" runat="server" visible="false">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" placeholder="कक्षा" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>बालक को प्राप्त लाभ</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2 ">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-1 mt-5">
                                    <div class="form-check form-check-outline form-check-primary mb-3">
                                        <input class="form-check-input" type="checkbox" id="formCheck16">
                                        <label class="form-check-label" for="formCheck16">
                                            छात्रावास
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-3 mt-4">
                                    <div class="form-group">
                                        <input type="submit" value="जोड़े" class="btn btn-outline-success shadow btn-rounded w-lg" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="schemeName">कक्षा<span style="color: red;">*</span></label>
                                        <asp:TextBox runat="server" placeholder="कक्षा" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>बालक को प्राप्त लाभ</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2 mt-5">
                                    <div class="form-check form-check-outline form-check-primary mb-3">
                                        <input class="form-check-input" type="checkbox" id="formCheck15">
                                        <label class="form-check-label" for="formCheck15">
                                            गैर छात्रावास
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-2 mt-4">
                                    <div class="form-group">
                                        <input type="submit" value="जोड़े" class="btn btn-outline-success shadow btn-rounded w-lg" />
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="गत वर्ष परिक्षा उत्तीर्ण" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="मूल निवासी प्रमाण पत्र " type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="स्थायी जाति प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" value="नवीनीकरण हेतु पालक का स्वघोषणा पत्र गत वर्ष आरा में वृद्धि नही हुई है" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="आय संबंधी पालक द्वारा अस्टाम्मित स्वघोषणा पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="2.5 लाख तक पूर्ण छात्रवृत्ति तथा पूर्ण शुल्क एवं 2.5 से 3 लाख तक आधा शुल्क" type="text" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="DivVIMUKT3" runat="server" visible="false">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>बालिका को प्राप्त लाभ</label>
                                        <select class="form-control select2">
                                            <option value="">Select</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="गत वर्ष परिक्षा उत्तीर्ण" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="मूल निवासी प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input class="form-control" value="स्थायी जाति प्रमाण पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" value="आय संबंधी पालक द्वारा अस्टाम्मित स्वघोषणा पत्र" type="text" readonly="readonly">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>आवश्यक दस्तावेज</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <ul>
                                    <li>मध्य प्रदेश में निवास का प्रमाण/ स्थाई प्रमाण पत्र।</li>
                                    <li>आयु प्रमाण पत्र।</li>
                                    <li>शैक्षणिक प्रमाण पत्र।</li>
                                    <li>शैक्षणिक प्रमाण पत्र।</li>
                                    <li>बैंक खाते की जानकारी।</li>
                                    <li>समग्र आईडी।</li>
                                    <li>आधार कार्ड।</li>
                                    <li>विकलांग होने का प्रमाण</li>
                                    <li>आवेदक की पासपोर्ट साइज फोटो।</li>
                                    <li>मोबाइल नंबर।</li>
                                    <li>ईमेल आईडी</li>
                                </ul>
                            </div>
                        </div>
                    </fieldset>
                    <div class="row">
                        <div class="col-md-12">
                            <input type="button" id="btnsubmit" value="Save" class="btn btn-outline-success btn-border  w-lg" />
                            <a href="SchemeRegistrationForm.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        // Function to toggle the visibility of a div
        function toggleDiv() {
            const div = document.getElementById("schemeDetailsDiv");


            if (div.style.display === "none") {
                div.style.display = "block";
            }
        }
        function toggleFile() {
            var div = document.getElementById("ddlvpl");


            if (div.va === "none") {
                div.style.display = "block";
            }
        }


        function toggleFile() {
            var ddl = document.getElementById("ddlvpl");
            var divFile = document.getElementById("divFile");
            if (ddl.value === "Yes") {
                divFile.style.display = "block";
            } else {
                divFile.style.display = "none";
            }
        }
    </script>



</asp:Content>

