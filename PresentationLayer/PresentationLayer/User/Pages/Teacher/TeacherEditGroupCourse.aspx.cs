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
using DataBaseLayer;
using System.Data.SqlClient;

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherEditGroupCourse : System.Web.UI.Page
    {
        public string sentCoursentCourseGroupID;

        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTermNumber.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber", "SemisterNumberActive='True'", " order by SemisterNumber");
            //"SemisterNumberActive='True'"
            drliTermNumber.DataBind();

        }
        protected void showTeacherUniversities()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliUniversity.DataSource = dbo.selectQueryDataTable("TableTeacherUniversity", "TeacherUniversityUniversityName as UniversityName"
                                                            , "TeacherUniversityUserTeacherID=" + Session["TeacherID"].ToString()
                                                            , " order by UniversityName");
            drliUniversity.DataBind();

        }

        protected void clear()
        {
            lblMessage.Text = String.Empty;
            lblMessage.Text = String.Empty;

            lblCourseEducationBranchName.Text = String.Empty;
            lblCourseEducationBranchName.Text = String.Empty;
            lblCourseFacultyName.Text = String.Empty;
            lblCourseID.Text = String.Empty;
            lblCourseSemisterNumber.Text = String.Empty;
            lblCoursePracticalUnit.Text = String.Empty;
            lblCourseTheoryUnit.Text = String.Empty;

            txtCourseGroupCapicity.Text = String.Empty;
            txtCourseGroupClassNumber.Text = String.Empty;
            txtCourseGroupNumber.Text = String.Empty;

        }

        protected void updateGroupCourse()
        {

            sentCoursentCourseGroupID = Session["sentID"].ToString();


            CourseGroup crsgrp = new CourseGroup();

            crsgrp.CourseGroupTeacherName = Session["TeacherName"].ToString();
            crsgrp.CourseGroupTeacherLastName = Session["TeacherLastName"].ToString();

            int i = drliTermNumber.Text.Length;
            string s = string.Empty;

            for (int k = 0; k < 4; k++)
                s = s + drliTermNumber.Text[k].ToString();

            crsgrp.CourseGroupYear = Convert.ToInt16(s);



            for (int k = 7; k < i; k++)
                crsgrp.CourseGroupTerm = crsgrp.CourseGroupTerm + drliTermNumber.Text[k].ToString();

            crsgrp.CourseGroupUniversityName = drliUniversity.Text; ;
            crsgrp.CourseGroupCourseName = drliCourse.Text;
            crsgrp.CourseGroupNumber = txtCourseGroupNumber.Text.Trim();
            crsgrp.CourseGroupClassNumber = txtCourseGroupClassNumber.Text.Trim();

            crsgrp.CourseGroupClassTotalCapicity = Convert.ToInt16(txtCourseGroupCapicity.Text.Trim());
            crsgrp.CourseGroupClassEmptyCapicity = Convert.ToInt16(txtCourseGroupCapicity.Text.Trim());
            crsgrp.CourseGroupClassFullCapicity = 0;

            crsgrp.CourseGroupEducationLevel = lblCourseEducationLevel.Text;

            SqlException excp = crsgrp.updateCourseGroup("CourseGroupTeacherName='" + crsgrp.CourseGroupTeacherName.Trim() +
                                                         "',CourseGroupTeacherLastName='" + crsgrp.CourseGroupTeacherLastName.Trim() +
                                                         "',CourseGroupUniversityNameCourseNameYearTermGroupNumber='" + crsgrp.CourseGroupYear + " - " + crsgrp.CourseGroupTerm +

                                                         "',CourseGroupUniversityName='" + crsgrp.CourseGroupUniversityName +
                                                         "',CourseGroupCourseName='" + crsgrp.CourseGroupCourseName +
                                                         "',CourseGroupNumber='" + crsgrp.CourseGroupNumber +
                                                         "',CourseGroupClassNumber='" + crsgrp.CourseGroupClassNumber +
                                                         "',CourseGroupClassTotalCapicity=" + crsgrp.CourseGroupClassTotalCapicity +
                                                         ",CourseGroupClassEmptyCapicity=" + crsgrp.CourseGroupClassEmptyCapicity +
                                                         ",CourseGroupClassFullCapicity=" + crsgrp.CourseGroupClassFullCapicity +

                                                         ",CourseGroupEducationLevel='" + crsgrp.CourseGroupEducationLevel +

                                                         "'  where CourseGroupRowID=" + sentCoursentCourseGroupID);
            if (excp != null)
            {
                if (excp.Message.Contains("PRIMARY KEY"))
                    lblMessage.Text = "گروه درسي قبلاً وارد شده است.";
            }
            else
            {
                lblMessage.Text = "گروه درسی ویرایش شد";
            }



        }

        protected void showCourseSpecification()
        {
            Course crs = new Course();
            DataTable dt = new DataTable();
            dt = crs.showSelectedCourseInformation("CourseName,CourseType,CourseID,CourseEducationBranchName,CourseEducationLevel,CourseTheoryUnit,CoursePracticalUnit,CourseFacultyName,CourseEducationBranchName,CourseSemisterNumber",
                " CourseName=" + "'" + drliCourse.Text + "'");

            if (dt.Rows.Count > 0)
            {
                lblCourseEducationBranchName.Text = dt.Rows[0]["CourseEducationBranchName"].ToString();
                lblCourseEducationBranchName.Text = dt.Rows[0]["CourseEducationBranchName"].ToString();
                lblCourseFacultyName.Text = dt.Rows[0]["CourseFacultyName"].ToString();
                lblCourseSemisterNumber.Text = dt.Rows[0]["CourseSemisterNumber"].ToString();
                lblCoursePracticalUnit.Text = dt.Rows[0]["CoursePracticalUnit"].ToString();
                lblCourseTheoryUnit.Text = dt.Rows[0]["CourseTheoryUnit"].ToString();
                lblCourseID.Text = dt.Rows[0]["CourseID"].ToString();
                lblCourseType.Text = dt.Rows[0]["CourseType"].ToString();
                lblCourseEducationLevel.Text = dt.Rows[0]["CourseEducationLevel"].ToString();
                lblCourseName.Text = dt.Rows[0]["CourseName"].ToString();
            }
        }

        protected void showTeacherBranchCourse()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliCourse.DataSource = dbo.selectQueryDataTable("TableCourse", "CourseName", null, " order by CourseName");
            // " CourseEducationBranchName=" +
            //"'" + Session["TeacherBranchName"].ToString() +
            //"'", 

            drliCourse.DataBind();

        }



        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Teacher")
            {

            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");


            try
            {
                if (!IsPostBack)
                {
                    showTermNumbers();
                    showTeacherUniversities();

                    showTeacherBranchCourse();
                    showCourseSpecification();
                }
            }
            catch
            {
            }


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                updateGroupCourse();
            }
            catch
            {
                Response.Redirect("TeacherControlPanelPage.aspx");
            }
            //Response.Redirect("TeacherPeresentedGroupCourse.aspx");
        }

        protected void drliCourse_TextChanged(object sender, EventArgs e)
        {
            try
            {
                showCourseSpecification();
            }
            catch
            {
            }

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
            Response.Redirect("TeacherControlPanelPage.aspx");
        }

        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String UserTeacherID = Session["TeacherID"].ToString();

            if (Session["UserType"].ToString() == "Teacher")
            {
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherId=" + UserTeacherID);
            }

            if (excp != null)
            {
                lblMessage.Text = excp.Message.ToString();
            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }
        }
    }
}