using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mis_Transaction_DEOLevelReportSection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BlockWiseCounting.Visible=false;
        }

        if (Request.QueryString["ID"] != null)
        {
            ViewState["ModuleID"] = Request.QueryString["ID"];
            Module();
        }
        else
        {
            ViewState["ModuleID"] = null;
            Response.Redirect("DEOLevelReportSection.aspx?ID=DisposeCasesNOC");
        }

    }
    protected void Module()
    {
        DisposeCasesNOC.Visible = false;
        BlockWiseCounting.Visible = false;
        DistrictWiseCounting.Visible = false;
        DisposeAavedan.Visible = false;
        AvedankoAdhikariKoForwordKiyagya.Visible = false;
        AavendalMeApptiDarjReport.Visible = false;
              TotalReceivedCases.Visible = false;
       divBlockWiseCountingtbl.Visible = false;
        divOfDropdownDistrict.Visible= false;
        divBlockWiseCountingtbl.Visible= false;

                if (ViewState["ModuleID"] != null)
        {

            if (ViewState["ModuleID"].ToString() == "DisposeCasesNOC")
            {
                DisposeCasesNOC.Visible = true;
                brdcmDisposeCases.Visible=true;

            }
            else if (ViewState["ModuleID"].ToString() == "BlockWiseCounting")
            {
                divBlockWiseCountingtbl.Visible=true;
                divOfDropdownDistrict.Visible= true;
                BlockWiseCounting.Visible=true;
                brdcmBloackWise.Visible=true;
            }
            else if (ViewState["ModuleID"].ToString() == "DistrictWiseCounting")
            {
                brdcmDistrictWise.Visible=true;
                DistrictWiseCounting.Visible = true;
            }
            else
            {
                Response.Redirect("DEOLevelReportSection.aspx?ID=DisposeCasesNOC");
            }
        }
    }

    protected void hideshowAcceptedApplicationData_Click(object sender, EventArgs e)
    {

        DistrictWiseCounting.Visible=false;
        TotalReceivedCases.Visible=true;
    }

    protected void hideShowAvedankoForwordKiyagya_Click(object sender, EventArgs e)
    {

        DistrictWiseCounting.Visible=false;
        AvedankoAdhikariKoForwordKiyagya.Visible=true;
    }

    protected void hideshowApplicationNirakrutData_Click(object sender, EventArgs e)
    {
        DistrictWiseCounting.Visible=false;
    }
    protected void hideshowTotalReceivedCases_Click(object sender, EventArgs e)
    {
        DistrictWiseCounting.Visible=true;
        FirstTimetbl.Visible=false;
        TotalReceivedCases.Visible=true;
    }
    protected void hidshowDisposeAavedan_Click(object sender, EventArgs e)
    {
        DistrictWiseCounting.Visible=false;
        DisposeAavedan.Visible=true;
    } 
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BlockWiseCounting.Visible=true;
        divBlockWiseCountingtbl.Visible=true;
    }
    protected void hideShowDistrictWiseLockaavedan_Click(object sender, EventArgs e)
    {
        DistrictWiseLockaavedan.Visible=true; 
    DistrictWiseCounting.Visible=true;
        FirstTimetbl.Visible=false;
    }
    protected void hidshowAvedankoAdhikariKoForwordKiyagya_Click(object sender, EventArgs e)
    {
        DistrictWiseCounting.Visible=true;
        AvedankoAdhikariKoForwordKiyagya.Visible=true;
        FirstTimetbl.Visible=false;
    }
    protected void hideshowlambitAvedan_Click(object sender, EventArgs e)
    {
        DistrictWiseCounting.Visible=true;
    }
    protected void hideshowDisposeAavedan_Click(object sender, EventArgs e)
    {
        DistrictWiseCounting.Visible=true;
        DisposeAavedan.Visible=true;
        FirstTimetbl.Visible=false;
    }
}
