using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using DataBaseLayer;
using LogicalLayer;
using System.Data;


namespace PresentationLayer.User.Pages.Student
{
    public partial class StudentShowTeachersForMessage : System.Web.UI.Page
    {
        protected void showStudentsNews()
        {
            News myNews1 = new News();


            //GridViewStudentNews.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", " newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            DataList1.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", "newsArchieve= 'false' and newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            //GridViewStudentNews.DataBind();

            DataList1.DataBind();


        }




        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (Session["UserType"] == "Student")
            //{
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Session["sentID"] = DataList1.DataKeys[index].ToString();
            Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            //}
        }



        public string TermNumber;
        public DataTable dt = new DataTable();


        protected void sendMessageToTeacher()
        {
            int i;
            Message msg = new Message();

            PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
            perdate.SelectedDateTime = DateTime.Now;

            msg.messageTitle = txtmessageTitle.Text.ToString().Trim();
            msg.messagePassage = txtmessagePassage.Text.ToString().Trim();
            msg.messageDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

            msg.messageSenderType = Session["UserType"].ToString().Trim();
            msg.messageRecieverType = "Teacher";

            msg.messageSenderName = Session["StudentName"].ToString().Trim();
            msg.messageSenderLastName = Session["StudentLastName"].ToString().Trim();
            msg.messageCourseGroupID = Convert.ToInt32(Session["sentID"].ToString());

            msg.messageRecieverName = Session["messageTeacherName"].ToString();
            msg.messageRecieverLastName = Session["messageTeacherFamily"].ToString();
            msg.messageStudentID = Convert.ToInt32(Session["StudentID"].ToString().Trim());
            msg.insertMessage();

            lblType.Visible = true;

            repeaterPasokhTeacher.Visible = true;


            showSendAndRecieveMessages();

            showTakeCourses();


        }


        public void clear()
        {
            txtmessagePassage.Text = string.Empty;
            txtmessageTitle.Text = string.Empty;
            lblMessage.Text = string.Empty;
            lblError.Text = string.Empty;
            lblType.Text = string.Empty;
        }
        /// //////////////////////////////////////////////////////////

