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

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherAddCourse : System.Web.UI.Page
    {

        public bool checkCourseID()
        {
            int i;
            string s = txtCourseID.Text;
            string msg = null;
            bool fualt = false;
            msg = "کاراکترهاي ";
            for (i = 0; i < s.Length; i++)
            {
                if ((Convert.ToChar(s[i]) != '0') &&
                    (Convert.ToChar(s[i]) != '1') &&
                    (Convert.ToChar(s[i]) != '2') &&
                    (Convert.ToChar(s[i]) != '3') &&
                    (Convert.ToChar(s[i]) != '4') &&
                    (Convert.ToChar(s[i]) != '5') &&
                    (Convert.ToChar(s[i]) != '6') &&
                    (Convert.ToChar(s[i]) != '7') &&
                    (Convert.ToChar(s[i]) != '8') &&
                    (Convert.ToChar(s[i]) != '9'))
                {
                    msg = msg + " " + s[i].ToString();
                    fualt = true;
                }

            }

            if (fualt)
            {
                txtCourseID.Text = string.Empty;
                msg = msg + " در شماره درس مجاز نيستند.";
                lblMessage.Text = lblMessage.Text + msg;
                lblMessage.Visible = true;
                showCourses();
                return false;
            }
            else
            {
                return true;
                //lblMessage.Visible = false;
                //lblMessage.Text = string.Empty;
            }
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
                lblError.Text = excp.Message.ToString();
            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }
        }

        protected void showBranch()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliBranch.DataSource = dbo.selectQueryDataTable("TableEducationBranch", "EducationBranchName", null, " order by EducationBranchName");
            //"EducationBranchName='" + Session["TeacherBranchName"].ToString() + "'"
            drliBranch.DataBind();
        }

        protected void showCourses()
        {
            Course crs = new Course();
            GridView1.DataSource = crs.showAllCourses("CourseID,CourseName,CourseEducationLevel", null, " order by CourseName,CourseID");
            //"CourseEducationBranchName='" + Session["TeacherBranchName"].ToString() + "'"
            GridView1.DataBind();
        }

        protected void clearForm()
        {
            txtCourseName.Text = string.Empty;
            txtCourseID.Text = string.Empty;
            DrLiCourseEducationType.SelectedIndex = 0;
            DrLiCourseFacultyName.SelectedIndex = 0;
            DrLiCourseEducationLevel.SelectedIndex = 0;
            DrLiCourseSemisterNumber.SelectedIndex = 0;
            DrLiCoursePracticalUnit.SelectedIndex = 0;
            DrLiCourseTheoryUnit.SelectedIndex = 0;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Teacher")
            {
            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            lblMessage.Text = string.Empty;
            lblError.Text = string.Empty;


            try
            {
                if (!IsPostBack)
                {
                    showCourses();
                    showBranch();
                }
            }
            catch
            {
            }

        }

        public void insertCourse()
        {
            Course crs = new Course();

            crs.CourseName = txtCourseName.Text.Trim();
            crs.CourseID = Convert.ToInt16(txtCourseID.Text);
            crs.CourseEducationLevel = DrLiCourseEducationLevel.Text;
            crs.CourseEducationBranchName = drliBranch.Text;
            crs.CourseFacultyName = DrLiCourseFacultyName.Text;
            crs.CourseSemisterNumber = Convert.ToInt16(DrLiCourseSemisterNumber.Text);
            crs.CoursePracticalUnit = Convert.ToInt16(DrLiCoursePracticalUnit.Text);
            crs.CourseTheoryUnit = Convert.ToInt16(DrLiCourseTheoryUnit.Text);
            crs.CourseEducationBranchName = drliBranch.Text;
            crs.CourseType = DrLiCourseEducationType.Text;

            SqlException exc = crs.insertCourse();
            if (exc == null)
            {
                lblMessage.Text = "عمليات انجام شد.";
                lblMessage.Visible = true;
                clearForm();
                showCourses();
            }
            else
            {
                if (exc.Message.Contains("PRIMARY KEY constraint"))
                    lblMessage.Text = "درس با توجه به نام درس، مقطع درس و شماره درس، قبلاً واردشده است.";
                lblMessage.Visible = true;
                showCourses();
            }


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (checkCourseID() == true)
                    insertCourse();
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

    }
}