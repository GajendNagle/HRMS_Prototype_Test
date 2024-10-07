<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ListOfColleges.aspx.cs" Inherits="mis_AcademicManagement_ListOfColleges" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="../dist/dashboard/hrmsdashboard.css" rel="stylesheet" />


    <style>
        #NewCard {
            border-top-left-radius: 90px;
            border-bottom-right-radius: 80px;
            background-color: antiquewhite
        }


        ol li {
            font-size: 1.2em;
        }

        .radius-defalt {
            border-radius: var(--vz-card-border-radius) !important;
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
                            <a href="#AcademicManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Career Guidance & Test Preparation</span></a>
                        </li>
                        <li class="breadcrumb-item">List Of Colleges</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <div class="marqueecontainer border-0">
                        <div class="headertext btn btn-primary rounded-pill " style="padding-top: 11px;">
                            List Of Colleges

                        </div>
                        <div>
                            <marquee style="width: 100%;" onmouseover="this.stop();"
                                onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext text-black">
                                .
	
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>After 12th College List /
12वीं के बाद कॉलेजों की सूची
                </legend>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>
                                Select Career Library
                                <br />
                                कैरियर लाइब्रेरी का चयन करें<span style="color: red">*</span>
                            </label>
                            <select class="form-control select2" id="ddl_class">
                                <option value="0">Select</option>
                                <option value="1">Engineering</option>
                                <option value="2">Computer Science & IT</option>
                                <option value="3">Architecture</option>
                                <option value="4">Medical Science</option>
                                <option value="5">Allied Medicine</option>
                                <option value="6">Science</option>
                                <option value="7">Mathematics & Statistics</option>
                                <option value="8">Humanities, Liberal Arts & Social Sciences</option>
                                <option value="9">Defense services </option>
                                <option value="10">Banking & Finance</option>
                                <option value="11">Advertising & Marketing</option>
                                <option value="12">Economics & Commerce</option>
                                <option value="12">Food & Agriculture</option>
                                <option value="12">Law</option>
                                <option value="12">Aviation & Merchant Navy</option>
                                <option value="12">Arts & Design</option>
                                <option value="12">Animation, Graphics & VFX</option>
                                <option value="12">Media & Communication</option>
                                <option value="12">Performing Arts</option>
                                <option value="12">Nutrition & Fitness</option>
                                <option value="12">Sports</option>
                                <option value="12">Fashion</option>
                                <option value="12">Sales</option>
                                <option value="12">Government</option>
                                <option value="12">Management</option>
                                <option value="12">Hospitality & Tourism</option>
                                <option value="12">Entrepreneurship</option>
                            </select>

                        </div>
                    </div>
                </div>

            </fieldset>
        </div>
    </div>
    <div class="card-border-primary radius-defalt" id="NewCard">
        <div class="card-header bg-cyan">
            <div class="row mb-4">
                <div class="col-md-12">
                    <h2 class="text-center mt-4">List of engineering colleges in Madhya Pradesh</h2>
                </div>
            </div>
        </div>
        <div class="card-body ms-3 mt-3">
            <h3>Central Government Institutions</h3>

            <ol>

                <li>Indian Institute of Technology, Indore</li>
                <li>Maulana Azad National Institute of Technology, Bhopal (1960)</li>
                <li>Indian Institute of Information Technology and Management, Gwalior</li>
                <li>Indian Institute of Information Technology, Design and Manufacturing, Jabalpur</li>
            </ol>
            <h3>State Government Autonomous/Aided Institutions</h3>
            <ol>
                <li>Jabalpur Engineering College, Jabalpur (1947)</li>
                <li>Shri Govindram Seksaria Institute of Technology and Science, Indore (1952)</li>
                <li>Madhav Institute of Technology and Science, Gwalior (1957)</li>
                <li>Samrat Ashok Technological Institute, Vidisha (1960)</li>
                <li>Ujjain Engineering College, Ujjain (1966)</li>
                <li>Rewa Engineering College, Rewa (1964)</li>
                <li>Indira Gandhi Engineering College Sagar (1981)</li>
                <li>Engineering College, Nowgong (2013)</li>
                <li>IPST, Mahatma Gandhi Chitrakoot Gramoday University, Chitrakoot, Satna (1991)</li>
            </ol>

            <h3>Self-financing</h3>
            <ol>
                <li>Barkatullah University Institute of Technology, Bhopal (1997)</li>
                <li>Institute of Engineering and Technology, DAVV, Indore</li>
                <li>Rustamji Institute of Technology, Tekanpur, Gwalior (1999)</li>
                <li>University Institute of Technology, RGPV, Bhopal (1986)</li>
                <li>School of Engineering and Technology, Vikram University, Ujjain (2011)</li>
                <li>University Institute of Technology, RGPV, Shahdol (2015)</li>
            </ol>

            <h3>Private Engineering Colleges in Madhya Pradesh</h3>
            <ol>
                <li>MIT Group of Institutes, Ujjain</li>
                <li>Indore Institute of Science and Technology</li>
                <li>Sagar Institute of Science and Technology (SISTec), Bhopal</li>
                <li>Patel Group of Institutions, Bhopal</li>
                <li>Bansal Institute of Science & Technology</li>
                <li>Bansal Institute of Science & Technology</li>
                <li>Gyan Ganga College of Technology, Jabalpur</li>
                <li>Gyan Ganga Institute of Technology and Sciences, Jabalpur</li>
                <li>Lakshmi Narain College of Technology, Jabalpur</li>
                <li>Lakshmi Narain College of Technology, Bhopal</li>
                <li>Oriental Institute of Science and Technology, Bhopal</li>
                <li>Sagar Institute of Research & Technology, Bhopal</li>
                <li>Hitkarini College of Engineering & Technology, Jabalpur</li>
                <li>Medi-Caps Institute of Technology & Management, Indore</li>
                <li>Shri Vaishnav Institute of Technology and Science, Indore</li>
                <li>AKS University, Satna</li>
                <li>Bhabha Engineering Research Institute, Bhopal</li>
                <li>Institute Of Engineering & Science IPS Academy, Indore</li>
                <li>Truba Group of Institutes, Bhopal</li>
                <li>NRI Group of Institutions, Bhopal</li>
                <li>Lakshmi Narain College of Technology and Science</li>
                <li>Institute of Technology & Management, Gwalior</li>
                <li>AMITY UNIVERSITY, GWALIOR</li>
                <li>Jaypee University of engineering and technology ,Guna</li>
                <li>Millennium Group of Institutions, Bhopal</li>
                <li>SKITM Shivaji Rao kadam Institute of Technology , Indore</li>
                <li>Sushila Devi Bansal College of Technology, Indore</li>
                <li>Lord Krishna College of Engineering, Indore</li>
                <li>Maharana Pratap College of Technology, Gwalior</li>
            </ol>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

