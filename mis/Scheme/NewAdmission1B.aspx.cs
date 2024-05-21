using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.ServiceModel;

public partial class mis_Scheme_NewAdmission1B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dvPersonalDetails.Visible = false;
            dvPreviousAcademicDetails.Visible = false;
            dvPreviousSchoolDetails.Visible = false;
            dvEnrollmentDetails.Visible = false;
            dvNewSchoolDetails.Visible = false;
        }
    }
    protected void btnShowStudentDetails_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtStudentSamagraID.Text))
        {
            Response.Write("<script>alert('Please Enter Student Samagra ID!')</script>");
            txtStudentSamagraID.Focus();
            return;
        }
        else
        {
            string strInput = txtStudentSamagraID.Text;
            Regex regex = new Regex(@"^[0-9]{9}$");
            bool isMatch = regex.IsMatch(strInput);
            if (isMatch)
            {
                FillOtherDetails();
            }
            else
            {
                Response.Write("<script>alert('Please Enter Valid Student Samagra ID!')</script>");
                txtStudentSamagraID.Focus();
                return;
            }
        }
    }

    protected void FillOtherDetails()
    {
        if (txtStudentSamagraID.Text == "102345670")
        {
            dvPersonalDetails.Visible=true;
            dvPreviousAcademicDetails.Visible=true;
            Response.Write("<script>alert('Student Already Enrolled in a School!')</script>");
            dvPreviousSchoolDetails.Visible = false;
            dvEnrollmentDetails.Visible = false;
            dvNewSchoolDetails.Visible = false;


        }
        else if (txtStudentSamagraID.Text == "102345671")
        {
            dvPersonalDetails.Visible = true;
            dvPreviousSchoolDetails.Visible = true;
            dvEnrollmentDetails.Visible=true;
            dvPreviousAcademicDetails.Visible = false;
            dvNewSchoolDetails.Visible = false;
        }
        else if (txtStudentSamagraID.Text == "102345672")
        {
            dvPersonalDetails.Visible = true;
            dvEnrollmentDetails.Visible = true;
            dvPreviousAcademicDetails.Visible = false;
            dvPreviousSchoolDetails.Visible = false;
            dvNewSchoolDetails.Visible = false;

        }
        else
        {
            txtStudentSamagraID.Text = "";
            Response.Write("<script>alert('Sorry! No Record Found.')</script>");
        }
    }

    protected void btnEnroll_Click(object sender, EventArgs e)
    {
       dvNewSchoolDetails.Visible = true;
    }



    protected void btnAdmitStudent_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewAdmission1B.aspx");
        
    }
}