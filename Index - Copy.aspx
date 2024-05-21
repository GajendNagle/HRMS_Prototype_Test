<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index - Copy.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
    <title>School Education Portal 3.0  - SED</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.html" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600&amp;family=Rubik:wght@500;600;700&amp;display=swap" rel="stylesheet">
    <link href="
https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css
"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Icon Font Stylesheet -->
    <link href="../css/all.min.css" rel="stylesheet" />
    <link href="../css/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/carousel.css" rel="stylesheet" />
    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Spinner Start -->
            <div id="spinner"
                class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
            </div>
            <!-- Spinner End -->
            <!-- Topbar Start -->
            <div class="container-fluid bg-dark px-0">
                <div class="row g-0 d-none d-lg-flex">
                    <div class="col-lg-6 ps-5 text-start">
                        <div class="h-100 d-inline-flex align-items-center text-white">
                            <span> <a target="_blank" href="Index.aspx" class="text-white">
                                <strong style="font-size: x-large">स्कूल शिक्षा विभाग, मध्य प्रदेश शासन  </strong></a>&nbsp</span>

                        </div>
                    </div>
                    <div class="col-lg-6 text-end">
                        <div class="h-100 topbar-right d-inline-flex align-items-center text-white py-2 px-5">
                             <a target="_blank" class="btn btn-link text-light" href="https://www.facebook.com/MPEducationPortal"><i class="fab fa-facebook-f" title="Facebook"></i></a>
                             <a target="_blank" class="btn btn-link text-light" href="https://twitter.com/schooledump?lang=en"><i class="fab fa-x-twitter" title="Twitter"></i></a>
                             <a target="_blank" class="btn btn-link text-light" href="https://www.instagram.com/mp_education_/?hl=en"><i class="fab fa-instagram" title="Instagram"></i></a>
                             <a target="_blank" class="btn btn-link text-light" href="https://www.youtube.com/hashtag/mpeducationportal"><i class="fab fa-youtube" title="Youtube"></i></a>
                             <a target="_blank" class="btn btn-link text-light" href="https://play.google.com/store/apps/details?id=com.nic.bhopal.sed.mshikshamitra&hl=en" title="m-Siksha Mitra App"><i class="fab fa-android"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Topbar End -->
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top py-0 pe-5">
                 <a target="_blank" href="Index.aspx" class="navbar-brand ps-5 me-0">
                    <h1 class="text-white m-0">
                        <img class="nav-logo" src="../img/HRMS_Logo.png" /></h1>
                </a>
                <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse" style="margin-left: 1rem;">
                    <div class="navbar-nav ml-3  p-4 p-lg-0">
                         <a target="_blank" class="nav-item nav-link active" href="Index.aspx">होम</a>

                        <div class="nav-item dropdown">
                             <a target="_blank" href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">कार्यालयों</a>
                            <div class="dropdown-menu bg-light m-0">
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/DepartmentalStructure/Public/DepartmentalStructure.aspx">विभागीय संरचना एवं विभागीय संगठन</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/OFFICES/Offices/DepartmentResponsibility.aspx">स्कूल शिक्षा विभाग के दायित्व</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/OFFICES/Offices/ActandRules.aspx">विभाग द्वारा क्रियान्वित किये जा रहे अधिनियम एवं नियम</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/OFFICES/Offices/State.aspx?OL=MQ==">विभाग / मण्डल / राज्य स्तरीय कार्यालय</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/OFFICES/Offices/State.aspx?OL=Mg==">सम्भागीय कार्यालय</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/OFFICES/Offices/DistrictOffices.aspx?OL=OA==">जिला स्तरीय कार्यालय-   जिला शिक्षा अधिकारी कार्यालय (DEO)   जिला परियोजना अधिकारी कार्यालय</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/OFFICES/Offices/DistrictOffices.aspx">ब्लॉक स्तरीय कार्यालय -   ब्लॉक शिक्षा अधिकारी कार्यालय /  ब्लॉक परियोजना अधिकारी कार्यालय</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/JSKManagment/Default.aspx">जनशिक्षा केंद्र प्रबंधन प्रणाली </a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/esb/public/ddo_list.aspx">संकुल कार्यालय</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Offices/Offices/RTI_SED.aspx">सूचना का अधिकार</a>

                            </div>
                        </div>
                        <div class="nav-item dropdown">
                             <a target="_blank" href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">सेवाएं</a>
                            <div class="dropdown-menu bg-light m-0">
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/ESB/Public/Birthday.aspx">जन्मदिन</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Search/Search.aspx?MP=2&Search=UniqueID">अपनी विशिष्ट आईडी जानें</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Search/Search_DDO_Code.aspx">अपने डीडीओ को जानें</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Search/Search_DDO.aspx">सम्पर्क करने का विवरण</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Schools/Main_Page.aspx">स्कूल खोजें</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Search/Search.aspx?MP=2&Search=SchoolID">स्कूल का डाइस कोड खोजें</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                             <a target="_blank" href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">विद्यालय</a>
                            <div class="dropdown-menu bg-light m-0">
                                <%--  <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/ESB/Public/Birthday.aspx">जन्मदिन</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Search/Search.aspx?MP=2&Search=UniqueID">अपनी विशिष्ट आईडी जानें</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Search/Search_DDO_Code.aspx">अपने डीडीओ को जानें</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Search/Search_DDO.aspx">सम्पर्क करने का विवरण</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Schools/Main_Page.aspx">स्कूल खोजें</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/Search/Search.aspx?MP=2&Search=SchoolID">स्कूल का डाइस कोड खोजें</a>--%>
                            </div>
                        </div>

                        <div class="nav-item dropdown">
                             <a target="_blank" href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">मानव संसाधन प्रबंधन</a>
                            <div class="dropdown-menu bg-light m-0">
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/PayRolls/Defaultn.aspx">ऑनलाइन पेरोल प्रणाली 2.0 </a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/ShalaPrabhari/Default.aspx">शाला प्रभारी प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/EOMS/Default.aspx">ई-ऑर्डर प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/eKYC/Default.aspx">कर्मचारी ईकेवाईसी  प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/TTransfer/index.html">ऑनलाइन शिक्षक स्थानांतरण प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/DOMS/Default.aspx">ऑनलाइन प्रतिनियुक्ति आदेश सृजन एवं प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/ROMS/Default.aspx">ऑनलाइन रिलीविंग एवं ज्वाइनिंग प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/TAMS/index.html">शिक्षक नियुक्ति प्रबंधन प्रणाली [TAMS]</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Public/404.htm">संविलियन आदेश</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/OUTCOMES/Default.aspx">अधिशेष शिक्षक प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Grievances/Default.aspx">परिवेदना निवारण प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/CAFMS/Default.aspx">अनुकंपा नियुक्ति हेतु आवेदन करे </a>
                            </div>
                        </div>

                        <div class="nav-item dropdown">
                             <a target="_blank" href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">संस्थान</a>
                            <div class="dropdown-menu bg-light m-0">
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/OFFICES/Offices/OtherInstitutesCollegeslist.aspx?ID=Mg==">संस्थान</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/DIETPortal/Index.aspx">जिला शिक्षा प्रशिक्षण संस्थान (DIET) / जिला संसाधन केंद्र (DRC)</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Library/Default.aspx">केन्द्रीय पुस्तकालय</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                             <a target="_blank" href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">प्रोत्साहन और सहायता</a>
                            <div class="dropdown-menu bg-light m-0">


                                 <a target="_blank" class="dropdown-item" title="छात्रवृत्ति प्रबंधन प्रणाली , Scholarship Management System"
                                    href="http://shikshaportal.mp.gov.in/Public/Schemes/Default.aspx">समेकित छात्रवृत्ति
                                              योजना प्रबंधन प्रणाली
                                </a>


                                 <a target="_blank" class="dropdown-item" title="Children with Special Needs:  Identification, Tracking and Management System"
                                    target="_blank" href="http://shikshaportal.mp.gov.in/CWSN/Default.aspx">विशेष आवश्यकता
                                              वाले  छात्र (CWSN): चिंहांकन, सहायता, ट्रैकिंग प्रबंधन
                                </a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/TextBooks/Default.aspx">नि:शुल्क पाठ्य पुस्तक वितरण योजना प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/CWSN/Default.aspx">दिव्यांग छात्रावास की स्थापना एवं संचालन</a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/SanikSchool/Default.aspx">सैनिक स्कूल की स्थापना एवं संचालन</a>
                                 <a target="_blank" class="dropdown-item" href="http://shikshaportal.mp.gov.in/Uniform/Default.aspx">नि:शुल्क गणवेश वितरण योजना  प्रबंधन प्रणाली </a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Cycle/Default.aspx">नि:शुल्क साइकिल वितरण योजना प्रबंधन प्रणाली</a>
                                 <a target="_blank" class="dropdown-item" href="http://shikshaportal.mp.gov.in/Laptop/Default.aspx">प्रतिभाशाली विध्यार्थी प्रोत्साहन योजना प्रबंधन प्रणाली </a>
                                 <a target="_blank" class="dropdown-item" href="https://www.educationportal.mp.gov.in/Super100/Default.aspx">सुपर 100 योजना </a>
                            </div>
                        </div>
                    </div>

                </div>
            </nav>
            <!-- Navbar End -->
            <!-- Carousel Start -->
            <div class="container-fluid px-0 mb-5 ">
                <section id="carousel" class="">

                    <main>
                        <ul class='slider'>
                            <%-- <li class='item' style="background-image: url('../img/DPI_Sports1.png')">
                                <div class='content'>
  
                                     <a target="_blank" href="#" class="">View More</a>
                                </div>
                            </li>--%>
                            <li class='item' style="background-image: url('../img/DPI_Fees.png')">
                                <div class='content'>
                                    <%--    <h2 class='title'>"DPI School Fees"</h2>
                                    <p class='description'>
                                    </p>--%>
                                     <a target="_blank" href="https://dpimp.in/" class="btn btn-warning">View More</a>
                                </div>
                            </li>
                            <li class='item' style="background-image: url('../img/first.png')">
                                <div class='content'>
                            
                                </div>
                            </li>
                            <li class='item' style="background-image: url('../img/second.png')">
                                <div class='content'>
                            
                                </div>
                            </li>
                            <li class='item' style="background-image: url('../img/third.png')">
                                <div class='content'>
                            
                                </div>
                            </li>
                            <li class='item' style="background-image: url('../img/DPI_Noc.png')">
                                <div class='content'>
                                    <%--   <h2 class='title'>"DPI School NOC"</h2>
                                    <p class='description'>
                                    </p>--%>
                                     <a target="_blank" href="https://dpinoc.tserver.co.in/" class="btn btn-warning">View More</a>
                                </div>
                            </li>
                            <li class='item' style="background-image: url('../img/DPI_Legal.png')">
                                <div class='content'>
                                    <%-- <h2 class='title'>"DPI Legal"</h2>
                                    <p class='description'>
                                    </p>--%>
                                     <a target="_blank" href="https://dpi.legalmonitoring.in/" class="btn btn-warning">View More</a>
                                </div>
                            </li>
                            <li class='item' style="background-image: url('../img/DPI_Sports.png')">
                                <div class='content'>
                                    <%--  <h2 class='title'>"DPI Sports"</h2>
                                    <p class='description'>
                                    </p>--%>
                                     <a target="_blank" href="https://dpisports.in/" class="btn btn-warning">View More</a>
                                </div>
                            </li>
                            <li class='item' style="background-image: url('../img/DPI_HRMS.png')">
                                <div class='content'>
                                    <%-- <h2 class='title'>"DPI HRMS"</h2>
                                    <p class='description'>
                                    </p>--%>
                                     <a target="_blank" href="https://hrms.dpimp.in/" class="btn btn-warning">View More</a>
                                </div>
                            </li>
                            <li class='item' style="background-image: url('../img/DPI_Payroll.png')">
                                <div class='content'>
                                                                         <a target="_blank" href="https://hrms.dpimp.in/" class="btn btn-warning">View More</a>

                                    <%-- <h2 class='title'>"Payroll"</h2>
                                    <p class='description'>
                                    </p>
                                     <a target="_blank" href="#" class="">View More</a>--%>
                                </div>
                            </li>

                        </ul>
                        <nav class='nav'>
                            <ion-icon class='btn prev' name="arrow-back-outline"></ion-icon>
                            <ion-icon class='btn next' name="arrow-forward-outline"></ion-icon>
                        </nav>
                    </main>
                </section>
            </div>
          







            <!-- Footer Start -->
            <div class="container-fluid bg-dark footer  wow fadeIn" data-wow-delay="0.1s">
                <div class="container py-5">
                    <div class="row g-5">
                        <div class="col-lg-4 col-md-4">
                            <h5 class="text-white mb-4">School Education Portal 3.0</h5>
                            <p class="mb-2">
                                <i class="fa fa-map-marker-alt me-3"></i><strong>Directorate of Public Instructions, DPI, M.P.</strong>
                                <br />
                                (School Education Department MP)
                                <br />
                                Near Chetak Bridge, Gautam Nagar,
                                <br />
                                Bhopal, Madhya Pradesh, India (462023)
                            </p>
                            <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>0755 258 3653</p>
                            <p class="mb-2">
                                <i class="fa fa-envelope me-3"></i>educationportalmpdpi@gmail.com ,
                                <br />
                                educationportal@datamail.in
                            </p>
                            <div class="d-flex pt-3">

                                 <a target="_blank" class="btn btn-square btn-primary rounded-circle me-2" href="https://www.facebook.com/MPEducationPortal">
                                    <i class="fab fa-facebook-f" title="Facebook"></i>
                                </a>
                                 <a target="_blank" class="btn btn-square btn-primary rounded-circle me-2" href="https://www.instagram.com/mp_education_/?hl=en">
                                    <i class="fab fa-instagram" title="Instagram"></i>
                                </a>
                                 <a target="_blank" class="btn btn-square btn-primary rounded-circle me-2" href="https://twitter.com/schooledump?lang=en">
                                    <i class="fab fa-x-twitter" title="Twitter"></i>
                                </a>
                                 <a target="_blank" class="btn btn-square btn-primary rounded-circle me-2" href="https://www.youtube.com/hashtag/mpeducationportal">
                                    <i class="fab fa-youtube" title="Youtube"></i>
                                </a>
                                 <a target="_blank" class="btn btn-square btn-primary rounded-circle me-2" href="https://play.google.com/store/apps/details?id=com.nic.bhopal.sed.mshikshamitra&hl=en">
                                    <i class="fab fa-android" title="m-Siksha Mitra App"></i>
                                </a>




                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <h5 class="text-white mb-4">Quick Links</h5>
                             <a target="_blank" class="btn btn-link" href="https://dpisports.in/">DPI Sports Management</a>
                             <a target="_blank" class="btn btn-link" href="https://dpimp.in/">DPI Fees Management</a>
                             <a target="_blank" class="btn btn-link" href="https://dpi.legalmonitoring.in/">DPI Legal</a>
                             <a target="_blank" class="btn btn-link" href="https://dpinoc.tserver.co.in/">DPI NOC</a>
                             <a target="_blank" class="btn btn-link" href="https://hrms.dpimp.in/">DPI HRMS </a>
                             <a target="_blank" class="btn btn-link" href="https://hrms.dpimp.in/">DPI Payroll </a>
                             <a target="_blank" class="btn btn-link" href="https://hrms.dpimp.in/">DPI School Directory </a>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <h5 class="text-white mb-4">Contact Us</h5>
                            <a target="_blank" class="btn btn-link" href="https://dpihrms.tserver.co.in/TelephoneDirectory.aspx">Telephone Directory</a>
                            <a target="_blank" class="btn btn-link" href="https://dpihrms.tserver.co.in/ContactUs.aspx">Contact Us</a>
             
                        </div>

                    </div>
                </div>
            </div>
            <!-- Footer End -->
            <!-- Copyright Start -->
            <div class="container-fluid copyright bg-dark py-4">
                <div class="" style="padding:0 5rem;">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 text-left">
                            <p class="">
                                copyright &copy;2024  <a target="_blank" class="fw-semi-bold" href="Index.aspx">Madhya Pradesh State Education Portal 3.0</a>, all right reserved.
           
                            </p>
                        </div>
                        <div class="col-lg-3 col-md-3 text-center">
                            <p class="">
                                Design & Developed By :  <a target="_blank" class="fw-semi-bold" href="#">NICSI</a>
                            </p>
                        </div>
                        <div class="col-lg-3 col-md-3 text-end">
                            <p class="">
                                Last Updated On :   <a target="_blank" class="fw-semi-bold" href="#">06/02/2024</a>
                            </p>
                        </div>  
                      
                    </div>


                </div>
            </div>
            <!-- copyright end -->
            <!-- back to top -->
             <a target="_blank" href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top">
                <i class="bi bi-arrow-up"></i>
            </a>



            <div class="modal fade" id="NotificationModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg ">
                    <div class="modal-content">
                    
                        <div class="modal-body" style="min-height:80vh">
                            <button type="button" class="btn-close float-end text-danger" data-bs-dismiss="modal" aria-label="Close"></button>
                            <div class="section-title">
                                <h4 class="text-center card-title d text-dark" id="staticBackdropLabel">महत्वपूर्ण सूचना</h4>
                                <br />
                                <ul class="notification">
                         
                                       <li>
                                           <div class="singel-event">
                                               <a target="_blank" href="https://www.educationportal.mp.gov.in/Portal/Public/View_News.aspx?id=MTA2NTY=">

                                                   <h6><i class="fa fa-hand-o-right"></i>
                                                       (1) इंदौर - शासकीय संयोगितागंज उमावि  बालक उमावि इंदौर - जिस स्कूल में  कभी पढ़े थे जॉनी वाकर , उस स्कूल को संवारेगा अब  नगर निगम इंदौर.
                                                       (2) कामकाज के लिए पलायन - सबसे  ज्यादा लोग भारत  से गए / अमेरिका पहला ठिकाना (३) माध्यमिक शिक्षा मंडल हेल्प लाइन - बीते साल में  एक लाख सैंतीस हजार कॉल आये   - न्यूज़ दीपक हलवे ,प्राचार्य , शासकीय हाई स्कूल ,बालौदा टाकून , इंदौर           </h6>
                                               </a>
                                           </div>
                                       </li>

                                </ul>


                            </div>

                        </div>
                       
                    </div>
                </div>
            </div>





            <!-- JavaScript Libraries -->
            <script src="js/jquery-3.4.1.min.js"></script>
            <script src="js/bootstrap.bundle.min.js"></script>
            <script src="lib/wow/wow.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/waypoints/waypoints.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>
            <script src="lib/counterup/counterup.min.js"></script>

            <!-- Template Javascript -->
            <script src="js/main.js"></script>
            <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
            <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
            <script src="js/carousel.js"></script>

            <script type="text/javascript">
                function ShowPopup() {
                    $('#NotificationModal').modal('show');
                }
            </script>

        </div>
    </form>
</body>
</html>