        protected void showSendAndRecieveMessages()
        {
            Message msg = new Message();

            repeaterPasokhTeacher.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() + " and messageStudentID=" + Session["StudentID"].ToString().Trim() +

                " and (messageSenderType='Student') and (messageSenderName='" + Session["StudentName"].ToString() + "' and messageSenderLastName='" + Session["StudentLastName"].ToString() + "')", "order by messageID");
            repeaterPasokhTeacher.DataBind();

        }

        /// ////////////////////////////////////////////////////

        protected void showTeacherSendAndRecieveMessagesUnResponsed()
        {
            Message msg = new Message();

            repeaterTeacher.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() + " and messageStudentID=" + Session["StudentID"].ToString().Trim() +

                "and (messageSenderType='Teacher') and (messageRecieverName='" + Session["StudentName"].ToString() + "' and messageRecieverLastName='" + Session["StudentLastName"].ToString() + "') and messageRespondedOrUnResponded='False'", "order by messageID");

            //" or (messageSenderName='" + Session["StudentName"].ToString() + "' and messageSenderLastName='" + Session["StudentLastName"].ToString() + "'))"
            repeaterTeacher.DataBind();
        }

        protected void showTeacherSendAndRecieveMessagesResponsed()
        {
            Message msg = new Message();

            repeaterTeacher.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() + " and messageStudentID=" + Session["StudentID"].ToString().Trim() +

                "and (messageSenderType='Teacher') and (messageRecieverName='" + Session["StudentName"].ToString() + "' and messageRecieverLastName='" + Session["StudentLastName"].ToString() + "') and messageRespondedOrUnResponded='True'", "order by messageID");

            //" or (messageSenderName='" + Session["StudentName"].ToString() + "' and messageSenderLastName='" + Session["StudentLastName"].ToString() + "'))"
            repeaterTeacher.DataBind();

        }

        protected void showTeacherSendAndRecieveMessagesAll()
        {
            Message msg = new Message();

            repeaterTeacher.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() + " and messageStudentID=" + Session["StudentID"].ToString().Trim() +

                "and (messageSenderType='Teacher') and (messageRecieverName='" + Session["StudentName"].ToString() + "' and messageRecieverLastName='" + Session["StudentLastName"].ToString() + "')", "order by messageID");

            //" or (messageSenderName='" + Session["StudentName"].ToString() + "' and messageSenderLastName='" + Session["StudentLastName"].ToString() + "'))"
            repeaterTeacher.DataBind();

        }


        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonListTeacher.SelectedIndex == 0)
                showTeacherSendAndRecieveMessagesAll();

            else if (RadioButtonListTeacher.SelectedIndex == 1)
                showTeacherSendAndRecieveMessagesResponsed();

            else showTeacherSendAndRecieveMessagesUnResponsed();

            showTakeCourses();

        }


        protected void repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "goToResponse")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);
                Label lbl = new Label();

                lbl = (Label)repeaterTeacher.Items[index].FindControl("lblMessageID");

                Session["messageID"] = lbl.Text;

                Response.Redirect("StudentsSendResponseToTeacher.aspx");
            }
        }


        /// <summary>
        /// ///////////////////////////////////////////////////
        /// </summary>
        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTermNumber.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber", "SemisterNumberActive='True'", " order by SemisterNumber");
            drliTermNumber.DataBind();
        }



        protected void showTakeCourses()
        {
            string TermNumber = drliTermNumber.Text;


            DataBaseOperations dbo = new DataBaseOperations();

            GridView1.DataSource = dbo.selectQueryDataTable("TableCourseGroup,TableCourse,TableTakeCourse",
                "TakeCourseCourseGroupRowID as CourseGroupRowID,TakeCourseUniversityNameCourseNameYearTermGroupNumber,TakeCourseCourseName,TableCourseGroup.CourseGroupTeacherName,TableCourseGroup.CourseGroupTeacherLastName," +
                "TableCourseGroup.CourseGroupNumber," +
                "TableCourse.CourseEducationLevel,TableCourse.CourseName,TableCourse.CourseType," +
                "TableCourse.CourseFacultyName,TableCourse.CourseEducationBranchName,TableCourse.CourseEducationBranchName",

                "  (TakeCourseUserStudentID=" + Session["StudentID"].ToString() + ") and TakeCourseUniversityNameCourseNameYearTermGroupNumber='" +
                drliTermNumber.Text + "'" +
                " and (TableCourseGroup.CourseGroupRowID=TableTakeCourse.TakeCourseCourseGroupRowID)" +
                " and (TableCourseGroup.CourseGroupCourseName=TableCourse.CourseName)",
                "order by TakeCourseCourseName");

            GridView1.DataBind();
            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
            }
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Student")
            {
            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            try
            {

                if (!IsPostBack)
                {
                    showStudentsNews();
                    showTermNumbers();
                    showTakeCourses();

                    repeaterTeacher.Visible = false;
                    RadioButtonListTeacher.Visible = false;
                    repeaterPasokhTeacher.Visible = false;

                    clear();

                    txtmessagePassage.Visible = false;
                    txtmessageTitle.Visible = false;
                    btnSave.Visible = false;
                    lblMatn.Visible = false;
                    lblTitle.Visible = false;
                    lblType.Visible = false;
                    lblError.Visible = false;
                    lblMessage.Visible = false;
                }

            }
            catch
            {
            }


        }

        protected void drliTermNumber_TextChanged(object sender, EventArgs e)
        {
            showTakeCourses();

            lblError.Visible = false;
            lblType.Visible = false;

            RadioButtonListTeacher.Visible = false;
            repeaterTeacher.Visible = false;
            repeaterPasokhTeacher.Visible = false;

            txtmessagePassage.Visible = false;
            txtmessageTitle.Visible = false;
            btnSave.Visible = false;
            lblMatn.Visible = false;
            lblTitle.Visible = false;
            lblError.Visible = false;
            lblMessage.Visible = false;
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
            Response.Redirect("StudentControlPanelPage.aspx");
        }

        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String UserStudentID = Session["StudentID"].ToString();

            if (Session["UserType"].ToString() == "Student")
            {
                excp = dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
                  " where UserStudentId=" + UserStudentID);
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
            if (e.CommandName == "goToTeacherResponseMessage")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index]["CourseGroupRowID"].ToString();

                Session["messageTeacherName"] = GridView1.DataKeys[index].Values[1].ToString();
                Session["messageTeacherFamily"] = GridView1.DataKeys[index].Values[2].ToString();

                int i = GridView1.DataKeys.Count;

                lblType.Visible = true;
                lblType.Text = "پاسخهای استاد " + GridView1.DataKeys[index].Values[1].ToString() + " " + GridView1.DataKeys[index].Values[2].ToString() +

                    " به پیامهای ارسالی شما " + " درباره درس " + GridView1.DataKeys[index].Values[3].ToString();

                lblError.Visible = false;


                txtmessagePassage.Visible = false;
                txtmessageTitle.Visible = false;
                btnSave.Visible = false;
                lblMatn.Visible = false;
                lblTitle.Visible = false;


                RadioButtonListTeacher.Visible = false;
                repeaterTeacher.Visible = false;

                repeaterPasokhTeacher.Visible = true;

                showSendAndRecieveMessages();
                showTakeCourses();

                //Response.Redirect("StudentShowSentMessagesToTeacher.aspx");
            }

            if (e.CommandName == "goToRecievedMessageFromTeacher")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index]["CourseGroupRowID"].ToString();

                Session["messageTeacherName"] = GridView1.DataKeys[index].Values[1].ToString();
                Session["messageTeacherFamily"] = GridView1.DataKeys[index].Values[2].ToString();


                int i = GridView1.DataKeys.Count;
                lblType.Visible = true;

                lblType.Text = "پیامهای استاد " + GridView1.DataKeys[index].Values[1].ToString() + " " + GridView1.DataKeys[index].Values[2].ToString() +

               " درباره درس " + GridView1.DataKeys[index].Values[3].ToString();

                lblError.Visible = false;


                txtmessagePassage.Visible = false;
                txtmessageTitle.Visible = false;
                btnSave.Visible = false;
                lblMatn.Visible = false;
                lblTitle.Visible = false;

                RadioButtonListTeacher.Visible = true;
                RadioButtonListTeacher.SelectedIndex = 2;
                repeaterTeacher.Visible = true;
                repeaterPasokhTeacher.Visible = false;
                showTeacherSendAndRecieveMessagesUnResponsed();

                showTakeCourses();

                //Response.Redirect("StudentShowRecievedMessagesFromTeacher.aspx");
            }





            if (e.CommandName == "goToSendMessage")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridView1.DataKeys[index]["CourseGroupRowID"].ToString();

                Session["messageTeacherName"] = GridView1.DataKeys[index].Values[1].ToString();
                Session["messageTeacherFamily"] = GridView1.DataKeys[index].Values[2].ToString();

                int i = GridView1.DataKeys.Count;
                lblError.Visible = true;
                lblError.Text = " ارسال پیام به استاد " + GridView1.DataKeys[index].Values[1].ToString() + " " + GridView1.DataKeys[index].Values[2].ToString() +

                     " درباره درس " + GridView1.DataKeys[index].Values[3].ToString();


                lblType.Visible = false;

                txtmessagePassage.Visible = true;
                txtmessageTitle.Visible = true;
                btnSave.Visible = true;
                lblMatn.Visible = true;
                lblTitle.Visible = true;

                repeaterPasokhTeacher.Visible = false;
                repeaterTeacher.Visible = false;
                RadioButtonListTeacher.Visible = false;

                showTakeCourses();



                //Response.Redirect("StudentsSendMessageToTeacher.aspx");
            }
        }



        protected void btnSave_Click(object sender, EventArgs e)
        {
            sendMessageToTeacher();
            clear();
            lblMessage.Text = "پيام ارسال گرديد";
        }
    }
}