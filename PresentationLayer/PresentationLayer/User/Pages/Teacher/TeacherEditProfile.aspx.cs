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
using DataBaseLayer;
using System.Data.SqlClient;

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherEditProfile : System.Web.UI.Page
    {
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


            if (chbDefaultPic.Checked)
            {
                DataBaseOperations dbo = new DataBaseOperations();
                dbo.updateQuery("TableUserTeacher", " UserTeacherPicture='' where UserTeacherID=" + Session["TeacherID"].ToString());

                if (System.IO.File.Exists(FileUploadFolderPass + lblCurrentTeacherImageName.Text))
                {

                    System.IO.File.Delete(FileUploadFolderPass + lblCurrentTeacherImageName.Text);

                }
                lblCurrentTeacherImageName.Text = string.Empty;
            }
            else
            {


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
                                imgTeacherImage.ImageUrl = imgTeacherImage.ImageUrl;

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
        }

        protected void showTeacherSpecification()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

            dt = dbo.selectQueryDataTable("TableUserTeacher", "UserTeacherID,UserTeacherName,UserTeacherLastName,UserTeacherUserName,UserTeacherPassword,UserTeacherFinalEducationLevel,UserTeacherSpecialty,UserTeacherLastLogin,UserTeacherOnline,UserTeacherWebSite,UserTeacherEmail,UserTeacherPicture,UserTeacherSex,UserTeacherOfficeName,UserTeacherPhone,UserTeacherCellPhone,UserTeacherAddress",
                " UserTeacherID=" + Session["TeacherID"], null);





            if (dt.Rows.Count > 0)
            {
                drliUserTeacherSpecialty.Text = dt.Rows[0]["UserTeacherSpecialty"].ToString().Trim();

                txtUserTeacherEmail.Text = dt.Rows[0]["UserTeacherEmail"].ToString().Trim();
                txtUserTeacherLastName.Text = dt.Rows[0]["UserTeacherLastName"].ToString().Trim();
                txtUserTeacherID.Text = dt.Rows[0]["UserTeacherID"].ToString().Trim();
                txtUserTeacherName.Text = dt.Rows[0]["UserTeacherName"].ToString().Trim();

                txtUserTeacherAddress.Text = dt.Rows[0]["UserTeacherAddress"].ToString().Trim();
                txtUserTeacherCellPhone.Text = dt.Rows[0]["UserTeacherCellPhone"].ToString().Trim();
                txtUserTeacherPhone.Text = dt.Rows[0]["UserTeacherPhone"].ToString().Trim();

                txtUserTeacherOfficeName.Text = dt.Rows[0]["UserTeacherOfficeName"].ToString().Trim();


                txtUserTeacherWebSite.Text = dt.Rows[0]["UserTeacherWebSite"].ToString().Trim();
                drliUserTeacherFinalEducationLevel.Text = dt.Rows[0]["UserTeacherFinalEducationLevel"].ToString().Trim();

                if ((dt.Rows[0]["UserTeacherPicture"].ToString() == string.Empty) || (dt.Rows[0]["UserTeacherPicture"].ToString() == null))
                {
                    imgTeacherImage.ImageUrl = "~/PresentationLayer/User/Pages/Teacher/TeacherPictures/profilepic.jpg";
                    imgTeacherImage.ImageUrl = "~/PresentationLayer/User/Pages/Teacher/TeacherPictures/profilepic.jpg";
                }
                else
                {
                    imgTeacherImage.ImageUrl = "~/PresentationLayer/User/Pages/Teacher/TeacherPictures/" + dt.Rows[0]["UserTeacherPicture"].ToString().Trim();
                    imgTeacherImage.ImageUrl = "~/PresentationLayer/User/Pages/Teacher/TeacherPictures/" + dt.Rows[0]["UserTeacherPicture"].ToString().Trim();
                    lblCurrentTeacherImageName.Text = dt.Rows[0]["UserTeacherPicture"].ToString().Trim();
                }


                txtUserTeacherUserName.Text = dt.Rows[0]["UserTeacherUserName"].ToString().Trim();

                chbDefaultPic.Checked = false;


                if (dt.Rows[0]["UserTeacherSex"].ToString() == "آقاي")
                {
                    rdioUserTeacherSexMale.Checked = true;
                    rdioUserTeacherSexFemale.Checked = false;
                }
                else
                {
                    rdioUserTeacherSexMale.Checked = false;
                    rdioUserTeacherSexFemale.Checked = true;
                }
            }


        }

        public bool checkTeacherIDForNotExsists()
        {

            
            LogicalLayer.Teacher std = new LogicalLayer.Teacher();

            if (txtUserTeacherID.Text.Trim() != Session["TeacherID"].ToString())
            {
                if (std.selectQueryDataTable("TableUserTeacher", "UserTeacherID", "UserTeacherID=" + txtUserTeacherID.Text.Trim(), null).Rows.Count > 0)
                {
                    lblMessage.Text = lblMessage.Text + "شماره استاد قبلاً وارد شده است";
                    lblMessage.Visible = true;
                    return false;
                }
                else
                    return true;
            }
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

        protected void updateTeacher()
        {

            LogicalLayer.Teacher stu = new LogicalLayer.Teacher();

            stu.UserTeacherName = txtUserTeacherName.Text.Trim();
            stu.UserTeacherLastName = txtUserTeacherLastName.Text.Trim();
            stu.UserTeacherEmail = txtUserTeacherEmail.Text.Trim();
            stu.UserTeacherID = Convert.ToInt32(txtUserTeacherID.Text.Trim());




            stu.UserTeacherUserName = txtUserTeacherUserName.Text.Trim();
            stu.UserTeacherPassword = txtUserTeacherPassword.Text.Trim();

            stu.UserTeacherSpecialty = drliUserTeacherSpecialty.SelectedItem.Text.Trim();
            stu.UserTeacherWebSite = txtUserTeacherWebSite.Text.Trim();

            stu.UserTeacherOfficeName = txtUserTeacherOfficeName.Text;
            stu.UserTeacherPhone = txtUserTeacherPhone.Text;
            stu.UserTeacherCellPhone = txtUserTeacherCellPhone.Text;

            stu.UserTeacherAddress = txtUserTeacherAddress.Text.Trim();

            stu.UserTeacherFinalEducationLevel = drliUserTeacherFinalEducationLevel.Text;

            if (rdioUserTeacherSexFemale.Checked)
                stu.UserTeacherSex = "خانم";
            else
                stu.UserTeacherSex = "آقاي";


            SqlException exc = stu.TransactionQuery("update TableUserTeacher set UserTeacherName='" + stu.UserTeacherName +
                                                      "',UserTeacherLastName ='" + stu.UserTeacherLastName +
                                                      "',UserTeacherEmail ='" + stu.UserTeacherEmail +
                                                      "',UserTeacherID =" + stu.UserTeacherID.ToString() +

                                                      ",UserTeacherUserName ='" + stu.UserTeacherUserName +
                                                      "',UserTeacherPassword ='" + stu.UserTeacherPassword +

                                                      "',UserTeacherSpecialty ='" + stu.UserTeacherSpecialty +
                                                      "',UserTeacherFinalEducationLevel='" + stu.UserTeacherFinalEducationLevel +
                                                      "',UserTeacherWebSite ='" + stu.UserTeacherWebSite +

                                                      "',UserTeacherOfficeName='" + stu.UserTeacherOfficeName +
                                                      "',UserTeacherPhone='" + stu.UserTeacherPhone +
                                                      "',UserTeacherCellPhone='" + stu.UserTeacherCellPhone +
                                                      "',UserTeacherAddress='" + stu.UserTeacherAddress +

                                                      "',UserTeacherSex='" + stu.UserTeacherSex +
                                                      "' where UserTeacherID=" + Session["TeacherID"].ToString() +


                                                      "  update TableGalleryPicture set GalleryPicOwnerID=" + stu.UserTeacherID.ToString() +
                                                      ",GalleryPicOwnerName='" + stu.UserTeacherName + "',GalleryPicOwnerLastName='" + stu.UserTeacherLastName +
                                                      "' where GalleryPicOwnerID=" + Session["TeacherID"].ToString() +


                                                      "  update TableMessage set messageSenderName='" + stu.UserTeacherName + "',messageSenderLastName='" + stu.UserTeacherLastName +
                                                      "' where messageSenderName='" + Session["TeacherName"].ToString() + "' and messageSenderLastName='" + Session["TeacherLastName"].ToString() + "' and messageSenderType='Teacher'" +

                                                      "  update TableMessage set messageRecieverName='" + stu.UserTeacherName + "',messageRecieverLastName='" + stu.UserTeacherLastName +
                                                      "' where  messageRecieverName='" + Session["TeacherName"].ToString() + "' and messageRecieverLastName='" + Session["TeacherLastName"].ToString() + "' and messageRecieverType='Teacher'" +

                                                      "  update TablePicture set PictureOwnerID=" + stu.UserTeacherID.ToString() +
                                                      ",PictureOwnerName='" + stu.UserTeacherName + "',PictureOwnerLastName='" + stu.UserTeacherLastName +
                                                      "' where PictureOwnerID=" + Session["TeacherID"].ToString());



            if (exc == null)
            {
                Session["TeacherSex"] = stu.UserTeacherSex.ToString();
                Session["TeacherName"] = stu.UserTeacherName.ToString();
                Session["TeacherLastname"] = stu.UserTeacherName.ToString();
                Session["TeacherID"] = stu.UserTeacherID.ToString();
                Session["TeacherBranchName"] = stu.UserTeacherSpecialty.ToString();
                Session["TeacherUserName"] = stu.UserTeacherUserName.ToString();

                lblMessage.Text = "عمليات انجام شد.";
                lblMessage.Visible = true;
                showTeacherSpecification();
            }
            else
            {
                if (exc.Message.Contains("PRIMARY KEY constraint"))
                    lblMessage.Text = "نام کاربري و يا کلمه عبور ديگري انتخاب نماييد.";

                //lblMessage.Text = exc.Message.ToString();

                lblMessage.Visible = true;
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

                EducationBranch bsp = new EducationBranch();
                drliUserTeacherSpecialty.DataSource = bsp.showAllBranchs("EducationBranchName", null, " order by EducationBranchName");
                drliUserTeacherSpecialty.DataTextField = "EducationBranchName";
                drliUserTeacherSpecialty.DataValueField = "EducationBranchName";
                drliUserTeacherSpecialty.DataBind();

                lblMessage.Visible = false;

                showTeacherSpecification();
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
                        try
                        {
                            uploadFile();
                            updateTeacher();

                            Session["UserOperation"] = "عملیات :: ویرایش مشخصات کاربری :: با موفقیت انجام شد";

                            Session["OperationPage"] = "~/PresentationLayer/User/Pages/Teacher/TeacherEditProfile.aspx";

                            Response.Redirect("~/PresentationLayer/MessagePage.aspx");
                        }
                        catch
                        {
                        }
                }
            }
            catch
            {

            }

        }



        protected void lbtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Login.aspx");
        }
        protected void lbtnLogMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Main.aspx");
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
    }
}