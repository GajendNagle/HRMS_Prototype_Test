<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Scheme_Details.aspx.cs" Inherits="mis_Scheme_Scheme_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        @color: #669;
        @fontFamily: Verdana,sans-serif;
        @headHeight: 30px;
        @px: 10px;

        .rounded (@px) {
            -webkit-border-radius: @px;
            -moz-border-radius: @px;
            border-radius: @px;
        }

        body {
            font: 100%;
            padding: 20px;
            background-color: lighten(@color,35%);
        }

        #accordion {
            font-family: @fontFamily;
            width: 100%;
            h3

        {
            font-weight: 300;
            height: @headHeight;
            line-height: @headHeight;
            font-size: 0.875em;
            padding-left: 10px;
            padding-right: 10px;
            color: lighten(@color,35%);
            background-color: darken(@color,20%);
            border: 1px solid darken(@color,30%);
            margin-top: 4px;
            margin-bottom: 0;
            .rounded(20px);
            cursor: pointer;
            -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, .5);
            -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, .5);
            box-shadow: 0px 2px 2px rgba(0, 0, 0, .5);
            background-image: linear-gradient(darken(@color,10%), darken(@color,30%));
        }

        .detail {
            border: 1px solid darken(@color,30%);
            padding: 0 20px 0 20px;
            display: none;
            -webkit-border-bottom-left-radius: @px;
            -webkit-border-bottom-right-radius: @px;
            -moz-border-bottom-left-radius: @px;
            -moz-border-bottom-right-radius: @px;
            border-bottom-left-radius: @px;
            border-bottom-right-radius: @px;
            p

        {
            font-size: 0.875em;
            font-weight: 100;
            color: darken(@color,20%);
        }

        }

        .active {
            h3

        {
            font-weight: 600;
            color: lighten(@color,40%);
            -webkit-border-bottom-left-radius: 0;
            -webkit-border-bottom-right-radius: 0;
            -moz-border-bottom-left-radius: 0;
            -moz-border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
            border-bottom-right-radius: 0;
            -webkit-box-shadow: 0px 0px 2px rgba(0, 0, 0, .5);
            -moz-box-shadow: 0px 0px 2px rgba(0, 0, 0, .5);
            box-shadow: 0px 0px 2px rgba(0, 0, 0, .5);
        }

        .detail {
            display: block;
            -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, .5);
            -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, .5);
            box-shadow: 0px 2px 2px rgba(0, 0, 0, .5);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Scheme Details</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">SchemeManagement</a></li>
                        <li class="breadcrumb-item active">Scheme Details</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">
                <span id="ContentBody_lblMsg"></span>
                <fieldset>
                    <legend>Scheme Details</legend>
                    <div class="row form-group">

                        <div class="col-md-12">
                            <div id="accordion">

                                <div class="active">
                                    <h3>1.स्कूल शिक्षा विभाग</h3>
                                    <p></p>
                                    <div class="detail">
                                        <p><a href="#" onclick="ShowSanctionPopup()">1. सामान्य निर्धन वर्ग छात्रवृत्ति (कक्षा 6से 8) (केवल शास. विद्या. के लिये)</a></p>
                                        <p>2. सुदामा प्री-मेट्रिक छात्रवृत्ति योजना (कक्षा 9वीं से 10वीं) (केवल शास विद्या. के लिये)</p>
                                        <p>3. स्वामी विवेकानंद पोस्ट मेट्रिक प्रावीण्यछात्रवृत्ति योजना (केवल शास विद्या. के लिये)</p>
                                        <p>
                                            4. सुदामा षिष्यवृत्ति योजना (कक्षा 11वीं एवं 12वीं) प्रदेश के जिला/ विकास खण्ड मुख्यालय स्थित
शासकीय उत्कृष्ट विद्यालयों में कक्षा 11वीं एवं 12वीं में अध्ययनरत छात्रावास में निवास करने वाले, सामान्य
वर्ग के निर्धन छात्र/छात्रायें।
                                        </p>
                                        <p>5. डॉ. ए.पी.जे. अब्दुल कलाम मेधाव छात्र प्रोत्साहन योजना।(केवल शास विद्या.के लिये)</p>
                                        <p>
                                            6. मृत/अपंग/से.नि. शासकीय कर्मचारी के बच्चों को छात्रवृत्ति (केवल शास. विद्या. के लिये)
कक्षा 1 से 5 तक
कक्षा 6 से 8 तक
कक्षा 9 से 12 तक
                                        </p>
                                        <p>
                                            7. पितृहीन कन्याओं को छात्रवृत्ति(केवल शास. विद्या. के लिये)
