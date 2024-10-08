<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ListOfColleges.aspx.cs" Inherits="mis_AcademicManagement_ListOfColleges" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">


    <style>
        #NewCard, #NewCard1, #NewCard2, #NewCard3, #New, #New1, #New2, #New4 {
            border-radius: 50px;
            background-color: azure;
            border-style: double;
        }


        #List, #List1, #List2, #List3, #List4, #List5, #List6 {
            font-size: 1.2em;
            margin-left: 30px;
        }

        h2, h3 {
            margin-left: 30px;
        }

        #OrderList, #OrderList1, #OrderList2, #OrderList3, #OrderList4, #OrderList5, #OrderList7 {
            font-size: 1.2em;
            margin-left: 30px;
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

    <div class="card card-border-primary">
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
                            <select class="form-control select2" id="ddlLibrary" onchange="toggleNewCard()">
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
            <div class="container pb-2 has-text-left" id="NewCard" style="display: none;">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center mt-4"><u>List Of Engineering Colleges in Madhya Pradesh</u></h2>

                    </div>
                </div>

                <h3>Central Government Institutions</h3>
                <ol id="List">

                    <li>Indian Institute of Technology, Indore</li>
                    <li>Maulana Azad National Institute of Technology, Bhopal (1960)</li>
                    <li>Indian Institute of Information Technology and Management, Gwalior</li>
                    <li>Indian Institute of Information Technology, Design and Manufacturing, Jabalpur</li>
                </ol>
                <h3>State Government Autonomous/Aided Institutions</h3>
                <ol id="List6">
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
                <ol id="List1">
                    <li>Barkatullah University Institute of Technology, Bhopal (1997)</li>
                    <li>Institute of Engineering and Technology, DAVV, Indore</li>
                    <li>Rustamji Institute of Technology, Tekanpur, Gwalior (1999)</li>
                    <li>University Institute of Technology, RGPV, Bhopal (1986)</li>
                    <li>School of Engineering and Technology, Vikram University, Ujjain (2011)</li>
                    <li>University Institute of Technology, RGPV, Shahdol (2015)</li>
                </ol>

                <h3>Private Engineering Colleges in Madhya Pradesh</h3>
                <ol id="List2">
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

                <div class="row">
                    <div class="col-md-12 text-center">
                        <button type="button" class="btn btn-primary" onclick="downloadModalContent('staticBackdrop')">Download</button>
                    </div>
                </div>
            </div>

            <div class="container pb-2 has-text-left" id="NewCard1" style="display: none">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center mt-4"><u>List of Computer Science & IT Colleges in Madhya Pradesh</u></h2>

                    </div>
                </div>
                <ol id="List3">
                    <li>Devi Ahilya Vishwavidyalaya,Indore

                    </li>
                    <li>LNCT University,Bhopal

                    </li>
                    <li>Rabindranath Tagore University,Bhopal
                    </li>
                    <li>SAGE University, Indore</li>
                    <li>Mansarovar Global University,Bhopal</li>
                    <li>Indian Institute of Science Education & Research,Bhopal
                    </li>
                    <li>SAGE University, Indore
                    </li>
                    <li>Medi-Caps University,Indore
                    </li>
                    <li>SAGE University, Bhopal </li>
                    <li>Jiwaji University, Gwalior
                    </li>
                    <li>Career College, Bhopal </li>

                    <li>Mansarovar Global University, Bhopal </li>

                    <li>Swami Vivekanand University, Sagar </li>

                    <li>SAM Global University, Bhopal </li>
                </ol>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <button type="button" class="btn btn-primary" onclick="downloadModalContent('staticBackdrop1')">Download</button>
                    </div>
                </div>
            </div>

            <div class="container pb-2 has-text-left" id="NewCard2" style="display: none">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center mt-4"><u>List Of Architecture Colleges in Madhya Pradesh</u></h2>

                    </div>
                </div>
                <ol id="List4">
                    <li>Maulana Azad National Institute of Technology,Bhopal

                    </li>
                    <li>Amity University, Gwalior

                    </li>
                    <li>SAGE University, Indore
                    </li>
                    <li>Madhav Institute of Technology and Science, Gwalior</li>

                    <li>LNCT University, Bhopal</li>

                    <li>VIT Bhopal University, Bhopal

                    </li>
                    <li>SAGE University, Indore
                    </li>
                    <li>Amity University, Gwalior

                    </li>
                    <li>Shri Vaishnav Vidyapeeth Vishwavidyalaya, Indore
                    </li>
                    <li>Rajiv Gandhi Proudyogiki Vishwavidyalaya, Bhopal
                    </li>
                    <li>Jagran Lakecity University, Bhopal </li>

                    <li>Sri Satya Sai University of Technology and Medical Sciences, Bhopal </li>
                    <li>Bagulamukhi College of Architecture and Planning, Bhopal </li>
                </ol>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <button type="button" class="btn btn-primary" onclick="downloadModalContent('staticBackdrop2')">Download</button>
                    </div>
                </div>
            </div>

            <div class="container pb-2 has-text-left" id="NewCard3" style="display: none">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center mt-4"><u>List Of Medical Science Colleges in Madhya Pradesh</u></h2>

                    </div>
                </div>
                <ol id="List5">
                    <li>Mansarovar Group of Institutions, Bhopal


                    </li>
                    <li>Atal Bihari Vajpayee Government Medical College, Vidisha
                    </li>
                    <li>Mansarovar Global University, Bhopal
                    </li>
                    <li>Amity University, Gwalior</li>

                    <li>Sri Aurobindo Institute of Medical Science, Indore</li>

                    <li>Mahatma Gandhi Memorial Medical College, Indore


                    </li>
                    <li>SAGE University, Indore
                    </li>
                    <li>SAGE University, Bhopal

                    </li>
                    <li>Gandhi Medical College, Bhopal

                    </li>
                    <li>RKDF University, Bhopal

                    </li>
                    <li>Netaji Subhash Chandra Bose Medical College, Jabalpur </li>


                    <li>Chirayu Medical College and Hospital, Bhopal </li>

                    <li>Sri Aurobindo Institute of Pharmacy, Indore </li>

                </ol>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <button type="button" class="btn btn-primary" onclick="downloadModalContent('staticBackdrop3')">Download</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container pb-2 has-text-left" id="New">
                        <div class="row">
                            <div class="col-md-12">
                                <h2 class="text-center mt-4"><u>List Of Engineering colleges in Madhya Pradesh</u></h2>

                            </div>
                        </div>

                        <h3>Central Government Institutions</h3>
                        <ol id="OrderList">

                            <li>Indian Institute of Technology, Indore</li>
                            <li>Maulana Azad National Institute of Technology, Bhopal (1960)</li>
                            <li>Indian Institute of Information Technology and Management, Gwalior</li>
                            <li>Indian Institute of Information Technology, Design and Manufacturing, Jabalpur</li>
                        </ol>
                        <h3>State Government Autonomous/Aided Institutions</h3>
                        <ol id="OrderList1">
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
                        <ol id="OrderList2">
                            <li>Barkatullah University Institute of Technology, Bhopal (1997)</li>
                            <li>Institute of Engineering and Technology, DAVV, Indore</li>
                            <li>Rustamji Institute of Technology, Tekanpur, Gwalior (1999)</li>
                            <li>University Institute of Technology, RGPV, Bhopal (1986)</li>
                            <li>School of Engineering and Technology, Vikram University, Ujjain (2011)</li>
                            <li>University Institute of Technology, RGPV, Shahdol (2015)</li>
                        </ol>

                        <h3>Private Engineering Colleges in Madhya Pradesh</h3>
                        <ol id="OrderList3">
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
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-primary" onclick="downloadModalContent('staticBackdrop')">Download</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container pb-2 has-text-left" id="New1">
                        <div class="row">
                            <div class="col-md-12">
                                <h2 class="text-center mt-4"><u>List of Computer Science & IT Colleges in Madhya Pradesh</u></h2>

                            </div>
                        </div>
                        <ol id="OrderList4">
                            <li>Devi Ahilya Vishwavidyalaya,Indore

                            </li>
                            <li>LNCT University,Bhopal

                            </li>
                            <li>Rabindranath Tagore University,Bhopal
                            </li>
                            <li>SAGE University, Indore</li>
                            <li>Mansarovar Global University,Bhopal</li>
                            <li>Indian Institute of Science Education & Research,Bhopal
                            </li>
                            <li>SAGE University, Indore
                            </li>
                            <li>Medi-Caps University,Indore
                            </li>
                            <li>SAGE University, Bhopal </li>
                            <li>Jiwaji University, Gwalior
                            </li>
                            <li>Career College, Bhopal </li>

                            <li>Mansarovar Global University, Bhopal </li>

                            <li>Swami Vivekanand University, Sagar </li>

                            <li>SAM Global University, Bhopal </li>
                        </ol>
                    </div>

                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-primary" onclick="downloadModalContent('staticBackdrop1')">Download</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>


    </div>

    <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container pb-2 has-text-left" id="New2">
                        <div class="row">
                            <div class="col-md-12">
                                <h2 class="text-center mt-4"><u>List Of Architecture Colleges in Madhya Pradesh</u></h2>

                            </div>
                        </div>
                        <ol id="OrderList5">
                            <li>Maulana Azad National Institute of Technology,Bhopal

                            </li>
                            <li>Amity University, Gwalior

                            </li>
                            <li>SAGE University, Indore
                            </li>
                            <li>Madhav Institute of Technology and Science, Gwalior</li>

                            <li>LNCT University, Bhopal</li>

                            <li>VIT Bhopal University, Bhopal

                            </li>
                            <li>SAGE University, Indore
                            </li>
                            <li>Amity University, Gwalior

                            </li>
                            <li>Shri Vaishnav Vidyapeeth Vishwavidyalaya, Indore
                            </li>
                            <li>Rajiv Gandhi Proudyogiki Vishwavidyalaya, Bhopal
                            </li>
                            <li>Jagran Lakecity University, Bhopal </li>

                            <li>Sri Satya Sai University of Technology and Medical Sciences, Bhopal </li>
                            <li>Bagulamukhi College of Architecture and Planning, Bhopal </li>
                        </ol>
                    </div>

                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-primary" onclick="downloadModalContent('staticBackdrop2')">Download</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container pb-2 has-text-left" id="New4">
                        <div class="row">
                            <div class="col-md-12">
                                <h2 class="text-center mt-4"><u>List Of Medical Science Colleges in Madhya Pradesh</u></h2>

                            </div>
                        </div>
                        <ol id="OrderList7">
                            <li>Mansarovar Group of Institutions, Bhopal


                            </li>
                            <li>Atal Bihari Vajpayee Government Medical College, Vidisha
                            </li>
                            <li>Mansarovar Global University, Bhopal
                            </li>
                            <li>Amity University, Gwalior</li>

                            <li>Sri Aurobindo Institute of Medical Science, Indore</li>

                            <li>Mahatma Gandhi Memorial Medical College, Indore


                            </li>
                            <li>SAGE University, Indore
                            </li>
                            <li>SAGE University, Bhopal

                            </li>
                            <li>Gandhi Medical College, Bhopal

                            </li>
                            <li>RKDF University, Bhopal

                            </li>
                            <li>Netaji Subhash Chandra Bose Medical College, Jabalpur </li>


                            <li>Chirayu Medical College and Hospital, Bhopal </li>

                            <li>Sri Aurobindo Institute of Pharmacy, Indore </li>

                        </ol>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                     <button type="button" class="btn btn-primary" onclick="downloadModalContent('staticBackdrop3')">Download</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                </div>
            </div>
        </div>


    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function toggleNewCard() {
            var dropdown = document.getElementById('ddlLibrary');
            var newCard = document.getElementById('NewCard');

            if (ddlLibrary.value === '1') {
                NewCard.style.display = 'block';
                NewCard1.style.display = 'none';
                NewCard2.style.display = 'none';
                NewCard3.style.display = 'none';

            } else if (ddlLibrary.value === '2') {
                NewCard1.style.display = 'block';
                NewCard.style.display = 'none';
                NewCard2.style.display = 'none';
                NewCard3.style.display = 'none';
            }
            else if (ddlLibrary.value === '3') {
                NewCard2.style.display = 'block';
                NewCard1.style.display = 'none';
                NewCard.style.display = 'none';
                NewCard3.style.display = 'none';
            }

            else if (ddlLibrary.value === '4') {
                NewCard3.style.display = 'block';
                NewCard.style.display = 'none';
                NewCard1.style.display = 'none';
                NewCard2.style.display = 'none';
            }
            else {
                NewCard.style.display = 'none';
                NewCard1.style.display = 'none';
                NewCard2.style.display = 'none';
                NewCard3.style.display = 'none';
            }
        }
    </script>


    <script>
        function downloadModalContent(modalId) {
            var modalContent = document.getElementById(modalId).innerHTML;
            var blob = new Blob([modalContent], { type: 'text/html' });
            var link = document.createElement('a');
            link.href = window.URL.createObjectURL(blob);
            link.download = 'modal-content.html';
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
            window.URL.revokeObjectURL(link.href);
        }
</script>

</asp:Content>

