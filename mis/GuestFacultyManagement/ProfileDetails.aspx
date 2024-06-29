<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="ProfileDetails.aspx.cs" Inherits="mis_GuestFacultyManagement_ProfileDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        .top-heading i {
            display: flex;
            align-items: center;
            font-size: 10px;
            color: #fff;
        }

        .top-heading h3 {
            margin: 0;
            font-family: var(--vz-font-sans-serif) !important;
            font-size: 16px;
            color: #fff;
            padding: 0 11px;
            border-radius: 120px;
        }

        .top-heading {
            position: relative;
            display: flex;
            background-image: url(../assets/images/svg/CardHeader.svg);
            justify-content: center;
            border-radius: 120px;
            box-shadow: inset 0px 0px 12px 6px rgb(168 168 201 / 44%);
            padding: 8px 16px;
            margin: 2.0rem;
        }

        .nav-tabs-custom.card-header-tabs {
            margin-top: -0.6em;
            margin-left: 1rem;
        }

        .nav-tabs-custom .nav-item .nav-link {
            border: 1px solid transparent;
            font-weight: var(--vz-font-weight-medium);
            border-top-left-radius: 33px;
            border-top-right-radius: 29px;
        }

        .profile-setting-img {
            position: relative !important;
            height: 150px !important;
        }

        .profile-wid-bg::before {
            background-image: none;
        }

        .profile-wid-bg {
            background-image: url(../assets/images/svg/CardHeader.svg) !important;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="position-relative mx-n4 mt-n4">
        <div class="profile-wid-bg profile-setting-img text-center">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-center">
                    <div class="top-heading">
                        <i class="fa fa-circle" aria-hidden="true"></i>
                        <h3>Profile View</h3>
                        <i class="fa fa-circle" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12 col-lg-12">
        <div class="card mt-lg-n5">
            <div class="card-body p-4">
                <div class="tab-content">
                    <div class="tab-pane active" id="ProfileView" role="tabpanel">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Name (In English)
                                                    <br />
                                                    नाम (अंग्रेज़ी में)</label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Raman Varma</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Name (In Hindi)
                                                    <br />
                                                    नाम (हिंदी में)</label>
                                            </div>
                                            <div class="col-6">
                                                <label>: रमण वर्मा</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>Gender </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Male</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>Mobile No. </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: 9876543210</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>Date of Birth </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: 01/01/1990</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Category</label>
                                            </div>
                                            <div class="col-6">
                                                <label>: General</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Father's Name
                                                </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Mr. Satish Varma</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Mother's Name
                                                </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Mrs. Shobha Varma</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Family Samagra ID
                                                </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: 1234567890</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>Marital Status </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: Married</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="row">
                                            <div class="col-6">
                                                <label>
                                                    Email ID
                                                </label>
                                            </div>
                                            <div class="col-6">
                                                <label>: raman.varma@example.com</label>
                                            </div>
                                        </div>
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

