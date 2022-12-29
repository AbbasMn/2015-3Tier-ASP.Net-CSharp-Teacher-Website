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
    public partial class TeacherControlPanelPage : System.Web.UI.Page
    {
        protected void showSendAndRecieveMessagesUnResponsed()
        {
            Message msg = new Message();
            DataTable dt = new DataTable();

            dt = msg.showMessage("messageStudentID", "messageSenderType='Student' and messageRecieverName='" + Session["TeacherName"].ToString() + "' and messageRecieverLastName='" + Session["TeacherLastName"].ToString() + "' and messageRespondedOrUnResponded='False'", null);

            if (dt.Rows.Count > 0)
            {
                lblMessageStudent.Text = " (اینجا کلیک کنید) " + dt.Rows.Count.ToString() + " پيام دريافتي از دانشجو داريد  ";
                lblMessageStudent.Visible = true;
            }
            else
            {
                lblMessageStudent.Text = " (اینجا کلیک کنید) " + "همه پیامها";
                lblMessageStudent.Visible = true;
            }

        }


        protected void showLink()
        {
            Link mylink1 = new Link();


            GridViewLink.DataSource = mylink1.showLink("linkTitle,linkAddress,linkShowingPermision,linkType,linkID,linkAouthorName,linkAouthorLastName",
                "linkAouthorID=" + Session["TeacherID"].ToString() +
                " and linkAouthorName='" + Session["TeacherName"].ToString() +
                "' and linkAouthorLastName='" + Session["TeacherLastName"].ToString() + "' and linkShowingPermision='true'", "order by linkTitle");
            GridViewLink.DataBind();

            if (GridViewLink.Rows.Count > 0)
            {
                GridViewLink.Visible = true;
            }
            else
            {
                GridViewLink.Visible = false;
            }


        }



        protected void showNews()
        {
            News myNews1 = new News();
            News myNews2 = new News();
            News myNews3 = new News();
            News myNews4 = new News();



            GridViewDownLoadFile.DataSource = myNews1.showNews("newsTitle,newsDate,newsID",
                "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType='اسلايد درس' or newsType='نمونه سوال' or newsType='جزوه درس' or newsType='فايل درس')", "order by newsDate,newsTitle");
            GridViewDownLoadFile.DataBind();

            GridViewClass.DataSource = myNews2.showNews("newsTitle,newsDate,newsID", "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType like '%کلاس%')", "order by newsDate,newsTitle");
            GridViewClass.DataBind();

            GridViewExamination.DataSource = myNews3.showNews("newsTitle,newsDate,newsID", "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType like '%امتحان%')", "order by newsDate,newsTitle");
            GridViewExamination.DataBind();

            GridViewThavileProje.DataSource = myNews4.showNews("newsTitle,newsDate,newsID", "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType='تحويل پروژه - تمرين')", "order by newsDate,newsTitle");
            GridViewThavileProje.DataBind();

            //////////////////////
            News myNews5 = new News();
            News myNews6 = new News();
            News myNews7 = new News();
            News myNews8 = new News();
            News myNews9 = new News();
            News myNews10 = new News();
            News myNews11 = new News();

            GridViewPrivateTeaching.DataSource = myNews5.showNews("newsTitle,newsDate,newsID",
                "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType='تدريس خصوصي')", "order by newsDate,newsTitle");
            GridViewPrivateTeaching.DataBind();


            GridViewProgramming.DataSource = myNews6.showNews("newsTitle,newsDate,newsID",
                "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType='آموزش برنامه نويسي')", "order by newsDate,newsTitle");
            GridViewProgramming.DataBind();


            GridViewProject.DataSource = myNews7.showNews("newsTitle,newsDate,newsID",
                "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType='پروژه و کارآموزي')", "order by newsDate,newsTitle");
            GridViewProject.DataBind();


            GridViewSoftwareDownLoad.DataSource = myNews8.showNews("newsTitle,newsDate,newsID",
                "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType='دانلود نرم افزار')", "order by newsDate,newsTitle");
            GridViewSoftwareDownLoad.DataBind();

            GridViewNews.DataSource = myNews9.showNews("newsTitle,newsDate,newsID",
                "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType='اخبار')", "order by newsDate,newsTitle");
            GridViewNews.DataBind();

            GridViewGoodLinks.DataSource = myNews10.showNews("newsTitle,newsDate,newsID",
                "(newsShowingPermision='true')and(newsAouthorID=" + Session["TeacherID"].ToString() + " and newsAouthorName='" + Session["TeacherName"].ToString() + "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "') and (newsType='پيوندهاي مفيد')", "order by newsDate,newsTitle");
            GridViewGoodLinks.DataBind();


            GridViewAdminNews.DataSource = myNews11.showNews("newsTitle,newsDate,newsID",
                "(newsShowingPermision='true')and(newsAouthorType='Admin') and (newsShoingwToWhatMemberType='اساتيد' or newsShoingwToWhatMemberType='همه اعضا')", "order by newsDate,newsTitle");
            GridViewAdminNews.DataBind();
        }



        protected void showTeacherSpecification()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            dt = dbo.selectQueryDataTable("TableUserTeacher", "UserTeacherPicture,UserTeacherFinalEducationLevel,UserTeacherEmail,UserTeacherWebSite,UserTeacherID,UserTeacherSpecialty,UserTeacherUserName,UserTeacherName,UserTeacherLastName",
                "UserTeacherID=" + "'" + Session["TeacherID"] + "'", null);

            lblUserTeacherBranch.Text = dt.Rows[0]["UserTeacherSpecialty"].ToString();
            lblUserTeacherEmail.Text = dt.Rows[0]["UserTeacherEmail"].ToString();
            lblUserTeacherLastName.Text = dt.Rows[0]["UserTeacherLastName"].ToString();
            lblUserTeacherID.Text = dt.Rows[0]["UserTeacherID"].ToString();
            lblUserTeacherName.Text = dt.Rows[0]["UserTeacherName"].ToString();

            lblUserTeacherUserName.Text = dt.Rows[0]["UserTeacherUserName"].ToString();
            lblUserTeacherWebSite.Text = dt.Rows[0]["UserTeacherWebSite"].ToString();
            lblUserTeacherLevel.Text = dt.Rows[0]["UserTeacherFinalEducationLevel"].ToString();

            if ((dt.Rows[0]["UserTeacherPicture"].ToString() == string.Empty) || (dt.Rows[0]["UserTeacherPicture"].ToString() == null))
            {
                imgTeacherImage.ImageUrl = "~/PresentationLayer/User/Pages/Teacher/TeacherPictures/profilepic.jpg";
                Image1.ImageUrl = "~/PresentationLayer/User/Pages/Teacher/TeacherPictures/profilepic.jpg";
            }
            else
            {
                imgTeacherImage.ImageUrl = "~/PresentationLayer/User/Pages/Teacher/TeacherPictures/" + dt.Rows[0]["UserTeacherPicture"].ToString();
                Image1.ImageUrl = "~/PresentationLayer/User/Pages/Teacher/TeacherPictures/" + dt.Rows[0]["UserTeacherPicture"].ToString();
            }

            lblCurrentTeacherImageName.Text = dt.Rows[0]["UserTeacherPicture"].ToString(); ;

        }


        public void uploadFile()
        {
            //FileUpload FileUpLd = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 10500; // 5 Meg
            string FileUploadFolderPass;
            int FileImageWith = 100;
            int FileImageHeight = 100;

            int FileLenth;


            FileUploadFolderPass = Server.MapPath("TeacherPictures\\");

            if (FileUpLd.HasFile)
            {
                Filename = FileUpLd.FileName;
                FileExtention = System.IO.Path.GetExtension(Filename);

                if (FileExtention.ToUpper() == ".JPG" || FileExtention.ToUpper() == ".BMP")
                {
                    FileLenth = FileUpLd.PostedFile.ContentLength;
                    FileLenth /= 1024;
                    if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
                    {
                        try
                        {
                            //Filename = Guid.NewGuid().ToString() + ".JPG";

                            System.Drawing.Bitmap Bmp = new System.Drawing.Bitmap(System.Drawing.Image.FromStream(FileUpLd.FileContent));



                            Bmp.Save(FileUploadFolderPass + Filename, System.Drawing.Imaging.ImageFormat.Jpeg);

                            Bmp = new System.Drawing.Bitmap(System.Drawing.Image.FromStream(FileUpLd.FileContent), new System.Drawing.Size(FileImageWith, FileImageHeight));

                            Bmp.Save(FileUploadFolderPass + Filename, System.Drawing.Imaging.ImageFormat.Jpeg);

                            FilePass = FileUploadFolderPass + Filename;

                            imgTeacherImage.ImageUrl = "~/PresentationLayer/User/Pages/Teacher/TeacherPictures/" + Filename;
                            imgTeacherImage.DataBind();
                            Image1.ImageUrl = imgTeacherImage.ImageUrl;

                            DataBaseOperations dbo = new DataBaseOperations();
                            dbo.updateQuery("TableUserTeacher", " UserTeacherPicture=" + "'" + Filename + "' where UserTeacherID=" + Session["TeacherID"].ToString());



                            if (System.IO.File.Exists(FileUploadFolderPass + lblCurrentTeacherImageName.Text))
                            {
                                if (lblCurrentTeacherImageName.Text != Filename)
                                {
                                    System.IO.File.Delete(FileUploadFolderPass + lblCurrentTeacherImageName.Text);
                                }
                            }
                            lblCurrentTeacherImageName.Text = Filename;




                        }
                        catch (Exception excp)
                        {
                            lblMessage.Text = excp.Message.ToString();
                        }
                    }
                    else
                    {
                        FileSizeMessage = "سایز فایل بزرگ است";
                        lblMessage.Text = FileSizeMessage;
                    }


                }
                else
                {
                    FileTypeMessage = "انتخاب کنید یک فایل با پسوند jpg یا bmp";
                    lblMessage.Text = FileTypeMessage;
                }
            }
            else
            {
                FileSelectedMessage = "فایل عکس را انتخاب کنید";
                lblMessage.Text = FileSelectedMessage;
            }
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Teacher")
            {
                lblMessage.Text = Session["TeacherSex"] + "  " +
                                  Session["TeacherName"] + "  " +
                                  Session["TeacherLastName"] + " خوش آمديد ! ." +
                                 "  آخرين حضور شما در سايت : " +
                                 Session["TeacherLastLogin"];
            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");


            try
            {
                if (!IsPostBack)
                {
                    showTeacherSpecification();
                    showLink();
                    showNews();
                    showSendAndRecieveMessagesUnResponsed();
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
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                uploadFile();
            }
            catch
            {
            }

        }


        protected void GridViewDownLoadFile_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewDownLoadFile.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewThavileProje_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewThavileProje.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewClass_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewClass.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewExamination_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewExamination.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewPrivateTeaching_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewPrivateTeaching.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewProgramming_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewProgramming.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewProject_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewProject.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewSoftwareDownLoad_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewSoftwareDownLoad.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewNews_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewNews.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewGoodLinks_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewGoodLinks.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewAdminNews_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewAdminNews.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void lbtnLogMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Main.aspx");
        }
        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            logOut();
        }
        protected void GridViewLink_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewLink.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/FramePage.aspx");
            }
        }
    }
}