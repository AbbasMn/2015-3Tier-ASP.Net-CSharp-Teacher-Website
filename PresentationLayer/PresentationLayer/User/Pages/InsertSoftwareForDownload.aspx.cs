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
using LogicalLayer;
using System.IO;
using System.Data.SqlClient;

namespace PresentationLayer.PresentationLayer.User.Pages
{
    public partial class InsertSoftwareForDownload : System.Web.UI.Page
    {
        public string newsPicName = string.Empty;
        public string newsFileName = string.Empty;
        public string newsFileType = string.Empty;

        protected void clear()
        {
            PersianDatePickup1.Text = string.Empty;
            txtnewsPassage.Text = string.Empty;
            txtnewsRelatedLink.Text = string.Empty;
            txtnewsTitle.Text = string.Empty;
            lblNewsFileName.Text = string.Empty;
            lblNewsPicName.Text = string.Empty;
        }

        protected void insertSoftwareDownload()
        {

            News mySoftwareDownload = new News();

            mySoftwareDownload.newsTitle = txtnewsTitle.Text.ToString().Trim();
            mySoftwareDownload.newsPassage = txtnewsPassage.Text.ToString().Trim();
            mySoftwareDownload.newsDate = PersianDatePickup1.PersianDateString;

            mySoftwareDownload.newsAouthorType = Session["UserType"].ToString().Trim();
            mySoftwareDownload.newsType = drlistnewsType.Text.ToString();


            mySoftwareDownload.newsShowingPermision = false;

            if (Session["UserType"] == "Admin")
            {
                mySoftwareDownload.newsAouthorName = Session["AdminName"].ToString().Trim();
                mySoftwareDownload.newsAouthorLastName = Session["AdminLastName"].ToString().Trim();
                mySoftwareDownload.newsAouthorID = Convert.ToInt32(Session["AdminID"].ToString().Trim());
            }
            else

                if (Session["UserType"] == "Teacher")
                {
                    mySoftwareDownload.newsAouthorName = Session["TeacherName"].ToString().Trim();
                    mySoftwareDownload.newsAouthorLastName = Session["TeacherLastName"].ToString().Trim();
                    mySoftwareDownload.newsAouthorID = Convert.ToInt32(Session["TeacherID"].ToString().Trim());
                    mySoftwareDownload.newsBranchName = Session["TeacherBranchName"].ToString().Trim();
                }
                else

                    if (Session["UserType"] == "Student")
                    {
                        mySoftwareDownload.newsAouthorName = Session["StudentName"].ToString().Trim();
                        mySoftwareDownload.newsAouthorLastName = Session["StudentLastName"].ToString().Trim();
                        mySoftwareDownload.newsAouthorID = Convert.ToInt32(Session["StudentID"].ToString().Trim());
                        mySoftwareDownload.newsBranchName = "AllBranch";
                    }

            mySoftwareDownload.newsPriority = drlistnewsPriority.Text.ToString().Trim();


            mySoftwareDownload.newsPictureName = newsPicName;


            mySoftwareDownload.newsRelatedLink = txtnewsRelatedLink.Text.ToString().Trim();


            mySoftwareDownload.newsUploadedFileName = newsFileName;



            mySoftwareDownload.newsUploadedFileType = newsFileType;

            mySoftwareDownload.newsShoingwToWhatMemberType = drlistnewsShoingwToWhatMemberType.Text.ToString().Trim();

            mySoftwareDownload.newsDownloadingFilePermision = false;

            mySoftwareDownload.newsDownloadingFileByWhatMemberType = drlistnewsDownloadingFileByWhatMemberType.Text.ToString().Trim();

            if (mySoftwareDownload.insertNews() == null)
                lblMessage.Text = "اطلاعيه ارسال شد.";

        }

        public bool uploadFile()
        {


            newsFileName = null;

            //FileUpload FileUpLdPic = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 20480; // 20 Meg
            string FileUploadFolderPass = "~/PresentationLayer/NewsFiles";
            //int FileImageWith = 800;
            //int FileImageHeight = 600;

            int FileLenth;
            if (FileUpLAttachFile.HasFile)
            {
                Filename = FileUpLAttachFile.FileName;


                FileExtention = System.IO.Path.GetExtension(Filename);

                if (FileExtention.ToUpper() == ".PPS" || FileExtention.ToUpper() == ".PPSX" || FileExtention.ToUpper() == ".PPTX" || FileExtention.ToUpper() == ".PPT" || FileExtention.ToUpper() == ".PDF" || FileExtention.ToUpper() == ".RAR" || FileExtention.ToUpper() == ".ZIP" || FileExtention.ToUpper() == ".DOC" || FileExtention.ToUpper() == ".DOCX")
                {
                    if (FileExtention.ToUpper() == ".PDF")
                        newsFileType = ".PDF";

                    if (FileExtention.ToUpper() == ".RAR")
                        newsFileType = ".RAR";

                    if (FileExtention.ToUpper() == ".ZIP")
                        newsFileType = ".ZIP";

                    if (FileExtention.ToUpper() == ".DOC")
                        newsFileType = ".DOC";

                    if (FileExtention.ToUpper() == ".DOCX")
                        newsFileType = ".DOCX";

                    if (FileExtention.ToUpper() == ".PPTX")
                        newsFileType = ".PPTX";

                    if (FileExtention.ToUpper() == ".PPT")
                        newsFileType = ".PPT";

                    if (FileExtention.ToUpper() == ".PPSX")
                        newsFileType = ".PPSX";

                    if (FileExtention.ToUpper() == ".PPS")
                        newsFileType = ".PPS";


                    FileLenth = FileUpLAttachFile.PostedFile.ContentLength;
                    FileLenth /= 1024;
                    if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
                    {
                        try
                        {


                            string s = MapPath(FileUploadFolderPass + "/");



                            FilePass = MapPath(FileUploadFolderPass + "/") + Filename;

                            FileUpLAttachFile.SaveAs(FilePass);


                            newsFileName = Filename;




                            if (System.IO.File.Exists(MapPath(FileUploadFolderPass + "/") + lblNewsFileName.Text))
                            {
                                if (lblNewsFileName.Text != Filename)
                                {
                                    System.IO.File.Delete(MapPath(FileUploadFolderPass + "/") + lblNewsFileName.Text);
                                }
                            }
                            lblNewsFileName.Text = Filename;

                            return true;


                        }
                        catch (Exception excp)
                        {
                            lblMessage.Text = excp.Message.ToString();
                            return false;
                        }
                    }
                    else
                    {
                        FileSizeMessage = "سایز فايل بزرگ است";
                        lblMessage.Text = FileSizeMessage;
                        return false;
                    }


                }
                else
                {
                    FileTypeMessage = "انتخاب کنید یک فایل با پسوند jpg یا bmp";
                    lblMessage.Text = FileTypeMessage;
                    return false;
                }
            }
            else
            {
                FileSelectedMessage = "فایل ضميمه را انتخاب کنید";
                lblMessage.Text = FileSelectedMessage;
                return false;
            }
        }

