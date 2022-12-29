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
using DataBaseLayer;
using System.Data.SqlClient;

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherPeresentedGroupCourse : System.Web.UI.Page
    {
        protected void showPresentCourseGroupByTeacher()
        {

            string TermNumber = drliTermNumber.Text;

            string UserTeacherName = Session["TeacherName"].ToString();
            string UserTeacherLastName = Session["TeacherLastName"].ToString();

            DataBaseOperations dbo = new DataBaseOperations();

            GridView1.DataSource = dbo.selectQueryDataTable("TableCourseGroup",

            "CourseGroupNumber,CourseGroupUniversityName,CourseGroupUniversityNameCourseNameYearTermGroupNumber,CourseGroupEducationLevel,CourseGroupCourseName,CourseGroupRowID,CourseGroupTeacherName,CourseGroupTeacherLastName," +
            "CourseGroupClassTotalCapicity,CourseGroupClassFullCapicity," +
            "CourseGroupClassEmptyCapicity",


            " (CourseGroupTeacherName ='" + UserTeacherName + "')" +

            " and (CourseGroupTeacherLastName ='" + UserTeacherLastName + "')" +

            " and (TableCourseGroup.CourseGroupUniversityNameCourseNameYearTermGroupNumber='" + drliTermNumber.Text + "')",
            " order  by CourseGroupUniversityNameCourseNameYearTermGroupNumber");
            //" order by University,CourseName,Number", null);

            GridView1.DataBind();

            if (GridView1.Rows.Count > 0)
                GridView1.Visible = true;
            else
                GridView1.Visible = false;
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

            try
            {
                if (!IsPostBack)
                {
                    showTermNumbers();
                }
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

        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherControlPanelPage.aspx");
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToEdit")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index].Value;
                Response.Redirect("TeacherEditGroupCourse.aspx");
            }

            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["courseName"] = GridView1.Rows[index].Cells[1].Text;
                Session["sentID"] = GridView1.DataKeys[index].Value;


                Response.Redirect("TeacherStudentsOfCourseGroup.aspx");
            }

            if (e.CommandName == "goToSendMessage")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index].Value;
                Response.Redirect("TeacherSelectStudentsForRecieveMessage.aspx");
            }

            if (e.CommandName == "goToResponse")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index].Value;
                Response.Redirect("TeacherShowRecievedMessages.aspx");
            }
            if (e.CommandName == "goToStudentResponse")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index].Value;
                Response.Redirect("TeacherShowStudentResponseMessages.aspx");
            }
        }

    }
}