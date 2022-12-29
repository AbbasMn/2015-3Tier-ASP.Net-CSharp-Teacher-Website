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

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class TeacherRegistration : System.Web.UI.Page
    {
        public bool checkTeacherIDForNotExsists()
        {

            Teacher std = new Teacher();

            if (std.selectQueryDataTable("TableUserTeacher", "UserTeacherID", "UserTeacherID=" + txtUserTeacherID.Text.Trim(), null).Rows.Count > 0)
            {
                lblMessage.Text = lblMessage.Text + "شماره استاد قبلاً وارد شده است";
                lblMessage.Visible = true;
                return false;
            }
            else
                return true;
        }
        public bool checkTeacherUserName()
        {
            int i;
            string s = txtUserTeacherUserName.Text;
            string msg = null;
            bool fualt = false;

            msg = "کاراکترهاي ";

            char doubQuto = '"';
            for (i = 0; i < s.Length; i++)
            {
                if ((s[i].ToString() == ";") || (s[i].ToString() == ")") || (s[i].ToString() == "(") || (s[i].ToString() == "'") || (s[i].ToString() == "=") || (s[i].ToString() == "-") || (Convert.ToChar(s[i]) == doubQuto))
                {
                    msg = msg + " " + s[i].ToString();
                    fualt = true;
                }

            }

            if (fualt)
            {
                txtUserTeacherUserName.Text = string.Empty;
                msg = msg + " در نام کاربري مجاز نيستند.";
                lblMessage.Text = lblMessage.Text + msg;
                lblMessage.Visible = true;
                return false;
            }
            else
            {
                return true;
                //lblMessage.Visible = false;
                //lblMessage.Text = string.Empty;
            }
        }
        public bool checkTeacherPassword()
        {
            int i;
            string s = txtUserTeacherPassword.Text;
            string msg = null;
            bool fualt = false;
            msg = "کاراکترهاي ";
            char doubQuto = '"';
            for (i = 0; i < s.Length; i++)
            {
                if ((s[i].ToString() == ";") || (s[i].ToString() == ")") || (s[i].ToString() == "(") || (s[i].ToString() == "'") || (s[i].ToString() == "=") || (s[i].ToString() == "-") || (Convert.ToChar(s[i]) == doubQuto))
                {
                    msg = msg + " " + s[i].ToString();
                    fualt = true;
                }

            }

            if (fualt)
            {
                txtUserTeacherPassword.Text = string.Empty;
                msg = msg + " در کلمه عبور مجاز نيستند.";
                lblMessage.Text = lblMessage.Text + msg;
                lblMessage.Visible = true;
                return false;
            }
            else
            {
                return true;
                //lblMessage.Visible = false;
                //lblMessage.Text = string.Empty;
            }
        }
        public bool checkTeacherID()
        {
            int i;
            string s = txtUserTeacherID.Text;
            string msg = null;
            bool fualt = false;
            msg = "کاراکترهاي ";
            for (i = 0; i < s.Length; i++)
            {
                if ((Convert.ToChar(s[i]) != '0') &&
                    (Convert.ToChar(s[i]) != '1') &&
                    (Convert.ToChar(s[i]) != '2') &&
                    (Convert.ToChar(s[i]) != '3') &&
                    (Convert.ToChar(s[i]) != '4') &&
                    (Convert.ToChar(s[i]) != '5') &&
                    (Convert.ToChar(s[i]) != '6') &&
                    (Convert.ToChar(s[i]) != '7') &&
                    (Convert.ToChar(s[i]) != '8') &&
                    (Convert.ToChar(s[i]) != '9'))
                {
                    msg = msg + " " + s[i].ToString();
                    fualt = true;
                }

            }

            if (fualt)
            {
                txtUserTeacherID.Text = string.Empty;
                msg = msg + " در شماره استاد مجاز نيستند.";
                lblMessage.Text = lblMessage.Text + msg;
                lblMessage.Visible = true;
                return false;
            }
            else
            {
                return true;
                //lblMessage.Visible = false;
                //lblMessage.Text = string.Empty;
            }
        }

        protected void clear()
        {
            txtUserTeacherAddress.Text = string.Empty;
            txtUserTeacherCellPhone.Text = string.Empty;
            txtUserTeacherEmail.Text = string.Empty;
            txtUserTeacherID.Text = string.Empty;
            txtUserTeacherLastName.Text = string.Empty;
            txtUserTeacherName.Text = string.Empty;
            txtUserTeacherOfficeName.Text = string.Empty;
            txtUserTeacherPassword.Text = string.Empty;
            txtUserTeacherPhone.Text = string.Empty;
            txtUserTeacherUserName.Text = string.Empty;
            txtUserTeacherWebSite.Text = string.Empty;

        }

        protected void insertTeacher()
        {
            Teacher stu = new Teacher();

            stu.UserTeacherName = txtUserTeacherName.Text.Trim();
            stu.UserTeacherLastName = txtUserTeacherLastName.Text.Trim();
            stu.UserTeacherEmail = txtUserTeacherEmail.Text.Trim();
            stu.UserTeacherID = Convert.ToInt16(txtUserTeacherID.Text.Trim());
            stu.UserTeacherUserName = txtUserTeacherUserName.Text.Trim();
            stu.UserTeacherPassword = txtUserTeacherPassword.Text.Trim();
            stu.UserTeacherSpecialty = drliUserTeacherSpecialty.SelectedItem.Text.Trim();
            stu.UserTeacherFinalEducationLevel = drliUserTeacherFinalEducationLevel.SelectedItem.Text.Trim();
            stu.UserTeacherWebSite = txtUserTeacherWebSite.Text.Trim();

            stu.UserTeacherOfficeName = txtUserTeacherOfficeName.Text.Trim();
            stu.UserTeacherPhone = txtUserTeacherPhone.Text.Trim();
            stu.UserTeacherCellPhone = txtUserTeacherCellPhone.Text.Trim();
            stu.UserTeacherAddress = txtUserTeacherAddress.Text.Trim();

            //stu.UserTeacherSpecialty = txtUserTeacherSpecialty.Text.Trim();

            if (rdioUserTeacherSexFemale.Checked)
                stu.UserTeacherSex = "خانم";
            else
                stu.UserTeacherSex = "آقاي";

            SqlException exc = stu.insertTeacher();
            if (exc == null)
            {
                lblMessage.Text = "عمليات انجام شد.";
                lblMessage.Visible = true;
                clear();
            }
            else
            {
                if (exc.Message.Contains("PRIMARY KEY constraint"))
                    lblMessage.Text = "نام کاربري و يا کلمه عبور ديگري انتخاب نماييد.";


                lblMessage.Visible = true;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Admin")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            if (!IsPostBack)
            {
                EducationBranch bsp = new EducationBranch();
                drliUserTeacherSpecialty.DataSource = bsp.showAllBranchs("EducationBranchName", null, " order by EducationBranchName");
                drliUserTeacherSpecialty.DataTextField = "EducationBranchName";
                drliUserTeacherSpecialty.DataValueField = "EducationBranchName";
                drliUserTeacherSpecialty.DataBind();
            }

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;
            try
            {
                if ((checkTeacherID() == true) && (checkTeacherUserName() == true) && (checkTeacherPassword() == true))
                {
                    if (checkTeacherIDForNotExsists() == true)
                        insertTeacher();
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

    }
}