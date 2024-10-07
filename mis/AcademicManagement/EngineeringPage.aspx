<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EngineeringPage.aspx.cs" Inherits="mis_AcademicManagement_EngineeringPage" %>

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
                        <h1 class="text-center text-primary"><u>Engineering</u></h1>
                    </div>

                    <div class="p-2 mb-0 content is-medium customContent has-text-left">
                        <p class="text-justify">Stand and take a look around yourself. What do you find? Maybe phones, chairs, fans, a television, or even your clothes all the day to day things that are man-made. You can be sure that an engineer helped to make it. There are many different kinds of engineers from aeronautical, automobile, civil, chemical, mechanical, electrical, electronics, textile, agricultural etc. etc... Our civilization would be as advanced as the Stone Age without these people. This career demands a wide knowledge of subjects such as science, English, and a strong foundation of mathematics. Engineering also requires imagination because the engineer will have to invent objects used for everyday life or improve existing objects to upgrade the environment for people. Day to day work on any field in engineering will be about solving problems using technical and practical skills, maths, science, research, prototypes, design, manufacturing, production and maintenance. Strong communication skill, technical expertise in a subject will make you shine in your career on a long run. The field’s advantages include interesting, creative work and working with the latest technological advances in the field you choose to go into. As an engineer, your workplace can be anywhere. Maybe in an office, in a factory, on an oil rig in the middle of the ocean, in a laboratory, or even in outer space. Once you set yourself in the right place, Engineers are very secure with respect to material compensation. &nbsp;</p>
                    </div>
                </div>

            </div>
        </div>

        <div class="card-body">
            <div class="row justify-content-center mt-4">
                <div class="col-lg-12 col-sm-12 col-md-12">
                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <a href="SoundPage.aspx">
                                <div class="card-wrap">
                                    <div class="card-content">
                                        <img src="https://lmes-mars-cdn.jujube.in/images/departments/1593427043067_image.png" alt="Sound" class="StreamImage">
                                    </div>

                                    <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Sound
                  </h1>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3">
                            <a href="IndustrialSummary.aspx">
                                <div class="card-wrap">
                                    <div class="card-content">
                                        <img src="https://lmes-mars-cdn.jujube.in/images/departments/1593427002446_image.png" alt="Industrial " class="StreamImage">
                                    </div>
                                    <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Industrial
</h1>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3">
                            <a href="MechanicalSummary.aspx">
                                <div class="card-wrap">
                                    <div class="card-content">
                                        <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589878454560_image.png" alt="Mechanical " class="StreamImage">
                                    </div>
                                    <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Mechanical 
                  </h1>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="ElectricalSummary.aspx">
                                <div class="card-wrap">
                                    <div class="card-content">
                                        <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589875874385_image.png" alt="Electrical" class="StreamImage">
                                    </div>

                                    <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Electrical
</h1>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">

                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589874426342_image.png" alt="Civil " class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Civil
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589875895331_image.png" alt="Electronics and Communication " class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Electronics and Communication 
</h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589879144584_image.png" alt="Computer Science " class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Computer Science 
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589875914072_image.png" alt="Electronics &amp; Instrumentation" class="StreamImage">
                                </div>

                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Electronics &amp; Instrumentation
</h1>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589874250001_image.png" alt="Bio-tech/Bio-medical" class="StreamImage">
                                </div>

                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Bio-tech/Bio-medical
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589878484238_image.png" alt="Mechatronics" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Mechatronics
</h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589873546406_image.png" alt="Aeronautical" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Aeronautical 
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589878250543_image.png" alt="Marine" class="StreamImage">
                                </div>

                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Marine
</h1>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">

                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589873719694_image.png" alt="Automobile" class="StreamImage">
                                </div>

                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Automobile
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589878232760_image.png" alt="Manufacturing &amp; Production" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Manufacturing &amp; Production
</h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589815677162_image.png" alt="Artificial Intelligence" class="StreamImage">
                                </div>
                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Artificial Intelligence 
                  </h1>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/departments/1589873561699_image.png" alt="Agriculture" class="StreamImage" />
                                </div>

                                <div class="media-content has-text-centered is-vcentered text-center" style="height: 100px;">
                                    <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Agriculture
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

