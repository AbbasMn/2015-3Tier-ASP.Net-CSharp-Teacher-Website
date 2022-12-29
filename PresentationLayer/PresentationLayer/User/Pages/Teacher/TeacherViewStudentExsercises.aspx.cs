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
    public partial class TeacherViewStudentExsercises : System.Web.UI.Page
    {
        public string convertFloatTostring(string s)
        {
            string sahih = null;
            string ashar = null;
            int i, j;

            i = 0;
            while (i < s.Length)
            {
                if (s[i] != '/')
                {
                    sahih = sahih + s[i].ToString();
                    i++;
                }
                else
                    break;
            }

            if (i == s.Length)
            {
                return (sahih);
            }

            else
            {
                i++;
                while (i < s.Length)
                {
                    ashar = ashar + s[i].ToString();
                    i++;
                }

                return (sahih + "." + ashar);
            }

        }


        public double convertStringToFloat(string s)
        {
            string sahih = null;
            string ashar = null;
            int i, j;

            i = 0;
            while (i < s.Length)
            {
                if (s[i] != '.')
                {
                    sahih = sahih + s[i].ToString();
                    i++;
                }
                else
                    break;
            }

            if (i == s.Length)
            {
                return Convert.ToDouble(sahih);
            }

            else
            {
                i++;
                while (i < s.Length)
                {
                    ashar = ashar + s[i].ToString();
                    i++;
                }

                return Convert.ToDouble(sahih + "/" + ashar);
            }

        }

        protected void saveExerciseMark()
        {

            int i;
            double mark;


            DataBaseOperations dbo = new DataBaseOperations();


            TextBox txtExercise = new TextBox();

            try
            {

                for (i = 0; i <= GridView5.Rows.Count - 1; i++)
                {

                    txtExercise = (TextBox)GridView5.Rows[i].FindControl("txtExercise");
                    //mark = convertStringToFloat(txtExercise.Text.ToString());
                    //convertFloatTostring(mark.ToString())

                    dbo.updateQuery("TableStudentDelivery", "studentDeliveryMark=" + txtExercise.Text.ToString() +
                            "  where studentDeliveryID=" + GridView5.DataKeys[i].Value.ToString());



                    //dbo.updateQuery("TableTakeCourse", "TakeCourseExerciseMark=" + txtExercise.Text.ToString() +
                    //    "  where TakeCourseUserStudentID=" + GridView5.Rows[i].Cells[2].Text + " and TakeCourseCourseGroupRowID=" + Session["sentID"].ToString());

                    Message msg = new Message();

                    PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
                    perdate.SelectedDateTime = DateTime.Now;


                    msg.messageDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

                    msg.messageSenderType = Session["UserType"].ToString().Trim();
                    msg.messageRecieverType = "Student";

                    msg.messageSenderName = Session["TeacherName"].ToString().Trim();
                    msg.messageSenderLastName = Session["TeacherLastName"].ToString().Trim();
                    msg.messageCourseGroupID = Convert.ToInt32(Session["sentID"].ToString());

                    msg.deleteMessage("messageStudentID=" + GridView5.Rows[i].Cells[2].Text +
                        " and messageRecieverName='" + GridView5.Rows[i].Cells[1].Text +
                        "' and messageRecieverLastName='" + GridView5.Rows[i].Cells[0].Text +
                        "'and messageTitle=' وارد شدن نمره تمرين درس" + " " + Session["courseName"].ToString() +
                        "' and messageCourseGroupID =" + Session["sentID"].ToString());

                    msg.messageTitle = " وارد شدن نمره تمرين درس" + " " + Session["courseName"].ToString();
                    msg.messagePassage = "نمره تمرين شما در درس " + Session["courseName"].ToString() + " وارد شد.";
                    //": " + sumExerciseMark.ToString();


                    msg.messageRecieverName = GridView5.Rows[i].Cells[1].Text;
                    msg.messageRecieverLastName = GridView5.Rows[i].Cells[0].Text;
                    msg.messageStudentID = Convert.ToInt32(GridView5.Rows[i].Cells[2].Text);
                    msg.insertMessage();
                }

            }
            catch (Exception exp)
            {

            }
        }

        protected void showStudentDelivery()
        {
            StudentDelivery stdDel = new StudentDelivery();

            GridView5.DataSource = stdDel.showStudentDelivery("*", "studentDeliveryCourseGroupID=" + Session["sentID"].ToString(), "order by studentDeliveryStudentLastName,studentDeliveryID");
            GridView5.DataBind();

            if (GridView5.Rows.Count > 0)
            {
                GridView5.Visible = true;
                btnSave.Visible = true;
            }
            else
            {
                GridView5.Visible = false;
                btnSave.Visible = false;
            }

        }





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
            {
                GridView1.Visible = true;
                GridView1.Visible = true;

            }
            else
            {
                GridView1.Visible = false;

            }
        }

        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTermNumber.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber", "SemisterNumberActive='True'", " order by SemisterNumber");
            //"SemisterNumberActive='True'"
            drliTermNumber.DataBind();
        }

        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String ID;

            if (Session["UserType"].ToString() == "Admin")
            {
                ID = Session["AdminID"].ToString();
                excp = dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
                  " where AdminID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Teacher")
            {
                ID = Session["TeacherID"].ToString();
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Student")
            {
                ID = Session["StudentID"].ToString();
                excp = dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
                  " where UserStudentID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }




            if (excp != null)
            {
                //lblError.Text = excp.Message.ToString();
            }
            else
            {


            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Teacher")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            showPresentCourseGroupByTeacher();


            if (!IsPostBack)
            {
                showTermNumbers();
                showPresentCourseGroupByTeacher();
                btnSave.Visible = false;
            }




            try
            {

            }
            catch
            {
                if (Session["UserType"].ToString() == "Admin")
                    Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Teacher")
                    Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Student")
                    Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");
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


        protected void lbtnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Login.aspx");
        }





        protected void drliUniversity_TextChanged(object sender, EventArgs e)
        {
            showPresentCourseGroupByTeacher();
        }
        protected void drliTermNumber_TextChanged(object sender, EventArgs e)
        {
            showPresentCourseGroupByTeacher();
            GridView5.Visible = false;
            btnSave.Visible = false;
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["courseName"] = GridView1.Rows[index].Cells[1].Text;
                Session["sentID"] = GridView1.DataKeys[index].Value;
                showStudentDelivery();
            }
        }
        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            saveExerciseMark();
            showStudentDelivery();
        }

        protected void btnLoginPage_Click(object sender, EventArgs e)
        {

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");
        }
    }
}