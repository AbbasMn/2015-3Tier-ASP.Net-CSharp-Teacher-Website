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
    public partial class EnterpriseRequestRegistrationPhase4 : System.Web.UI.Page
    {
        private void insertEnterpriseRequest()
        {
            EnterpriseSoftwareDesignRequest entp = new EnterpriseSoftwareDesignRequest();
            entp.EnterpriseName = Session["EnterpriseName"].ToString();
            entp.EnterpriseCountry = Session["EnterpriseCountry"].ToString();
            entp.EnterpriseState = Session["EnterpriseState"].ToString();
            entp.EnterpriseCity = Session["EnterpriseCity"].ToString();
            entp.EnterpriseEmail = Session["EnterpriseEmail"].ToString();
            entp.EnterpriseWebsite = Session["EnterpriseWebsite"].ToString();
            entp.EnterprisePhone = Session["EnterprisePhone"].ToString();
            entp.EnterpriseCellPhone = Session["EnterpriseCellPhone"].ToString();
            entp.EnterpriseAddress = Session["EnterpriseAddress"].ToString();
            entp.EnterpriseSoftwareType = Session["EnterpriseSoftwareType"].ToString();
            entp.EnterpriseTime = Session["EnterpriseTime"].ToString();
            entp.EnterpriseWebsiteType = Session["EnterpriseWebsiteType"].ToString();
            entp.EnterpriseWebsiteDomainType = Session["EnterpriseWebsiteDomainType"].ToString();
            entp.EnterpriseWebsiteHostValue = Session["EnterpriseWebsiteHostValue"].ToString();
            entp.EnterpriseWebsitePlan = Session["EnterpriseWebsitePlan"].ToString();
            entp.EnterpriseWebsiteDomain1 = Session["EnterpriseWebsiteDomain1"].ToString();
            entp.EnterpriseWebsiteDomain2 = Session["EnterpriseWebsiteDomain2"].ToString();
            entp.EnterpriseWebsiteDomain3 = Session["EnterpriseWebsiteDomain3"].ToString();

            if (Session["2Languages"] != null)
                entp.Enterprise2Languages = Session["2Languages"].ToString();
            else
                entp.Enterprise2Languages = "";

            if (Session["Branch"] != null)
                entp.EnterpriseBranch = Session["Branch"].ToString();
            else
                entp.EnterpriseBranch = "";

            if (Session["Introduction"] != null)
                entp.EnterpriseIntroduction = Session["Introduction"].ToString();
            else
                entp.EnterpriseIntroduction = "";

            if (Session["News"] != null)
                entp.EnterpriseNews = Session["News"].ToString();
            else
                entp.EnterpriseNews = "";

            if (Session["OnlineRelationship"] != null)
                entp.EnterpriseOnlineRelationship = Session["OnlineRelationship"].ToString();
            else
                entp.EnterpriseOnlineRelationship = "";

            if (Session["Order"] != null)
                entp.EnterpriseOrder = Session["Order"].ToString();
            else
                entp.EnterpriseOrder = "";

            if (Session["PicGallery"] != null)
                entp.EnterprisePicGallery = Session["PicGallery"].ToString();
            else
                entp.EnterprisePicGallery = "";

            if (Session["Productions"] != null)
                entp.EnterpriseProductions = Session["Productions"].ToString();
            else
                entp.EnterpriseProductions = "";

            if (Session["Ranking"] != null)
                entp.EnterpriseRanking = Session["Ranking"].ToString();
            else
                entp.EnterpriseRanking = "";

            if (Session["SendSMS"] != null)
                entp.EnterpriseSendSMS = Session["SendSMS"].ToString();
            else
                entp.EnterpriseSendSMS = "";

            if (Session["Voting"] != null)
                entp.EnterpriseVoting = Session["Voting"].ToString();
            else
                entp.EnterpriseVoting = "";

            if (Session["CheckOnlineSell"] != null)
                entp.EnterpriseCheckOnlineSell = Session["CheckOnlineSell"].ToString();
            else
                entp.EnterpriseCheckOnlineSell = "";

            if (Session["OtherFanctionality"] != null)
                entp.EnterpriseOtherFanctionality = Session["OtherFanctionality"].ToString();
            else
                entp.EnterpriseOtherFanctionality = "";

            entp.EnterpriseManagerName = Session["ManagerName"].ToString();
            entp.EnterpriseManagerLastName = Session["ManagerLastName"].ToString();

            PersianDatePickup.PersianDatePickup date = new PersianDatePickup.PersianDatePickup();

            date.SelectedDateTime = DateTime.Now;

            entp.EnterpriseDate = date.PersianDateString.ToString();

            entp.insertEnterpriseSoftwareDesignRequest();
        }


        private void showContract()
        {
            lblEnterpriseName.Text = Session["EnterpriseName"].ToString();
            lblEnterpriseName1.Text = Session["EnterpriseName"].ToString();
            lblEnterpriseCountry.Text = Session["EnterpriseCountry"].ToString();
            lblEnterpriseState.Text = Session["EnterpriseState"].ToString();
            lblEnterpriseCity.Text = Session["EnterpriseCity"].ToString();
            lblEnterpriseEmail.Text = Session["EnterpriseEmail"].ToString();
            lblEnterpriseWebSite.Text = Session["EnterpriseWebsite"].ToString();
            lblEnterprisePhone.Text = Session["EnterprisePhone"].ToString();
            lblEnterpriseCellPhone.Text = Session["EnterpriseCellPhone"].ToString();
            lblEnterpriseAddress.Text = Session["EnterpriseAddress"].ToString();
            lblSoftwareType.Text = Session["EnterpriseSoftwareType"].ToString();
            lblEnterpriseTime.Text = Session["EnterpriseTime"].ToString();


            lblEnterpriseWebsiteType.Text = Session["EnterpriseWebsiteType"].ToString();
            lblEnterpriseWebsiteDomainType.Text = Session["EnterpriseWebsiteDomainType"].ToString();
            lblEnterpriseWebsiteHostValue.Text = Session["EnterpriseWebsiteHostValue"].ToString();
            lblEnterpriseWebsitePlan.Text = Session["EnterpriseWebsitePlan"].ToString();
            lblEnterpriseWebsiteDomainName1.Text = Session["EnterpriseWebsiteDomain1"].ToString();
            lblEnterpriseWebsiteDomainName2.Text = Session["EnterpriseWebsiteDomain2"].ToString();
            lblEnterpriseWebsiteDomainName3.Text = Session["EnterpriseWebsiteDomain3"].ToString();



            if (Session["2Languages"] == null)
            {
                CheckBox2Languages.Checked = false;
                CheckBox2Languages.Enabled = false;
            }
            else
            {
                CheckBox2Languages.Checked = true;
                CheckBox2Languages.Enabled = false;
            }


            if (Session["Branch"] == null)
            {
                CheckBoxBranch.Checked = false;
                CheckBoxBranch.Enabled = false;
            }
            else
            {
                CheckBoxBranch.Checked = true;
                CheckBoxBranch.Enabled = false;
            }


            if (Session["Introduction"] == null)
            {
                CheckBoxIntroduction.Checked = false;
                CheckBoxIntroduction.Enabled = false;
            }
            else
            {
                CheckBoxIntroduction.Checked = true;
                CheckBoxIntroduction.Enabled = false;
            }


            if (Session["News"] == null)
            {
                CheckBoxNews.Checked = false;
                CheckBoxNews.Enabled = false;
            }
            else
            {
                CheckBoxNews.Checked = true;
                CheckBoxNews.Enabled = false;
            }

            if (Session["OnlineRelationship"] == null)
            {
                CheckBoxOnlineRelationship.Checked = false;
                CheckBoxOnlineRelationship.Enabled = false;
            }
            else
            {
                CheckBoxOnlineRelationship.Checked = true;
                CheckBoxOnlineRelationship.Enabled = false;
            }


            if (Session["Order"] == null)
            {
                CheckBoxOrder.Checked = false;
                CheckBoxOrder.Enabled = false;
            }
            else
            {
                CheckBoxOrder.Checked = true;
                CheckBoxOrder.Enabled = false;
            }


            if (Session["PicGallery"] == null)
            {
                CheckBoxPicGallery.Checked = false;
                CheckBoxPicGallery.Enabled = false;
            }
            else
            {
                CheckBoxPicGallery.Checked = true;
                CheckBoxPicGallery.Enabled = false;
            }



            if (Session["Productions"] == null)
            {
                CheckBoxProductions.Checked = false;
                CheckBoxProductions.Enabled = false;
            }
            else
            {
                CheckBoxProductions.Checked = true;
                CheckBoxProductions.Enabled = false;
            }


            if (Session["Ranking"] == null)
            {
                CheckBoxRanking.Checked = false;
                CheckBoxRanking.Enabled = false;
            }
            else
            {
                CheckBoxRanking.Checked = true;
                CheckBoxRanking.Enabled = false;
            }


            if (Session["SendSMS"] == null)
            {
                CheckBoxSendSMS.Checked = false;
                CheckBoxSendSMS.Enabled = false;
            }
            else
            {
                CheckBoxSendSMS.Checked = true;
                CheckBoxSendSMS.Enabled = false;
            }


            if (Session["Voting"] == null)
            {
                CheckBoxVoting.Checked = false;
                CheckBoxVoting.Enabled = false;
            }
            else
            {
                CheckBoxVoting.Checked = true;
                CheckBoxVoting.Enabled = false;
            }

            if (Session["CheckOnlineSell"] == null)
            {
                CheckOnlineSell.Checked = false;
                CheckOnlineSell.Enabled = false;
            }
            else
            {
                CheckOnlineSell.Checked = true;
                CheckOnlineSell.Enabled = false;
            }


            if (Session["OtherFanctionality"] == null)
            {
                txtOtherFanctionality.Text = string.Empty;
                txtOtherFanctionality.Enabled = false;
            }
            else
            {
                txtOtherFanctionality.Text = Session["OtherFanctionality"].ToString();
                txtOtherFanctionality.Enabled = false;
            }

        }



        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EnterprisePhase"] == null)
                Response.Redirect("EnterpriseRequestRegistration.aspx");

            if (Session["EnterprisePhase"] == "first")
                Response.Redirect("EnterpriseRequestRegistration.aspx");

            if (Session["EnterprisePhase"] == "second")
                Response.Redirect("EnterpriseRequestRegistration.aspx");

            if (Session["EnterprisePhase"] == "third")
                Response.Redirect("EnterpriseRequestRegistration.aspx");


            if (!IsPostBack)
            {
                showContract();

            }
        }

        protected void btnLastPhase_Click(object sender, EventArgs e)
        {
            Response.Redirect("EnterpriseRequestRegistrationPhase3.aspx");
        }
        protected void btnNextPhase_Click(object sender, EventArgs e)
        {
            try
            {

                insertEnterpriseRequest();
                lblMessage.Text = "عملیات :: ثبت سفارش طراحی وب سایت :: با موفقیت انجام شد";

                Session["EnterprisePhase"] = "first";

                //Session["UserOperation"] = "عملیات :: ثبت سفارش طراحی وب سایت :: با موفقیت انجام شد";

                //if (Session["UserType"] != null)
                //{
                //    Session["OperationPage"] = "EnterpriseRequestRegistration.aspx";
                //}
                //else
                //{
                //    Session["OperationPage"] = "EnterpriseRequestRegistration.aspx";
                //    //"Main.aspx";
                //}

                //Response.Redirect("MessagePage.aspx");

            }
            catch (Exception exp)
            {
                lblMessage.Text = exp.Message;
            }
        }
   

    }
}