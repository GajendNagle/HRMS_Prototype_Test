<%@ Page Title="" Language="C#" MasterPageFile="~/Portal.master" AutoEventWireup="true" CodeFile="TelephoneDirectory.aspx.cs" Inherits="TelephoneDirectory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <link href="https://eliteadmin.themedesigner.in/demos/bt4/assets/node_modules/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet" />
    <link href="https://eliteadmin.themedesigner.in/demos/bt4/assets/node_modules/datatables.net-bs4/css/responsive.dataTables.min.css" rel="stylesheet" />
    <style>
        .dataTables_filter input {
            min-height: 38px;
            border-radius: 0.6rem;
            border: 1px solid #1a5a5b;
        }

        @media (max-width: 992px) {
            .container-fluid {
                inline-size: auto;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
    <div class="col-lg-12 col-sm-12 col-md-12">
        <div class="section-title">
            <h2>Telephone Directory</h2>
        </div>
    </div>
</div>
    <div class="card shadow mb-5">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            
            <div class="row ">
                <div class="col-lg-12 col-sm-12 col-md-12">
                    <div class="">
                         <table id="example23"class="table table-hover  table-striped border">
                            <thead>
                                <tr>
                                    <th style="max-width:3rem;">Sr.No.	</th>
                                    <th>District	</th>
                                    <th>Contact Name	</th>
                                    <th>Designation	</th>
                                    <th>Phone Number	</th>
                                    <th>Mobile Number	</th>
                                    <th>Email	</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1	</td>
                                    <td>Agar Malwa	</td>
                                    <td>Shri Santosh Suryavansi	</td>
                                    <td>MIS Coordinatior	</td>
                                    <td>8889392197	</td>
                                    <td>8889392197	</td>
                                    <td>dpcagar@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>2	</td>
                                    <td>Agar-Malwa	</td>
                                    <td>Shri Anil Damor	</td>
                                    <td>Block MIS Co-ordinatior	</td>
                                    <td>0	</td>
                                    <td>7828862665	</td>
                                    <td>dpcagar@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>3	</td>
                                    <td>Alirajpur	</td>
                                    <td>Shri Sandeep dawar	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7394233950	</td>
                                    <td>9424062115	</td>
                                    <td>dpoali@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>4	</td>
                                    <td>Alirajpur	</td>
                                    <td>Shri Rakesh Garg	</td>
                                    <td>Programmer	</td>
                                    <td>7394233950	</td>
                                    <td>9893069439	</td>
                                    <td>rakeshgarginfo@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>5	</td>
                                    <td>Anooppur	</td>
                                    <td>Shri Santosh Pandey	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7659296280	</td>
                                    <td>9425428203	</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>6	</td>
                                    <td>Ashoknagar	</td>
                                    <td>Shri Ombir Raguwanshi	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7543220608	</td>
                                    <td>9407222898	</td>
                                    <td>raghuwanshiombir@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>7	</td>
                                    <td>Ashoknagar	</td>
                                    <td>Shri G.S. NARVARIYA	</td>
                                    <td>Programmer	</td>
                                    <td>7543220608	</td>
                                    <td>9993656213	</td>
                                    <td>prog_narvariya@hotmail.com	</td>
                                </tr>
                                <tr>
                                    <td>8	</td>
                                    <td>Balaghat	</td>
                                    <td>Shri Sumant Tamrakar	</td>
                                    <td>Programmer	</td>
                                    <td>7632249505	</td>
                                    <td>9424717946	</td>
                                    <td>zskbalaghat@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>9	</td>
                                    <td>Barwani	</td>
                                    <td>Shri Yogesh Nigwale	</td>
                                    <td>Programmer	</td>
                                    <td>7290222133	</td>
                                    <td>9981573538	</td>
                                    <td>zskbarwani@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>10	</td>
                                    <td>Barwani	</td>
                                    <td>Shri Rajeev Sharma	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7290291027	</td>
                                    <td>9425415648	</td>
                                    <td>zskbarwani@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>11	</td>
                                    <td>BETUL	</td>
                                    <td>VINOD KUMAR LIHITKER	</td>
                                    <td>DATA ENTRY OPERATOR	</td>
                                    <td>7141236366	</td>
                                    <td>9826963162	</td>
                                    <td>betul.rmsa@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>12	</td>
                                    <td>Betul	</td>
                                    <td>Shri Gajendra Tayagi	</td>
                                    <td>PROGRAMMER	</td>
                                    <td>7141232441	</td>
                                    <td>8871560520	</td>
                                    <td>zskbetmp@nic.in	</td>
                                </tr>
                                <tr>
                                    <td>13	</td>
                                    <td>Bhind	</td>
                                    <td>Shri Hitendra Kumar Sharma	</td>
                                    <td>Programmer	</td>
                                    <td>7534230514	</td>
                                    <td>9826245465	</td>
                                    <td>hksbhd@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>14	</td>
                                    <td>Bhopal	</td>
                                    <td>Shri Tandekar	</td>
                                    <td>MIS Incharge	</td>
                                    <td>2738279	</td>
                                    <td>9425391845	</td>
                                    <td>zskbpl@yahoo.co.in	</td>
                                </tr>
                                <tr>
                                    <td>15	</td>
                                    <td>Bhopal	</td>
                                    <td>DPC Office	</td>
                                    <td>DPC Office	</td>
                                    <td>7552738279	</td>
                                    <td>7552738279	</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>16	</td>
                                    <td>Bhopal	</td>
                                    <td>Smt. Seema Gupta	</td>
                                    <td>APC(RTE)	</td>
                                    <td>2738279	</td>
                                    <td>8103064333	</td>
                                    <td>zskbpl@yahoo.co.in	</td>
                                </tr>
                                <tr>
                                    <td>17	</td>
                                    <td>BURHANPUR	</td>
                                    <td>MOHAMMED TAUSEEF	</td>
                                    <td>DATA ENTRY OPERATOR	</td>
                                    <td>9098737827	</td>
                                    <td>9098737827	</td>
                                    <td>mtauseef64@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>18	</td>
                                    <td>Burhanpur	</td>
                                    <td>Smt. Aysha Shekh	</td>
                                    <td>Programmer	</td>
                                    <td>7325253477	</td>
                                    <td>9826612375	</td>
                                    <td>dpo_burhanpur@yahoo.in	</td>
                                </tr>
                                <tr>
                                    <td>19	</td>
                                    <td>Burhanpur	</td>
                                    <td>Nadeem Khan	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7325253477	</td>
                                    <td>9425188412	</td>
                                    <td>shanu_nadeem@yahoo.com	</td>
                                </tr>
                                <tr>
                                    <td>20	</td>
                                    <td>Chhatarpur	</td>
                                    <td>Shri Subodh Patni	</td>
                                    <td>Programmer	</td>
                                    <td>7682242349	</td>
                                    <td>9425144251	</td>
                                    <td>zsk.chhatarpurmp@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>21	</td>
                                    <td>Chhindwara	</td>
                                    <td>Shri Bhaskar Rao Gawande	</td>
                                    <td>APC(Fin.)	</td>
                                    <td>7162244904	</td>
                                    <td>9407073301	</td>
                                    <td>bhaskar_raogawande@rediffmail.com	</td>
                                </tr>
                                <tr>
                                    <td>22	</td>
                                    <td>Chhindwara	</td>
                                    <td>Shri Chandrashekhar	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7162244904	</td>
                                    <td>9424648185	</td>
                                    <td>zskcwa@rediffmail.com	</td>
                                </tr>
                                <tr>
                                    <td>23	</td>
                                    <td>Damoh	</td>
                                    <td>Shri Pradeep Aharwal	</td>
                                    <td>Programmer	</td>
                                    <td>7812224598	</td>
                                    <td>9826417264	</td>
                                    <td>zsk.damoh@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>24	</td>
                                    <td>Damoh	</td>
                                    <td>Shri Vijay Namdeo	</td>
                                    <td>Data Entry. Ope.	</td>
                                    <td>7812224598	</td>
                                    <td>9981943899	</td>
                                    <td>zsk.damoh01@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>25	</td>
                                    <td>Datia	</td>
                                    <td>Shri M.S.Parmar	</td>
                                    <td>Programmer	</td>
                                    <td>7522234472	</td>
                                    <td>9407223080	</td>
                                    <td>ssadta@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>26	</td>
                                    <td>Dewas	</td>
                                    <td>Ms. Sheetal Malviya	</td>
                                    <td>Programmer	</td>
                                    <td>7272254520	</td>
                                    <td>9926734987	</td>
                                    <td>zskdewas2@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>27	</td>
                                    <td>Dewas	</td>
                                    <td>-	</td>
                                    <td>-	</td>
                                    <td>7272254520	</td>
                                    <td>0	</td>
                                    <td>zskdewmp@rediffmail.com	</td>
                                </tr>
                                <tr>
                                    <td>28	</td>
                                    <td>Dhar	</td>
                                    <td>Shri Anil Maru	</td>
                                    <td>APC Moblisation	</td>
                                    <td>7292235148	</td>
                                    <td>9753123013	</td>
                                    <td>miszskdhar@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>29	</td>
                                    <td>Dhar	</td>
                                    <td>Shri Rajendra Tilve	</td>
                                    <td>MIS Incharge	</td>
                                    <td>7292235148	</td>
                                    <td>9827042583	</td>
                                    <td>miszskdhar@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>30	</td>
                                    <td>Dindori	</td>
                                    <td>Shri anurag patel	</td>
                                    <td>Programmer	</td>
                                    <td>7644234914	</td>
                                    <td>9424932597	</td>
                                    <td>dpcdindori@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>31	</td>
                                    <td>DPI	</td>
                                    <td>Shri Suman kant Jain	</td>
                                    <td>Programmer (Shikha Portal)	</td>
                                    <td>7552600115	</td>
                                    <td>7552600115	</td>
                                    <td>educationportalmpdpi@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>32	</td>
                                    <td>Education Portal	</td>
                                    <td>Education Portal	</td>
                                    <td>Education Portal	</td>
                                    <td>9506543991	</td>
                                    <td>9506543991	</td>
                                    <td>educationportal@datamail.in	</td>
                                </tr>
                                <tr>
                                    <td>33	</td>
                                    <td>Guna	</td>
                                    <td>Shri Naeem Qureshi	</td>
                                    <td>Programmer	</td>
                                    <td>7542252212	</td>
                                    <td>9425133541	</td>
                                    <td>naeem.qureshi7@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>34	</td>
                                    <td>Guna	</td>
                                    <td>Shri Alok Sant	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7542252212	</td>
                                    <td>9425380782	</td>
                                    <td>alok.sant01@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>35	</td>
                                    <td>Gwalior	</td>
                                    <td>Shri Sunil Gupta	</td>
                                    <td>Programmer	</td>
                                    <td>7512433387	</td>
                                    <td>9826294421	</td>
                                    <td>zskgwaliormp@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>36	</td>
                                    <td>Gwalior	</td>
                                    <td>Shri Manish Saxena	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7512452443	</td>
                                    <td>9926242733	</td>
                                    <td>zskgwaliormp@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>37	</td>
                                    <td>Harda	</td>
                                    <td>Shri Dinesh chourasiya	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7577226397	</td>
                                    <td>9981390831	</td>
                                    <td>dchoursiya@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>38	</td>
                                    <td>Harda	</td>
                                    <td>Shri Lalit Singh Dhavley	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7577226397	</td>
                                    <td>9826947250	</td>
                                    <td>lalitsinghzsk@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>39	</td>
                                    <td>Hoshangabad	</td>
                                    <td>Shri Ajay Meena	</td>
                                    <td>Programmer	</td>
                                    <td>7574252787	</td>
                                    <td>9827541323	</td>
                                    <td>dpchos25@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>40	</td>
                                    <td>Jabalpur	</td>
                                    <td>Shri Veerendra Rajpoot	</td>
                                    <td>Data Enty Operator	</td>
                                    <td>7612628774	</td>
                                    <td>9301050387	</td>
                                    <td>rgsmjbp@rediffmail.com	</td>
                                </tr>
                                <tr>
                                    <td>41	</td>
                                    <td>Jabalpur	</td>
                                    <td>Mrs. Parul Rai	</td>
                                    <td>Programmer	</td>
                                    <td>7612628774	</td>
                                    <td>7612628774	</td>
                                    <td>rgsmjbp@rediffmail.com	</td>
                                </tr>
                                <tr>
                                    <td>42	</td>
                                    <td>Jabalpur	</td>
                                    <td>Dr. R.P.Chaturvedi	</td>
                                    <td>District Project Coordinator	</td>
                                    <td>7612628774	</td>
                                    <td>9303274494	</td>
                                    <td>rgsmjbp@rediffmail.com	</td>
                                </tr>
                                <tr>
                                    <td>43	</td>
                                    <td>Jabalpur	</td>
                                    <td>T.P.PATEL	</td>
                                    <td>BRCC,JABALPUR RURAL	</td>
                                    <td>7612629531	</td>
                                    <td>0	</td>
                                    <td>ssajbpr@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>44	</td>
                                    <td>Jabalpur	</td>
                                    <td>RAJENDRA UPADHYAY	</td>
                                    <td>BRCC,JABALPUR URBAN	</td>
                                    <td>7616450890	</td>
                                    <td>7616450890	</td>
                                    <td>ssajbpu@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>45	</td>
                                    <td>Jabalpur	</td>
                                    <td>C.L.BAGRI	</td>
                                    <td>BRCC,JABALPUR URBAN 2	</td>
                                    <td>9926771546	</td>
                                    <td>9926771546	</td>
                                    <td>ssajbpurban2@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>46	</td>
                                    <td>Jabalpur	</td>
                                    <td>C.L.BAGRI	</td>
                                    <td>BRCC,KUNDAM	</td>
                                    <td>9098461927	</td>
                                    <td>9098461927	</td>
                                    <td>ssakundam@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>47	</td>
                                    <td>Jabalpur	</td>
                                    <td>VINOD PATEL	</td>
                                    <td>BRCC,MAJHOLI	</td>
                                    <td>9752038774	</td>
                                    <td>9752038774	</td>
                                    <td>ssamajholi@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>48	</td>
                                    <td>Jabalpur	</td>
                                    <td>Vandna Tiwari	</td>
                                    <td>BRCC,Panagar	</td>
                                    <td>9425387404	</td>
                                    <td>9425387404	</td>
                                    <td>ssapanagar@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>49	</td>
                                    <td>Jabalpur	</td>
                                    <td>Chintamani Yadav	</td>
                                    <td>BRCC, Patan	</td>
                                    <td>9981019358	</td>
                                    <td>9981019358	</td>
                                    <td>ssapatan@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>50	</td>
                                    <td>Jabalpur	</td>
                                    <td>Shushil Shrivastava	</td>
                                    <td>BRCC,Shahpura	</td>
                                    <td>9993821973	</td>
                                    <td>9993821973	</td>
                                    <td>ssashahpura@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>51	</td>
                                    <td>Jabalpur	</td>
                                    <td>P L Raidas	</td>
                                    <td>BRCC,Shahpura	</td>
                                    <td>724230367	</td>
                                    <td>724230367	</td>
                                    <td>ssasihora@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>52	</td>
                                    <td>Jhabua	</td>
                                    <td>Shri Rajendra Machar	</td>
                                    <td>Programmer	</td>
                                    <td>7392243093	</td>
                                    <td>9907357796	</td>
                                    <td>rajendra.machar2011@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>53	</td>
                                    <td>Jhabua	</td>
                                    <td>MS. Archna ranawat	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7392243093	</td>
                                    <td>9406603788	</td>
                                    <td>dpcjhabua@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>54	</td>
                                    <td>Katni	</td>
                                    <td>Kanchan Namdeo	</td>
                                    <td>MIS Incharge Katni	</td>
                                    <td>7622220175	</td>
                                    <td>8103447937	</td>
                                    <td>zskdpckatni@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>55	</td>
                                    <td>Khandwa	</td>
                                    <td>Ms Chetali Mukati	</td>
                                    <td>Programmer	</td>
                                    <td>733224946	</td>
                                    <td>9009022137	</td>
                                    <td>dpcknw@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>56	</td>
                                    <td>Khandwa	</td>
                                    <td>Smt. Rachana Chouhan	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7332224946	</td>
                                    <td>9329945355	</td>
                                    <td>dpcknw@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>57	</td>
                                    <td>Khargone	</td>
                                    <td>Shri Kundan bhawsar	</td>
                                    <td>MIS Incharge	</td>
                                    <td>7282235802	</td>
                                    <td>9424057380	</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>58	</td>
                                    <td>Mandla	</td>
                                    <td>Shri Anil Samdekar	</td>
                                    <td>Programmer	</td>
                                    <td>7642251283	</td>
                                    <td>7642251283	</td>
                                    <td>dpo.mandla@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>59	</td>
                                    <td>Mandla	</td>
                                    <td>Amit Mishra	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7642251283	</td>
                                    <td>7642251283	</td>
                                    <td>dpo.mandla@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>60	</td>
                                    <td>Mandla	</td>
                                    <td>Yogesh Sharma	</td>
                                    <td>DPC	</td>
                                    <td>7642251283	</td>
                                    <td>7642251283	</td>
                                    <td>dpo.mandla@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>61	</td>
                                    <td>Mandsaur	</td>
                                    <td>Shri Dilip Singh	</td>
                                    <td>Programmer	</td>
                                    <td>7422222452	</td>
                                    <td>9993992439	</td>
                                    <td>zskmandsaur@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>62	</td>
                                    <td>Mandsaur	</td>
                                    <td>Shri Nitin Sharma	</td>
                                    <td>Block MIS Coordinator	</td>
                                    <td>7422222452	</td>
                                    <td>9926907121	</td>
                                    <td>Ipsnitin@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>63	</td>
                                    <td>Morena	</td>
                                    <td>Shri Pradeep Tiwari	</td>
                                    <td>Data Enty Ope.	</td>
                                    <td>7532227650	</td>
                                    <td>9425456509	</td>
                                    <td>zskmorenamp@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>64	</td>
                                    <td>Narsingpur	</td>
                                    <td>Shri Sharad Yadav	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7792231132	</td>
                                    <td>9893607494	</td>
                                    <td>zsknarmp@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>65	</td>
                                    <td>Neemuch	</td>
                                    <td>Shri Manish Shastri	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7423232959	</td>
                                    <td>9165812291	</td>
                                    <td>nmhrgsm@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>66	</td>
                                    <td>Neemuch	</td>
                                    <td>Shri Nitesh Gupta	</td>
                                    <td>MIS Coordinator	</td>
                                    <td>7423229959	</td>
                                    <td>9424035598	</td>
                                    <td>nmhrgsm@Gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>67	</td>
                                    <td>Panna	</td>
                                    <td>Shri Piyush Shrivastava	</td>
                                    <td>Programmer	</td>
                                    <td>7732250094	</td>
                                    <td>9407348570	</td>
                                    <td>zskrgsmpanna@rediffmail.com	</td>
                                </tr>
                                <tr>
                                    <td>68	</td>
                                    <td>Raisen	</td>
                                    <td>GAUHAR PARWAR JAHAN	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7482222528	</td>
                                    <td>9993059620	</td>
                                    <td>zskrsn@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>69	</td>
                                    <td>Raisen	</td>
                                    <td>Shri Piyush Adholiya	</td>
                                    <td>Programmer	</td>
                                    <td>7482222528	</td>
                                    <td>9425003449	</td>
                                    <td>adholiya@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>70	</td>
                                    <td>Rajgarh	</td>
                                    <td>Shri R. K Gupta	</td>
                                    <td>APC	</td>
                                    <td>7372254694	</td>
                                    <td>9407258841	</td>
                                    <td>zskrajgarh2019@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>71	</td>
                                    <td>Rajya Shiksha Kendara MP	</td>
                                    <td>Shri Vaibhav Shrivastava	</td>
                                    <td>Programmer (RSK)	</td>
                                    <td>7552552367	</td>
                                    <td>7552768397	</td>
                                    <td>educationportalmpdpi@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>72	</td>
                                    <td>Rajya Shiksha Kendara MP	</td>
                                    <td>RTE Section	</td>
                                    <td>RTE	</td>
                                    <td>7552768397	</td>
                                    <td>0	</td>
                                    <td>rtemp@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>73	</td>
                                    <td>Rajya Shiksha Kendra	</td>
                                    <td>Shri Pankaj Shrivastava	</td>
                                    <td>Programmer (RSK)	</td>
                                    <td>7552768397	</td>
                                    <td>9479666020	</td>
                                    <td>pankajshrivastav@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>74	</td>
                                    <td>Ratlam	</td>
                                    <td>Shri Bharat Singh Chouhan	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7412270454	</td>
                                    <td>9907219850	</td>
                                    <td>bharat.chauhan48@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>75	</td>
                                    <td>Rewa	</td>
                                    <td>Shri Santosh Shrivastava	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7662255852	</td>
                                    <td>8871434885	</td>
                                    <td>zskrewa@rediffmail.com	</td>
                                </tr>
                                <tr>
                                    <td>76	</td>
                                    <td>Rewa	</td>
                                    <td>Shri Sidharth Sharma	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7662255852	</td>
                                    <td>9977790965	</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>77	</td>
                                    <td>Sagar	</td>
                                    <td>Shri Kamlesh C.	</td>
                                    <td>Programmer	</td>
                                    <td>7582228335	</td>
                                    <td>9993655703	</td>
                                    <td>zsksagar@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>78	</td>
                                    <td>Satna	</td>
                                    <td>Shri Rajesh Dwivedi	</td>
                                    <td>Programmer	</td>
                                    <td>7672228593	</td>
                                    <td>9425426414	</td>
                                    <td>miszsk.satna@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>79	</td>
                                    <td>Sehore	</td>
                                    <td>Shri Dineshwar Tiwari	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7562405191	</td>
                                    <td>9827384433	</td>
                                    <td>zsksehore@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>80	</td>
                                    <td>Sehore	</td>
                                    <td>Shri Atul Saxena	</td>
                                    <td>Programmer	</td>
                                    <td>7562405191	</td>
                                    <td>9131856314	</td>
                                    <td>atulkumarsaxena@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>81	</td>
                                    <td>Sehore	</td>
                                    <td>DPC Office Sehore	</td>
                                    <td>DPC Office Sehore	</td>
                                    <td>7562222129	</td>
                                    <td>7562222129	</td>
                                    <td>zsksehore@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>82	</td>
                                    <td>Seoni	</td>
                                    <td>Shri Akhiklesh Mathur	</td>
                                    <td>Data Entry Operator	</td>
                                    <td>7692228366	</td>
                                    <td>9425847662	</td>
                                    <td>zskseoni@rediffmail.com	</td>
                                </tr>
                                <tr>
                                    <td>83	</td>
                                    <td>Shahdol	</td>
                                    <td>Shri M.P.Chourasia	</td>
                                    <td>Programmer	</td>
                                    <td>7652245004	</td>
                                    <td>9424378923	</td>
                                    <td>madansdl@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>84	</td>
                                    <td>Shajapur	</td>
                                    <td>Shri Rajendra Premi	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7364227851	</td>
                                    <td>9754851751	</td>
                                    <td>zskshjmp@nic.in	</td>
                                </tr>
                                <tr>
                                    <td>85	</td>
                                    <td>Shajapur	</td>
                                    <td>Mukesh Dahareia	</td>
                                    <td>Programmer	</td>
                                    <td>7364227851	</td>
                                    <td>9406707447	</td>
                                    <td>zskshjmp@nic.in	</td>
                                </tr>
                                <tr>
                                    <td>86	</td>
                                    <td>Sheopurkala	</td>
                                    <td>Shri Jitendra SIngh	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>0	</td>
                                    <td>8602270632	</td>
                                    <td>bhadoriasingh12@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>87	</td>
                                    <td>Shivpuri	</td>
                                    <td>Shri Jugraj Prajapati	</td>
                                    <td>Programmer	</td>
                                    <td>7492234418	</td>
                                    <td>9893327849	</td>
                                    <td>ssashivpuri@rediffmail.com,jugraj07@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>88	</td>
                                    <td>Sidhi	</td>
                                    <td>Shri Ravindra Kumar Tripathi	</td>
                                    <td>Programmer	</td>
                                    <td>7822252488	</td>
                                    <td>7822252488	</td>
                                    <td>tripathi.ravindra585@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>89	</td>
                                    <td>Singroli	</td>
                                    <td>Shri Vivek Mishra	</td>
                                    <td>Programmer	</td>
                                    <td>7805233043	</td>
                                    <td>7805233043	</td>
                                    <td>dpcsingrouli@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>90	</td>
                                    <td>Tikamgarh	</td>
                                    <td>Shri Raashid Khan	</td>
                                    <td>Programmer	</td>
                                    <td>7683240534	</td>
                                    <td>7683240534	</td>
                                    <td>raashid001@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>91	</td>
                                    <td>Ujjain	</td>
                                    <td>Shri Sanjeev Bhojak	</td>
                                    <td>Programmer	</td>
                                    <td>7342516674	</td>
                                    <td>9893487088	</td>
                                    <td>zskujjainmp1@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>92	</td>
                                    <td>Umaria	</td>
                                    <td>Shri Yeshram Panche	</td>
                                    <td>Data Entry Ope.	</td>
                                    <td>7653223327	</td>
                                    <td>9630177350	</td>
                                    <td>zskumaria@gmail.com	</td>
                                </tr>
                                <tr>
                                    <td>93	</td>
                                    <td>Umaria	</td>
                                    <td>Shri R.P.Pandey	</td>
                                    <td>Programmer	</td>
                                    <td>7653223327	</td>
                                    <td>9425344299	</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>94	</td>
                                    <td>Vidisha	</td>
                                    <td>Smt. Suman Tiwari	</td>
                                    <td>Programmer	</td>
                                    <td>759225008	</td>
                                    <td>759225008	</td>
                                    <td>dpo_vidisha@rediffmail.com	</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://eliteadmin.themedesigner.in/demos/bt4/assets/node_modules/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="https://eliteadmin.themedesigner.in/demos/bt4/assets/node_modules/datatables.net-bs4/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>

    <script>

     
        //$('#example23').DataTable({
        //    dom: 'Bfrtip',
        //    buttons: [
        //        'excel', 'pdf', 'print'
        //    ],


        //});
        //$('.buttons-print, .buttons-pdf, .buttons-excel').addClass('btn btn-primary me-1');

        $(document).ready(function () {
            $('#example23').DataTable({
                dom: '<"row "<"col-sm-12 col-md-8 col-lg-8"l><"col-sm-12 col-md-4 col-lg-4 text-end"B f><"col-sm-12 col-md-12 col-lg-12 table-responsive">>rtip',
                buttons: [
                    {
                        extend: 'excelHtml5',
                        title: 'School Education Portal 3.0 - Telephone Directory',
                        className: 'btn btn-default m-1 ',
                    },
                    {
                        extend: 'pdfHtml5',
                        title: 'School Education Portal 3.0 - Telephone Directory',
                        className: 'btn btn-default m-1 '
                    },
                    {
                        extend: 'print',
                        title: 'School Education Portal 3.0 - Telephone Directory',
                        className: 'btn btn-default m-1 '
                    }
                ],
                responsive: true
            });
        });


    </script>
</asp:Content>
