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

namespace PresentationLayer.User.Pages
{
    public partial class StudentRegistration : System.Web.UI.Page
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

        public bool checkStudentIDForNotExsists()
        {

            LogicalLayer.Student stu = new LogicalLayer.Student();

            if (stu.selectQueryDataTable("TableUserStudent", "UserStudentID", "UserStudentID=" + txtUserStudentID.Text.Trim(), null).Rows.Count > 0)
            {
                lblMessage.Text = lblMessage.Text + "شماره دانشجويي قبلاً وارد شده است";
                lblMessage.Visible = true;
                return false;
            }
            else
                return true;
        }

        public bool checkStudentUserName()
        {
            int i;
            string s = txtUserStudentUserName.Text;
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
                txtUserStudentUserName.Text = string.Empty;
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
        public bool checkStudentPassword()
        {
            int i;
            string s = txtUserStudentPassword.Text;
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
                txtUserStudentPassword.Text = string.Empty;
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
        public bool checkStudentID()
        {
            int i;
            string s = txtUserStudentID.Text;
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
                txtUserStudentID.Text = string.Empty;
                msg = msg + " در شماره دانشجويي مجاز نيستند.";
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
            txtUserStudentAddress.Text = string.Empty;
            txtUserStudentCellPhone.Text = string.Empty;
            txtUserStudentEmail.Text = string.Empty;
            txtUserStudentID.Text = string.Empty;
            txtUserStudentLastName.Text = string.Empty;
            txtUserStudentName.Text = string.Empty;
            txtUserStudentOfficeName.Text = string.Empty;
            txtUserStudentPassword.Text = string.Empty;
            txtUserStudentPhone.Text = string.Empty;
            txtUserStudentSpecialty.Text = string.Empty;
            txtUserStudentUserName.Text = string.Empty;
            txtUserStudentWebSite.Text = string.Empty;

        }

        protected void insertStudent()
        {

            LogicalLayer.Student stu = new LogicalLayer.Student();

            stu.UserStudentName = txtUserStudentName.Text.Trim();
            stu.UserStudentLastName = txtUserStudentLastName.Text.Trim();
            stu.UserStudentEmail = txtUserStudentEmail.Text.Trim();
            stu.UserStudentID = Convert.ToInt32(txtUserStudentID.Text.Trim());

            //Cryption cryp1 = new Cryption("abas", txtUserStudentUserName.Text.Trim());
            //stu.UserStudentUserName = cryp.Encrypt(txtUserStudentUserName.Text.Trim());

            //Cryption cryp2 = new Cryption("abas", txtUserStudentPassword.Text.Trim());
            //stu.UserStudentPassword = cryp2.Encrypt(txtUserStudentPassword.Text.Trim());


            stu.UserStudentUserName = txtUserStudentUserName.Text.Trim();
            stu.UserStudentPassword = txtUserStudentPassword.Text.Trim();

            stu.UserStudentEducationBranchName = drliUserStudentEducationBranchName.SelectedItem.Text.Trim();
            stu.UserStudentEducationLevel = drliUserStudentEducationLevel.SelectedItem.Text.Trim();
            stu.UserStudentUnivesityName = drliStudentUniversity.SelectedItem.Text;
            stu.UserStudentWebSite = txtUserStudentWebSite.Text.Trim();

            stu.UserStudentOfficeName = txtUserStudentOfficeName.Text;
            stu.UserStudentPhone = txtUserStudentPhone.Text;
            stu.UserStudentCellPhone = txtUserStudentCellPhone.Text;
            stu.UserStudentAddress = txtUserStudentAddress.Text;
            stu.UserStudentSpecialty = txtUserStudentSpecialty.Text;



            if (rdioUserStudentSexFemale.Checked)
                stu.UserStudentSex = "خانم";
            else
                stu.UserStudentSex = "آقاي";


            if (rdioMemberShipTypeStudent.Checked)
                stu.UserStudentType = "عضو دانشجو";
            else
                stu.UserStudentType = "عضو افتخاري";


            SqlException exc = stu.insertStudent();
            if (exc == null)
            {
                lblMessage.Text = "عمليات انجام شد.";
                lblMessage.Visible = true;
                clear();

                //Session["UserOperation"] = "عملیات :: عضویت در سایت :: با موفقیت انجام شد";

                //Session["OperationPage"] = "~/PresentationLayer/Login.aspx";
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }
            else
            {
                if (exc.Message.Contains("PRIMARY KEY constraint"))
                    lblMessage.Text = "نام کاربري و يا کلمه عبور ديگري انتخاب نماييد.";

                lblMessage.Text = exc.Message.ToString() + "    " + stu.UserStudentEducationBranchName;

                lblMessage.Visible = true;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
            }

            else
            {
                if (Session["UserType"] == "Admin")
                    Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");

                if (Session["UserType"] == "Student")

                    Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");

                if (Session["UserType"] == "Teacher")

                    Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");
            }

            if (!IsPostBack)
            {

                showStudentsNews();

                University unv = new University();
                drliStudentUniversity.DataTextField = "UniversityName";
                drliStudentUniversity.DataValueField = "RowID";
                drliStudentUniversity.DataSource = unv.showAllUniversities("UniversityName,RowID", null, " order by UniversityName");
                drliStudentUniversity.DataBind();


                EducationBranch bsp = new EducationBranch();
                drliUserStudentEducationBranchName.DataSource = bsp.showAllBranchs("EducationBranchName", null, " order by EducationBranchName");
                drliUserStudentEducationBranchName.DataTextField = "EducationBranchName";
                drliUserStudentEducationBranchName.DataValueField = "EducationBranchName";
                drliUserStudentEducationBranchName.DataBind();

                lblMessage.Visible = false;
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;
            try
            {

                if ((checkStudentID() == true) && (checkStudentUserName() == true) && (checkStudentPassword() == true))
                {
                    if (checkStudentIDForNotExsists() == true)
                        insertStudent();
                }
            }
            catch
            {

            }

        }
    }
}