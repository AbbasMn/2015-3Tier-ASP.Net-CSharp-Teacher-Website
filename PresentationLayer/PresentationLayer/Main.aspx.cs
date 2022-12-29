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

namespace PresentationLayer
{
    public partial class Main : System.Web.UI.Page
    {
        protected void showPresentedTechnicalEducation()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            repeater4.DataSource = dbo.selectQueryDataTable("TablePresentedTechnicalEducation,TableTechnicalEducation", 
            "TablePresentedTechnicalEducation.presentedTechEducationTitle as presentedTechEducationTitle,"+
            "TablePresentedTechnicalEducation.presentedTechEducationCode as presentedTechEducationCode,"+
            "TableTechnicalEducation.techEductionPrerequisits as techEductionPrerequisits,"+
            "TablePresentedTechnicalEducation.presentedTechEducationID as presentedTechEducationID", 
            "TableTechnicalEducation.techEducationTitle=TablePresentedTechnicalEducation.presentedTechEducationTitle", " order by presentedTechEducationTitle");
            repeater4.DataBind();

        }

        protected void repeater4_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "goRegister")
            {
                int index = Convert.ToInt32(e.Item.ItemIndex); ;

                Label lblEducationID = new Label();
                Label lblEducationCode = new Label();
                Label lblEducationTitle = new Label();

                lblEducationID = (Label)repeater4.Items[index].FindControl("lbltechEducationID");
                Session["presentedTechEducationID"] = lblEducationID.Text;

                lblEducationCode = (Label)repeater4.Items[index].FindControl("lbltechEducationCode");
                Session["techEducationCode"] = lblEducationCode.Text;

                lblEducationTitle = (Label)repeater4.Items[index].FindControl("lbltechEducationTitle");
                Session["techEducationTitle"] = lblEducationTitle.Text;

                Response.Redirect("RegisterPresentedTechnicalEducation.aspx");

            }
        }


        protected void showMyMoney()
        {
            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();

            dt = myNews.showNews("TOP 5 * ", "newsBranchName='AllBranch'", " ORDER BY NEWID()");
            repeater3.DataSource = dt;
            repeater3.DataBind();


        }

        protected void setGuestCounter()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            dbo.updateQuery("TableUserStudent", "UserStudentSiteViewCounter=UserStudentSiteViewCounter+1" +
                                       " where UserStudentName='Guest' and UserStudentLastName='Guest'");   
        }
        
        protected void showSoft()
        {
            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();

            dt = myNews.showNews("TOP 1 * ", "newsBranchName='AllBranch'", " ORDER BY NEWID()");
            repeater2.DataSource = dt;
            repeater2.DataBind();


        }

        protected void showTodayViewer()
        {

            LogicalLayer.Student stu = new LogicalLayer.Student();
            PersianDatePickup.PersianDatePickup date = new PersianDatePickup.PersianDatePickup();

            date.SelectedDateTime = DateTime.Now;

            DataList2.DataSource = stu.showAllStudents("UserStudentName,UserStudentLastName,UserStudentOnline", "UserStudentLastLogin like '" + date.PersianDateString.ToString() + "%'", " order by UserStudentLastLogin desc");

            DataList2.DataBind();


        }

        protected void ifUserLogined()
        {
            if (Session["UserType"] != null)
            {
                tableLogin.Visible = false;
                tableWelcome.Visible = true; ;

                txtUserName.Visible = false;
                txtPassword.Visible = false;
                dropdownUserType.Visible = false;
                btnLogin.Visible = false;
                LinkBtnLogOut.Visible = true;

                lblUserName.Visible = false;
                lblPassword.Visible = false;
                lblUserType.Visible = false;

                lblWlcome1.Visible = true;
                lblWlcome2.Visible = true;
                lblWlcome3.Visible = true;


                if (Session["UserType"].ToString() == "Admin")
                {
                }

                if (Session["UserType"].ToString() == "Student")
                {
                    lblWlcome1.Text = Session["StudentSex"].ToString() + "  " +
                                  Session["StudentName"].ToString() + "  " +
                                  Session["StudentLastName"].ToString() + " خوش آمديد !";
                    lblWlcome2.Text = "  آخرين بازدید " +
                                  Session["StudentLastLogin"].ToString();

                    lblWlcome3.Text = " تعداد بازدید  " + Session["StudentSiteViewCounter"].ToString() + " بار ";
                }

                if (Session["UserType"].ToString() == "Teacher")
                {
                }

            }


            else
            {
                tableLogin.Visible = true;
                tableWelcome.Visible = false;

                txtUserName.Visible = true;
                txtPassword.Visible = true;
                dropdownUserType.Visible = true;
                btnLogin.Visible = true;
                LinkBtnLogOut.Visible = false;

                lblUserName.Visible = true;
                lblPassword.Visible = true;
                lblUserType.Visible = true;

                lblWlcome1.Visible = false;
                lblWlcome2.Visible = false;
                lblWlcome3.Visible = false;

            }

        }

        protected void logIn()
        {
            int userType;
            String userName, userPassword;

            DataBaseOperations dbo = new DataBaseOperations();

            DataTable dt = new DataTable();
            SqlException excp;



            try
            {
                userType = dropdownUserType.SelectedIndex;

                //Cryption cryp1 = new Cryption("abas", txtUserName.Text.Trim());
                //userName = cryp1.Encrypt(txtUserName.Text.Trim());

                //Cryption cryp2 = new Cryption("abas", txtPassword.Text.Trim());
                //userPassword = cryp2.Encrypt(txtPassword.Text.Trim());

                userName = txtUserName.Text.Trim();
                userPassword = txtPassword.Text.Trim();

                PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();

                string loginDate;

                //perdate.Text = DateTime.Now.ToShortDateString() + " - " + DateTime.Now.ToShortTimeString();

                perdate.SelectedDateTime = DateTime.Now;


                loginDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

                switch (userType)
                {

                    //admin
                    case 2:
                        dt = dbo.selectQueryDataTable("TableAdmin", "AdminID,AdminName,AdminLastName,AdminLastLogin,AdminOnline,AdminSex",
                       " AdminUserName=" + "'" + userName + "'" +
                       " and AdminPassword=" + "'" + userPassword + "'", null);
                        if (dt.Rows.Count > 0)
                        {
                            Session["AdminLastLogin"] = dt.Rows[0]["AdminLastLogin"].ToString().Trim();

                            if ((dt.Rows[0]["AdminOnline"].ToString().Trim() == "False")||(dt.Rows[0]["AdminOnline"].ToString().Trim() == "True"))//اگر آنلاین نیست
                            {
                                Session["LastLogin"] = dt.Rows[0]["AdminLastLogin"];


                                excp = dbo.updateQuery("TableAdmin", "AdminLastLogin='" + loginDate + "'" +
                                       ",AdminOnline='True'" +
                                       " where AdminUserName=" + "'" + userName + "'"
                                     + " and AdminPassword=" + "'" + userPassword + "'");

                                if (excp != null)
                                {
                                    lblMessage.Text = excp.Message.ToString().Trim();
                                }
                                else
                                {
                                    Session["AdminName"] = dt.Rows[0]["AdminName"].ToString().Trim();
                                    Session["AdminLastName"] = dt.Rows[0]["AdminLastName"].ToString().Trim();
                                    Session["AdminID"] = dt.Rows[0]["AdminID"].ToString().Trim();
                                    Session["AdminSex"] = dt.Rows[0]["AdminSex"].ToString().Trim();
                                    Session["UserType"] = "Admin";

                                    Response.Redirect("Admin/AdminContentPages/AdminControlPanelPage.aspx");
                                }
                            }
                            else //آنلاين است
                            {
                                if (Session["UserType"] == "Admin")
                                {
                                    txtPassword.Text = string.Empty;
                                    txtUserName.Text = string.Empty;
                                }
                            }
                        }
                        else //ورود غير مجاز
                        {
                            txtPassword.Text = string.Empty;
                            txtUserName.Text = string.Empty;
                            lblMessage.Text = "نام کاربری یا کلمه عبور اشتباه است !";
                        }

                        break;







                    //teacher
                    case 1:
                        dt = dbo.selectQueryDataTable("TableUserTeacher", "UserTeacherSpecialty,UserTeacherID,UserTeacherSex,UserTeacherUserName,UserTeacherName,UserTeacherLastName,UserTeacherOnline,UserTeacherLastLogin",
                                            " UserTeacherUserName=" + "'" + userName + "'" +
                                            " and UserTeacherPassword=" + "'" + userPassword + "'", null);
                        if (dt.Rows.Count > 0)
                        {
                            Session["TeacherLastLogin"] = dt.Rows[0]["UserTeacherLastLogin"].ToString().Trim();

                            if ((dt.Rows[0]["UserTeacherOnline"].ToString().Trim() == "False") || (dt.Rows[0]["UserTeacherOnline"].ToString().Trim() == "True"))//اگر آنلاین نیست
                            {
                                Session["TeacherLastLogin"] = dt.Rows[0]["UserTeacherLastLogin"];
                                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='True'" +
                                    ",UserTeacherLastLogin='" + loginDate + "'" +
                                       " where UserTeacherUserName=" + "'" + userName + "'"
                                     + " and UserTeacherPassword=" + "'" + userPassword + "'");

                                if (excp != null)
                                {
                                    lblMessage.Text = excp.Message.ToString().Trim();
                                }
                                else
                                {
                                    Session["TeacherName"] = dt.Rows[0]["UserTeacherName"].ToString().Trim();
                                    Session["TeacherLastName"] = dt.Rows[0]["UserTeacherLastName"].ToString().Trim().Trim();
                                    Session["UserType"] = "Teacher";
                                    Session["TeacherSex"] = dt.Rows[0]["UserTeacherSex"].ToString().Trim();
                                    Session["TeacherID"] = dt.Rows[0]["UserTeacherID"].ToString().Trim();
                                    Session["TeacherBranchName"] = dt.Rows[0]["UserTeacherSpecialty"].ToString().Trim();
                                    Session["TeacherID"] = dt.Rows[0]["UserTeacherID"].ToString().Trim();

                                    Response.Redirect("User/Pages/Teacher/TeacherControlPanelPage.aspx");

                                }
                            }
                            else //آنلاين است
                            {
                                if (Session["UserType"] == "Teacher")
                                {
                                    txtPassword.Text = string.Empty;
                                    txtUserName.Text = string.Empty;
                                    //Response.Redirect("TeacherControlPanel.aspx");
                                }
                            }
                        }
                        else //ورود غير مجاز
                        {
                            txtPassword.Text = string.Empty;
                            txtUserName.Text = string.Empty;
                            lblMessage.Text = "نام کاربری یا کلمه عبور اشتباه است !";
                        }


                        break;







                    //student
                    case 0:
                        dt = dbo.selectQueryDataTable("TableUserStudent", "UserStudentSiteViewCounter,UserStudentDeleted,UserStudentUploadPic,UserStudentEducationLevel,UserStudentSex,UserStudentUserName,UserStudentEducationBranchName,UserStudentUnivesityName,UserStudentID,UserStudentName,UserStudentLastName,UserStudentOnline,UserStudentLastLogin",
                                            " UserStudentUserName=" + "'" + userName + "'" +
                                            " and UserStudentPassword=" + "'" + userPassword + "'", null);
                        if (dt.Rows.Count > 0)
                        {

                            if ((dt.Rows[0]["UserStudentOnline"].ToString().Trim() == "False")||(dt.Rows[0]["UserStudentOnline"].ToString().Trim() == "True"))//اگر آنلاین نیست
                            {
                                Session["StudentLastLogin"] = dt.Rows[0]["UserStudentLastLogin"];

                                excp = dbo.updateQuery("TableUserStudent", "UserStudentLastLogin='" + loginDate + "'" +
                                       ",UserStudentOnline='True',UserStudentSiteViewCounter=UserStudentSiteViewCounter+1" +
                                       " where UserStudentID=" + dt.Rows[0]["UserStudentID"].ToString().Trim());

                                if (excp != null)
                                {
                                    lblMessage.Text = excp.Message.ToString().Trim();
                                }
                                else
                                {

                                    Session["StudentSex"] = dt.Rows[0]["UserStudentSex"].ToString().Trim();
                                    Session["StudentName"] = dt.Rows[0]["UserStudentName"].ToString().Trim();
                                    Session["StudentLastname"] = dt.Rows[0]["UserStudentLastName"].ToString().Trim();
                                    Session["UserType"] = "Student";
                                    Session["StudentID"] = dt.Rows[0]["UserStudentID"].ToString().Trim();
                                    Session["StudentUniversityName"] = dt.Rows[0]["UserStudentUnivesityName"].ToString().Trim();
                                    Session["StudentBranchName"] = dt.Rows[0]["UserStudentEducationBranchName"].ToString().Trim();
                                    Session["StudentEducationLevel"] = dt.Rows[0]["UserStudentEducationLevel"].ToString().Trim();
                                    Session["StudentUserName"] = dt.Rows[0]["UserStudentUserName"].ToString().Trim();
                                    Session["StudentUploadPic"] = dt.Rows[0]["UserStudentUploadPic"].ToString().Trim();
                                    Session["StudentSiteViewCounter"] = dt.Rows[0]["UserStudentSiteViewCounter"].ToString().Trim();

                                    // check for uploadSotware link permission
                                    Session["StudentSendSotwareDownloadLink"] = dt.Rows[0]["UserStudentDeleted"].ToString().Trim();
                                    // 

                                    Response.Redirect("User/Pages/Student/StudentControlPanelPage.aspx");


                                }
                            }
                            else //آنلاين است
                            {
                                if (Session["UserType"] == "Student")
                                {
                                    txtPassword.Text = string.Empty;
                                    txtUserName.Text = string.Empty;
                                    //Response.Redirect("UserControlPanel.aspx");
                                }
                            }
                        }


                        else //ورود غير مجاز
                        {
                            txtPassword.Text = string.Empty;
                            txtUserName.Text = string.Empty;
                            lblMessage.Text = "نام کاربری یا کلمه عبور اشتباه است !";
                        }


                        break;

                }
            }
            catch (Exception exp)
            {
                lblMessage.Text = exp.Message;
            }
        }


        protected void showStudentsNewsMechanic()
        {
            News myNews1 = new News();


            //GridViewStudentNews.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", " newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            DataList3.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", "newsBranchName='مهندسي مکانيک خودرو' and newsArchieve= 'false' and newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsID desc");

            //GridViewStudentNews.DataBind();

            DataList3.DataBind();


        }


        protected void showStudentsNewsComputer()
        {
            News myNews1 = new News();


            //GridViewStudentNews.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", " newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            DataList1.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", "newsBranchName<>'مهندسي مکانيک خودرو' and newsArchieve= 'false' and newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsID desc");

            //GridViewStudentNews.DataBind();

            DataList1.DataBind();


        }



        protected void showSliderPic()
        {

            LogicalLayer.Picture pic = new LogicalLayer.Picture();
            DataTable dt = new DataTable();


            try
            {

                dt = pic.selectQueryDataTable("TableGalleryPicture,TablePicture", "TableGalleryPicture.GalleryPicTitle as GalleryPicTitle ,PictureName,PictureTitle,PictureDescription," +
                "PictureDate,PictureTime,PictureLocation,PictureOwnerName,PictureOwnerLastName", "(PictureArchieve='false') and (TableGalleryPicture.GalleryPicTitle='اسلايدهاي صفحه اول سايت') and (TableGalleryPicture.GalleryPicID=TablePicture.PictureGalleryPicID)", "order by PictureID desc");

                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            catch
            {
            }



        }

        protected void Page_Load(object sender, EventArgs e)
        {

            setGuestCounter();

            showSoft();

            ifUserLogined();

            showTodayViewer();

            showSiteStatistics();
            showSliderPic();

            if (!IsPostBack)
            {

            showMyMoney();

            showPresentedTechnicalEducation();

                showStudentsNewsComputer();
                showStudentsNewsMechanic();

            }
        }

        protected void showSiteStatistics()
        {
            SiteStatistics statistics1 = new SiteStatistics();
            SiteStatistics statistics2 = new SiteStatistics();
            SiteStatistics statistics3 = new SiteStatistics();
            SiteStatistics statistics4 = new SiteStatistics();
            SiteStatistics statistics5 = new SiteStatistics();

            PersianDatePickup.PersianDatePickup date = new PersianDatePickup.PersianDatePickup();

            date.SelectedDateTime = DateTime.Now;

            lblToday.Text = date.PersianDateString.ToString();

            lblMembeshipCounter.Text = statistics1.showStudentMembeshipCounter().Rows.Count.ToString();

            lblMembeshipOnlineCounter.Text = statistics2.showStudentMembeshipOnlineCounter().Rows.Count.ToString();

            lblMembeshipTodayLoginsCounter.Text = statistics3.showStudentMembeshipTodayLoginsCounter(date.PersianDateString.ToString()).Rows.Count.ToString();

            lblMembeshipTotalLoginsCounter.Text = //Convert.ToString(Convert.ToInt16(
                statistics4.showStudentMembeshipTotalLoginsCounter().Rows[0][0].ToString();
            //) +//Convert.ToInt16(statistics5.showStudentMembeshipTotalGuestLoginsCounter().Rows[0][0].ToString()));
        }

        protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (Session["UserType"] == "Student")
            //{
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Session["sentID"] = DataList3.DataKeys[index].ToString();
            Response.Redirect("NewsDetailes.aspx");
            //}
        }


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (Session["UserType"] == "Student")
            //{
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Session["sentID"] = DataList1.DataKeys[index].ToString();
            Response.Redirect("NewsDetailes.aspx");
            //}
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
                Response.Redirect("Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Teacher")
            {
                ID = Session["TeacherID"].ToString();
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherID=" + ID);
                Session.Abandon();
                Response.Redirect("Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Student")
            {
                ID = Session["StudentID"].ToString();
                excp = dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
                  " where UserStudentID=" + ID);
                Session.Abandon();
                Response.Redirect("Main.aspx");
            }




            if (excp != null)
            {
                //lblError.Text = excp.Message.ToString();
            }
            else
            {


            }
        }




        protected void LinkBtnLogOut_Click(object sender, EventArgs e)
        {
            logOut();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            logIn();
        }

        



    }
}