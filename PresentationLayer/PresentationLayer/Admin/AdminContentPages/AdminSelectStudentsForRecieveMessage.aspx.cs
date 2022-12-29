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

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class AdminSelectStudentsForRecieveMessage : System.Web.UI.Page
    {
        public string sentCourseGroupID;
        public bool checkAll;


        protected void sendMessageToAllStudents()
        {
            int i;
            Message msg = new Message();

            PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
            perdate.SelectedDateTime = DateTime.Now;

            msg.messageTitle = txtmessageTitle.Text.ToString().Trim();
            msg.messagePassage = txtmessagePassage.Text.ToString().Trim();
            msg.messageDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

            msg.messageSenderType = Session["UserType"].ToString().Trim();
            msg.messageRecieverType = "Student";

            msg.messageSenderName = "مدیریت";
            msg.messageSenderLastName = "سایت";
            msg.messageCourseGroupID = -1;



            try
            {
                GridView1.Visible = true;
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    try
                    {

                        msg.messageRecieverName = GridView1.Rows[i].Cells[2].Text.ToString().Trim();
                        msg.messageRecieverLastName = GridView1.Rows[i].Cells[1].Text.ToString().Trim();
                        msg.messageStudentID = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text.ToString().Trim());
                        msg.insertMessage();
                    }
                    catch (Exception exp)
                    {

                    }
                }
                GridView1.Visible = false;

            }
            catch
            {
            }

        }



        public void clear()
        {
            txtmessagePassage.Text = string.Empty;
            txtmessageTitle.Text = string.Empty;
            lblMessage.Text = string.Empty;
        }

        protected void sendMessageToSelectedStudents()
        {
            int i;
            int row_selected = 0;


            CheckBox chk = new CheckBox();

            Message msg = new Message();

            PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
            perdate.SelectedDateTime = DateTime.Now;

            msg.messageTitle = txtmessageTitle.Text.ToString().Trim();
            msg.messagePassage = txtmessagePassage.Text.ToString().Trim();
            msg.messageDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

            msg.messageSenderType = Session["UserType"].ToString().Trim();
            msg.messageRecieverType = "Student";

            msg.messageSenderName = "مدیریت";
            msg.messageSenderLastName = "سایت";
            msg.messageCourseGroupID = -1;


            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("choose");

                    row_selected += 1;

                    {
                        try
                        {
                            if (chk.Checked)
                            {
                                msg.messageRecieverName = GridView1.Rows[i].Cells[2].Text.ToString().Trim();
                                msg.messageRecieverLastName = GridView1.Rows[i].Cells[1].Text.ToString().Trim();
                                msg.messageStudentID = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text.ToString().Trim());
                                msg.insertMessage();
                            }

                        }
                        catch (Exception exp)
                        {

                        }
                    }

                }

            }
            catch
            {
            }

        }


        protected void selectAllStudents()
        {
            checkAll = true;
            GridView1.Visible = false;
            lblListeStudents.Visible = false;
        }

        protected void deSelectAllStudents()
        {
            checkAll = false;
            GridView1.Visible = true;
            lblListeStudents.Visible = true;
        }


        protected void selectMessageRecievers()
        {
            if (rdioSelectMessageRecievers.SelectedItem.Text == " ارسال به همه دانشجويان")
                selectAllStudents();
            else
                deSelectAllStudents();

        }

        protected void showStudentListOfCourseGroup()
        {
            DataBaseOperations dbo = new DataBaseOperations();


            //sentCourseGroupID = Session["sentID"].ToString();

            GridView1.DataSource = dbo.selectQueryDataTable("TableUserStudent",

            "TableUserStudent.UserStudentName as UserStudentName,TableUserStudent.UserStudentLastName as UserStudentLastName,TableUserStudent.UserStudentID as UserStudentID",
            null, " order by UserStudentLastName,UserStudentName");

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

        protected void Page_Load(object Sender, EventArgs e)
        {
            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            if (!IsPostBack)
            {
                rdioSelectMessageRecievers.SelectedIndex = 1;
                clear();
            }
            selectMessageRecievers();
            try
            {
                showStudentListOfCourseGroup();
            }
            catch
            {
                Response.Redirect("AdminControlPanelPage.aspx");
            }

        }


        protected void btnSave_Click(object Sender, EventArgs e)
        {
            try
            {
                if (rdioSelectMessageRecievers.SelectedItem.Text == " ارسال به همه دانشجويان")
                {
                    sendMessageToAllStudents();
                    clear();
                    lblMessage.Text = "پيام ارسال گرديد";
                }
                else
                {
                    sendMessageToSelectedStudents();
                    clear();
                    lblMessage.Text = "پيام ارسال گرديد";
                }
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
            Response.Redirect("AdminControlPanelPage.aspx");
        }


        protected void logOut()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            SqlException excp = null;

            String AdminID = Session["AdminID"].ToString();

            if (Session["UserType"].ToString() == "Admin")
            {
                excp = dbo.updateQuery("TableAdmin", "AdminOnline='False'" +
                  " where AdminId=" + AdminID);
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

        protected void rdioSelectMessageRecievers_TextChanged(object Sender, EventArgs e)
        {
            selectMessageRecievers();
        }


        protected void rdioSelectMessageRecievers_SelectedIndexChanged(object Sender, EventArgs e)
        {
            selectAllStudents();
        }

    }
}