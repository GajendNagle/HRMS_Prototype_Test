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
            background-color: var(--vz-primary);
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
            background-color: var(--vz-primary);
            background-image: url(../assets/images/svg/CardHeader.svg) !important;
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
                            <a href="#GFMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Guest Faculty Management System</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#GuestFaculty" data-bs-toggle="collapse" role="button" aria-expanded="false" onclick="SidebarToggle('GFMS')"><span>Guest Faculty Login</span></a>
                        </li>

                        <li class="breadcrumb-item"><span>Profile View</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12 col-lg-12">
        <div class="card card-border-primary ">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <h4 class="card-title">Profile View / प्रोफ़ाइल देखें</h4>
                    </div>
                </div>
            </div>
            <div class="card-body p-4">
                <div class="tab-content">
                    <div class="tab-pane active" id="ProfileView" role="tabpanel">
                        <fieldset>
                            <legend>Persnal  Details / व्यक्तिगत जानकारी</legend>
                            <div class="row mt-4 align-items-end">
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Faculty Name (In English)
                                                    <br />
                                            शिक्षक का नाम (अंग्रेज़ी में)</label>
                                        <input type="text" id="txtNameEnglish" readonly class="form-control" placeholder="Raman Verma" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Faculty  Name (In Hindi)
                                                    <br />
                                            शिक्षक का नाम (हिंदी में)</label>
                                        <input type="text" id="txtNameHindi" readonly class="form-control" placeholder="रमण वर्मा" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Gender
                                            <br />
                                            लिंग</label>
                                        <input type="text" id="Gender" readonly class="form-control" placeholder="Male" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Mobile No.
                                            <br />
                                            मोबाइल नंबर</label>
                                        <input type="text" id="Mobile" readonly class="form-control" placeholder="9876543210" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Date of Birth
                                            <br />
                                            जन्म तिथि</label>
                                        <input type="date" id="DOB" readonly class="form-control" placeholder="01/01/1990" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Category<br />
                                            श्रेणी
                                        </label>
                                        <input type="text" id="Category" readonly class="form-control" placeholder="General" />

                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Father's Name<br />
                                            पिता का नाम 
                                        </label>
                                        <input type="text" id="FatherName" readonly class="form-control" placeholder="Mr.Satish Varma" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Mother's Name<br />
                                            माता का नाम 
                                        </label>
                                        <input type="text" id="MotherName" readonly class="form-control" placeholder="Mrs.shobha Varma" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Family Samagra ID
                                            <br />
                                            परिवार समग्र आईडी
                                        </label>
                                        <input type="text" id="FamilyId" readonly class="form-control" placeholder="1234567890" />
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Marital Status
                                            <br />
                                            वैवाहिक स्थिति
                                        </label>
                                        <input type="text" id="MaritalStatus" readonly class="form-control" placeholder="Married" />

                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label>
                                            Email ID<br />
                                            ईमेल आईडी 
                                        </label>
                                        <input type="text" id="EmailID" readonly class="form-control" placeholder="raman123varma@example.com" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

