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
    public partial class RegisterPresentedTechnicalEducation : System.Web.UI.Page
    {
        public bool checkCodeMeli()
        {
            int i;
            string s = txtCodeMeli.Text;
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
                txtCodeMeli.Text = string.Empty;
                msg = msg + " در کد ملی مجاز نيستند.";
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
        protected SqlException takePresentedTechnicalEducation()
        {

            PersianDatePickup.PersianDatePickup date = new PersianDatePickup.PersianDatePickup();

            date.SelectedDateTime = DateTime.Now;


            DataBaseOperations dbo = new DataBaseOperations();

            dbo.fieldsOfTable[0] = "takePresentedTechStudentFirstName";
            dbo.fieldsOfTable[1] = "takePresentedTechStudentLastName";
            dbo.fieldsOfTable[2] = "takePresentedTechStudentID";
            dbo.fieldsOfTable[3] = "takePresentedTechPresentedTechEducationID";
            dbo.fieldsOfTable[4] = "takePresentedTechRegisterDate";
            dbo.fieldsOfTable[5] = "takePresentedTechFishSrial";
            dbo.fieldsOfTable[6] = "takePresentedTechBankAccount";

            dbo.valuesOfField[0] = txtName.Text.Trim();
            dbo.valuesOfField[1] = txtLastName.Text.Trim();
            dbo.valuesOfField[2] = txtCodeMeli.Text.Trim();

            //dbo.valuesOfField[0] = Session["StudentName"].ToString();
            //dbo.valuesOfField[1] = Session["StudentLastname"].ToString();
            //dbo.valuesOfField[2] = Session["StudentID"].ToString();


            string s = Session["presentedTechEducationID"].ToString();
            dbo.valuesOfField[3] = s;
            dbo.valuesOfField[4] = date.PersianDateString.ToString();
            dbo.valuesOfField[5] = txtShomareFish.Text.Trim();
            dbo.valuesOfField[6] = "شماره حساب ۱۷۰۲۰۰۹۹۶۳ بانک ملت - سید عباس منتصری";


            return dbo.insertQuery("TableTakePresentedTechnicalEducation", dbo.fieldsOfTable, dbo.valuesOfField);

        }

        protected void selectedPresentedTechnicalEducation()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();

            dt = dbo.selectQueryDataTable("TablePresentedTechnicalEducation", "*", "presentedTechEducationID=" + Session["presentedTechEducationID"].ToString(), null);

            lblpresentedTechEducationTeacherID.Text = dt.Rows[0]["presentedTechEducationTeacherID"].ToString();
            lblTechEducationCode.Text = dt.Rows[0]["presentedTechEducationCode"].ToString();
            lblTechEducationComments.Text = dt.Rows[0]["presentedTechEducationComments"].ToString();
            lblTechEducationEndDate.Text = dt.Rows[0]["presentedTechEducationEndDate"].ToString();
            lblTechEducationExcersiseDateTime.Text = dt.Rows[0]["presentedTechEducationExerciseDate"].ToString() + "ساعت" + dt.Rows[0]["presentedTechEducationExerciseTime"].ToString();
            lblTechEducationFee.Text = dt.Rows[0]["presentedTechEducationFee"].ToString();
            lblTechEducationFinalDateTime.Text = dt.Rows[0]["presentedTechEducationFinalDate"].ToString() + "ساعت" + dt.Rows[0]["presentedTechEducationFinalTime"].ToString();
            lblTechEducationGroupNumber.Text = dt.Rows[0]["presentedTechEducationGroupNumber"].ToString();
            lblTechEducationMidtermDateTime.Text = dt.Rows[0]["presentedTechEducationMidTermDate"].ToString() + "ساعت" + dt.Rows[0]["presentedTechEducationMidTermTime"].ToString();
            lblTechEducationPracticalDateTime.Text = dt.Rows[0]["presentedTechEducationPracticalDate"].ToString() + "ساعت" + dt.Rows[0]["presentedTechEducationPracticalTime"].ToString();
            lblTechEducationStartDate.Text = dt.Rows[0]["presentedTechEducationStartDate"].ToString();
            lblTechEducationTeacherLastName.Text = dt.Rows[0]["presentedTechEducationTeacherLastName"].ToString();
            lblTechEducationTeacherName.Text = dt.Rows[0]["presentedTechEducationTeacherName"].ToString();
            lblTechEducationTermNumber.Text = dt.Rows[0]["presentedTechEducationTermNumber"].ToString();
            lblTechEducationTitle.Text = dt.Rows[0]["presentedTechEducationTitle"].ToString();
            lbTechEducationLocation.Text = dt.Rows[0]["presentedTechEducationLocation"].ToString();

            dt.Clear();

            dt = dbo.selectQueryDataTable("TableTechnicalEducation", "*", "techEducationTitle='" + Session["techEducationTitle"].ToString() + "' and techEducationCode='" + Session["techEducationCode"].ToString() + "'", null);

            if (dt.Rows.Count > 0)
            {
                lblTechEductionPracticalHours.Text = dt.Rows[0]["techEductionPracticalHours"].ToString();
                lblTechEductionPrerequisits.Text = dt.Rows[0]["techEductionPrerequisits"].ToString();
                lblTechEductionSoftwarePrerequisits.Text = dt.Rows[0]["techEductionSoftwarePrerequisits"].ToString();
                lblTechEductionTechnicalBranch.Text = dt.Rows[0]["techEductionTechnicalBranch"].ToString();
                lblTechEductionTechnicalBranchLevel.Text = dt.Rows[0]["techEductionTechnicalBranchLevel"].ToString();
                lblTechEductionTheoryHours.Text = dt.Rows[0]["techEductionTheoryHours"].ToString();
                lblTechEducationLevel.Text = dt.Rows[0]["techEducationLevel"].ToString();
            }



        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (checkCodeMeli() == true)
            {

                DataBaseOperations dbo = new DataBaseOperations();
                DataTable dt = new DataTable();

                dt = dbo.selectQueryDataTable("TableTakePresentedTechnicalEducation", "*", "takePresentedTechFishSrial='" + txtShomareFish.Text.Trim().ToString() + "'", null);

                if (dt.Rows.Count == 0)
                {
                    SqlException exc = takePresentedTechnicalEducation();

                    if (exc != null)
                    {
                        if (exc.Message.Contains("PRIMARY KEY constraint"))
                        {
                            //Session["UserOperation"] = "قبلا در دوره :: " + lblTechEducationTitle.Text.ToString() + " :: ثبت نام کرده اید";
                            //Session["OperationPage"] = "PresentedTechnicalEducation.aspx";
                            //Response.Redirect("MessagePage.aspx");

                            lblMessage.Text = "قبلا در دوره :: " + lblTechEducationTitle.Text.ToString() + " :: ثبت نام کرده اید";
                        }

                    }
                    else
                    {
                        //Session["UserOperation"] = "ثبت نام در دوره :: " + lblTechEducationTitle.Text.ToString() + " :: با موفقیت انجام شد ";
                        //Session["OperationPage"] = "PresentedTechnicalEducation.aspx";
                        //Response.Redirect("MessagePage.aspx");

                        lblMessage.Text = "ثبت نام در دوره :: " + lblTechEducationTitle.Text.ToString() + " :: با موفقیت انجام شد ";

                        txtShomareFish.Text = string.Empty;
                        txtCodeMeli.Text = string.Empty;
                        txtLastName.Text = string.Empty;
                        txtName.Text = string.Empty;
                    }
                }
                else
                {
                    //Session["UserOperation"] = "شماره فیش :: " + txtShomareFish.Text.Trim().ToString() + " :: قبلا ثبت شده است";
                    //Session["OperationPage"] = "RegisterPresentedTechnicalEducation.aspx";
                    //Response.Redirect("MessagePage.aspx");

                    lblMessage.Text = "شماره فیش :: " + txtShomareFish.Text.Trim().ToString() + " :: قبلا ثبت شده است";
                }
            }


        }


        protected void Page_Load(object sender, EventArgs e)
        {
            selectedPresentedTechnicalEducation();




            if (!IsPostBack)
            {
                lblMessage.Text = string.Empty;
                lblError.Text = string.Empty;
                txtShomareFish.Text = string.Empty;
                txtCodeMeli.Text = string.Empty;
                txtLastName.Text = string.Empty;
                txtName.Text = string.Empty;

            }
        }

    }
}