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
using System.Globalization;
using LogicalLayer;

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherStudentsOfCourseGroup : System.Web.UI.Page
    {
        public string sentCourseGroupID;


        private string englishDigits(string input)
        {
            Label lblTemp = new Label();
            string s = null;

            lblTemp.Text = input;

            for (int i = 0; i < lblTemp.Text.Length; i++)
            {
                if (lblTemp.Text[i] == '۰')
                    s = s + '0';
                else
                    if (lblTemp.Text[i] == '۱')
                        s = s + '1';
                    else
                        if (lblTemp.Text[i] == '۲')
                            s = s + '2';
                        else
                            if (lblTemp.Text[i] == '۳')
                                s = s + '3';
                            else
                                if (lblTemp.Text[i] == '۴')
                                    s = s + '4';
                                else
                                    if (lblTemp.Text[i] == '۵')
                                        s = s + '5';
                                    else
                                        if (lblTemp.Text[i] == '۶')
                                            s = s + '6';
                                        else
                                            if (lblTemp.Text[i] == '۷')
                                                s = s + '7';
                                            else
                                                if (lblTemp.Text[i] == '۸')
                                                    s = s + '8';
                                                else
                                                    if (lblTemp.Text[i] == '۹')
                                                        s = s + '9';
                                                    else
                                                        if (lblTemp.Text[i] == '/')
                                                            s = s + '.';
                                                    else s = s + lblTemp.Text[i];

            }

            return s;

        }
        public void clear()
        {
            txtEditCourseGroupExerciseTime.Text = string.Empty;
            txtEditCourseGroupFinalTime.Text = string.Empty;
            txtEditCourseGroupMidTermTime.Text = string.Empty;
            txtEditCourseGroupPracticalTime.Text = string.Empty;
        }

        protected void updateCourseExamSpecification()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            int i;

            dbo.updateQuery("TableCourseGroup",
                "CourseGroupMidTermDate='" + PersianDatePickup2.PersianDateString + "'" +
                ",CourseGroupMidTermTime='" + txtEditCourseGroupMidTermTime.Text.Trim() + "'" +
                ",CourseGroupFinalDate='" + PersianDatePickup1.PersianDateString + "'" +
                ",CourseGroupFinalTime='" + txtEditCourseGroupFinalTime.Text.Trim() + "'" +
                ",CourseGroupPracticalDate='" + PersianDatePickup4.PersianDateString + "'" +
                ",CourseGroupPracticalTime='" + txtEditCourseGroupPracticalTime.Text.Trim() + "'" +
                ",CourseGroupExerciseDate='" + PersianDatePickup3.PersianDateString + "'" +
                ",CourseGroupExerciseTime='" + txtEditCourseGroupExerciseTime.Text.Trim() + "'" +
                " where CourseGroupRowID=" + sentCourseGroupID);

            Message msg = new Message();
            for (i = 0; i <= GridView1.Rows.Count - 1; i++)
            {

                PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
                perdate.SelectedDateTime = DateTime.Now;


                msg.messageDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

                msg.messageSenderType = Session["UserType"].ToString().Trim();
                msg.messageRecieverType = "Student";

                msg.messageSenderName = Session["TeacherName"].ToString().Trim();
                msg.messageSenderLastName = Session["TeacherLastName"].ToString().Trim();
                msg.messageCourseGroupID = Convert.ToInt32(sentCourseGroupID);

                msg.deleteMessage("messageStudentID=" + GridView1.Rows[i].Cells[0].Text.ToString().Trim() +
                    " and messageRecieverName='" + GridView1.Rows[i].Cells[2].Text.ToString().Trim() +
                    "' and messageRecieverLastName='" + GridView1.Rows[i].Cells[1].Text.ToString().Trim() +
                    "'and messageTitle=' تعيين (تغيير) تاريخ و ساعات امتحان درس " + " " + Session["courseName"].ToString() +
                    "' and messageCourseGroupID =" + sentCourseGroupID);

                msg.messageTitle = " تعيين (تغيير) تاريخ و ساعات امتحان درس " + " " + Session["courseName"].ToString();

                msg.messagePassage = " تاريخ و ساعت ميان ترم::" + PersianDatePickup2.PersianDateString + "ساعت" + txtEditCourseGroupMidTermTime.Text +
                " تاريخ و ساعت پايان ترم::" + PersianDatePickup1.PersianDateString + "ساعت" + txtEditCourseGroupFinalTime.Text +
                " تاريخ و ساعت تحول تمرين::" + PersianDatePickup3.PersianDateString + "ساعت" + txtEditCourseGroupExerciseTime.Text +
                " تاريخ و ساعت امتحان عملي::" + PersianDatePickup4.PersianDateString + "ساعت" + txtEditCourseGroupPracticalTime.Text;

                msg.messageRecieverName = GridView1.Rows[i].Cells[2].Text.ToString().Trim();
                msg.messageRecieverLastName = GridView1.Rows[i].Cells[1].Text.ToString().Trim();
                msg.messageStudentID = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text.ToString().Trim());
                msg.insertMessage();

            }
        }
        protected void showCourseExamSpecification()
        {

            sentCourseGroupID = Session["sentID"].ToString();

            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            dt = dbo.selectQueryDataTable("TableCourseGroup",
                "TableCourseGroup.CourseGroupMidTermDate as CourseGroupMidTermDate," +
                "TableCourseGroup.CourseGroupMidTermTime as CourseGroupMidTermTime," +
                "TableCourseGroup.CourseGroupFinalDate as CourseGroupFinalDate,TableCourseGroup.CourseGroupFinalTime as CourseGroupFinalTime," +
                "TableCourseGroup.CourseGroupPracticalDate as CourseGroupPracticalDate," +
                "TableCourseGroup.CourseGroupPracticalTime as CourseGroupPracticalTime,TableCourseGroup.CourseGroupExerciseDate as CourseGroupExerciseDate," +
                "TableCourseGroup.CourseGroupExerciseTime as CourseGroupExerciseTime",
                " TableCourseGroup.CourseGroupRowID=" + sentCourseGroupID, null);

            PersianDatePickup3.PersianDateString = dt.Rows[0]["CourseGroupExerciseDate"].ToString();
            txtEditCourseGroupExerciseTime.Text = dt.Rows[0]["CourseGroupExerciseTime"].ToString();
            PersianDatePickup2.PersianDateString = dt.Rows[0]["CourseGroupMidTermDate"].ToString();
            txtEditCourseGroupMidTermTime.Text = dt.Rows[0]["CourseGroupMidTermTime"].ToString();
            PersianDatePickup1.PersianDateString = dt.Rows[0]["CourseGroupFinalDate"].ToString();
            txtEditCourseGroupFinalTime.Text = dt.Rows[0]["CourseGroupFinalTime"].ToString();
            PersianDatePickup4.PersianDateString = dt.Rows[0]["CourseGroupPracticalDate"].ToString();
            txtEditCourseGroupPracticalTime.Text = dt.Rows[0]["CourseGroupPracticalTime"].ToString();


        }
        protected void saveMarks()
        {

            int i;
            string UserStudentID;

            DataBaseOperations dbo = new DataBaseOperations();

            TextBox txtMidTerm = new TextBox();
            TextBox txtFinal = new TextBox();
            TextBox txtPractical = new TextBox();
            TextBox txtExercise = new TextBox();
            TextBox txtMark = new TextBox();

            try
            {

                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    txtMidTerm = (TextBox)GridView1.Rows[i].FindControl("txtMidTerm");
                    txtFinal = (TextBox)GridView1.Rows[i].FindControl("txtFinal");
                    txtPractical = (TextBox)GridView1.Rows[i].FindControl("txtPractical");
                    txtExercise = (TextBox)GridView1.Rows[i].FindControl("txtExercise");

                    UserStudentID = GridView1.Rows[i].Cells[0].Text;


                    txtMidTerm.Text = englishDigits(txtMidTerm.Text);
                    txtFinal.Text = englishDigits(txtFinal.Text);
                    txtPractical.Text = englishDigits(txtPractical.Text);
                    txtExercise.Text = englishDigits(txtExercise.Text);

               
                    
                    //txtMark.Text = Convert.ToString(calculateMark(float.Parse(txtMidTerm.Text),float.Parse(txtFinal.Text),float.Parse(txtPractical.Text),float.Parse(txtExercise.Text)));
                        
                        //(Convert.ToDouble(txtMidTerm.Text),
                        //        Convert.ToDouble(txtFinal.Text), Convert.ToDouble(txtPractical.Text),
                        //        Convert.ToDouble(txtExercise.Text)));

                    dbo.updateQuery("TableTakeCourse",
                        "TakeCourseMidTermMark=" + txtMidTerm.Text.Trim() +
                        ",TakeCourseFinalMark=" + txtFinal.Text.Trim() +
                        ",TakeCourseExerciseMark=" + txtExercise.Text.Trim() +
                        ",TakeCoursePracticalMark=" + txtPractical.Text.Trim() +
                        "  where TakeCourseUserStudentID=" + UserStudentID +
                        " and TakeCourseCourseGroupRowID=" + sentCourseGroupID);

                    dbo.updateQuery("TableTakeCourse",
                        "TakeCourseTotalMark=TakeCourseMidTermMark+TakeCourseFinalMark+TakeCourseExerciseMark+TakeCoursePracticalMark"+
                        ",TakeCourseUltimateMark=TakeCourseMidTermMark+TakeCourseFinalMark+TakeCourseExerciseMark+TakeCoursePracticalMark" +

                        "  where TakeCourseUserStudentID=" + UserStudentID +
                        " and TakeCourseCourseGroupRowID=" + sentCourseGroupID);

                    Message msg = new Message();

                    PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
                    perdate.SelectedDateTime = DateTime.Now;


                    msg.messageDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

                    msg.messageSenderType = Session["UserType"].ToString().Trim();
                    msg.messageRecieverType = "Student";

                    msg.messageSenderName = Session["TeacherName"].ToString().Trim();
                    msg.messageSenderLastName = Session["TeacherLastName"].ToString().Trim();
                    msg.messageCourseGroupID = Convert.ToInt32(sentCourseGroupID);

                    msg.deleteMessage("messageStudentID=" + GridView1.Rows[i].Cells[0].Text.ToString().Trim() +
                        " and messageRecieverName='" + GridView1.Rows[i].Cells[2].Text.ToString().Trim() +
                        "' and messageRecieverLastName='" + GridView1.Rows[i].Cells[1].Text.ToString().Trim() +
                        "'and messageTitle=' وارد شدن نمره درس" + " " + Session["courseName"].ToString() +
                        "' and messageCourseGroupID =" + sentCourseGroupID);

                    msg.messageTitle = " وارد شدن نمره درس" + " " + Session["courseName"].ToString();
                    msg.messagePassage = "نمره شما در درس " + Session["courseName"].ToString() + ": نمره ميان ترم=" + txtMidTerm.Text.Trim() +
                    " نمره پايان ترم=" + txtFinal.Text.Trim() + " نمره تمرين=" + txtExercise.Text.Trim() +
                    " نمره امتحان عملي=" + txtPractical.Text.Trim() + " نمره کل=" + txtMark.Text.Trim();

                    msg.messageRecieverName = GridView1.Rows[i].Cells[2].Text.ToString().Trim();
                    msg.messageRecieverLastName = GridView1.Rows[i].Cells[1].Text.ToString().Trim();
                    msg.messageStudentID = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text.ToString().Trim());
                    msg.insertMessage();

                    lblMessage.Visible = true;
                    lblMessage.Text = "نمرات ثبت شد";


                }
            }
            catch (Exception exp)
            {

                lblMessage.Visible = true;
                lblMessage.Text = exp.Message.ToString();

            }


        }


        protected float calculateMark(float MidTerm, float Final, float Practical, float Exercise)
        {
            return (MidTerm + Final + Practical + Exercise);
        }

        protected void showCourseSpecification()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            dt = dbo.selectQueryDataTable("TableCourseGroup,TableCourse",
                "TableCourse.CourseID as CourseID,TableCourse.CourseEducationBranchName as CourseEducationBranchName,TableCourse.CourseEducationLevel as CourseEducationLevel," +
                "TableCourse.CourseTheoryUnit as CourseTheoryUnit,TableCourse.CoursePracticalUnit as CoursePracticalUnit," +
                "TableCourse.CourseFacultyName as CourseFacultyName,TableCourse.CourseEducationBranchName as CourseEducationBranchName," +
                "TableCourse.CourseSemisterNumber as CourseSemisterNumber," +

                "TableCourseGroup.CourseGroupUniversityName as CourseGroupUniversityName,TableCourseGroup.CourseGroupCourseName as CourseGroupCourseName," +
                "TableCourseGroup.CourseGroupNumber as CourseGroupNumber," +
                "TableCourseGroup.CourseGroupClassNumber as CourseGroupClassNumber,TableCourseGroup.CourseGroupMidTermDate as CourseGroupMidTermDate," +
                "TableCourseGroup.CourseGroupMidTermTime as CourseGroupMidTermTime," +
                "TableCourseGroup.CourseGroupFinalDate as CourseGroupFinalDate,TableCourseGroup.CourseGroupFinalTime as CourseGroupFinalTime," +
                "TableCourseGroup.CourseGroupPracticalDate as CourseGroupPracticalDate," +
                "TableCourseGroup.CourseGroupPracticalTime as CourseGroupPracticalTime,TableCourseGroup.CourseGroupExerciseDate as CourseGroupExerciseDate," +
                "TableCourseGroup.CourseGroupExerciseTime as CourseGroupExerciseTime",
                " TableCourseGroup.CourseGroupRowID=" + sentCourseGroupID + " and (TableCourseGroup.CourseGroupCourseName=TableCourse.CourseName)", null);

            lblCourseEducationBranchName.Text = dt.Rows[0]["CourseEducationBranchName"].ToString();
            lblCourseEducationBranchName.Text = dt.Rows[0]["CourseEducationBranchName"].ToString();
            lblCourseFacultyName.Text = dt.Rows[0]["CourseFacultyName"].ToString();
            lblCourseSemisterNumber.Text = dt.Rows[0]["CourseSemisterNumber"].ToString();
            lblCoursePracticalUnit.Text = dt.Rows[0]["CoursePracticalUnit"].ToString();
            lblCourseTheoryUnit.Text = dt.Rows[0]["CourseTheoryUnit"].ToString();
            lblCourseID.Text = dt.Rows[0]["CourseID"].ToString();
            lblCourseName.Text = dt.Rows[0]["CourseGroupCourseName"].ToString();
            lblCourseUniversity.Text = dt.Rows[0]["CourseGroupUniversityName"].ToString();
            lblCourseGroupNumber.Text = dt.Rows[0]["CourseGroupNumber"].ToString();

            lblCourseExcersizeDateTime.Text = dt.Rows[0]["CourseGroupExerciseDate"].ToString() + " ساعت " + dt.Rows[0]["CourseGroupExerciseTime"].ToString();
            lblCourseMidtermDateTime.Text = dt.Rows[0]["CourseGroupMidTermDate"].ToString() + " ساعت " + dt.Rows[0]["CourseGroupMidTermTime"].ToString();
            lblCourseFinalDateTime.Text = dt.Rows[0]["CourseGroupFinalDate"].ToString() + " ساعت " + dt.Rows[0]["CourseGroupFinalTime"].ToString();
            lblCoursePracticalDateTime.Text = dt.Rows[0]["CourseGroupPracticalDate"].ToString() + " ساعت " + dt.Rows[0]["CourseGroupPracticalTime"].ToString();
            lblCourseBranch.Text = dt.Rows[0]["CourseEducationBranchName"].ToString();
        }

        protected void showStudentListOfCourseGroup()
        {
            DataBaseOperations dbo = new DataBaseOperations();


            sentCourseGroupID = Session["sentID"].ToString();

            GridView1.DataSource = dbo.selectQueryDataTable("TableUserStudent,TableTakeCourse",

            "TableUserStudent.UserStudentName as UserStudentName,TableUserStudent.UserStudentLastName as UserStudentLastName,TableUserStudent.UserStudentID as UserStudentID," +

            "TableTakeCourse.TakeCourseMidtermMark as MidtermMark,TableTakeCourse.TakeCourseFinalMark as FinalMark," +

            "TableTakeCourse.TakeCourseExerciseMark as ExerciseMark,TableTakeCourse.TakeCoursePracticalMark as PracticalMark," +
            "TableTakeCourse.TakeCourseTotalMark as TotalMark,TableTakeCourse.TakeCourseUltimateMark as UltimateMark",
            "  (TableTakeCourse.TakeCourseCourseGroupRowID=" + sentCourseGroupID + ")" +
            " and (TableTakeCourse.TakeCourseUserStudentID=TableUserStudent.UserStudentID)" +

            " order by UserStudentLastName,UserStudentName", null);

            GridView1.DataBind();

            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
                btnSave.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
                btnSave.Visible = false;
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] == "Teacher")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");


            sentCourseGroupID = Session["sentID"].ToString();

            try
            {
                showStudentListOfCourseGroup();
                showCourseSpecification();
            }
            catch
            {
                Response.Redirect("TeacherControlPanelPage.aspx");
            }
            if (!IsPostBack)
            {
                showCourseExamSpecification();
                RangeValidatorMidTermTime.ErrorMessage = " ساعت امتحان ميان ترم بايد بين 00:00 و 24:00 وارد شود.";


                RangeValidatorFinalTime.ErrorMessage = " ساعت امتحان پايان ترم بايد بين 00:00 و 24:00 وارد شود.";


                RangeValidatorPracticalTime.ErrorMessage = " ساعت امتحان عملي بايد بين 00:00 و 24:00 وارد شود.";


                RangeValidatorExercizeTime.ErrorMessage = " ساعت تحويل تمرين بايد بين 00:00 و 24:00 وارد شود.";
            }

        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                saveMarks();
                showStudentListOfCourseGroup();
            }
            catch (SqlException exp)
            {
                lblMessage.Visible = true;
                lblMessage.Text = exp.Message.ToString();
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

        protected void btnSaveExam_Click(object sender, EventArgs e)
        {
            try
            {
                updateCourseExamSpecification();
                showCourseExamSpecification();
                showCourseSpecification();
            }
            catch
            {
            }
        }
    }
}