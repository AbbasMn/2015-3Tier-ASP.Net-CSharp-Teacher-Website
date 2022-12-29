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
    public partial class SudentSendExerciseSolution : System.Web.UI.Page
    {
        public string ExerciseFileName = string.Empty;
        public string ExerciseFileType = string.Empty;


        protected void insertStudentDelivery()
        {
            PersianDatePickup.PersianDatePickup perdate = new PersianDatePickup.PersianDatePickup();
            perdate.SelectedDateTime = DateTime.Now;

            DataBaseOperations db = new DataBaseOperations();
            DataTable dt = new DataTable();

            if (Session["ExerciseFileName"] == null)
                Session["ExerciseFileName"] = string.Empty;

            ExerciseFileName = Session["ExerciseFileName"].ToString();

            if (lblExerciseID.Text == string.Empty)
            {

                lblMessage.Text = "تمرینی برای ارسال پاسخ انتخاب نشده است";
                try
                {
                    //~/PresentationLayer/User/Pages/Student/ExerciseSolutionFiles/Temp/

                    System.IO.File.Delete(Server.MapPath("ExerciseSolutionFiles\\Temp\\" + ExerciseFileName));
                    ExerciseFileName = string.Empty;
                    Session["ExerciseFileName"] = string.Empty;
                }
                catch (Exception excp)
                {
                }
            }

            else
            {
                if (ExerciseFileName == string.Empty)
                {
                    lblMessage.Text = "فایلی برای ارسال آپلود نشده است";
                }
                else
                {

                    dt = db.selectQueryDataTable("TableStudentDelivery", "studentDeliveryUploadedFileName", "studentDeliveryUploadedFileName='" + ExerciseFileName + "'", null);

                    if (dt.Rows.Count > 0)
                    {
                        lblMessage.Text = "فايل با نام انتخاب شده، توسط شما يا دانشجوي ديگر قبلاً ارسال شده است. فايل با نام ديگري را انتخاب نماييد";
                        System.IO.File.Delete(Server.MapPath("ExerciseSolutionFiles\\Temp\\" + ExerciseFileName));
                    }
                    else
                    {

                        StudentDelivery stdDel = new StudentDelivery();

                        stdDel.studentDeliveryDate = perdate.PersianDateString + " ساعت " + DateTime.Now.ToLongTimeString();
                        stdDel.studentDeliveryUploadedFileName = ExerciseFileName;
                        stdDel.studentDeliveryUploadedFileType = Session["ExerciseFileType"].ToString();
                        stdDel.studentDeliveryCourseGroupID = Convert.ToInt32(lblExerciseCourseGroupID.Text);
                        stdDel.studentDeliveryExserciseID = Convert.ToInt32(lblExerciseID.Text);
                        stdDel.studentDeliveryStudentComments = txtExerciseComments.Text.Trim();
                        stdDel.studentDeliveryStudentID = Convert.ToInt32(Session["StudentID"].ToString());
                        stdDel.studentDeliveryStudentName = Session["StudentName"].ToString();
                        stdDel.studentDeliveryStudentLastName = Session["StudentLastName"].ToString();

                        if (stdDel.insertStudentDelivery() == null)
                        {
                            System.IO.File.Copy(Server.MapPath("ExerciseSolutionFiles\\Temp\\" + ExerciseFileName), Server.MapPath("ExerciseSolutionFiles\\" + ExerciseFileName));

                            System.IO.File.Delete(Server.MapPath("ExerciseSolutionFiles\\Temp\\" + ExerciseFileName));


                            Session["ExerciseFileName"] = string.Empty;

                            showStudentDelivery();

                            lblExerciseID.Text = string.Empty;
                            lblMessage.Text = "حل تمرين ارسال شد";
                        }
                        else
                            lblMessage.Text = "خطا!!!!!!!!!!";
                    }
                }
            }

        }


        protected void deleteStudentDelivery()
        {
            int i;
            int row_selected = 0;
            CheckBox chk = new CheckBox();

            DataBaseOperations dbo = new DataBaseOperations();
            DataBaseOperations dbo1 = new DataBaseOperations();

            DataTable dt = new DataTable();
            try
            {
                for (i = 0; i <= GridView3.Rows.Count - 1; i++)
                {
                    chk = (CheckBox)GridView3.Rows[i].FindControl("Choose");
                    if (chk.Checked)
                    {
                        row_selected += 1;
                        if (!dbo.checkEntityInOtherTables("TableStudentDelivery", "studentDeliveryMark", " studentDeliveryID=" + GridView3.DataKeys[i].Value +
                            " and studentDeliveryMark>0"))
                        {
                            try
                            {

                                dt = dbo1.selectQueryDataTable("TableStudentDelivery", "studentDeliveryUploadedFileName", "studentDeliveryID=" + GridView3.DataKeys[i].Value, null);

                                string file = dt.Rows[0]["studentDeliveryUploadedFileName"].ToString();


                                System.IO.File.Delete(Server.MapPath("ExerciseSolutionFiles\\" + file));


                                SqlException sqlexp = dbo.deleteQuery("TableStudentDelivery", "studentDeliveryID=" + GridView3.DataKeys[i].Value);


                                lblMessage.Text = "حل تمرین ارسالی حذف شد";

                                if (sqlexp != null)
                                {
                                    lblMessage.Text = "خطا!!!!!!!!!!";
                                }

                            }
                            catch (Exception exp)
                            {

                            }
                        }
                    }
                }

            }
            catch
            {
            }

            if (row_selected == 0)
                lblError.Text = "تمرينهايي که استاد به آنها نمره بيشتر از صفر داده است غير قابل حذف هستند.";
            else
                showGroupCourseExercises();


        }








        protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
        {


            string FileExtention;

            ExerciseFileName = Convert.ToString(e.FileName);

            Session["ExerciseFileName"] = Convert.ToString(e.FileName);

            FileExtention = System.IO.Path.GetExtension(Convert.ToString(e.FileName));

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

                Session["ExerciseFileType"] = ExerciseFileType;

                try
                {



                    string fileName = Convert.ToString(e.FileName);



                    string filePath = "~/PresentationLayer/PresentationLayer/User/Pages/Student/ExerciseSolutionFiles/Temp/" + Convert.ToString(e.FileName);
                    AjaxFileUpload1.SaveAs(filePath);
                    e.DeleteTemporaryData();




                }
                catch (Exception excp)
                {
                    lblMessage.Text = excp.Message.ToString();
                }


            }
            else
            {
                lblMessage.Text = "نوع فایل معتبر نیست";

            }


        }









        protected void showStudentDelivery()
        {
            StudentDelivery stdDel = new StudentDelivery();

            GridView3.DataSource = stdDel.showStudentDelivery("*", "studentDeliveryCourseGroupID=" + Session["sentID"].ToString() +
                " and studentDeliveryExserciseID=" + lblExerciseID.Text + " and studentDeliveryStudentID=" +
                Session["StudentID"].ToString(), "order by studentDeliveryID");
            GridView3.DataBind();

            if (GridView3.Rows.Count > 0)
            {
                GridView3.Visible = true;
                btnDelete.Visible = true;
            }
            else
            {
                GridView3.Visible = false;
                btnDelete.Visible = false;
            }

        }




        public void clear()
        {
            txtExerciseComments.Text = string.Empty;

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

            FileUploadFolderPass = Server.MapPath("ExerciseSolutionFiles\\");

            if (FileUpLExerciseFile.HasFile)
            {
                Filename = FileUpLExerciseFile.FileName;



                DataBaseOperations db = new DataBaseOperations();
                DataTable dt = new DataTable();

                dt = db.selectQueryDataTable("TableStudentDelivery", "studentDeliveryUploadedFileName", "studentDeliveryUploadedFileName='" + Filename + "'", null);

                if (dt.Rows.Count > 0)
                {
                    lblMessage.Text = "فايل با نام انتخاب شده، توسط شما يا دانشجوي ديگر قبلاً ارسال شده است. فايل با نام ديگري را انتخاب نماييد";
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


                        FileLenth = FileUpLExerciseFile.PostedFile.ContentLength;
                        FileLenth /= 1024;
                        if (FileLenth >= FileMinimumMbLenght && FileLenth <= FileMaximumMbLenght)
                        {
                            try
                            {



                                FilePass = FileUploadFolderPass + Filename;

                                FileUpLExerciseFile.SaveAs(FilePass);


                                ExerciseFileName = Filename;


                                lblExerciseFileName.Text = Filename;

                                if (System.IO.File.Exists(FileUploadFolderPass + lblExerciseFileName.Text))
                                {
                                    if (lblExerciseFileName.Text != Filename)
                                    {
                                        System.IO.File.Delete(FileUploadFolderPass + lblExerciseFileName.Text);
                                    }
                                }


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

        protected void showGroupCourseExercises()
        {
            TeacherExercise stdDel = new TeacherExercise();
            GridView2.DataSource = stdDel.showTeacherExercise("teacherExerciseFileName,teacherExerciseID,teacherExerciseTitle,teacherExerciseNumber,teacherExerciseDeliveryDeadLine,teacherExerciseMark", "teacherExerciseCourseGroupID=" + Session["sentID"], " order by teacherExerciseNumber,teacherExerciseID");
            GridView2.DataBind();

            if (GridView2.Rows.Count > 0)
            {
                GridView2.Visible = true;

                lblExerciseCourseName.Text = string.Empty;
                lblExercise.Text = string.Empty;
            }
            else
            {
                GridView2.Visible = false;

                lblExerciseCourseName.Text = string.Empty;
                lblExercise.Text = string.Empty;
            }

        }

        protected void showTakeCourses()
        {
            string TermNumber = drliTermNumber.Text;


            DataBaseOperations dbo = new DataBaseOperations();

            GridView1.DataSource = dbo.selectQueryDataTable("TableCourseGroup,TableCourse,TableTakeCourse",
                "TakeCourseCourseGroupRowID as CourseGroupRowID,TakeCourseUniversityNameCourseNameYearTermGroupNumber,TakeCourseCourseName,TableCourseGroup.CourseGroupTeacherName,TableCourseGroup.CourseGroupTeacherLastName," +
                "TableCourseGroup.CourseGroupNumber," +
                "TableCourse.CourseEducationLevel,TableCourse.CourseName,TableCourse.CourseType," +
                "TableCourse.CourseFacultyName,TableCourse.CourseEducationBranchName,TableCourse.CourseEducationBranchName",

                "  (TakeCourseUserStudentID=" + Session["StudentID"].ToString() + ") and TakeCourseUniversityNameCourseNameYearTermGroupNumber='" +
                drliTermNumber.Text + "'" +
                " and (TableCourseGroup.CourseGroupRowID=TableTakeCourse.TakeCourseCourseGroupRowID)" +
                " and (TableCourseGroup.CourseGroupCourseName=TableCourse.CourseName)",
                "order by TakeCourseCourseName");

            GridView1.DataBind();
            if (GridView1.Rows.Count > 0)
            {
                GridView1.Visible = true;
            }
            else
            {
                GridView1.Visible = false;
            }
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
            if (Session["UserType"] == "Student")
            {
            }

            else
                Response.Redirect("~/PresentationLayer/Main.aspx");


            AjaxFileUpload1.MaximumNumberOfFiles = 1;

            if (!IsPostBack)
            {
                showTermNumbers();
                btnDelete.Visible = false;
                lblMessage.Text = string.Empty;
            }

            showTakeCourses();


            //if (Session["UserType"] == null)
            //{
            //    lbtnLogIn.Visible = true;
            //    lbl1.Visible = true;

            //    lbtLogOut.Visible = false;
            //    lbl2.Visible = false;
            //    btnControlPanel.Visible = false;
            //}
            //else
            //{
            //    lbtnLogIn.Visible = false;
            //    lbl1.Visible = false;

            //    lbtLogOut.Visible = true;
            //    lbl2.Visible = true;
            //    btnControlPanel.Visible = true;
            //}







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


        protected void lbtnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Login.aspx");
        }

        protected void btnControlPanel_Click(object sender, EventArgs e)
        {

            if (Session["UserType"].ToString() == "Student")
                Response.Redirect("~/PresentationLayer/User/Pages/Student/StudentControlPanelPage.aspx");
        }




        protected void drliUniversity_TextChanged(object sender, EventArgs e)
        {
            showTakeCourses();
        }
        protected void drliTermNumber_TextChanged(object sender, EventArgs e)
        {
            showTakeCourses();
            lblExerciseCourseGroupID.Text = string.Empty;
            lblExerciseCourseName.Text = string.Empty;
            lblExerciseCourseName0.Text = string.Empty;
            lblExercise.Text = string.Empty;
            lblExerciseID.Text = string.Empty;
            GridView2.Visible = false;
            GridView3.Visible = false;
            btnDelete.Visible = false;
            lblMessage.Text = string.Empty;
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goToShowExercise")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Session["sentID"] = GridView1.DataKeys[index].Value;

                lblExerciseCourseGroupID.Text = GridView1.DataKeys[index].Value.ToString();

                lblExerciseCourseName.Text = GridView1.Rows[index].Cells[0].Text.ToString();
                lblExerciseCourseName0.Text = lblExerciseCourseName.Text;

                showGroupCourseExercises();

                lblExerciseID.Text = string.Empty;
                GridView3.Visible = false;
                btnDelete.Visible = false;
                lblMessage.Text = string.Empty;
            }
        }




        //protected void btnSave_Click(object sender, EventArgs e)
        //{

        ////        bool check = true;

        ////        try
        ////        {
        ////            //if (FileUpLExerciseFile.HasFile)
        ////            //{
        ////                if (!uploadFile())
        ////                    check = false;
        ////            //}
        ////            //else
        ////            //{

        ////            //}



        ////            if ((check) && (lblExerciseID.Text != string.Empty))
        ////            {
        ////                if (lblExerciseFileName.Text== string.Empty)
        ////                    lblMessage.Text = "فايل حل تمرين،انتخاب نشده است.";
        ////                else
        ////                {
        ////                    insertStudentDelivery();
        ////                    showStudentDelivery();
        ////                    clear();
        ////                }
        ////            }
        ////            else
        ////            {
        ////                if (lblExerciseID.Text== string.Empty)
        ////                    lblMessage.Text = "تمريني براي ارسال حل تمرين،انتخاب نشده است.";
        ////                else
        ////                    lblMessage.Text = "فايل با نام انتخاب شده، توسط شما يا دانشجوي ديگري قبلاً ارسال شده است. فايل با نام ديگري را انتخاب نماييد. يا" +
        ////                        " خطايي در ارسال عکس يا فايل روي داده است. ";
        ////            }
        ////        }
        ////        catch
        ////        {
        ////        }

        //}


        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "goForSendResponse")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                lblExerciseID.Text = GridView2.DataKeys[index].Value.ToString();

                showStudentDelivery();

                lblExercise.Text = " تمرين شماره " + GridView2.Rows[index].Cells[0].Text.ToString() + " :" + GridView2.Rows[index].Cells[1].Text.ToString();
                lblMessage.Text = string.Empty;
            }


            if (e.CommandName == "goFotShowExerciseSoulution")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                lblExerciseID.Text = GridView2.DataKeys[index].Value.ToString();

                lblMessage.Text = string.Empty;

                showStudentDelivery();
            }
        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            deleteStudentDelivery();
            showStudentDelivery();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            insertStudentDelivery();
        }

    }
}