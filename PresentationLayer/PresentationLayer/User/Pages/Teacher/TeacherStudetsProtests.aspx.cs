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
using System.Data.SqlClient;
using DataBaseLayer;

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherStudetsProtests : System.Web.UI.Page
    {
        protected void showPresentCourseGroupByTeacher()
        {

            string TermNumber = drliTermNumber.Text;


            string UserTeacherName = Session["TeacherName"].ToString();
            string UserTeacherLastName = Session["TeacherLastName"].ToString();

            DataBaseOperations dbo = new DataBaseOperations();

            GridView1.DataSource = dbo.selectQueryDataTable("TableCourseGroup,TableCourse",

            "TableCourseGroup.CourseGroupRowID as RowID,TableCourseGroup.CourseGroupTeacherName as UserTeacherName,TableCourseGroup.CourseGroupTeacherLastName as UserTeacherLastName," +
            "TableCourseGroup.CourseGroupClassTotalCapicity as ClassCapicity,TableCourseGroup.CourseGroupClassFullCapicity as ClassFullCapicity," +
            "TableCourseGroup.CourseGroupClassEmptyCapicity as ClassEmptyCapicity," +

            "TableCourseGroup.CourseGroupCourseName as CourseName,TableCourseGroup.CourseGroupNumber as Number,TableCourseGroup.CourseGroupUniversityName as University," +

            "TableCourse.CourseEducationLevel as CourseEducationLevel,TableCourse.CourseID as CourseID," +
            "TableCourse.CourseFacultyName as CourseFacultyName,TableCourse.CourseEducationBranchName as CourseEducationBranchName,TableCourse.CourseEducationBranchName as CourseEducationBranchName," +


            "TableCourse.CourseSemisterNumber as CourseSemisterNumber,TableCourse.CourseTheoryUnit as CourseTheoryUnit,TableCourse.CoursePracticalUnit as CoursePracticalUnit",


            "  (TableCourse.CourseName=TableCourseGroup.CourseGroupCourseName)and (TableCourseGroup.CourseGroupTeacherLastName='" + UserTeacherLastName + "')" +
            "  and (TableCourseGroup.CourseGroupTeacherName='" + UserTeacherName + "')" +

            " and (TableCourseGroup.CourseGroupUniversityNameCourseNameYearTermGroupNumber=" + "'" + TermNumber + "')",
            " order by University,CourseName,Number");

            GridView1.DataBind();
        }
        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTermNumber.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber", "SemisterNumberActive='True'", " order by SemisterNumber");
            drliTermNumber.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] == "Teacher")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            if (!IsPostBack)
            {
                showTermNumbers();
            }

            try
            {
                showPresentCourseGroupByTeacher();
            }
            catch
            {
            }

        }

        protected void drliTermNumber_TextChanged(object sender, EventArgs e)
        {
            try
            {
                showPresentCourseGroupByTeacher();
            }
            catch
            {
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index].Value;
                Session["courseName"] = GridView1.Rows[index].Cells[2].Text.ToString();

                Response.Redirect("TeacherResponseToStudentProtest.aspx");
            }
        }
    }
}