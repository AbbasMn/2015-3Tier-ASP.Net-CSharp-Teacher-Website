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
    public partial class TeacherViewStudentActivities : System.Web.UI.Page
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


            double sumExerciseMark = 0;
            double Mark;

            DataBaseOperations dbo = new DataBaseOperations();


            TextBox txtExercise = new TextBox();



            for (i = 0; i <= GridView5.Rows.Count - 1; i++)
            {

                txtExercise = (TextBox)GridView5.Rows[i].FindControl("txtExercise");


                try
                {
                    //convertStringToFloat(txtExercise.Text.ToString());
                    Mark = Convert.ToDouble(txtExercise.Text.ToString());
                    sumExerciseMark = sumExerciseMark + Mark;

                    //convertFloatTostring(Mark.ToString())
                    dbo.updateQuery("TableStudentDelivery", "studentDeliveryMark=" + txtExercise.Text.ToString() +
                        "  where studentDeliveryID=" + GridView5.DataKeys[i].Value.ToString());
                }
                catch (Exception exp)
                {

                }
            }

            //convertFloatTostring(sumExerciseMark.ToString())
            dbo.updateQuery("TableTakeCourse", "TakeCourseExerciseMark=" + sumExerciseMark.ToString() +
                "  where TakeCourseUserStudentID=" + lblStudentID.Text + " and TakeCourseCourseGroupRowID=" + Session["sentID"].ToString());

            Message msg = new Message();

            PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
            perdate.SelectedDateTime = DateTime.Now;


            msg.messageDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

            msg.messageSenderType = Session["UserType"].ToString().Trim();
            msg.messageRecieverType = "Student";

            msg.messageSenderName = Session["TeacherName"].ToString().Trim();
            msg.messageSenderLastName = Session["TeacherLastName"].ToString().Trim();
            msg.messageCourseGroupID = Convert.ToInt32(Session["sentID"].ToString());

            msg.deleteMessage("messageStudentID=" + lblStudentID.Text +
                " and messageRecieverName='" + lblStudentName.Text +
                "' and messageRecieverLastName='" + lblStudentLastName.Text +
                "'and messageTitle=' وارد شدن نمره تمرين درس" + " " + Session["courseName"].ToString() +
                "' and messageCourseGroupID =" + Session["sentID"].ToString());

            msg.messageTitle = " وارد شدن نمره تمرين درس" + " " + Session["courseName"].ToString();
            msg.messagePassage = "نمره تمرين شما در درس " + Session["courseName"].ToString() + ": " + sumExerciseMark.ToString();


            msg.messageRecieverName = lblStudentName.Text;
            msg.messageRecieverLastName = lblStudentLastName.Text;
            msg.messageStudentID = Convert.ToInt32(lblStudentID.Text);
            msg.insertMessage();

        }

        protected void showStudentDelivery()
        {
            StudentDelivery stdDel = new StudentDelivery();

            GridView5.DataSource = stdDel.showStudentDelivery("*", "studentDeliveryCourseGroupID=" + Session["sentID"].ToString() +
                " and studentDeliveryStudentID=" + lblStudentID.Text, "order by studentDeliveryID");
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

        protected void showCourseGroupStudentMarksAndProtest()
        {
            DataBaseOperations dbo = new DataBaseOperations();

            GridView3.DataSource = dbo.selectQueryDataTable("TableUserStudent,TableTakeCourse",
            "TableTakeCourse.TakeCourseUltimateMarkAfterReview,TableTakeCourse.TakeCourseComplainResponse as ComplainResponse," +
            "TableTakeCourse.TakeCourseComplainText as ComplainText,TableTakeCourse.RowID as RowID," +
            "TableUserStudent.UserStudentName as UserStudentName,TableUserStudent.UserStudentLastName as UserStudentLastName,TableUserStudent.UserStudentID as UserStudentID," +

            "TableTakeCourse.TakeCourseMidtermMark,TableTakeCourse.TakeCourseFinalMark," +

            "TableTakeCourse.TakeCourseExerciseMark,TableTakeCourse.TakeCoursePracticalMark," +
            "TableTakeCourse.TakeCourseTotalMark,TableTakeCourse.TakeCourseUltimateMark",

            " TakeCourseUserStudentID=" + lblStudentID.Text +
            " and (TableTakeCourse.TakeCourseCourseGroupRowID=" + Session["sentID"].ToString() + ")" +
            " and (TableTakeCourse.TakeCourseUserStudentID=TableUserStudent.UserStudentID)" +

            //" and (TableTakeCourse.TakeCourseComplainText is not NULL)" +

            " order by UserStudentLastName,UserStudentName", null);

            GridView3.DataBind();

            if (GridView3.Rows.Count > 0)
            {
                GridView1.Visible = true;
            }
            else
            {
                GridView3.Visible = false;
            }


            GridView4.DataSource = GridView3.DataSource;
            GridView4.DataBind();


            if (GridView4.Rows.Count > 0)
            {
                GridView4.Visible = true;
            }
            else
            {
                GridView4.Visible = false;
            }


        }


        protected void showSentMessagesToStudent()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() +

                " and (messageSenderName='" + Session["TeacherName"].ToString() + "' and messageSenderLastName='" + Session["TeacherLastName"].ToString() +
                "' and messageRecieverName='" + lblStudentName.Text + "' and messageRecieverLastName='" + lblStudentLastName.Text + "' and messageStudentID=" + lblStudentID.Text +
                ")", "order by messageID");
            repeater1.DataBind();

            if (repeater1.Items.Count > 0)
                repeater1.Visible = true;
            else
            {
                repeater1.Visible = false;
            }

        }


        protected void showRecieveMessagesFromStudent()
        {
            Message msg = new Message();

            repeater2.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() +

                " and (messageSenderName='" + lblStudentName.Text + "' and messageSenderLastName='" + lblStudentLastName +
                "' and messageRecieverName='" + Session["TeacherName"].ToString() + "' and messageRecieverLastName='" + Session["TeacherLastName"].ToString() + "' and messageStudentID=" + lblStudentID +
                ")", "order by messageID");
            repeater2.DataBind();

            if (repeater2.Items.Count > 0)
                repeater2.Visible = true;
            else
            {
                repeater2.Visible = false;
            }

        }

        protected void showStudentListOfCourseGroup()
        {
            DataBaseOperations dbo = new DataBaseOperations();




            GridView2.DataSource = dbo.selectQueryDataTable("TableUserStudent,TableTakeCourse",

            "TableUserStudent.UserStudentName as UserStudentName,TableUserStudent.UserStudentLastName as UserStudentLastName,TableUserStudent.UserStudentID as UserStudentID," +

            "TableTakeCourse.TakeCourseMidtermMark as MidtermMark,TableTakeCourse.TakeCourseFinalMark as FinalMark," +

            "TableTakeCourse.TakeCourseExerciseMark as ExerciseMark,TableTakeCourse.TakeCoursePracticalMark as PracticalMark," +
            "TableTakeCourse.TakeCourseTotalMark as TotalMark,TableTakeCourse.TakeCourseUltimateMark as UltimateMark",
            "  (TableTakeCourse.TakeCourseCourseGroupRowID=" + Session["sentID"].ToString() + ")" +
            " and (TableTakeCourse.TakeCourseUserStudentID=TableUserStudent.UserStudentID)" +

            " order by UserStudentLastName,UserStudentName", null);

            GridView2.DataBind();

            if (GridView2.Rows.Count > 0)
            {
                GridView2.Visible = true;
                GridView3.Visible = true;
                GridView4.Visible = true;
                repeater1.Visible = false;
                repeater2.Visible = false;
                btnSave.Visible = false;
            }
            else
            {
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
                repeater1.Visible = false;
                repeater2.Visible = false;
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
                GridView2.Visible = true;
                GridView3.Visible = true;
                GridView4.Visible = true;
                repeater1.Visible = false;
                repeater2.Visible = false;
            }
            else
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
                GridView3.Visible = false;
                GridView4.Visible = false;
                repeater1.Visible = false;
                repeater2.Visible = false;
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
                lblCourseName.Text = string.Empty;
                lblCourseName1.Text = string.Empty;
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
            lblCourseName.Text = string.Empty;
            lblCourseName1.Text = string.Empty;
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["courseName"] = GridView1.Rows[index].Cells[1].Text;
                lblCourseName.Text = GridView1.Rows[index].Cells[1].Text;
                lblCourseName1.Text = GridView1.Rows[index].Cells[1].Text;
                Session["sentID"] = GridView1.DataKeys[index].Value;
                lblStudentID.Text = string.Empty;
                lblStudentLastName.Text = string.Empty;
                lblStudentName.Text = string.Empty;
                showStudentListOfCourseGroup();
                GridView5.Visible = false;
                btnSave.Visible = false;
            }
        }
        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToPeresent")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                lblStudentName.Text = GridView2.Rows[index].Cells[2].Text;
                lblStudentLastName.Text = GridView2.Rows[index].Cells[1].Text;
                lblStudentID.Text = GridView2.Rows[index].Cells[0].Text;


                showRecieveMessagesFromStudent();
                showSentMessagesToStudent();
                showCourseGroupStudentMarksAndProtest();
                showStudentDelivery();

            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {

            saveExerciseMark();
            showRecieveMessagesFromStudent();
            showSentMessagesToStudent();
            showCourseGroupStudentMarksAndProtest();
            showStudentDelivery();
        }
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");
        }
    }
}