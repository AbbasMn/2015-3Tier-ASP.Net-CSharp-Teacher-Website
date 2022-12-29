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
    public partial class TeacherShowRecievedMessages : System.Web.UI.Page
    {
        protected void showRecieveMessagesUnResponded()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() +

                "and (messageSenderType='Student') and (messageRecieverName='" + Session["TeacherName"].ToString() + "' and messageRecieverLastName='" + Session["TeacherLastName"].ToString() + "')  and messageRespondedOrUnResponded='False'", "order by messageID");
            repeater1.DataBind();

        }

        protected void showRecieveMessagesResponded()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() +

                "and (messageSenderType='Student') and (messageRecieverName='" + Session["TeacherName"].ToString() + "' and messageRecieverLastName='" + Session["TeacherLastName"].ToString() + "')  and messageRespondedOrUnResponded='True'", "order by messageID");
            repeater1.DataBind();

        }



        protected void showRecieveMessagesAll()
        {
            Message msg = new Message();

            repeater1.DataSource = msg.showMessage(" * ", "messageCourseGroupID=" + Session["sentID"].ToString() +

                "and (messageSenderType='Student') and (messageRecieverName='" + Session["TeacherName"].ToString() + "' and messageRecieverLastName='" + Session["TeacherLastName"].ToString() + "')", "order by messageID");
            repeater1.DataBind();

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
                    RadioButtonList1.SelectedIndex = 2;
                    showRecieveMessagesUnResponded();
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



        protected void repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "goToResponse")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex);
                Label lbl = new Label();

                lbl = (Label)repeater1.Items[index].FindControl("lblMessageID");

                Session["messageID"] = lbl.Text;

                Response.Redirect("TeacherSendResponseToStudent.aspx");
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (RadioButtonList1.SelectedIndex == 0)
                showRecieveMessagesAll();

            else if (RadioButtonList1.SelectedIndex == 1)
                showRecieveMessagesResponded();

            else showRecieveMessagesUnResponded();

        }
    }
}