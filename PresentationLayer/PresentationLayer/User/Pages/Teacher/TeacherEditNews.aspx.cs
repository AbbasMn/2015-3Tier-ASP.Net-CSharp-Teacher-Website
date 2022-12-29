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

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherEditNews : System.Web.UI.Page
    {
        public string newsPicName = string.Empty;
        public string newsFileName = string.Empty;
        public string newsFileType = string.Empty;

        public Int32 rowNumber;


        protected void ArcheiveNews()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("ChooseArcheive");

                    row_selected += 1;

                    {
                        try
                        {
                            SqlException sqlexp = dbo.updateQuery("TableNews", " newsArchieve='" + chk.Checked.ToString() + "' where newsID=" + GridView1.DataKeys[i].Value);
                            if (sqlexp != null)
                                lblError.Text = sqlexp.Message.ToString();
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

        protected void setUnShownNews()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("choose0");

                    row_selected += 1;

                    {
                        try
                        {
                            SqlException sqlexp = dbo.updateQuery("TableNews", " newsShowingPermision='" + chk.Checked.ToString() + "' where newsID=" + GridView1.DataKeys[i].Value);
                            if (sqlexp != null)
                                lblError.Text = sqlexp.Message.ToString();
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

        protected void showForEdit()
        {
            LogicalLayer.News myNews = new LogicalLayer.News();
            DataTable dt = new DataTable();


            dt = myNews.showNews("newsTitle,newsPassage,newsDate,newsType," +
            "newsPriority,newsShoingwToWhatMemberType,newsDownloadingFileByWhatMemberType,newsRelatedLink", "newsID=" + rowNumber, null);

            txtnewsTitle.Text = dt.Rows[0]["newsTitle"].ToString();
            txtnewsPassage.Text = dt.Rows[0]["newsPassage"].ToString();
            PersianDatePickup1.PersianDateString = dt.Rows[0]["newsDate"].ToString();

            drlistnewsType.Text = dt.Rows[0]["newsType"].ToString();


            myNews.newsShowingPermision = false;




            drlistnewsPriority.Text = dt.Rows[0]["newsPriority"].ToString();


            txtnewsRelatedLink.Text = dt.Rows[0]["newsRelatedLink"].ToString();

            drlistnewsShoingwToWhatMemberType.Text = dt.Rows[0]["newsShoingwToWhatMemberType"].ToString();


            drlistnewsDownloadingFileByWhatMemberType.Text = dt.Rows[0]["newsDownloadingFileByWhatMemberType"].ToString();


        }


        protected void deleteNews()
        {
            lblMessage.Text = string.Empty;
            string picPass = "~/PresentationLayer/NewsImages";
            string filePass = "~/PresentationLayer/NewsFiles";
            DataTable dt = new DataTable();

            CheckBox chk = new CheckBox();

            News news1 = new News();

            try
            {
                for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView1.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        try
                        {
                            dt = news1.showNews("newsPictureName,newsUploadedFileName", "newsID=" + GridView1.DataKeys[i].Value.ToString(), null);

                            string s = dt.Rows[0]["newsPictureName"].ToString();
                            string s1 = dt.Rows[0]["newsUploadedFileName"].ToString();


                            if (s != "default.jpg")
                                System.IO.File.Delete(MapPath(picPass + "/") + s);


                            if (s1 != string.Empty)
                                System.IO.File.Delete(MapPath(filePass + "/") + s1);

                            SqlException sqlexp = news1.deleteNews("newsID=" + GridView1.DataKeys[i].Value.ToString());

                        }
                        catch
                        {

                        }
                    }

                }

            }
            catch
            {
            }


        }


        protected void showNews()
        {
            News myNews1 = new News();


            GridView1.DataSource = myNews1.showNews("newsTitle,newsDate,newsID,newsShowingPermision,newsArchieve",
                "newsAouthorID=" + Session["TeacherID"].ToString() +
                " and newsAouthorName='" + Session["TeacherName"].ToString() +
                "' and newsAouthorLastName='" + Session["TeacherLastName"].ToString() + "'", "order by newsDate,newsTitle");
            GridView1.DataBind();

            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
                btnShow.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
                btnDelete.Visible = false;
                btnShow.Visible = false;
            }


        }

        protected void clear()
        {
            PersianDatePickup1.Text = string.Empty;
            txtnewsPassage.Text = string.Empty;
            txtnewsRelatedLink.Text = string.Empty;
            txtnewsTitle.Text = string.Empty;
            PersianDatePickup1.Text = string.Empty;
            lblNewsFileName.Text = string.Empty;
            lblNewsPicName.Text = string.Empty;
        }

        protected void updateNews()
        {
            LogicalLayer.News myNews = new LogicalLayer.News();

            string picPass = "~/PresentationLayer/NewsImages";
            string filePass = "~/PresentationLayer/NewsFiles";
            DataTable dt = new DataTable();

            dt = myNews.showNews("newsPictureName,newsUploadedFileName", "newsID=" + lblRowId.Text.Trim(), null);

            string s = dt.Rows[0]["newsPictureName"].ToString();
            string s1 = dt.Rows[0]["newsUploadedFileName"].ToString();

            if (s != "default.jpg")
                System.IO.File.Delete(MapPath(picPass + "/") + s);

            System.IO.File.Delete(MapPath(filePass + "/") + s1);



            s = "newsTitle='" + txtnewsTitle.Text.Trim() + "'" +
           ",newsPassage='" + txtnewsPassage.Text.Trim() + "'" +
           ",newsDate='" + PersianDatePickup1.PersianDateString.Trim() + "'" +
           ",newsType='" + drlistnewsType.Text.Trim() + "'" +
           ",newsPriority='" + drlistnewsPriority.Text.Trim() + "'" +
           ",newsShoingwToWhatMemberType='" + drlistnewsShoingwToWhatMemberType.Text.Trim() + "'" +
           ",newsDownloadingFileByWhatMemberType='" + drlistnewsDownloadingFileByWhatMemberType.Text.Trim() + "'" +
           ",newsRelatedLink='" + txtnewsRelatedLink.Text.Trim() + "'" +
           ",newsPictureName='" + newsPicName + "'" +
           ",newsUploadedFileName='" + newsFileName + "'" +
           ",newsUploadedFileType='" + newsFileType + "'" +
           " where newsID=" + lblRowId.Text.Trim();

            if (myNews.updateNews(s) == null)
                lblMessage.Text = "اطلاعيه ويرايش شد.";
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
            if (Session["UserType"] == "Teacher")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            if (!IsPostBack)
            {
                clear();
                lblRowId.Text = string.Empty;
            }

            showNews();
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
                    if (lblRowId.Text != string.Empty)
                    {
                        updateNews();
                        showNews();
                        clear();
                        lblRowId.Text = string.Empty;
                    }
                    else
                    {
                        lblMessage.Text = "اطلاعيه اي براي ويرايش انتخاب نشده است";
                        clear();
                    }
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
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToEdit")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                rowNumber = Convert.ToInt32(GridView1.DataKeys[index].Value);
                lblRowId.Text = rowNumber.ToString();
                showForEdit();
            }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                deleteNews();
                showNews();
            }
            catch
            {
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            setUnShownNews();
            showNews();
        }
        protected void btnArchieve_Click(object sender, EventArgs e)
        {
            try
            {
                ArcheiveNews();
                showNews();
            }
            catch
            {
            }
        }

    }
}