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

namespace PresentationLayer.User.Pages.Teacher
{
    public partial class TeacherCreateExercise : System.Web.UI.Page
    {
        public string sentCourseGroupID;
        public string ExerciseFileName = string.Empty;
        public string ExerciseFileType = string.Empty;

        private string englishDigits(string input)
        {
            Label lblTemp = new Label();
            string s=null;
            
            lblTemp.Text = input;

            for (int i = 0; i < lblTemp.Text.Length; i++)
            {
                if (lblTemp.Text[i] == '۰')
                    s = s + '0';
                else
                    if (lblTemp.Text[i] == '۱')
                        s = s + '1';
                    else
                        if (lblTemp.Text[i] == '۲')
                            s = s + '2';
                        else
                            if (lblTemp.Text[i] == '۳')
                                s = s + '3';
                            else
                                if (lblTemp.Text[i] == '۴')
                                    s = s + '4';
                                else
                                    if (lblTemp.Text[i] == '۵')
                                        s = s + '5';
                                    else
                                        if (lblTemp.Text[i] == '۶')
                                            s = s + '6';
                                        else
                                            if (lblTemp.Text[i] == '۷')
                                                s = s + '7';
                                            else
                                                if (lblTemp.Text[i] == '۸')
                                                    s = s + '8';
                                                else
                                                    if (lblTemp.Text[i] == '۹')
                                                        s = s + '9';
                                                    else s = s + lblTemp.Text[i];

            }

            return s;

        }

        public bool checkExerciseMark()
        {
            lblMessage.Text = string.Empty;
            int i, j = 0;
            string s = txtExerciseMark.Text;
            string msg = null;
            bool fualt = false;
            msg = "کاراکترهاي ";
            for (i = 0; i < s.Length; i++)
            {
                if (Convert.ToChar(s[i]) == '.')
                    j++;

                if ((Convert.ToChar(s[i]) != '0') &&
                    (Convert.ToChar(s[i]) != '1') &&
                    (Convert.ToChar(s[i]) != '2') &&
                    (Convert.ToChar(s[i]) != '3') &&
                    (Convert.ToChar(s[i]) != '4') &&
                    (Convert.ToChar(s[i]) != '5') &&
                    (Convert.ToChar(s[i]) != '6') &&
                    (Convert.ToChar(s[i]) != '7') &&
                    (Convert.ToChar(s[i]) != '8') &&
                    (Convert.ToChar(s[i]) != '9') &&

                    (Convert.ToChar(s[i]) != '۰') &&
                    (Convert.ToChar(s[i]) != '۱') &&
                    (Convert.ToChar(s[i]) != '۲') &&
                    (Convert.ToChar(s[i]) != '۳') &&
                    (Convert.ToChar(s[i]) != '۴') &&
                    (Convert.ToChar(s[i]) != '۵') &&
                    (Convert.ToChar(s[i]) != '۶') &&
                    (Convert.ToChar(s[i]) != '۷') &&
                    (Convert.ToChar(s[i]) != '۸') &&
                    (Convert.ToChar(s[i]) != '۹') &&
                    (Convert.ToChar(s[i]) != '.'))
                {
                    msg = msg + " " + s[i].ToString();
                    fualt = true;
                }

            }

            if (j > 1)
            {
                fualt = true;
                txtExerciseMark.Text = string.Empty;
            }

            if (fualt)
            {
                txtExerciseMark.Text = string.Empty;
                msg = msg + " در نمره تمرين مجاز نيستند.";

                if (j > 1)
                    msg = " علامت اعشار بيش از يک بار وارد شده است.";

                lblMessage.Text = lblMessage.Text + msg;
                lblMessage.Visible = true;
                return false;
            }
            else
            {
                txtExerciseMark.Text = englishDigits(txtExerciseMark.Text);
                return true;
                //lblMessage.Visible = false;
                //lblMessage.Text = string.Empty;
            }
        }

