using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using LogicalLayer;
using System.Data.SqlClient;
using DataBaseLayer;
using System.Globalization;

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class EditCourse : System.Web.UI.Page
    {
        public string sentCourseID;
        public string newCourseName;
        public string newCourseID;

        protected void showCourseToUpdate()
        {


            sentCourseID = Session["sentID"].ToString();

            Course crs = new Course();
            DataTable dt = new DataTable();
            dt = crs.showSelectedCourseInformation("CourseType,CourseID,CourseName,CourseEducationLevel,CourseTheoryUnit,CoursePracticalUnit,CourseFacultyName,CourseEducationBranchName,CourseSemisterNumber",
                                                   " CourseID=" + sentCourseID);



            txtCourseName.Text = dt.Rows[0]["CourseName"].ToString();
            LblCourseName.Text = txtCourseName.Text;

            txtCourseID.Text = dt.Rows[0]["CourseID"].ToString();
            lblCourseID.Text = txtCourseID.Text;


            LblCourseFacultyName.Text = dt.Rows[0]["CourseFacultyName"].ToString();
            LblCourseEducationLevel.Text = dt.Rows[0]["CourseEducationLevel"].ToString();
            LblCourseSemisterNumber.Text = dt.Rows[0]["CourseSemisterNumber"].ToString();
            LblCoursePracticalUnit.Text = dt.Rows[0]["CoursePracticalUnit"].ToString();
            LblCoursePracticalUnit.Text = dt.Rows[0]["CoursePracticalUnit"].ToString();
            LblCourseTheoryUnit.Text = dt.Rows[0]["CourseTheoryUnit"].ToString();
            LblCourseType.Text = dt.Rows[0]["CourseType"].ToString();
            LblCourseBranchName.Text = dt.Rows[0]["CourseEducationBranchName"].ToString();


        }

        protected void clearForm()
        {
            txtCourseName.Text = string.Empty;
            txtCourseID.Text = string.Empty;
            DrLiCourseType.SelectedIndex = 0;
            DrLiCourseFacultyName.SelectedIndex = 0;
            DrLiCourseEducationLevel.SelectedIndex = 0;
            DrLiCourseSemisterNumber.SelectedIndex = 0;
            DrLiCoursePracticalUnit.SelectedIndex = 0;
            DrLiCourseTheoryUnit.SelectedIndex = 0;
        }



        protected void updateCourse()
        {
            Course crs = new Course();

            sentCourseID = Session["sentID"].ToString();

            if (LblCourseName.Text != txtCourseName.Text)
                crs.CourseName = newCourseName;
            else
                crs.CourseName = LblCourseName.Text;

            if (lblCourseID.Text != txtCourseID.Text)
                crs.CourseID = Convert.ToInt16(newCourseID);
            else
                crs.CourseID = Convert.ToInt16(lblCourseID.Text.ToString());


            if (LblCourseBranchName.Text != drliBranch.Text)
                crs.CourseEducationBranchName = drliBranch.Text;
            else
                crs.CourseEducationBranchName = LblCourseBranchName.Text;


            if (LblCourseType.Text != DrLiCourseType.Text)
                crs.CourseType = DrLiCourseType.Text;
            else
                crs.CourseType = LblCourseType.Text;

            if (LblCourseFacultyName.Text != DrLiCourseFacultyName.Text)
                crs.CourseFacultyName = DrLiCourseFacultyName.Text;
            else
                crs.CourseFacultyName = LblCourseFacultyName.Text;

            if (LblCourseEducationLevel.Text != DrLiCourseEducationLevel.Text)
                crs.CourseEducationLevel = DrLiCourseEducationLevel.Text;
            else
                crs.CourseEducationLevel = LblCourseEducationLevel.Text;


            if (LblCourseSemisterNumber.Text != DrLiCourseSemisterNumber.Text)
                crs.CourseSemisterNumber = Convert.ToInt16(DrLiCourseSemisterNumber.Text);
            else
                crs.CourseSemisterNumber = Convert.ToInt16(LblCourseSemisterNumber.Text);

            if (LblCoursePracticalUnit.Text != DrLiCoursePracticalUnit.Text)
                crs.CoursePracticalUnit = Convert.ToInt16(DrLiCoursePracticalUnit.Text);
            else
                crs.CoursePracticalUnit = Convert.ToInt16(LblCoursePracticalUnit.Text);

            if (LblCourseTheoryUnit.Text != DrLiCourseTheoryUnit.Text)
                crs.CourseTheoryUnit = Convert.ToInt16(DrLiCourseTheoryUnit.Text);
            else
                crs.CourseTheoryUnit = Convert.ToInt16(LblCourseTheoryUnit.Text);



            SqlException exc = crs.updateCourse("CourseName=" + "'" + crs.CourseName + "'" +
                                                 ",CourseID=" + crs.CourseID.ToString() +
                                                 ",CourseTheoryUnit=" + crs.CourseTheoryUnit.ToString() +
                                                 ",CoursePracticalUnit=" + crs.CoursePracticalUnit.ToString() +
                                                 ",CourseSemisterNumber=" + crs.CourseSemisterNumber +
                                                 ",CourseEducationLevel=" + "'" + crs.CourseEducationLevel + "'" +
                                                 ",CourseFacultyName=" + "'" + crs.CourseFacultyName + "'" +
                                                 ",CourseEducationBranchName=" + "'" + crs.CourseEducationBranchName + "'" +
                                                 ",CourseType=" + "'" + crs.CourseType + "'" +
                                                 " where CourseID=" + sentCourseID);
            if (exc == null)
            {
                lblMessage.Text = "عمليات انجام شد.";
                lblMessage.Visible = true;
            }
            else
            {
                if (exc.Message.Contains("PRIMARY KEY constraint"))
                    lblMessage.Text = "درس با توجه به نام درس، مقطع درس و شماره درس، قبلاً واردشده است.";
                else
                    lblMessage.Text = exc.Message.ToString();
                lblMessage.Visible = true;
            }
            Response.Redirect("AddDeleteCourse.aspx");
        }
        protected void showBranch()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliBranch.DataSource = dbo.selectQueryDataTable("TableEducationBranch", "EducationBranchName", null, " order by EducationBranchName");
            drliBranch.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;


            if (Session["UserType"] == "Admin")
            {
                if (!IsPostBack)
                {
                    try
                    {
                        clearForm();
                        showBranch();
                        showCourseToUpdate();
                    }
                    catch
                    {
                    }
                }
            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");







        }

        protected void btnEdite_Click(object sender, EventArgs e)
        {
            try
            {
                newCourseName = txtCourseName.Text.Trim();
                newCourseID = txtCourseID.Text.Trim();

                updateCourse();
            }
            catch
            {
            }
            Response.Redirect("AddDeleteCourse.aspx");
        }
        protected void btnExite_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDeleteCourse.aspx");
        }



        protected void lbtnLogOut_Click(object sender, EventArgs e)
        {
            try
            {
                logOut();
            }
            catch
            {
            }
        }
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminControlPanelPage.aspx");
        }

        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String AdminID = Session["AdminID"].ToString();

            if (Session["UserType"].ToString() == "Admin")
            {
                excp = dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
                  " where AdminId=" + AdminID);
            }

            if (excp != null)
            {
                lblError.Text = excp.Message.ToString();
            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }
        }
    }
}