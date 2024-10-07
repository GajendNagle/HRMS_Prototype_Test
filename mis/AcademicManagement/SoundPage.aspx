<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SoundPage.aspx.cs" Inherits="mis_AcademicManagement_SoundPage" %>

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

        .PathView .dark {
            background: #3f48cc;
            color: #fff !important;
        }

        .column.is-2, .column.is-2-tablet {
            flex: none;
            width: 16.66666674%;
        }

        .column {
            display: block;
            flex-basis: 0;
            flex-grow: 1;
            flex-shrink: 1;
            padding: .75rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="card card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">

                    <h1>Sound Summary</h1>

                    <div class="p-2 mb-0 content is-medium customContent has-text-left">
                        <div class="Overlay">
                            <div class="container mt-2">
                                <div class="columns is-tablet is-multiline">
                                    <div class="column is-6 has-text-white has-text-left">

                                        <div class="p-0 mb-0 customContent">
                                            <p>Engineering pokes its nose on everything, from food to space. But sound? Why not! Sound engineering has been demanding its importance in this modern world lately. It has strongly established its throne, especially in the music and film industry. “Without music, life would be a mistake”, Friedrich Nietzsche. Sound Engineers are magic makers in today’s Cinematic world. Every song you hear and every movie you enjoy, each and every inch of sound would have been carefully tuned and tailored by a sound engineer. The 21st century is a world of DTS and Dolby Atmos.&nbsp;</p>

                                            <p>&nbsp;</p>

                                            <p>
                                                Sound engineers add a sensational touch to a prerecorded and fascinating mind. Sound Engineers are diverse in various fields of Audio production. Music makes the world move; Sound Engineering makes music’s move. Be it AR Rahman’s music or Shreya Ghoshal voice, it will be your hands that adds the final touch of the magical spice to their symphony.&nbsp; Exercise your ears every day as it would be your primary weapon of choice in your daily life as a sound engineer. With a handsome of experience and skill, you can expect a good cash flow, but popularity would not be your piece of cake.<br>
                                                <br>
                                                <strong>So, what do you do on a daily basis?</strong>
                                            </p>

                                            <ul>
                                                <li>
                                                    <p>Set up and maintain audio equipment. Ensure the safety concern of the equipment, so the instrument doesn’t trip during a concert.</p>
                                                </li>
                                                <li>
                                                    <p>Enhancing and Enriching audio tracks by mixing multiple layers to deliver the desired output.</p>
                                                </li>
                                                <li>
                                                    <p>Sound Engineers work as a part of the audio-visual part to capture events, big concerts and recordings.</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="card-body">
            <div class="container pb-2 has-text-left ms-2">
                <div>
                    <h1 id="path" class="title is-4 mt60 has-text-weight-bold">Path 1
        </h1>
                    <div class="columns PathView" style="min-height: 98px;">
                        <div class="column is-2">
                            <p class="is-size-6 has-text-weight-light">Stream :</p>
                            <div class="is-size-6 has-text-weight-bold" style="overflow: hidden;">
                                <span style="box-shadow: transparent 0px 0px;"><span aria-label="XII in any stream">XII in any stream
              </span></span>
                            </div>
                        </div>
                        <div class="column hasArrow is-3 dark">
                            <p class="pl-4 is-size-6 has-text-weight-light">Graduation :</p>
                            <div class="pl-4 is-size-6 has-text-weight-bold" style="overflow: hidden;">
                                <span style="box-shadow: transparent 0px 0px;"><span aria-label="Diploma in sound engineering">Diploma in sound engineering
              </span></span>
                            </div>
                        </div>
                        <!---->
                        <!---->
                    </div>
                </div>

                <div class="mt-3">
                    <h1 id="path" class="title is-4 mt50 has-text-weight-bold mt-2">Path 2
        </h1>
                    <div class="columns PathView" style="min-height: 98px;">
                        <div class="column is-2">
                            <p class="is-size-6 has-text-weight-light">Stream :</p>
                            <div class="is-size-6 has-text-weight-bold" style="overflow: hidden;">
                                <span style="box-shadow: transparent 0px 0px;"><span aria-label="XII in any stream">XII in any stream
              </span></span>
                            </div>
                        </div>
                        <div class="column hasArrow is-3 dark">
                            <p class="pl-4 is-size-6 has-text-weight-light">Graduation :</p>
                            <div class="pl-4 is-size-6 has-text-weight-bold" style="overflow: hidden;">
                                <span style="box-shadow: transparent 0px 0px;"><span aria-label="Certificate in creative arts digital sound">Certificate in creative arts digital sound
              </span></span>
                            </div>
                        </div>
                        <div class="column hasArrow is-3">
                            <p class="pl-4 is-size-6 has-text-weight-light">
                                After Graduation :
           
                            </p>
                            <div class="pl-4 is-size-6 has-text-weight-bold" style="overflow: hidden;">
                                <span style="box-shadow: transparent 0px 0px;"><span aria-label="Certificate in audio technology">Certificate in audio technology
              </span></span>
                            </div>
                        </div>
                        <!---->
                    </div>
                </div>
                <!---->
                <div class="guidanceContent"></div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