कक्षा 1 से 5 तक
कक्षा 6 से 8 तक
कक्षा 9 से 12 तक
                                        </p>
                                        <p>
                                            8. इकलौती बेटी को ‘‘शिक्षा विकास छात्रवृति (म.प्र. माध्यमिक शिक्षा मण्डल से मान्यता प्राप्त एवं मण्डल
का पाठ्यक्रम संचालित करने वाले समस्त अशासकीय हायर सेकेण्ड्री विद्यालय) कक्षा 11 एवं 12
                                        </p>
                                    </div>
                                </div>
                                <div>
                                    <h3>2.अनुसूचित जाति कल्याण विभाग</h3>
                                    <p></p>
                                    <div class="detail">
                                        <p>1. राज्य शासन अ.जा. छात्रवृत्ति (नवीन एवं नवीनीकरण) कक्षा 1 से 5 (केवल बालिकाओं के लिए)</p>
                                        <p>2. ज्य शासन अ.जा. छात्रवृत्ति (नवीन एवं नवीनीकरण) कक्षा 6 से 8</p>
                                        <p>3. अनु. जाति कन्या साक्षरता प्रोत्साहन राशि कक्षा 11वीं</p>
                                    </div>
                                </div>



                                <div>
                                    <h3>3. जनजातीय कार्य विभाग</h3>
                                    <p></p>
                                    <div class="detail">
                                        <p>1. राज्य शासन अनु. जनजाति छात्रवृत्ति (नवीन एवं नवीनीकरण) कक्षा 1 से 8 योजना क्र-8805 (0102)</p>
                                        <p>2. राज्य शासन अनु. जन जाति छात्रवृत्ति (नवीन एवं नवीनीकरण) (कक्षा 6 से 8)</p>
                                        <p>3. अनु. जनजाति कन्या साक्षरता प्रोत्साहन राशि (8844) कक्षा 11वीं</p>
                                    </div>
                                </div>
                                <div>
                                    <h3>4. विमुक्त, घुमक्कड एवं अर्द्ध घुमक्कड जनजाति कल्याण विभाग</h3>
                                    <p></p>
                                    <div class="detail">
                                        <p>1. राज्य छात्रवृत्ति (प्राथमिक स्तर) कक्षा 1 से 5</p>
                                        <p>
                                            2. राज्य छात्रवृत्ति (माध्यमिक स्तर) कक्षा 6 से 8 तक
कक्षा 9 से 10
                                        </p>
                                        <p>3. 1. पोस्टमेट्रिक छात्रवृत्ति (नवीन एवं नवीनीकरण) (गैर छात्रावासी)</p>
                                        <p>2. पोस्टमेट्रिक छात्रवृत्ति (नवीन एवं नवीनीकरण) (छात्रावासी)</p>
                                        <p>4. कन्या साक्षरता प्रोत्साहन राशि कक्षा 11वीं</p>

                                    </div>
                                </div>
                                <div>
                                    <h3>5. म.प्र. पिछड़ा वर्ग अल्पसंख्यक विभाग</h3>
                                    <p></p>
                                    <div class="detail">
                                        <p>1. राज्य शासन पिछडा़ वर्ग छात्रवृत्ति कक्षा 6 से 8 तक कक्षा 9 से 10</p>

                                        <p>2. .पोस्ट मेट्रिक पिछडा़ वर्ग छात्रवृत्ति ए- गैर छात्रावासी कक्षा 11वीं कक्षा 12वीं बी-छात्रावासी कक्षा 11वीं कक्षा 12वीं</p>

                                    </div>
                                </div>
                                <div>
                                    <h3>6. सामाजिक न्याय विभाग म.प्र.</h3>
                                    <p></p>
                                    <div class="detail">
                                        <p>
                                            1. दिव्यांग विद्यार्थियों के लिए छात्रवृत्ति योजना कक्षा 1 से 8 तक कक्षा 9 से 12
                                        </p>

                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </fieldset>

            </div>
        </div>
    </div>
    <div class="modal" tabindex="-1" role="dialog" id="SchemeDetailsModal">
        <div class="modal-dialog" role="document" style="max-width: 1000px;">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Schemes Details</h5>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <table class="table table-responsive-lg table-bordered">
                                    <tr>
                                        <td style="width: 75px; font-weight: bold;">परिचय : </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 75px; font-weight: bold;">योजना के उद्देश्य : </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 75px; font-weight: bold;">योजना की पात्रता : </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 75px; font-weight: bold;">योजना के लाभ : </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 75px; font-weight: bold;">योजना की प्रक्रिया : </td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                        <fieldset style="width: 966px;">
                            <legend>Schemes Details</legend>
                            <div class="card row">
                                <div class="col-md-3 card-header" style="width: 1200px;">
                                    योजना पम्पलेट
                                </div>
                                <br />
                                <br />
                                <br />
                                <div class="col-md-3 card-header" style="width: 1200px;">
                                    प्रगति (2023 -24 )
                                </div>
                                <br />
                                <br />
                                <br />
                                <div class="col-md-3 card-header" style="width: 1200px;">
                                    परिपत्र
                                </div>
                                <br />
                                <br />
                                <br />
                            </div>
                        </fieldset>
                    </div>
                </div>
                <div class="modal-footer justify-content-center">
                    <%-- <button type="button" class="btn btn-success Alert-ApprovelT" onclientclick="return false;" onclick="()" data-bs-dismiss="modal">Forward To DEO</button>--%>
                    <button type="button" class="btn btn-danger  waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        var accordian = $('#accordion');
        var sub = $('#accordion>div');
        var subHead = $('#accordion h3');
        var subDetail = $('#accordion .detail');
        var speed = 300;

        subHead.click(function () {
            var active = $('#accordion .detail:visible');
            var activeIndex = active.parent().index();
            var index = $(this).parent().index();

            sub.each(function () {
                if (activeIndex !== index) {
                    if ($(this).index() === index) {
                        $(this).find('.detail').stop().slideDown(speed).parent().addClass('active');
                    }
                    else {
                        $(this).find('.detail').stop().slideUp(speed, function () {
                            $(this).parent().removeClass('active');
                        });
                    }
                } else {
                    $(this).find('.detail').stop().slideUp(speed, function () {
                        $(this).parent().removeClass('active');
                    });
                }
            });
        });
        function ShowSanctionPopup() {
            $("#SchemeDetailsModal").modal("show");
        }
    </script>
</asp:Content>

