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
    public partial class EnterpriseRequestRegistration : System.Web.UI.Page
    {
        private void sessioninitiatePhase1()
        {

            if (Session["UserType"] == null)
            {
                Session["ManagerName"] = txtEnterpriseName.Text.Trim().ToString();
                Session["ManagerLastName"] = txtEnterpriseName.Text.Trim().ToString();
            }
            else
            {
                if (Session["UserType"].ToString() == "Student")
                {
                    Session["ManagerName"] = Session["StudentName"].ToString();
                    Session["ManagerLastName"] = Session["StudentLastname"].ToString();
                }
                else
                    if (Session["UserType"].ToString() == "Teacher")
                    {
                        Session["ManagerName"] = Session["TeacherName"].ToString();
                        Session["ManagerLastName"] = Session["TeacherLastName"].ToString();
                    }
            }

            Session["EnterpriseName"] = txtEnterpriseName.Text.Trim().ToString();
            Session["EnterpriseCountry"] = drliEnterpriseCountry.Text.Trim().ToString();
            Session["EnterpriseState"] = drliEnterpriseState.Text.Trim().ToString();
            Session["EnterpriseCity"] = txtEnterpriseCity.Text.Trim().ToString();
            Session["EnterpriseEmail"] = txtEnterpriseEmail.Text.Trim().ToString();
            Session["EnterpriseWebsite"] = txtEnterpriseWebSite.Text.Trim().ToString();
            Session["EnterprisePhone"] = txtEnterprisePhone.Text.Trim().ToString();
            Session["EnterpriseCellPhone"] = txtEnterpriseCellPhone.Text.Trim().ToString();
            Session["EnterpriseAddress"] = txtEnterpriseAddress.Text.Trim().ToString();

            if (RadioWebsite.Checked)
                Session["EnterpriseSoftwareType"] = "وب سایت";
            else
                Session["EnterpriseSoftwareType"] = "برنامه کاربردی";

            Session["EnterpriseTime"] = drliEnterpriseTime.Text.Trim().ToString();

            Session["EnterprisePhase"] = "second";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            sessioninitiatePhase1();
            Response.Redirect("EnterpriseRequestRegistrationPhase2.aspx");
        }

        protected void showStudentsNews()
        {
            News myNews1 = new News();


            //GridViewStudentNews.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", " newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            DataList1.DataSource = myNews1.showNews("newsTitle,newsDate,newsID", "newsArchieve= 'false' and newsShowingPermision ='true' and newsShoingwToWhatMemberType='دانشجويان'", "order by newsDate,newsTitle");

            //GridViewStudentNews.DataBind();

            DataList1.DataBind();


        }

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {

                showStudentsNews();
                if (Session["EnterprisePhase"] == "second")
                {
                    txtEnterpriseName.Text = Session["EnterpriseName"].ToString();
                    drliEnterpriseCountry.Text = Session["EnterpriseCountry"].ToString();
                    drliEnterpriseState.Text = Session["EnterpriseState"].ToString();
                    txtEnterpriseCity.Text = Session["EnterpriseCity"].ToString();
                    txtEnterpriseEmail.Text = Session["EnterpriseEmail"].ToString();
                    txtEnterpriseWebSite.Text = Session["EnterpriseWebsite"].ToString();
                    txtEnterprisePhone.Text = Session["EnterprisePhone"].ToString();
                    txtEnterpriseCellPhone.Text = Session["EnterpriseCellPhone"].ToString();
                    txtEnterpriseAddress.Text = Session["EnterpriseAddress"].ToString();

                    if (Session["EnterpriseSoftwareType"] == "وب سایت")
                    {
                        RadioWebsite.Checked = true;
                        RadioApplication.Checked = false;
                    }
                    else
                    {
                        RadioWebsite.Checked = false;
                        RadioApplication.Checked = true;
                    }

                    drliEnterpriseTime.Text = Session["EnterpriseTime"].ToString();

                    Session["EnterprisePhase"] = "first";
                }

                else
                    RadioWebsite.Checked = true;
            }
        }




        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (Session["UserType"] == "Student")
            //{
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Session["sentID"] = DataList1.DataKeys[index].ToString();
            Response.Redirect("NewsDetailes.aspx");
            //}
        }

    }
}