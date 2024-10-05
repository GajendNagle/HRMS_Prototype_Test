<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CareerGuidance.aspx.cs" Inherits="mis_AcademicManagement_CareerGuidance" %>

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

        .has-text-centered {
            text-align: center !important;
        }

        .title.is-5 {
            font-size: 1.25rem;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="card card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="">
                        <h1>Your Career Library</h1>
                    </div>
                    <div class=" mx-auto col-md-5 mt-3">
                        <input class="form-control rounded-4 mt-3" type="search" placeholder="Search" aria-label="Search">
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
                                    <a href="EngineeringPage.aspx"><img src="https://lmes-mars-cdn.jujube.in/images/streams/1589815770124_image.png" alt="Engineering" class="StreamImage"></a>
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Engineering
                  </h1>
                                        <span class="mb-3 d-block">( 30 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589809570021_image.png" alt="Computer Science &amp; IT" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Computer Science &amp; IT
</h1>
                                        <span class="mb-3 d-block">( 16 Career Options )
</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589815643810_image.png" alt="Architecture " class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Architecture 
                  </h1>
                                        <span class="mb-3 d-block">( 4 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589807763667_image.png" alt="Medical Science" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Medical Science
</h1>
                                        <span class="mb-3 d-block">( 8 Career Options )
</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589804952369_image.png" alt="Allied Medicine" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Allied Medicine
                  </h1>
                                        <span class="mb-3 d-block">( 11 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589877672573_image.png" alt="Science" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Science 
</h1>
                                        <span class="mb-3 d-block">( 27 Career Options )
</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589815858493_image.png" alt="Mathematics &amp; Statistics" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Mathematics &amp; Statistics 
                  </h1>
                                        <span class="mb-3 d-block">( 4 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589807180773_image.png" alt="Humanities, Liberal Arts &amp; Social Sciences" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Humanities, Liberal Arts &amp; Social Sciences
</h1>
                                        <span class="mb-3 d-block">( 17 Career Options )
</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589898418206_image.png" alt="Defense services " class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Defense services 
                  </h1>
                                        <span class="mb-3 d-block">( 5 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589877685638_image.png" alt="Banking &amp; Finance" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Banking &amp; Finance
</h1>
                                        <span class="mb-3 d-block">( 15 Career Options )
</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589815626881_image.png" alt="Advertising &amp; Marketing" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Advertising &amp; Marketing 
                  </h1>
                                        <span class="mb-3 d-block">( 3 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589815753223_image.png" alt="Economics &amp; Commerce" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Economics &amp; Commerce
</h1>
                                        <span class="mb-3 d-block">( 3 Career Options )
</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589877639400_image.png" alt="Food &amp; Agriculture" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Food &amp; Agriculture 
                  </h1>
                                        <span class="mb-3 d-block">( 9 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589877594485_image.png" alt="Law" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Law
</h1>
                                        <span class="mb-3 d-block">( 11 Career Options )
</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589805312640_image.png" alt="Aviation &amp; Merchant Navy" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Aviation &amp; Merchant Navy
                  </h1>
                                        <span class="mb-3 d-block">( 4 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589806505294_image.png" alt="Education &amp; Training" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Education &amp; Training
</h1>
                                        <span class="mb-3 d-block">( 9 Career Options )
</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589805220922_image.png" alt="Arts &amp; Design" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Arts &amp; Design 
                  </h1>
                                        <span class="mb-3 d-block">( 9 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589805048987_image.png" alt="Animation, Graphics &amp; VFX" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Animation, Graphics &amp; VFX
</h1>
                                        <span class="mb-3 d-block">( 8 Career Options )
</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589802632569_image.png" alt="Media &amp; Communication" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Media &amp; Communication
                  </h1>
                                        <span class="mb-3 d-block">( 15 Career Options )
                  </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <div class="card-wrap">
                                <div class="card-content">
                                    <img src="https://lmes-mars-cdn.jujube.in/images/streams/1589815883649_image.png" alt="Performing Arts" class="StreamImage">
                                </div>
                                <div class="card-header text-nowrap text-center">
                                    <div class="media-content has-text-centered is-vcentered" style="height: 100px;">
                                        <h1 class="title is-5 is-size-6-mobile has-text-weight-bold mb-2 mt-2">Performing Arts
</h1>
                                        <span class="mb-3 d-block">( 8 Career Options )
</span>
                                    </div>
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

