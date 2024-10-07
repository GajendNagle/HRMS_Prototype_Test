<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ComputerScience.aspx.cs" Inherits="mis_AcademicManagement_ComputerScience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="../dist/dashboard/hrmsdashboard.css" rel="stylesheet" />

    <style>
        .radius-defalt {
            border-radius: var(--vz-card-border-radius) !important;
        }

        .StreamImage {
            width: 110px !important;
            height: 110px !important;
            margin: 0 auto;
        }

        .media-content {
            flex-basis: auto;
            flex-grow: 1;
            flex-shrink: 1;
            text-align: inherit;
        }

        .has-text-left {
            text-align: left !important;
        }

        .title.is-5 {
            font-size: 1.25rem;
        }

        .customContent, .customContent p, .customContent span {
            font-family: "Muli", sans-serif !important;
            font-size: 16px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="card card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="">
                        <h1>Computer Science & IT</h1>
                    </div>

                    <div class="p-2 mb-0 content is-medium customContent has-text-left">
                       <p>Computer Science course is designed in a way that covers all the aspects, to prepare the students in making a career in the software industry. This systematic study and their application would help students to sharpen their logical and analytical skills for excelling in their field. In this course, you will be exposed to subjects like Digital Electronics, Operating System, Analysis Design of Algorithm, Programming Languages, Microprocessor, Computer Software, System Software, Database Management System, Mobile Communications, Cryptography and Network Security, Performance Evaluation, Ad-Hoc Networks, and more. As these may sound complicated but they are simple once you could understand their application in the practical world. So, a bachelor's degree in computer science should be sufficient for most software engineers. Yet a master's degree is nice to have and usually comes with a higher starting salary, but not mandatory. </p>
                    </div>
                </div>

            </div>
        </div>

        <div class="card-body">
            <div class="row justify-content-center mt-4">
                <div class="col-lg-12 col-sm-12 col-md-12">
                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                                <div class="card-wrap">
                                    <div class="card-content">
                                        <img src="https://lmes-mars-cdn.jujube.in/images/departments/1598934195029_image.png" alt="Technical Writer" class="StreamImage">
                                    </div>

                                    <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Technical Writer
                  </h1>
                                    </div>
                                </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589806226093_image.png" alt="Data Scientist" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Data Scientist
</h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                   <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589806210663_image.png" alt="Data Mining" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Data Mining 
                  </h1>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1598934174328_image.png" alt="Human-computer interaction expert" class="StreamImage">
                                </div>

                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Human-computer interaction expert
</h1>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">

                                   <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589807612940_image.png" alt="Machine Learning" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Machine Learning
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589806188460_image.png" alt="Database Administrator" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Database Administrator 
</h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589806923282_image.png" alt="Full-stack Developer" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Full-stack Developer 
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589809431970_image.png" alt="Web Programmer" class="StreamImage">
                                </div>

                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Web Programmer
</h1>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                   <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589809126330_image.png" alt="System Analyst" class="StreamImage">
                                </div>

                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">System Analyst
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589898468127_image.png" alt="Computer Programmers" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Computer Programmers
</h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589806124351_image.png" alt="Cyber security expert &amp; ethical hacking" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Cyber security expert &amp; ethical hacking 
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                   <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589808957047_image.png" alt="Software consultant" class="StreamImage">
                                </div>

                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Software consultant
</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

