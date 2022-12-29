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
    public partial class StudentTakeCourseGroup : System.Web.UI.Page
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



        public string TermNumber;
        public string studentDeliveryCourseGroupID = null;


        public void deleteTakeCourse(object sender, EventArgs e)
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataBaseOperations dbo1 = new DataBaseOperations();
            DataBaseOperations dbo2 = new DataBaseOperations();
            DataTable dt = new DataTable();

            LinkButton lnkRemove = (LinkButton)sender;

            string rowID = lnkRemove.CommandArgument.Trim();

            dt = dbo.selectQueryDataTable("TableTakeCourse", "TakeCourseCourseGroupRowID,TakeCourseCourseName,TakeCourseUniversityNameCourseNameYearTermGroupNumber",
                "RowID=" + rowID, null);

            string TakeCourseCourseName = dt.Rows[0]["TakeCourseCourseName"].ToString();
            string TakeCourseUniversityNameCourseNameYearTermGroupNumber = dt.Rows[0]["TakeCourseUniversityNameCourseNameYearTermGroupNumber"].ToString();
            string TakeCourseCourseGroupRowID = dt.Rows[0]["TakeCourseCourseGroupRowID"].ToString();


            if (!dbo1.checkEntityInOtherTables("TableStudentDelivery", "studentDeliveryStudentID", "studentDeliveryStudentID=" + Session["StudentID"].ToString() +
                " and studentDeliveryCourseGroupID=" + TakeCourseCourseGroupRowID))
            {

                if (!dbo2.checkEntityInOtherTables("TableTakeCourse", "TakeCourseUserStudentID", "TakeCourseUserStudentID=" + Session["StudentID"].ToString() +

            " and TakeCourseCourseName='" + TakeCourseCourseName +
            "' and TakeCourseUniversityNameCourseNameYearTermGroupNumber='" + TakeCourseUniversityNameCourseNameYearTermGroupNumber +
            "' and (TakeCourseMidTermMark <> 0 or TakeCourseFinalMark <> 0 or TakeCourseExerciseMark <> 0 or TakeCoursePracticalMark <> 0 or TakeCourseTotalMark <> 0 or TakeCourseUltimateMarkAfterReview <> 0 or TakeCourseUltimateMark <> 0)"))
                {
                    try
                    {
                        SqlException sqlexp = deleteASelectedCourse(TakeCourseCourseName, TakeCourseUniversityNameCourseNameYearTermGroupNumber);

                        if (sqlexp != null)
                        {
                            lblError.Text = sqlexp.Message.ToString();
                        }
                        else
                        {
                            showTakeCourses();
                        }
                    }
                    catch (Exception exp)
                    {

                    }
                }
            }

            showItemOnChart("");
        }


        public void takeCourse(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            LinkButton lnkRemove = (LinkButton)sender;

            string rowID = lnkRemove.CommandArgument.Trim();



            DataBaseOperations dbo = new DataBaseOperations();


            dt = dbo.selectQueryDataTable("TableCourseGroup", "CourseGroupCourseName,CourseGroupRowID,CourseGroupUniversityNameCourseNameYearTermGroupNumber",
                "CourseGroupRowID=" + rowID, null);


            dbo.fieldsOfTable[0] = "TakeCourseCourseGroupRowID";
            dbo.fieldsOfTable[1] = "TakeCourseUserStudentID";
            dbo.fieldsOfTable[2] = "TakeCourseUniversityNameCourseNameYearTermGroupNumber";
            dbo.fieldsOfTable[3] = "TakeCourseCourseName";

            dbo.valuesOfField[0] = dt.Rows[0]["CourseGroupRowID"].ToString();
            dbo.valuesOfField[1] = Session["StudentID"].ToString();
            dbo.valuesOfField[2] = dt.Rows[0]["CourseGroupUniversityNameCourseNameYearTermGroupNumber"].ToString();
            dbo.valuesOfField[3] = dt.Rows[0]["CourseGroupCourseName"].ToString();


            dbo.insertQuery("TableTakeCourse", dbo.fieldsOfTable, dbo.valuesOfField);

            showTakeCourses();
            showItemOnChart("");
        }


        protected void showAll()
        {

            showPresentCoursesByStudentUiversityBranchTermNumber();
            showItemOnChart("");
            showTakeCourses();
        }


        protected void showItemOnChart(string item)
        {

            string StudentUniversity = Session["StudentUniversityName"].ToString();
            string StudentBranch = Session["StudentBranchName"].ToString();
            string StudentEducationLevel = Session["StudentEducationLevel"].ToString();

            DataBaseOperations dbo = new DataBaseOperations();

            DataTable dt1 = dbo.selectQueryDataTable("TableTakeCourse,TableCourse,TableCourseGroup", "TakeCourseCourseName, count(TakeCourseUserStudentID)",

            "(CourseGroupUniversityName='" + StudentUniversity + "')" +

             " and(TableCourseGroup.CourseGroupRowID=TableTakeCourse.TakeCourseCourseGroupRowID)" +


            " and(TableCourseGroup.CourseGroupCourseName=TableCourse.CourseName)" +

            " and(TableCourse.CourseEducationBranchName='" + StudentBranch + "')" +

            " and(TableCourse.CourseEducationLevel='" + StudentEducationLevel + "')" +

            " and (TableCourseGroup.CourseGroupUniversityNameCourseNameYearTermGroupNumber='" + drliTermNumber.Text + "')",

             "group by TakeCourseCourseName");



            string[] x = new string[dt1.Rows.Count];
            decimal[] y = new decimal[dt1.Rows.Count];

            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                x[i] = dt1.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt1.Rows[i][1]);
            }



            if (dt1.Rows.Count == 0)
            {
                PieChart1.Visible = false;
                BarChart1.Visible = false;
            }
            else

                if (dt1.Rows.Count != 1)
                {


                    string[] color = { "yellow", "black", "red", "blue", "green", "orange", "pink", "gray" };

                    for (int i = 0; i < dt1.Rows.Count; i++)
                    {

                        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue
                        {
                            Category = dt1.Rows[i][0].ToString(),
                            Data = Convert.ToInt32(dt1.Rows[i][1])
                        });

                        PieChart1.PieChartValues[i].PieChartValueColor = color[i];

                    }

                    PieChart1.Visible = true;
                    BarChart1.Visible = false;

                }


                else
                {
                    BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = y });
                    BarChart1.CategoriesAxis = string.Join(",", x);

                    BarChart1.Series[0].BarColor = "orange";

                    PieChart1.Visible = false;
                    BarChart1.Visible = true;
                }

        }





        protected void takeCourseGoroup()
        {
            int i;
            CheckBox chk = new CheckBox();

            int row_selected = 0;

            try
            {
                for (i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    if (GridView1.Rows.Count > 0)
                        chk = (CheckBox)GridView1.Rows[i].FindControl("Choose0");

                    if (chk.Checked)
                    {
                        row_selected += 1;
                        try
                        {
                            SqlException sqlexp = takeACourse(GridView1.DataKeys[i].Value.ToString(), GridView1.Rows[i].Cells[1].Text, drliTermNumber.Text.Trim());
                            if (sqlexp != null)
                            {
                                if (sqlexp.Message.Contains("PRIMARY KEY"))
                                    lblError.Text = "گروه درسي انتخاب شده قبلاً وارد شده است.";
                                else
                                    lblError.Text = sqlexp.Message.ToString();
                            }
                        }
                        catch (Exception exp)
                        {

                        }
                    }
                }

            }
            catch (Exception Exp)
            {
            }

            if (row_selected == 0)
                lblError.Text = "حداقل يک گروه درسي را انتخاب کنید";
            else
                lblError.Text = String.Empty;
        }

        protected void showTermNumbers()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            drliTermNumber.DataSource = dbo.selectQueryDataTable("TableSemisterNumber", "SemisterNumber", "SemisterNumberActive='True'", " order by SemisterNumber");
            drliTermNumber.DataBind();
        }

        protected SqlException deleteASelectedCourse(string CourseName, string YearTerm)
        {
            DataBaseOperations dbo = new DataBaseOperations();

            return dbo.deleteQuery("TableTakeCourse", " TakeCourseUserStudentID=" + Session["StudentID"].ToString() +
                                                      " and TakeCourseCourseName='" + CourseName + "'" +
                                                      " and TakeCourseUniversityNameCourseNameYearTermGroupNumber='" + YearTerm + "'");
        }

        protected void deleteSelectedCourses()
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
                        if (!dbo.checkEntityInOtherTables("TableTakeCourse", "TakeCourseUserStudentID", "TakeCourseUserStudentID=" + Session["StudentID"].ToString() +

                            "and TakeCourseCourseName='" + GridView2.Rows[i].Cells[1].Text +
                            "' and TakeCourseUniversityNameCourseNameYearTermGroupNumber='" + GridView2.Rows[i].Cells[2].Text +
                            "' and (TakeCourseMidTermMark <> 0 or TakeCourseFinalMark <> 0 or TakeCourseExerciseMark <> 0 or TakeCoursePracticalMark <>0 or TakeCourseTotalMark <> 0 or TakeCourseUltimateMarkAfterReview <> 0 or TakeCourseUltimateMark <> 0)"))
                        {
                            try
                            {
                                SqlException sqlexp = deleteASelectedCourse(GridView2.Rows[i].Cells[1].Text, GridView2.Rows[i].Cells[2].Text);
                                if (sqlexp != null)
                                {
                                    lblMessage.Text = sqlexp.Message.ToString();
                                }


                            }
                            catch (Exception Exp)
                            {

                            }
                        }
                    }
                }

            }
            catch (Exception Exp)
            {
            }

            if (row_selected == 0)
                lblError.Text = "حداقل يک گروه درسي را براي حذف انتخاب کنید";
            else
                lblError.Text = String.Empty;

        }

        protected void showTakeCourses()
        {
            string TermNumber = drliTermNumber.Text;


            DataBaseOperations dbo = new DataBaseOperations();

            GridView2.DataSource = dbo.selectQueryDataTable("TableCourseGroup,TableCourse,TableTakeCourse",
                "RowID,TakeCourseUniversityNameCourseNameYearTermGroupNumber,TakeCourseCourseName,TableCourseGroup.CourseGroupTeacherName,TableCourseGroup.CourseGroupTeacherLastName," +
                "TableCourseGroup.CourseGroupNumber," +
                "TableCourse.CourseEducationLevel,TableCourse.CourseName,TableCourse.CourseType," +
                "TableCourse.CourseFacultyName,TableCourse.CourseEducationBranchName,TableCourse.CourseEducationBranchName",

                "  (TakeCourseUserStudentID=" + Session["StudentID"].ToString() + ") and TakeCourseUniversityNameCourseNameYearTermGroupNumber='" +
                drliTermNumber.Text + "'" +
                " and (TableCourseGroup.CourseGroupRowID=TableTakeCourse.TakeCourseCourseGroupRowID)" +
                " and (TableCourseGroup.CourseGroupCourseName=TableCourse.CourseName)",
                "order by TakeCourseCourseName");

            GridView2.DataBind();

        }

        protected SqlException takeACourse(string CourseGroupID, string CourseName, string UniversityNameCourseNameYearTermGroupNumber)
        {
            DataBaseOperations dbo = new DataBaseOperations();
            dbo.fieldsOfTable[0] = "TakeCourseCourseGroupRowID";
            dbo.fieldsOfTable[1] = "TakeCourseUserStudentID";
            dbo.fieldsOfTable[2] = "TakeCourseUniversityNameCourseNameYearTermGroupNumber";
            dbo.fieldsOfTable[3] = "TakeCourseCourseName";

            dbo.valuesOfField[0] = CourseGroupID;
            dbo.valuesOfField[1] = Session["StudentID"].ToString();
            dbo.valuesOfField[2] = UniversityNameCourseNameYearTermGroupNumber;
            dbo.valuesOfField[3] = CourseName;


            return dbo.insertQuery("TableTakeCourse", dbo.fieldsOfTable, dbo.valuesOfField);
        }

        protected void showPresentCoursesByStudentUiversityBranchTermNumber()
        {
            string StudentUniversity = Session["StudentUniversityName"].ToString();
            string UserStudentID = Session["StudentID"].ToString();
            string StudentBranch = Session["StudentBranchName"].ToString();
            string StudentEducationLevel = Session["StudentEducationLevel"].ToString();

            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

            dt = dbo.selectQueryDataTable("TableCourseGroup,TableCourse",

            "TableCourse.CourseType as CourseType,CourseGroupUniversityNameCourseNameYearTermGroupNumber as YearTerm," +
            "CourseGroupEducationLevel as EducationLevel,CourseGroupCourseName as CourseName,CourseGroupRowID as RowID," +
            "CourseGroupTeacherName as TeacherName,CourseGroupTeacherLastName as TeacherLastName," +
            "CourseGroupClassTotalCapicity as ClassTotalCapicity,CourseGroupClassFullCapicity as ClassFullCapicity,CourseGroupNumber as GroupNumber," +
            "CourseGroupClassEmptyCapicity as ClassEmptyCapicity," +
            "CourseFacultyName as FacultyName,CourseEducationBranchName as EducationBranchName,CourseEducationLevel as EducationLevel," +


            "TableCourse.CourseSemisterNumber as SemisterNumber,TableCourse.CourseTheoryUnit as CourseTheoryUnit," +
            "TableCourse.CoursePracticalUnit as CoursePracticalUnit",


            " (CourseGroupUniversityName='" + StudentUniversity + "')" +

            " and(TableCourseGroup.CourseGroupCourseName=TableCourse.CourseName)" +

            " and(TableCourse.CourseEducationBranchName='" + StudentBranch + "')" +
            " and(TableCourse.CourseEducationLevel='" + StudentEducationLevel + "')" +
            " and (TableCourseGroup.CourseGroupUniversityNameCourseNameYearTermGroupNumber='" + drliTermNumber.Text + "')",
            " order by CourseGroupCourseName");

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == "Student")
            {
            }
            else
                Response.Redirect("~/PresentationLayer/Main.aspx");

            try
            {

                if (!IsPostBack)
                {
                    showStudentsNews();
                    showTermNumbers();
                    showPresentCoursesByStudentUiversityBranchTermNumber();
                    showItemOnChart("");
                    showTakeCourses();
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
        protected void btnLoginPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentControlPanelPage.aspx");
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

        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string GetDynamicContent(string contextKey)
        {
            return default(string);
        }


        protected void drliTermNumber_TextChanged(object sender, EventArgs e)
        {
            showAll();
        }
    }
}