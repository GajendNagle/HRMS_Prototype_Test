<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IDCard.aspx.cs" Inherits="mis_Sagar_IDCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        .modal-body {
            font-family: Serif, Times New Roman;
            margin: 0;
            padding: 20px;
            background-color: white;
            text-align: center;
        }

        h1, .h1, h2, .h2, h3, .h3, h4, .h4, h5, .h5, h6, .h6 {
            margin-top: 0;
            margin-bottom: .5rem;
            /*font-family: "Rubik", sans-serif;*/
            font-weight: 700;
            line-height: 1.2;
            color: #02245B;
        }

        .id-card-container {
            width: 300px;
            margin: 0 auto;
            padding: 0px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .id-card {
            width: 300px;
            height: 500px;
            border: 2px solid #02245B;
            border-radius: 8px;
            margin: 10px 0;
            padding: 0px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

            .id-card::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-image: url('MPlogo.jpg');
                background-repeat: no-repeat;
                background-position: center;
                opacity: 0.1; /* Adjust the opacity value as needed */
                z-index: 1;
            }

            .id-card > * {
                position: relative;
                z-index: 2;
            }


            .id-card img {
                margin-bottom: 0px;
            }

        #imgProfile {
            margin: 5px auto 10px auto;
            border: 1px solid #02245B;
            border-radius: 8px;
            background-color: #ccc
        }

        .id-card h4, .id-card h6, .id-card label {
            margin: 2px 0;
        }

        .id-card .row {
            width: 100%;
        }

        .Div_mainHeading {
            width: 98%;
            background-color: #02245B;
        }

            .Div_mainHeading label {
                color: white
            }

        .id-card .row label {
            font-size: 10px;
            font-weight: bold;
            align-content: end;
        }

        span {
            font-size: 11px;
            /*font-weight: bold;*/
            line-height: normal;
        }

        .table td, .table th {
            line-height: normal;
            padding: 0.05rem 0.30rem 0.05rem 0.30rem;
            background: rgb(0, 0, 0, 0.00);
        }

        .table th, .col-6 label {
            white-space: nowrap
        }


        .row1 {
            height: 20px;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }

        .row2 {
            height: 50px;
            border-bottom-left-radius: 8px;
            border-bottom-right-radius: 8px;
            padding-top: 5px;
        }

        .row1, .row2 {
            background: #009688;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset class="lh-1">
            <div class="id-card-container">
                <!-- Front Side -->
                <div class="id-card" id="id-card-front"><br />
                    <img src="MPlogo.jpg" height="60" alt="Logo" />
                    <h6>Government HSS Betul
                    </h6>
                    <div class="Div_mainHeading">
                        <label>
                            School Education Department
                        </label>
                    </div>
                    <label class="fw-bold">Scholer No: AI3333</label>
                    <img src="112.png" id="imgProfile" height="110" width="85" />
                    <h4>Rahul Yadav</h4>
                    <span><b>Class 11<sup>th</sup> (Maths)</b></span>
                    <div class="row justify-content-center">
                    <div class="Col-12">
                        <table class="table table-borderless text-start ">
                            <tr>
                                <th><span>Father's Name</span></th>
                                <td>:</td>
                                <td><span>Mr. Bulbul Yadav</span></td>
                            </tr>
                            <tr>
                                <th><span>Date Of Birth</span></th>
                                <td>:</td>
                                <td><span>02/02/2000</span></td>
                            </tr>
                            <tr>
                                <th><span>Mobile No.</span></th>
                                <td>:</td>
                                <td><span>9000089898</span></td>
                            </tr>
                            <tr>
                                <th><span>Blood Group</span></th>
                                <td>:</td>
                                <td><span>AB+</span></td>
                            </tr>
                           
                        </table>
                    </div>
                    </div>
                    <div class="row mb-2 justify-content-between">
                        <div class="col-6">
                            <img src="qr_code.png" height="55" />
                           
                        </div>
                        <div class="col-6">
                            <img src="signature1.jpg" height="40" />
                            <label>Sign Of Principal</label>

                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
    </form>
</body>
</html>
