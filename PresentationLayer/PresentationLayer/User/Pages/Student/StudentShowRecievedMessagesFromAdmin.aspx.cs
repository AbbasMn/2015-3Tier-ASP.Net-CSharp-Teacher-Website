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
    public partial class StudentShowRecievedMessagesFromAdmin : System.Web.UI.Page
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


        protected void showAdminSendAndRecieveMessagesUnResponded()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", " messageSenderName='مدیریت' and messageSenderLastName='سایت' and messageStudentID=" + Session["StudentID"].ToString().Trim() +

                " and (messageRecieverName='" + Session["StudentName"].ToString() + "' and messageRecieverLastName='" + Session["StudentLastName"].ToString() + "') and messageRespondedOrUnResponded='False'", "order by messageID");

            repeater1.DataBind();
        }

        protected void showAdminSendAndRecieveMessagesResponded()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", " messageSenderName='مدیریت' and messageSenderLastName='سایت' and messageStudentID=" + Session["StudentID"].ToString().Trim() +

                " and (messageRecieverName='" + Session["StudentName"].ToString() + "' and messageRecieverLastName='" + Session["StudentLastName"].ToString() + "') and messageRespondedOrUnResponded='True'", "order by messageID");

            repeater1.DataBind();

        }

        protected void showAdminSendAndRecieveMessagesAll()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", " messageSenderName='مدیریت' and messageSenderLastName='سایت' and messageStudentID=" + Session["StudentID"].ToString().Trim() +

                " and (messageRecieverName='" + Session["StudentName"].ToString() + "' and messageRecieverLastName='" + Session["StudentLastName"].ToString() + "')", "order by messageID");

            repeater1.DataBind();

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
                    RadioButtonList1.SelectedIndex = 2;
                    showAdminSendAndRecieveMessagesUnResponded();

                    showStudentsNews();
                }



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



        protected void repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "goToResponse")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);
                Label lbl = new Label();

                lbl = (Label)repeater1.Items[index].FindControl("lblMessageID");

                Session["messageID"] = lbl.Text;

                Response.Redirect("StudentsSendResponseToAdmin.aspx");
            }
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (RadioButtonList1.SelectedIndex == 0)
                showAdminSendAndRecieveMessagesAll();

            else if (RadioButtonList1.SelectedIndex == 1)
                showAdminSendAndRecieveMessagesResponded();

            else showAdminSendAndRecieveMessagesUnResponded();

        }
    }
}