        public bool uploadPic()
        {
            newsPicName = null;

            //FileUpload FileUpLdPic = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 10500; // 5 Meg
            string FileUploadFolderPass = "~/PresentationLayer/NewsImages";
            int FileImageWith = 800;
            int FileImageHeight = 600;

            int FileLenth;
            if (FileUpLdPic.HasFile)
            {
                Filename = FileUpLdPic.FileName;


                FileExtention = System.IO.Path.GetExtension(Filename);

                if (FileExtention.ToUpper() == ".JPG" || FileExtention.ToUpper() == ".BMP")
                {
                    FileLenth = FileUpLdPic.PostedFile.ContentLength;
                    FileLenth /= 1024;
                    if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
                    {
                        try
                        {
                            //Filename = Guid.NewGuid().ToString() + ".JPG";

                            System.Drawing.Bitmap Bmp = new System.Drawing.Bitmap(System.Drawing.Image.FromStream(FileUpLdPic.FileContent));

                            string s = MapPath(FileUploadFolderPass + "/");

                            Bmp.Save(MapPath(FileUploadFolderPass + "/") + Filename, System.Drawing.Imaging.ImageFormat.Jpeg);

                            Bmp = new System.Drawing.Bitmap(System.Drawing.Image.FromStream(FileUpLdPic.FileContent), new System.Drawing.Size(FileImageWith, FileImageHeight));

                            Bmp.Save(MapPath(FileUploadFolderPass + "/") + Filename, System.Drawing.Imaging.ImageFormat.Jpeg);

                            FilePass = MapPath(FileUploadFolderPass + "/") + Filename;




                            newsPicName = Filename;




                            if (System.IO.File.Exists(MapPath(FileUploadFolderPass + "/") + lblNewsPicName.Text))
                            {
                                if (lblNewsPicName.Text != Filename)
                                {
                                    System.IO.File.Delete(MapPath(FileUploadFolderPass + "/") + lblNewsPicName.Text);
                                }
                            }
                            lblNewsPicName.Text = Filename;

                            return true;


                        }
                        catch (Exception excp)
                        {
                            lblMessage.Text = excp.Message.ToString();
                            return false;
                        }
                    }
                    else
                    {
                        FileSizeMessage = "سایز عکس بزرگ است";
                        lblMessage.Text = FileSizeMessage;
                        return false;
                    }


                }
                else
                {
                    FileTypeMessage = "انتخاب کنید یک فایل با پسوند jpg یا bmp";
                    lblMessage.Text = FileTypeMessage;
                    return false;
                }
            }
            else
            {
                FileSelectedMessage = "فایل عکس را انتخاب کنید";
                lblMessage.Text = FileSelectedMessage;
                return false;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["StudentSendSotwareDownloadLink"].ToString() == "True")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");

            if (!IsPostBack)
                clear();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            bool check = true;

            try
            {
                if (FileUpLAttachFile.HasFile)
                {
                    if (!uploadFile())
                        check = false;
                }
                else
                {
                    newsFileName = string.Empty;
                    newsFileType = string.Empty;
                }

                if (FileUpLdPic.HasFile)
                {
                    if (!uploadPic())
                        check = false;
                }
                else
                    newsPicName = "default.jpg";


                if (check)
                {
                    insertSoftwareDownload();
                    clear();
                }
                else
                    lblMessage.Text = "خطا در ارسال عکس يا فايل";
            }
            catch
            {
            }
        }

        protected void LinkButtonNewsPic_Click(object sender, EventArgs e)
        {
            try
            {
                uploadPic();
            }
            catch
            {
            }
        }
        protected void LinkButtonNewsFile_Click(object sender, EventArgs e)
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
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");

            if (Session["UserType"].ToString() == "Student")
                Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");
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
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Teacher")
            {
                ID = Session["TeacherID"].ToString();
                excp = dbo.updateQuery("TableUserTeacher", "UserTeacherOnline='False'" +
                  " where UserTeacherID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }

            else if (Session["UserType"].ToString() == "Student")
            {
                ID = Session["StudentID"].ToString();
                excp = dbo.updateQuery("TableUserStudent", "UserStudentOnline='False'" +
                  " where UserStudentID=" + ID);
                Session.Abandon();
                Response.Redirect("~/PresentationLayer/Main.aspx");
            }




            if (excp != null)
            {
                lblError.Text = excp.Message.ToString();
            }
            else
            {


            }
        }
    }
}