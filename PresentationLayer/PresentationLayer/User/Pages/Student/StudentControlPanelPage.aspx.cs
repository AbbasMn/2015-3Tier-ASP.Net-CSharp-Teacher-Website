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
    public partial class StudentControlPanelPage : System.Web.UI.Page
    {
        public DataTable pdt = new DataTable();

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

        protected void showAdminMessages()
        {
            Message msg = new Message();

            pdt = msg.showMessage("messageStudentID,messageTitle,messagePassage", " messageSenderType='Admin'" + " and messageStudentID=" + Session["StudentID"].ToString().Trim() +

                " and (messageRecieverName='" + Session["StudentName"].ToString() + "' and messageRecieverLastName='" + Session["StudentLastName"].ToString() + "') and messageRespondedOrUnResponded='False'", null);

            if (pdt.Rows.Count > 0)
            {
                lblMessageAdmin.Text = " (اینجا کلیک کنید) " + pdt.Rows.Count.ToString() + " پيام دريافتي از مدیر سایت داريد ";

                lblMessageAdmin.Visible = true;

            }
            else lblMessageAdmin.Visible = false;


        }

        protected void showUploadedFiles()
        {

            News myNewsComp1 = new News();

            if ((Session["StudentBranchName"].ToString().Trim() == "مهندسی کامپیوتر") || (Session["StudentBranchName"].ToString().Trim() == "مهندسي فناوري اطلاعات"))
            {

                repeater1.DataSource = myNewsComp1.showNews("newsTitle,newsDate,newsID,newsUploadedFileType,newsUploadedFileName",
                  "(newsUploadedFileName is not null) and (newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات') and (newsShowingPermision='true')and(newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='اسلايد درس' or newsType='نمونه سوال' or newsType='جزوه درس' or newsType='فايل درس' or newsType='آموزش برنامه نويسي' or newsType='پروژه و کارآموزي' or newsType='دانلود نرم افزار')", "order by newsDate,newsTitle");
            }
            else
            {
                repeater1.DataSource = myNewsComp1.showNews("newsTitle,newsDate,newsID,newsUploadedFileType,newsUploadedFileName",
                      "(newsUploadedFileName is not null) and (newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "') and (newsShowingPermision='true')and(newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='اسلايد درس' or newsType='نمونه سوال' or newsType='جزوه درس' or newsType='فايل درس' or newsType='آموزش برنامه نويسي' or newsType='پروژه و کارآموزي' or newsType='دانلود نرم افزار')", "order by newsDate,newsTitle");
            }

            //DataList2.DataSource = repeater1.DataSource;
            repeater1.DataBind();
            //DataList2.DataBind();




        }

        protected void showSoft()
        {
            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();

            dt = myNews.showNews("TOP 10 * ", "newsBranchName='AllBranch'", " ORDER BY NEWID()");
            repeater2.DataSource = dt;
            repeater2.DataBind();


        }

        protected void showSendAndRecieveMessagesUnResponsed()
        {
            Message msg = new Message();
            DataTable dt = new DataTable();

            dt = msg.showMessage("messageStudentID", " messageSenderType='Teacher' and messageStudentID=" + Session["StudentID"].ToString().Trim() +

                " and messageRecieverName='" + Session["StudentName"].ToString() + "' and messageRecieverLastName='" + Session["StudentLastName"].ToString() + "' and messageRespondedOrUnResponded='False'", null);

            if (dt.Rows.Count > 0)
            {
                lblMessageTeacher.Text = " (اینجا کلیک کنید) " + dt.Rows.Count.ToString() + " پيام دريافتي از استاد داريد  ";
                lblMessageTeacher.Visible = true;
            }
            else
            {
                lblMessageTeacher.Text = " (اینجا کلیک کنید) " + "همه پیامها";
                lblMessageTeacher.Visible = true;
            }

        }

        protected void showLink()
        {
            Link mylink1 = new Link();

            GridViewLink.DataSource = mylink1.showLink("linkTitle,linkAddress,linkShowingPermision,linkType,linkID,linkAouthorName,linkAouthorLastName",
                "linkShowingPermision='true' and linkBranchName='" + Session["StudentBranchName"].ToString() + "'", " order by linkTitle");
            GridViewLink.DataBind();
        }



        protected void showNewsComp()
        {

            News myNewsComp1 = new News();
            News myNewsComp2 = new News();
            News myNewsComp3 = new News();
            News myNewsComp4 = new News();

            News myNewsComp5 = new News();
            News myNewsComp6 = new News();
            News myNewsComp7 = new News();
            News myNewsComp8 = new News();

            News myNewsComp9 = new News();



            if ((Session["StudentBranchName"].ToString() == "مهندسي فناوري اطلاعات") || (Session["StudentBranchName"].ToString() == "مهندسی کامپیوتر"))
            {
                GridViewDownLoadFileComp.DataSource = myNewsComp1.showNews("newsTitle,newsDate,newsID,newsUploadedFileType,newsUploadedFileName",
                    "(newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات') and(newsShowingPermision='true')and(newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='اسلايد درس' or newsType='نمونه سوال' or newsType='جزوه درس' or newsType='فايل درس' )", "order by newsDate,newsTitle");

                GridViewDownLoadFileComp.DataBind();


                GridViewClassComp.DataSource = myNewsComp2.showNews("newsTitle,newsDate,newsID", "(newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType like '%کلاس%')", "order by newsDate,newsTitle");
                GridViewClassComp.DataBind();

                GridViewExaminationComp.DataSource = myNewsComp3.showNews("newsTitle,newsDate,newsID", "(newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType like '%امتحان%')", "order by newsDate,newsTitle");
                GridViewExaminationComp.DataBind();

                GridViewThavileProjeComp.DataSource = myNewsComp4.showNews("newsTitle,newsDate,newsID", "(newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='تحويل پروژه - تمرين')", "order by newsDate,newsTitle");
                GridViewThavileProjeComp.DataBind();



                GridViewSoftwareComp.DataSource = myNewsComp5.showNews("newsTitle,newsDate,newsID", "(newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='دانلود نرم افزار')", "order by newsDate,newsTitle");
                GridViewSoftwareComp.DataBind();

                GridViewPeorojeKarAmooziComp.DataSource = myNewsComp6.showNews("newsTitle,newsDate,newsID", "(newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='پروژه و کارآموزي')", "order by newsDate,newsTitle");
                GridViewPeorojeKarAmooziComp.DataBind();

                GridViewLinkComp.DataSource = myNewsComp7.showNews("newsTitle,newsDate,newsID", "(newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='پيوندهاي مفيد')", "order by newsDate,newsTitle");
                GridViewLinkComp.DataBind();

                GridViewNewsComp.DataSource = myNewsComp8.showNews("newsTitle,newsDate,newsID", "(newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='اخبار')", "order by newsDate,newsTitle");
                GridViewNewsComp.DataBind();

                GridViewProgrammingComp.DataSource = myNewsComp9.showNews("newsTitle,newsDate,newsID", "(newsBranchName='مهندسی کامپیوتر' or newsBranchName='مهندسي فناوري اطلاعات')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='آموزش برنامه نويسي')", "order by newsDate,newsTitle");

                GridViewProgrammingComp.DataBind();
            }
            else
            {
                GridViewDownLoadFileComp.DataSource = myNewsComp1.showNews("newsTitle,newsDate,newsID,newsUploadedFileType,newsUploadedFileName",
                    "(newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "') and(newsShowingPermision='true')and(newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='اسلايد درس' or newsType='نمونه سوال' or newsType='جزوه درس' or newsType='فايل درس' )", "order by newsDate,newsTitle");

                GridViewDownLoadFileComp.DataBind();



                GridViewClassComp.DataSource = myNewsComp2.showNews("newsTitle,newsDate,newsID", "(newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType like '%کلاس%')", "order by newsDate,newsTitle");
                GridViewClassComp.DataBind();

                GridViewExaminationComp.DataSource = myNewsComp3.showNews("newsTitle,newsDate,newsID", "(newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType like '%امتحان%')", "order by newsDate,newsTitle");
                GridViewExaminationComp.DataBind();

                GridViewThavileProjeComp.DataSource = myNewsComp4.showNews("newsTitle,newsDate,newsID", "(newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='تحويل پروژه - تمرين')", "order by newsDate,newsTitle");
                GridViewThavileProjeComp.DataBind();



                GridViewSoftwareComp.DataSource = myNewsComp5.showNews("newsTitle,newsDate,newsID", "(newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='دانلود نرم افزار')", "order by newsDate,newsTitle");
                GridViewSoftwareComp.DataBind();

                GridViewPeorojeKarAmooziComp.DataSource = myNewsComp6.showNews("newsTitle,newsDate,newsID", "(newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='پروژه و کارآموزي')", "order by newsDate,newsTitle");
                GridViewPeorojeKarAmooziComp.DataBind();

                GridViewLinkComp.DataSource = myNewsComp7.showNews("newsTitle,newsDate,newsID", "(newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='پيوندهاي مفيد')", "order by newsDate,newsTitle");
                GridViewLinkComp.DataBind();

                GridViewNewsComp.DataSource = myNewsComp8.showNews("newsTitle,newsDate,newsID", "(newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='اخبار')", "order by newsDate,newsTitle");
                GridViewNewsComp.DataBind();

                GridViewProgrammingComp.DataSource = myNewsComp9.showNews("newsTitle,newsDate,newsID", "(newsBranchName='" + Session["StudentBranchName"].ToString().Trim() + "')and(newsShowingPermision='true') and (newsShoingwToWhatMemberType='دانشجويان' or newsShoingwToWhatMemberType='همه اعضا') and (newsType='آموزش برنامه نويسي')", "order by newsDate,newsTitle");

                GridViewProgrammingComp.DataBind();
            }

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


            FileUploadFolderPass = Server.MapPath("StudentPictures\\");


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

                            imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/" + Filename;
                            imgStudentImage.DataBind();
                            Image1.ImageUrl = imgStudentImage.ImageUrl;

                            DataBaseOperations dbo = new DataBaseOperations();
                            dbo.updateQuery("TableUserStudent", " UserStudentPicture=" + "'" + Filename + "' where UserStudentID=" + Session["StudentID"].ToString());



                            if (System.IO.File.Exists(FileUploadFolderPass + lblCurrentStudentImageName.Text))
                            {
                                if (lblCurrentStudentImageName.Text != Filename)
                                {
                                    System.IO.File.Delete(FileUploadFolderPass + lblCurrentStudentImageName.Text);
                                }
                            }
                            lblCurrentStudentImageName.Text = Filename;




                        }
                        catch (Exception excp)
                        {
                            //lblMessage.Text = excp.Message.ToString();
                        }
                    }
                    else
                    {
                        FileSizeMessage = "سایز فایل بزرگ است";
                        //lblMessage.Text = FileSizeMessage;
                    }


                }
                else
                {
                    FileTypeMessage = "انتخاب کنید یک فایل با پسوند jpg یا bmp";
                    //lblMessage.Text = FileTypeMessage;
                }
            }
            else
            {
                FileSelectedMessage = "فایل عکس را انتخاب کنید";
                //lblMessage.Text = FileSelectedMessage;
            }
        }

        protected void showStudentSpecification()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            dt = dbo.selectQueryDataTable("TableUserStudent", "UserStudentPicture,UserStudentEducationLevel,UserStudentEmail,UserStudentWebSite,UserStudentUnivesityName,UserStudentID,UserStudentEducationBranchName,UserStudentName,UserStudentLastName",
                "UserStudentID=" + "'" + Session["StudentID"] + "'", null);

            lblStudentBranch.Text = dt.Rows[0]["UserStudentEducationBranchName"].ToString();
            lblUserStudentEmail.Text = dt.Rows[0]["UserStudentEmail"].ToString();
            lblStudentLastName.Text = dt.Rows[0]["UserStudentLastName"].ToString();
            lblUserStudentID.Text = dt.Rows[0]["UserStudentID"].ToString();
            lblUserStudentName.Text = dt.Rows[0]["UserStudentName"].ToString();


            lblUserStudentWebSite.Text = dt.Rows[0]["UserStudentWebSite"].ToString();
            lblStudentLevel.Text = dt.Rows[0]["UserStudentEducationLevel"].ToString();

            if ((dt.Rows[0]["UserStudentPicture"].ToString() == string.Empty) || (dt.Rows[0]["UserStudentPicture"].ToString() == null))
            {
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/profilepic.jpg";
                Image1.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/profilepic.jpg";
            }
            else
            {
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/" + dt.Rows[0]["UserStudentPicture"].ToString();
                Image1.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/" + dt.Rows[0]["UserStudentPicture"].ToString();
            }




            lblCurrentStudentImageName.Text = dt.Rows[0]["UserStudentPicture"].ToString();

            lblUserStudentUserName.Text = Session["StudentUserName"].ToString();


            lblStudentUniversity.Text = dt.Rows[0]["UserStudentUnivesityName"].ToString();


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


        protected void Page_Load(object sender, EventArgs e)
        {



            if (Session["UserType"] == "Student")
            {
                lblMessage.Text = Session["StudentSex"].ToString() + "  " +
                                  Session["StudentName"].ToString() + "  " +
                                  Session["StudentLastName"].ToString() + " خوش آمديد !." +
                                  "  آخرين حضور شما در سايت " +
                                  Session["StudentLastLogin"].ToString() + ". " +
                                  " تعداد ورود شما به سایت  " + Session["StudentSiteViewCounter"].ToString() + " بار. ";
            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");


            if (Session["StudentUploadPic"].ToString() == "False")
                lblMessage.Text = lblMessage.Text + "اجازه دسترسي به قسمت آلبوم عکس را نداريد";



            showSendAndRecieveMessagesUnResponsed();
            showAdminMessages();
            showStudentSpecification();
            showNewsComp();
            try
            {
                if (!IsPostBack)
                {

                    showSoft();
                    showStudentsNews();


                    //showNewsAccounting();
                    //showNewsArchitect();
                    //showNewsBuilding();
                    //showNewsDampezeshk();
                    //showNewsElectro();
                    //showNewsGlobal();
                    //showNewsMaaref();

                    showLink();
                    showUploadedFiles();

                }
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



        protected void GridViewDownLoadFileComp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewDownLoadFileComp.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewThavileProjeComp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewThavileProjeComp.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewClassComp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewClassComp.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewExaminationComp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewExaminationComp.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewNewsComp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewNewsComp.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewPeorojeKarAmooziComp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewPeorojeKarAmooziComp.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewSoftwareComp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewSoftwareComp.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewLinkComp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewLinkComp.DataKeys[index].Value;
                Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
            }
        }
        protected void GridViewProgrammingComp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                Session["sentID"] = GridViewProgrammingComp.DataKeys[index].Value;
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





        //protected void GridViewPeorojeKarAmooziElectro_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewPeorojeKarAmooziElectro.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewSoftwareElectro_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewSoftwareElectro.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewDownLoadFileElectro_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewDownLoadFileElectro.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewClassElectro_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewClassElectro.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewNewsElectro_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewNewsElectro.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewLinkElectro_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewLinkElectro.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewThavileProjeElectro_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewThavileProjeElectro.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewExaminationElectro_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewExaminationElectro.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewProgrammingElectro_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewProgrammingElectro.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewPeorojeKarAmooziArchitect_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewPeorojeKarAmooziArchitect.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewSoftwareArchitect_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewSoftwareArchitect.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewDownLoadFileArchitect_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewDownLoadFileArchitect.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewClassArchitect_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewClassArchitect.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewNewsArchitect_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewNewsArchitect.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewLinkArchitect_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewLinkArchitect.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewThavileProjeArchitect_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewThavileProjeArchitect.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewExaminationArchitect_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewExaminationArchitect.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewProgrammingArchitect_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewProgrammingArchitect.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewPeorojeKarAmooziBuilding_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewPeorojeKarAmooziBuilding.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewSoftwareBuilding_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewSoftwareBuilding.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewDownLoadFileBuilding_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewDownLoadFileBuilding.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewClassBuilding_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewClassBuilding.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewNewsBuilding_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewNewsBuilding.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewLinkBuilding_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewLinkBuilding.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewThavileProjeBuilding_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewThavileProjeBuilding.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewExaminationBuilding_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewExaminationBuilding.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewProgrammingBuilding_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewProgrammingBuilding.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewPeorojeKarAmooziAccounting_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewPeorojeKarAmooziAccounting.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewSoftwareAccounting_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewSoftwareAccounting.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewDownLoadFileAccounting_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewDownLoadFileAccounting.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewClassAccounting_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewClassAccounting.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewNewsAccounting_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewNewsAccounting.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewLinkAccounting_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewLinkAccounting.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewThavileProjeAccounting_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewThavileProjeAccounting.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewExaminationAccounting_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewExaminationAccounting.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewProgrammingAccounting_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewProgrammingAccounting.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewPeorojeKarAmooziDampezeshk_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewPeorojeKarAmooziDampezeshk.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewSoftwareDampezeshk_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewSoftwareDampezeshk.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewDownLoadFileDampezeshk_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewDownLoadFileDampezeshk.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewClassDampezeshk_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewClassDampezeshk.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewNewsDampezeshk_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewNewsDampezeshk.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewLinkDampezeshk_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewLinkDampezeshk.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewThavileProjeDampezeshk_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewThavileProjeDampezeshk.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewExaminationDampezeshk_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewExaminationDampezeshk.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewProgrammingDampezeshk_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewProgrammingDampezeshk.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewPeorojeKarAmooziGlobal_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewPeorojeKarAmooziGlobal.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewSoftwareGlobal_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewSoftwareGlobal.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewDownLoadFileGlobal_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewDownLoadFileGlobal.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewClassGlobal_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewClassGlobal.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewNewsGlobal_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewNewsGlobal.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewLinkGlobal_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewLinkGlobal.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewThavileProjeGlobal_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewThavileProjeGlobal.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewExaminationGlobal_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewExaminationGlobal.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewProgrammingGlobal_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewProgrammingGlobal.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewPeorojeKarAmooziMaaref_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewPeorojeKarAmooziMaaref.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewSoftwareMaaref_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewSoftwareMaaref.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewDownLoadFileMaaref_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewDownLoadFileMaaref.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewClassMaaref_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewClassMaaref.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewNewsMaaref_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewNewsMaaref.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewLinkMaaref_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewLinkMaaref.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewThavileProjeMaaref_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewThavileProjeMaaref.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewExaminationMaaref_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewExaminationMaaref.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}
        //protected void GridViewProgrammingMaaref_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "goToShow")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);

        //        Session["sentID"] = GridViewProgrammingMaaref.DataKeys[index].Value;
        //        Response.Redirect("~/PresentationLayer/NewsDetailes.aspx");
        //    }
        //}

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }


    }
}