        public void selectExsistExcersise()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            try
            {
                for (i = 0; i <= GridView3.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView3.Rows[i].FindControl("Choose0");
                    if (chk.Checked)
                    {
                        row_selected += 1;

                        try
                        {

                            TeacherExercise exer = new TeacherExercise();
                            dt = exer.showTeacherExercise("teacherExerciseFileType,teacherExerciseFileName,teacherExerciseTitle,teacherExerciseNumber", "teacherExerciseTitle='" + GridView3.DataKeys[i].Value.ToString() + "'", null);


                            txtExerciseTitle.Text = dt.Rows[0]["teacherExerciseTitle"].ToString();
                            lblExerciseFileName.Text = dt.Rows[0]["teacherExerciseFileName"].ToString();
                            lblExerciseFileType.Text = dt.Rows[0]["teacherExerciseFileType"].ToString();


                            break;


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


        protected void showAllExercises()
        {
            TeacherExercise exer = new TeacherExercise();
            GridView3.DataSource = exer.showTeacherExercise("distinct teacherExerciseTitle", null, "order by teacherExerciseTitle");
            GridView3.DataBind();

            if (GridView3.Rows.Count > 0)
            {
                GridView3.Visible = true;
                btnSelect.Visible = true;
            }
            else
            {
                GridView3.Visible = false;
                btnSelect.Visible = false;
            }

        }


        protected void insertExercise()
        {
            PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
            perdate.SelectedDateTime = DateTime.Now;
            TeacherExercise exer = new TeacherExercise();

            exer.teacherExerciseTitle = txtExerciseTitle.Text.ToString().Trim();
            exer.teacherExerciseNumber = Convert.ToInt32(drlistExerciseNumber.Text.Trim());
            exer.teacherExerciseDeliveryDeadLine = PersianDatePickup1.PersianDateString;
            exer.teacherExerciseFileName = lblExerciseFileName.Text;
            exer.teacherExerciseFileType = lblExerciseFileType.Text;
            exer.teacherExerciseCourseGroupID = Convert.ToInt32(lblExerciseCourseGroupID.Text);
            exer.teacherExerciseDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();

            exer.teacherExerciseMark = txtExerciseMark.Text.Trim();

            exer.teacherExerciseResponseFileType = drlistExerciseResponseType.Text;


            if (exer.insertTeacherExercise() == null)
                lblMessage.Text = "تمرين ذخيره شد.";

        }

        public void clear()
        {
            txtExerciseMark.Text = string.Empty;
            txtExerciseTitle.Text = string.Empty;
            lblExerciseFileName.Text = string.Empty;
        }

        public bool uploadFile()
        {


            ExerciseFileName = null;

            //FileUpload FileUpLdPic = new FileUpload();
            string Filename;
            string FileExtention;
            string FileSizeMessage;
            string FileTypeMessage;
            string FileSelectedMessage;
            string FilePass;
            int FileMinimumMbLenght = 0;
            int FileMaximumMbLenght = 20480; // 20 Meg
            string FileUploadFolderPass;
            //int FileImageWith = 800;
            //int FileImageHeight = 600;

            int FileLenth;


            FileUploadFolderPass = Server.MapPath("ExerciseFiles\\");


            if (FileUpLExerciseFile.HasFile)
            {
                Filename = FileUpLExerciseFile.FileName;



                TeacherExercise exc = new TeacherExercise();
                DataTable dt = new DataTable();

                dt = exc.showTeacherExercise("teacherExerciseFileName", "teacherExerciseFileName='" + Filename + "'", null);

                if (dt.Rows.Count > 0)
                {
                    lblMessage.Text = "فايل با نام انتخاب شده، توسط شما يا استاد ديگر قبلاً ارسال شده است. فايل با نام ديگري را انتخاب نماييد";
                    return false;
                }
                else
                {

                    FileExtention = System.IO.Path.GetExtension(Filename);

                    if (FileExtention.ToUpper() == ".PPTX" || FileExtention.ToUpper() == ".PPT" || FileExtention.ToUpper() == ".PDF" || FileExtention.ToUpper() == ".RAR" || FileExtention.ToUpper() == ".ZIP" || FileExtention.ToUpper() == ".DOC" || FileExtention.ToUpper() == ".DOCX")
                    {
                        if (FileExtention.ToUpper() == ".PDF")
                            ExerciseFileType = "pdf.jpg";

                        if (FileExtention.ToUpper() == ".RAR")
                            ExerciseFileType = "rar.jpg";

                        if (FileExtention.ToUpper() == ".ZIP")
                            ExerciseFileType = "zip.jpg";

                        if (FileExtention.ToUpper() == ".DOC")
                            ExerciseFileType = "doc.jpg";

                        if (FileExtention.ToUpper() == ".DOCX")
                            ExerciseFileType = "docx.jpg";

                        if (FileExtention.ToUpper() == ".PPTX")
                            ExerciseFileType = "pptx.jpg";

                        if (FileExtention.ToUpper() == ".PPT")
                            ExerciseFileType = "ppt.jpg";

                        lblExerciseFileType.Text = ExerciseFileType;

                        FileLenth = FileUpLExerciseFile.PostedFile.ContentLength;
                        FileLenth /= 1024;
                        if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
                        {
                            try
                            {

                                FilePass = FileUploadFolderPass + Filename;

                                FileUpLExerciseFile.SaveAs(FilePass);


                                ExerciseFileName = Filename;




                                if (System.IO.File.Exists(FileUploadFolderPass + lblExerciseFileName.Text))
                                {
                                    if (lblExerciseFileName.Text != Filename)
                                    {
                                        System.IO.File.Delete(FileUploadFolderPass + lblExerciseFileName.Text);
                                    }
                                }
                                lblExerciseFileName.Text = Filename;

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
            }
            else
            {
                FileSelectedMessage = "فایل ضميمه را انتخاب کنید";
                lblMessage.Text = FileSelectedMessage;
                return false;
            }

        }

        



        protected void deleteGroupCourseExercises()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            try
            {
                for (i = 0; i <= GridView2.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView2.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        row_selected += 1;
                        if (!dbo.checkEntityInOtherTables("TableStudentDelivery", "studentDeliveryCourseGroupID", "studentDeliveryCourseGroupID=" + Session["sentID"].ToString() + " and studentDeliveryExserciseID=" + GridView2.DataKeys[i].Value))
                            try
                            {
                                SqlException sqlexp = dbo.deleteQuery("TableTeacherExercise", "teacherExerciseID=" + GridView2.DataKeys[i].Value);


                                System.IO.File.Delete(Server.MapPath("ExerciseFiles\\") + GridView2.Rows[i].Cells[2].Text.ToString());

                                if (sqlexp != null)
                                {
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

            if (row_selected == 0)
                lblError.Text = "برای حذف، حداقل يک تمرين را انتخاب کنید";
            else
                showGroupCourseExercises();


        }



        protected void showGroupCourseExercises()
        {
            TeacherExercise exer = new TeacherExercise();
            GridView2.DataSource = exer.showTeacherExercise("teacherExerciseFileName,teacherExerciseID,teacherExerciseTitle,teacherExerciseNumber,teacherExerciseDeliveryDeadLine,teacherExerciseMark", "teacherExerciseCourseGroupID=" + Session["sentID"], " order by teacherExerciseNumber,teacherExerciseID");
            GridView2.DataBind();

            if (GridView2.Rows.Count > 0)
            {
                GridView2.Visible = true;
                btnDelete.Visible = true;
            }
            else
            {
                GridView2.Visible = false;
                btnDelete.Visible = false;
            }

        }

        protected void showPresentCourseGroupByTeacher()
        {

            string TermNumber = drliTermNumber.Text;

            string UserTeacherName = Session["TeacherName"].ToString();
            string UserTeacherLastName = Session["TeacherLastName"].ToString();

            DataBaseOperations dbo = new DataBaseOperations();

            GridView1.DataSource = dbo.selectQueryDataTable("TableCourseGroup",

            "CourseGroupNumber,CourseGroupUniversityName,CourseGroupUniversityNameCourseNameYearTermGroupNumber,CourseGroupEducationLevel,CourseGroupCourseName,CourseGroupRowID,CourseGroupTeacherName,CourseGroupTeacherLastName," +
            "CourseGroupClassTotalCapicity,CourseGroupClassFullCapicity," +
            "CourseGroupClassEmptyCapicity",


            " (CourseGroupTeacherName ='" + UserTeacherName + "')" +

            " and (CourseGroupTeacherLastName ='" + UserTeacherLastName + "')" +

            " and (TableCourseGroup.CourseGroupUniversityNameCourseNameYearTermGroupNumber='" + drliTermNumber.Text + "')",
            " order  by CourseGroupUniversityNameCourseNameYearTermGroupNumber");
            //" order by University,CourseName,Number", null);

            GridView1.DataBind();

            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
            }
            else
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
            }
            btnDelete.Visible = false;

        }

        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTermNumber.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber", "SemisterNumberActive='True'", " order by SemisterNumber");
            //"SemisterNumberActive='True'"
            drliTermNumber.DataBind();

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
                //lblError.Text = excp.Message.ToString();
            }
            else
            {


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
                showTermNumbers();
                showAllExercises();
            }

            showPresentCourseGroupByTeacher();



            try
            {

            }
            catch
            {
                if (Session["UserType"].ToString() == "Admin")
                    Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Teacher")
                    Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");

                if (Session["UserType"].ToString() == "Student")
                    Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");
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


        protected void drliUniversity_TextChanged(object sender, EventArgs e)
        {
            showPresentCourseGroupByTeacher();
        }
        protected void drliTermNumber_TextChanged(object sender, EventArgs e)
        {
            showPresentCourseGroupByTeacher();
            lblExerciseCourseGroupID.Text = string.Empty;
            lblExerciseCourseName.Text = string.Empty;
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShow")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Session["sentID"] = GridView1.DataKeys[index].Value;
                lblExerciseCourseGroupID.Text = GridView1.DataKeys[index].Value.ToString();

                lblExerciseCourseName.Text = GridView1.Rows[index].Cells[1].Text.ToString();

                showGroupCourseExercises();
            }
        }



        protected void btnDelete_Click(object sender, EventArgs e)
        {
            deleteGroupCourseExercises();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (checkExerciseMark() == true)
            {
                bool check = true;

                try
                {
                    if (FileUpLExerciseFile.HasFile)
                    {
                        if (!uploadFile())
                            check = false;
                    }
                    else
                    {

                    }



                    if ((check) && (lblExerciseCourseGroupID.Text != string.Empty))
                    {
                        insertExercise();
                        showGroupCourseExercises();
                        clear();
                    }
                    else
                    {
                        if (lblExerciseCourseGroupID.Text == string.Empty)
                            lblMessage.Text = "گروه درسي انتخاب نشده است.";
                        else
                            lblMessage.Text = "فايل با نام انتخاب شده، توسط شما يا استاد ديگر قبلاً ارسال شده است. فايل با نام ديگري را انتخاب نماييد. يا" +
                                " خطايي در ارسال عکس يا فايل روي داده است. ";

                        showGroupCourseExercises();
                    }
                }
                catch
                {
                }
            }
        }
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Teacher")
                Response.Redirect("~/PresentationLayer/User/Pages/Teacher/TeacherControlPanelPage.aspx");
        }



        protected void btnSelect_Click(object sender, EventArgs e)
        {
            selectExsistExcersise();
            showPresentCourseGroupByTeacher();
        }
    }
}