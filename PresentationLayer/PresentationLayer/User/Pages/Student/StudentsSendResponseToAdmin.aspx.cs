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
    public partial class StudentsSendResponseToAdmin : System.Web.UI.Page
    {
        protected void showStudentsNews()
        {
            News myNews1 = new News();


            //GridViewStudentNews.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", " newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            DataList1.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", "newsArchieve= 'false' and newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            //GridViewStudentNews.DataBind();

            DataList1.DataBind();


        }

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                clear();
                showStudentsNews();
            }
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


        public void clear()
        {
            txtmessagePassage.Text = string.Empty;
            lblMessage.Text = string.Empty;
        }

        protected void sendMessageToAdmin()
        {

            DataBaseOperations dbo = new DataBaseOperations();
            PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
            perdate.SelectedDateTime = DateTime.Now;

            string s = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

            dbo.updateQuery("TableMessage", "messageRespondedOrUnResponded='True',messageResponsePassage='" + txtmessagePassage.Text.Trim().ToString() + "',messageResponseDate='" + s +
                "' where messageID=" + Session["messageID"].ToString());

        }






        protected void btnSave_Click(object Sender, EventArgs e)
        {
            try
            {
                sendMessageToAdmin();
                lblMessage.Text = "پيام ارسال گرديد";

                //Session["UserOperation"] = " عملیات :: ارسال پاسخ به پیام دریافتی از مدیر سایت :: با موفقیت انجام شد";

                //Session["OperationPage"] = "~/PresentationLayer/User/Pages/Student/StudentShowRecievedMessagesFromAdmin.aspx";

                Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentShowRecievedMessagesFromAdmin.aspx");
            }
            catch
            {

            }

        }

        protected void lbtnLogOut_Click(object Sender, EventArgs e)
        {
            try
            {
                logOut();
            }
            catch
            {
            }

        }

        protected void btnLoginPage_Click(object Sender, EventArgs e)
        {
            Response.Redirect("StudentControlPanelPage.aspx");
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