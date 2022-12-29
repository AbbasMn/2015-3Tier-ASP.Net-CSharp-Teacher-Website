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
    public partial class TeacherGroupCourse : System.Web.UI.Page
    {
        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTermNumber.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber", "SemisterNumberActive='True'", " order by SemisterNumber");
            //"SemisterNumberActive='True'"
            drliTermNumber.DataBind();

        }
        public bool checkClassCapacity()
        {
            int i;
            string s = txtCourseGroupCapicity.Text;
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
                txtCourseGroupCapicity.Text = string.Empty;
                msg = msg + " در طرفيت کلاس مجاز نيستند.";
                lblMessage.Text = lblMessage.Text + msg;
                lblMessage.Visible = true;
                return false;
            }
            else
            {
                return true;
                //lblMessage.Visible = false;
                //lblMessage.Text = string.Empty;
            }
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
            PersianDatePickupExcercise.Text = String.Empty;
            txtCourseGroupExerciseTime.Text = String.Empty;
            PersianDatePickupFinalTerm.Text = String.Empty;
            txtCourseGroupFinalTime.Text = String.Empty;
            PersianDatePickupMidTerm.Text = String.Empty;
            txtCourseGroupMidTermTime.Text = String.Empty;
            txtCourseGroupNumber.Text = String.Empty;
            PersianDatePickupPractical.Text = String.Empty;
            txtCourseGroupPracticalTime.Text = String.Empty;
        }

        protected void insertGroupCourse()
        {
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

            crsgrp.CourseGroupMidTermDate = PersianDatePickupMidTerm.PersianDateString;
            crsgrp.CourseGroupMidTermTime = txtCourseGroupMidTermTime.Text.Trim();
            crsgrp.CourseGroupFinalDate = PersianDatePickupFinalTerm.PersianDateString;
            crsgrp.CourseGroupFinalTime = txtCourseGroupFinalTime.Text.Trim();
            crsgrp.CourseGroupPracticalDate = PersianDatePickupPractical.PersianDateString;
            crsgrp.CourseGroupPracticalTime = txtCourseGroupPracticalTime.Text.Trim();
            crsgrp.CourseGroupExerciseDate = PersianDatePickupExcercise.PersianDateString;
            crsgrp.CourseGroupExerciseTime = txtCourseGroupExerciseTime.Text.Trim();
            crsgrp.CourseGroupEducationLevel = lblCourseEducationLevel.Text;

            SqlException excp = crsgrp.insertCourseGroup();
            if (excp != null)
            {
                if (excp.Message.Contains("PRIMARY KEY"))
                    lblMessage.Text = "گروه درسي قبلاً وارد شده است.";
            }
            else
                lblMessage.Text = "گروه درسي جدید وارد شد.";
            //clear();

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
            showCourseSpecification();
        }

        protected void showYear()
        {
            //DataBaseOperations dbo = new DataBaseOperations();
            //drliyear.DataSource = dbo.selectQueryDataTable("TableYear", "YearName", null, " order by YearName");
            //drliyear.DataBind();
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

                    RangeValidatorMidTermDate.ErrorMessage = " تاريخ امتحان ميان ترم بايد بين 1389/01/01 و 1400/12/31 وارد شود.";
                    RangeValidatorMidTermTime.ErrorMessage = " ساعت امتحان ميان ترم بايد بين 00:00 و 24:00 وارد شود.";

                    RangeValidatorFinalDate.ErrorMessage = " تاريخ امتحان پايان ترم بايد بين 1389/01/01 و 1400/12/31 وارد شود.";
                    RangeValidatorFinalTime.ErrorMessage = " ساعت امتحان پايان ترم بايد بين 00:00 و 24:00 وارد شود.";

                    RangeValidatorPracticalDate.ErrorMessage = " تاريخ امتحان عملي بايد بين 1389/01/01 و 1400/12/31 وارد شود.";
                    RangeValidatorPracticalTime.ErrorMessage = " ساعت امتحان عملي بايد بين 00:00 و 24:00 وارد شود.";

                    RangeValidatorExercizeDate.ErrorMessage = " تاريخ تحويل تمرين بايد بين 1389/01/01 و 1400/12/31 وارد شود.";
                    RangeValidatorExercizeTime.ErrorMessage = " ساعت تحويل تمرين بايد بين 00:00 و 24:00 وارد شود.";
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
                lblMessage.Text = string.Empty;
                if (checkClassCapacity() == true)
                {
                    insertGroupCourse();
                    //Response.Redirect("TeacherPeresentedGroupCourse.aspx");
                }
            }
            catch
            {
            }


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