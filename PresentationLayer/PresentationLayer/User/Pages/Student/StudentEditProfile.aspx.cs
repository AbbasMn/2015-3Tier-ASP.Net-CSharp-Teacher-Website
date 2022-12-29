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
    public partial class StudentEditProfile : System.Web.UI.Page
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


            if (chbDefaultPic.Checked)
            {
                DataBaseOperations dbo = new DataBaseOperations();
                dbo.updateQuery("TableUserStudent", " UserStudentPicture='' where UserStudentID=" + Session["StudentID"].ToString());

                if (System.IO.File.Exists(FileUploadFolderPass + lblCurrentStudentImageName.Text))
                {

                    System.IO.File.Delete(FileUploadFolderPass + lblCurrentStudentImageName.Text);

                }
                lblCurrentStudentImageName.Text = string.Empty;
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

                                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/" + Filename;
                                imgStudentImage.DataBind();
                                imgStudentImage.ImageUrl = imgStudentImage.ImageUrl;

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
        }

        protected void showStudentSpecification()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

            dt = dbo.selectQueryDataTable("TableUserStudent", "UserStudentPicture,UserStudentEducationLevel,UserStudentEmail,UserStudentWebSite,UserStudentUnivesityName,UserStudentID,UserStudentEducationBranchName,UserStudentName,UserStudentLastName,UserStudentSpecialty,UserStudentAddress,UserStudentPhone,UserStudentCellPhone,UserStudentOfficeName,UserStudentSex,UserStudentUserName",
                "UserStudentID=" + "'" + Session["StudentID"] + "'", null);

            drliUserStudentEducationBranchName.Text = dt.Rows[0]["UserStudentEducationBranchName"].ToString();
            drliStudentUniversity.Text = dt.Rows[0]["UserStudentUnivesityName"].ToString();

            txtUserStudentEmail.Text = dt.Rows[0]["UserStudentEmail"].ToString();
            txtUserStudentLastName.Text = dt.Rows[0]["UserStudentLastName"].ToString();
            txtUserStudentID.Text = dt.Rows[0]["UserStudentID"].ToString();
            txtUserStudentName.Text = dt.Rows[0]["UserStudentName"].ToString();

            txtUserStudentAddress.Text = dt.Rows[0]["UserStudentAddress"].ToString();
            txtUserStudentCellPhone.Text = dt.Rows[0]["UserStudentCellPhone"].ToString();
            txtUserStudentPhone.Text = dt.Rows[0]["UserStudentPhone"].ToString();
            txtUserStudentSpecialty.Text = dt.Rows[0]["UserStudentSpecialty"].ToString();
            txtUserStudentOfficeName.Text = dt.Rows[0]["UserStudentOfficeName"].ToString();


            txtUserStudentWebSite.Text = dt.Rows[0]["UserStudentWebSite"].ToString();
            drliUserStudentEducationLevel.Text = dt.Rows[0]["UserStudentEducationLevel"].ToString();

            if ((dt.Rows[0]["UserStudentPicture"].ToString() == string.Empty) || (dt.Rows[0]["UserStudentPicture"].ToString() == null))
            {
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/profilepic.jpg";
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/profilepic.jpg";
            }
            else
            {
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/" + dt.Rows[0]["UserStudentPicture"].ToString();
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/" + dt.Rows[0]["UserStudentPicture"].ToString();
                lblCurrentStudentImageName.Text = dt.Rows[0]["UserStudentPicture"].ToString();
            }


            txtUserStudentUserName.Text = dt.Rows[0]["UserStudentUserName"].ToString();

            chbDefaultPic.Checked = false;


            if (dt.Rows[0]["UserStudentSex"].ToString() == "آقاي")
            {
                rdioUserStudentSexMale.Checked = true;
                rdioUserStudentSexFemale.Checked = false;
            }
            else
            {
                rdioUserStudentSexMale.Checked = false;
                rdioUserStudentSexFemale.Checked = true;
            }


        }

        public bool checkStudentIDForNotExsists()
        {

            LogicalLayer.Student stu = new LogicalLayer.Student();

            if (txtUserStudentID.Text.Trim() != Session["StudentID"].ToString())
            {
                if (stu.selectQueryDataTable("TableUserStudent", "UserStudentID", "UserStudentID=" + txtUserStudentID.Text.Trim(), null).Rows.Count > 0)
                {
                    lblMessage.Text = lblMessage.Text + "شماره دانشجويي قبلاً وارد شده است";
                    lblMessage.Visible = true;
                    return false;
                }
                else
                    return true;
            }
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

        protected void updateStudent()
        {

            LogicalLayer.Student stu = new LogicalLayer.Student();

            stu.UserStudentName = txtUserStudentName.Text.Trim();
            stu.UserStudentLastName = txtUserStudentLastName.Text.Trim();
            stu.UserStudentEmail = txtUserStudentEmail.Text.Trim();
            stu.UserStudentID = Convert.ToInt32(txtUserStudentID.Text.Trim());




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


            SqlException exc = stu.TransactionQuery("update TableUserStudent set UserStudentName='" + stu.UserStudentName +
                                                      "',UserStudentLastName ='" + stu.UserStudentLastName +
                                                      "',UserStudentEmail ='" + stu.UserStudentEmail +
                                                      "',UserStudentID =" + stu.UserStudentID.ToString() +

                                                      ",UserStudentUserName ='" + stu.UserStudentUserName +
                                                      "',UserStudentPassword ='" + stu.UserStudentPassword +

                                                      "',UserStudentEducationBranchName ='" + stu.UserStudentEducationBranchName +
                                                      "',UserStudentEducationLevel ='" + stu.UserStudentEducationLevel +
                                                      "',UserStudentUnivesityName ='" + stu.UserStudentUnivesityName +
                                                      "',UserStudentWebSite ='" + stu.UserStudentWebSite +

                                                      "',UserStudentOfficeName='" + stu.UserStudentOfficeName +
                                                      "',UserStudentPhone='" + stu.UserStudentPhone +
                                                      "',UserStudentCellPhone='" + stu.UserStudentCellPhone +
                                                      "',UserStudentAddress='" + stu.UserStudentAddress +
                                                      "',UserStudentSpecialty ='" + stu.UserStudentSpecialty +
                                                      "',UserStudentSex='" + stu.UserStudentSex +
                                                      "' where UserStudentID=" + Session["StudentID"].ToString() +


                                                      "  update TableGalleryPicture set GalleryPicOwnerID=" + stu.UserStudentID.ToString() +
                                                      ",GalleryPicOwnerName='" + stu.UserStudentName + "',GalleryPicOwnerLastName='" + stu.UserStudentLastName +
                                                      "' where GalleryPicOwnerID=" + Session["StudentID"].ToString() +


                                                      "  update TableMessage set messageStudentID=" + stu.UserStudentID.ToString() +
                                                      ",messageSenderName='" + stu.UserStudentName + "',messageSenderLastName='" + stu.UserStudentLastName +
                                                      "' where messageStudentID=" + Session["StudentID"].ToString() + " and messageSenderType='Student'" +

                                                      "  update TableMessage set messageStudentID=" + stu.UserStudentID.ToString() +
                                                      ",messageRecieverName='" + stu.UserStudentName + "',messageRecieverLastName='" + stu.UserStudentLastName +
                                                      "' where messageStudentID=" + Session["StudentID"].ToString() + " and messageSenderType='Teacher'" +

                                                      "  update TablePicture set PictureOwnerID=" + stu.UserStudentID.ToString() +
                                                      ",PictureOwnerName='" + stu.UserStudentName + "',PictureOwnerLastName='" + stu.UserStudentLastName +
                                                      "' where PictureOwnerID=" + Session["StudentID"].ToString() +

                                                      "  update TableStudentDelivery set studentDeliveryStudentID=" + stu.UserStudentID.ToString() +
                                                      ",studentDeliveryStudentName='" + stu.UserStudentName + "',studentDeliveryStudentLastName='" + stu.UserStudentLastName +
                                                      "' where studentDeliveryStudentID=" + Session["StudentID"].ToString() +

                                                      "  update TableTakeCourse set TakeCourseUserStudentID=" + stu.UserStudentID.ToString() +
                                                      " where TakeCourseUserStudentID=" + Session["StudentID"].ToString());



            if (exc == null)
            {
                Session["StudentSex"] = stu.UserStudentSex.ToString();
                Session["StudentName"] = stu.UserStudentName.ToString();
                Session["StudentLastname"] = stu.UserStudentName.ToString();
                Session["StudentID"] = stu.UserStudentID.ToString();
                Session["StudentUniversityName"] = stu.UserStudentUnivesityName.ToString();
                Session["StudentBranchName"] = stu.UserStudentEducationBranchName.ToString();
                Session["StudentEducationLevel"] = stu.UserStudentEducationLevel.ToString();
                Session["StudentUserName"] = stu.UserStudentUserName.ToString();

                lblMessage.Text = "عمليات انجام شد.";
                lblMessage.Visible = true;
                showStudentSpecification();
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
            if (Session["UserType"] == "Student")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            if (!IsPostBack)
            {
                showStudentsNews();
                University unv = new University();
                drliStudentUniversity.DataSource = unv.showAllUniversities("UniversityName,RowID", null, " order by UniversityName");
                drliStudentUniversity.DataTextField = "UniversityName";
                drliStudentUniversity.DataValueField = "UniversityName";
                drliStudentUniversity.DataBind();

                EducationBranch bsp = new EducationBranch();
                drliUserStudentEducationBranchName.DataSource = bsp.showAllBranchs("EducationBranchName", null, " order by EducationBranchName");
                drliUserStudentEducationBranchName.DataTextField = "EducationBranchName";
                drliUserStudentEducationBranchName.DataValueField = "EducationBranchName";
                drliUserStudentEducationBranchName.DataBind();

                lblMessage.Visible = false;

                showStudentSpecification();
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
                        try
                        {
                            uploadFile();
                            updateStudent();

                            Session["UserOperation"] = "عملیات :: ویرایش مشخصات کاربری :: با موفقیت انجام شد";

                            Session["OperationPage"] = "~/PresentationLayer/User/Pages/Student/StudentEditProfile.aspx";

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
            Response.Redirect("StudentControlPanelPage.aspx");
        }

    }
}