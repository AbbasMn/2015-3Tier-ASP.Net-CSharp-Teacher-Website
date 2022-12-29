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
using LogicalLayer;

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherResponseToStudentProtest : System.Web.UI.Page
    {
        string sentCourseGroupID;

        protected void saveProtestResponse()
        {
            int i;
            string UserStudentID;
            string Mark;
            string NewMark;

            DataBaseOperations dbo = new DataBaseOperations();
            TextBox txtFMark = new TextBox();
            TextBox txtCResponseText = new TextBox();

            Message msg = new Message();

            PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
            perdate.SelectedDateTime = DateTime.Now;
            msg.messageDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();
            TextBox txt = new TextBox();

            for (i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                txtFMark = (TextBox)GridView1.Rows[i].FindControl("txtFinalMark");
                txtCResponseText = (TextBox)GridView1.Rows[i].FindControl("txtComplainResponse");

                Mark = GridView1.Rows[i].Cells[7].Text;
                NewMark = txtFMark.Text.Trim();

                UserStudentID = GridView1.Rows[i].Cells[0].Text;

                if (NewMark == "")
                    NewMark = "00.00";

                if (NewMark == Mark)
                {
                    NewMark = Mark;
                }
                else
                {

                    if (Convert.ToDouble(NewMark) == 0.0)
                    {
                        NewMark = Mark;
                    }

                    try
                    {
                        dbo.updateQuery("TableTakeCourse",
                            "TakeCourseUltimateMarkAfterReview=" + NewMark +
                            ",TakeCourseComplainResponse='" + txtCResponseText.Text.Trim() + "'" +
                            "  where TakeCourseUserStudentID=" + UserStudentID +
                            " and TakeCourseCourseGroupRowID=" + sentCourseGroupID);



                        msg.messageSenderType = Session["UserType"].ToString().Trim();
                        msg.messageRecieverType = "Student";

                        msg.messageSenderName = Session["TeacherName"].ToString().Trim();
                        msg.messageSenderLastName = Session["TeacherLastName"].ToString().Trim();
                        msg.messageCourseGroupID = Convert.ToInt32(sentCourseGroupID);

                        msg.deleteMessage("messageStudentID=" + GridView1.Rows[i].Cells[0].Text.ToString().Trim() +
                            " and messageRecieverName='" + GridView1.Rows[i].Cells[2].Text.ToString().Trim() +
                            "' and messageRecieverLastName='" + GridView1.Rows[i].Cells[1].Text.ToString().Trim() +
                            "' and messageTitle=' نتيجه بررسي اعتراض به نمره درس " + " " + Session["courseName"].ToString() +
                            "' and messageCourseGroupID =" + sentCourseGroupID);

                        msg.messageTitle = " نتيجه بررسي اعتراض به نمره درس " + " " + Session["courseName"].ToString();

                        txt = (TextBox)GridView1.Rows[i].FindControl("txtComplainText");

                        msg.messagePassage = " با توجه به متن اعتراضي شما (" + txt.Text + ") موارد لازم مورد بررسي قرار گرفت و نمره جديد " +
                        NewMark + " براي شما منظور گردييد. توضيحات تغيير نمره :: " + txtCResponseText.Text.Trim();


                        msg.messageRecieverName = GridView1.Rows[i].Cells[2].Text.ToString().Trim();
                        msg.messageRecieverLastName = GridView1.Rows[i].Cells[1].Text.ToString().Trim();
                        msg.messageStudentID = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text.ToString().Trim());
                        msg.insertMessage();

                    }
                    catch (Exception exp)
                    {

                    }
                }
            }

        }

        protected void showCourseGroupStudentProtest()
        {

            sentCourseGroupID = Session["sentID"].ToString();

            DataBaseOperations dbo = new DataBaseOperations();

            GridView1.DataSource = dbo.selectQueryDataTable("TableUserStudent,TableTakeCourse",
            "TableTakeCourse.TakeCourseUltimateMarkAfterReview,TableTakeCourse.TakeCourseComplainResponse as ComplainResponse," +
            "TableTakeCourse.TakeCourseComplainText as ComplainText,TableTakeCourse.RowID as RowID," +
            "TableUserStudent.UserStudentName as UserStudentName,TableUserStudent.UserStudentLastName as UserStudentLastName,TableUserStudent.UserStudentID as UserStudentID," +

            "TableTakeCourse.TakeCourseMidtermMark,TableTakeCourse.TakeCourseFinalMark," +

            "TableTakeCourse.TakeCourseExerciseMark,TableTakeCourse.TakeCoursePracticalMark," +
            "TableTakeCourse.TakeCourseTotalMark,TableTakeCourse.TakeCourseUltimateMark",
            "  (TableTakeCourse.TakeCourseCourseGroupRowID=" + sentCourseGroupID + ")" +
            " and (TableTakeCourse.TakeCourseUserStudentID=TableUserStudent.UserStudentID)" +
            " and (TableTakeCourse.TakeCourseComplainText is not NULL)" +

            " order by UserStudentLastName,UserStudentName", null);

            GridView1.DataBind();
            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
                Button1.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
                Button1.Visible = false;
            }


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
                showCourseGroupStudentProtest();
            }
            catch
            {
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                saveProtestResponse();
                showCourseGroupStudentProtest();
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