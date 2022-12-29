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
using RoyalMailSenderClass;

using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace PresentationLayer.Admin.AdminContentPages
{
    public partial class AdminSetStudentPermission2 : System.Web.UI.Page
    {
        private void sendEmail5()
        {
            MailMessage mail = new MailMessage();
            try
            {

                mail.To.Add(lblUserStudentEmail.Text);
                mail.From = new MailAddress("info@montaseri.ir","وب سایت مهندس سید عباس منتصری ",System.Text.Encoding.UTF8);
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Subject = "مشخصات شما در سایت";
                //mail.Body=
                string mailBody = @"<table dir=""rtl"" align=""center"" style=""font-family:Tahoma; font-size:12px; width:80%; font-weight:bold;"">" +
                "<tr>" +
                @"<td align=""right"" width=""50%"">" + "نام : " + "</td>" +
                @"<td align=""left"" width=""50%"">" + lblUserStudentName.Text + "</td>" +
                "</tr>" +

                "<tr>" +
                @"<td align=""right"" width=""50%"">" + " نام خانوادگی : " + "</td>" +
                @"<td align=""left"" width=""50%"">" + lblStudentLastName.Text + "</td>" +
                "</tr>" +

                "<tr>" +
                @"<td align=""right"" width=""50%"">" + " دانشگاه : " + "</td>" +
                @"<td align=""left"" width=""50%"">" + lblStudentUniversity.Text + "</td>" +
                "</tr>" +

                "<tr>" +
                @"<td align=""right"" width=""50%"">" + " رشته تحصیلی : " + "</td>" +
                @"<td align=""left"" width=""50%"">" + lblStudentBranch.Text + "</td>" +
                "</tr>" +

                "<tr>" +
                @"<td align=""right"" width=""50%"">" + " مقطع : " + "</td>" +
                @"<td align=""left"" width=""50%"">" + lblStudentLevel.Text + "</td>" +
                "</tr>" +

                "<tr>" +
                @"<td align=""right"" width=""50%"">" + " شماره دانشجویی : " + "</td>" +
                @"<td align=""left"" width=""50%"">" + lblUserStudentID.Text + "</td>" +
                "</tr>" +

                "<tr>" +
                @"<td align=""right"" width=""50%"">" + " نام کاربری : " + "</td>" +
                @"<td align=""left"" width=""50%"">" + lblUserStudentUserName.Text + "</td>" +
                "</tr>" +

                "<tr>" +
                @"<td align=""right"" width=""50%"">" + " کلمه عبور : " + "</td>" +
                @"<td align=""left"" width=""50%"">" + lblUserStudentPassword.Text + "</td>" +
                "</tr>";


                
                
                string path = Server.MapPath("..\\..\\images\\Icons\\adminmessage.png");

                LinkedResource Img = new LinkedResource(path, MediaTypeNames.Image.Jpeg);

                Img.ContentId = "MyImage";
                mailBody = mailBody + @" 
                  <tr> 
                    <td colspan=""2"" width=""100%"" align=""center""> 
                      <img src=cid:MyImage  id='img' alt='' width='150px' height='150px'/>  
                    </td> 
                  </tr> 

                  <tr> 
                    <td colspan=""2"" width=""100%"" align=""left"" style=""font-family:Arial; font-size:14px;  font-weight:bold;""> 
                      Gmail: s.abas.montaseri@gmail.com
                      <br/>                      
                      Web: montaseri.ir  
                    </td> 
                  </tr></table>"; 

                 

                AlternateView AV =
                AlternateView.CreateAlternateViewFromString(mailBody, null, MediaTypeNames.Text.Html);
                AV.LinkedResources.Add(Img);

                mail.IsBodyHtml = true;

                mail.AlternateViews.Add(AV);





                //if (uploader.HasFile)
                //{
                //string filename = uploader.PostedFile.FileName;
                //uploader.SaveAs(filepath);

                //string filepath = Server.MapPath("..\\..\\images\\Icons\\adminmessage.png");
                //Attachment attach = new Attachment(filepath);
                //attach.TransferEncoding = System.Net.Mime.TransferEncoding.Base64;
                //mail.Attachments.Add(attach);

                //}

                SmtpClient client = new SmtpClient();

                //client.Port = 25;//Port for sending the mail
                //client.DeliveryMethod = SmtpDeliveryMethod.Network;
                //client.EnableSsl = false;
                //client.ServicePoint.MaxIdleTime = 0;
                //client.ServicePoint.SetTcpKeepAlive(true, 2000, 2000);


                client.Host = "webmail.montaseri.ir";
                client.Credentials = new System.Net.NetworkCredential("info@montaseri.ir", "abas454933");
                
                client.Send(mail);
                lblError.Text = "ایمیل شما با موفقیت ارسال شد.";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }


        private AlternateView mailBodyAttachedPic(string MailPassageTextBody)
        {
            string path = Server.MapPath("..\\..\\images\\Icons\\adminmessage.png");

            LinkedResource Img = new LinkedResource(path, MediaTypeNames.Image.Jpeg);

            Img.ContentId = "MyImage";
            string str = MailPassageTextBody+@" 
                  <tr> 
                    <td colspan=""2"" width=""100%""> 
                      <img src=cid:MyImage  id='img' alt='' width='150px' height='150px'/>  
                    </td> 
                </tr></table> ";

            AlternateView AV =
            AlternateView.CreateAlternateViewFromString(str, null, MediaTypeNames.Text.Html);
            AV.LinkedResources.Add(Img);
            return AV;
        }




        /// <summary>
        /// ////////////////////////////////////
        /// </summary>


        private void sendEmail4()
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            MailAddress from = new MailAddress("s.abas.montaseri@gmail.com", "seyed abas montaseri");
            MailAddress to = new MailAddress("montaseri.abas@gmail.com", "Your recepient name");
            MailMessage message = new MailMessage(from, to);
            message.Body = "This is a test e-mail message sent using gmail as a relay server ";
            message.Subject = "Gmail test email with SSL and Credentials";
            NetworkCredential myCreds = new NetworkCredential("s.abas.montaseri@gmail.com", "45$49$33$", "");
            client.Credentials = myCreds;
            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception is:" + ex.ToString());
            }
            Console.WriteLine("Goodbye.");
        }


        private void sendEmail3()
        {
            SmtpClient ss = new SmtpClient("smtp.gmail.com", 587);
            ss.Credentials = CredentialCache.DefaultNetworkCredentials;

            ss.EnableSsl = true;
            ss.Timeout = 10000;
            ss.DeliveryMethod = SmtpDeliveryMethod.Network;
            ss.UseDefaultCredentials = false;
            ss.Credentials = new NetworkCredential("s.abas.montaseri@gmail.com", "45$49$33$");

            MailMessage mm = new MailMessage("s.abas.montaseri@gmail.com", "s.abas.montaseri@gmail.com", "subject here", "my body");
            mm.BodyEncoding = System.Text.Encoding.UTF8;
            mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            ss.Send(mm);
        }



       protected void SendMail2(string from, string to, string cc, string bcc, string subject, string body)
{
    MailMessage mailMessage = new MailMessage();
    mailMessage.From = new MailAddress(from, "Seyyed Abbas Montaseri");
    mailMessage.To.Add(to);
    if (cc != null)
        mailMessage.CC.Add(cc);
    if (bcc != null)
        mailMessage.Bcc.Add(bcc);
    mailMessage.Subject = subject;
    mailMessage.IsBodyHtml = true;
    mailMessage.Body = body;
    mailMessage.Priority = MailPriority.Normal;
    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
    NetworkCredential info = new NetworkCredential("s.abas.montaseri@gmail.com", "45$49$33$");
    client.DeliveryMethod = SmtpDeliveryMethod.Network;
    client.Credentials = info;
    client.EnableSsl = true;
    client.Send(mailMessage);        
}


        private void sendEmail1()
        {
            MailSender ms = new MailSender("smtp.montaseri.ir", "info@montaseri.ir", "info@montaseri.ir", "abas454933");

            string body = ms.Send("txtsubject.Text", "s.abas.montaseri@gmail.com", "txtbody.Text", "info@montaseri.ir", "عباس منتصری");
            
        }
        
        protected void updateStudentPermissions()
        {
            DataBaseOperations dbo = new DataBaseOperations();

            dbo.updateQuery("TableUserStudent",

                " UserStudentOnline='" + chbOnline.Checked.ToString() +
                "',UserStudentBlocked='" + chbBlocked.Checked.ToString() +
                "',UserStudentUploadPic='" + chbUploadPic.Checked.ToString() +
                "',UserStudentDeleted='" + chbSendSoftLink.Checked.ToString() +
                "' where UserStudentRowID=" + Session["sentStudentRowID"]);
        }

        protected void showStudentPermissions()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            dt = dbo.selectQueryDataTable("TableUserStudent", "UserStudentOnline,UserStudentBlocked,UserStudentDeleted,UserStudentUploadPic",
                "UserStudentRowID=" + Session["sentStudentRowID"], null);

            chbOnline.Checked = Convert.ToBoolean(dt.Rows[0]["UserStudentOnline"].ToString());
            chbBlocked.Checked = Convert.ToBoolean(dt.Rows[0]["UserStudentBlocked"].ToString());
            chbUploadPic.Checked = Convert.ToBoolean(dt.Rows[0]["UserStudentUploadPic"].ToString());
            chbSendSoftLink.Checked = Convert.ToBoolean(dt.Rows[0]["UserStudentDeleted"].ToString());
        }


        protected void showStudentSpecification()
        {
            DataBaseOperations dbo = new DataBaseOperations();
            DataTable dt = new DataTable();
            dt = dbo.selectQueryDataTable("TableUserStudent", "*",
                "UserStudentRowID=" + Session["sentStudentRowID"], null);

            lblStudentBranch.Text = dt.Rows[0]["UserStudentEducationBranchName"].ToString();
            lblUserStudentEmail.Text = dt.Rows[0]["UserStudentEmail"].ToString();
            lblStudentLastName.Text = dt.Rows[0]["UserStudentLastName"].ToString();
            lblUserStudentID.Text = dt.Rows[0]["UserStudentID"].ToString();
            lblUserStudentName.Text = dt.Rows[0]["UserStudentName"].ToString();


            lblUserStudentWebSite.Text = dt.Rows[0]["UserStudentWebSite"].ToString();
            lblStudentLevel.Text = dt.Rows[0]["UserStudentEducationLevel"].ToString();

            if ((dt.Rows[0]["UserStudentPicture"].ToString() == string.Empty) || (dt.Rows[0]["UserStudentPicture"].ToString() == null))
            {
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/profilepic.jpg";
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/profilepic.jpg";
            }
            else
            {
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/" + dt.Rows[0]["UserStudentPicture"].ToString();
                imgStudentImage.ImageUrl = "~/PresentationLayer/User/Pages/Student/StudentPictures/" + dt.Rows[0]["UserStudentPicture"].ToString();
            }



            lblUserStudentUserName.Text = dt.Rows[0]["UserStudentUserName"].ToString();
            lblUserStudentPassword.Text = dt.Rows[0]["UserStudentPassword"].ToString();

            lblStudentUniversity.Text = dt.Rows[0]["UserStudentUnivesityName"].ToString();


        }



        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserType"] == "Admin")
            {
                if (!IsPostBack)
                {
                    showStudentSpecification();
                    showStudentPermissions();
                }
            }

            else
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
        protected void lbtnMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Main.aspx");
        }
        protected void btnControlPanel_Click(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "Admin")
                Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminControlPanelPage.aspx");
        }
        protected void lbtnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Login.aspx");
        }
        protected void btnStudentRegistration_Click(object sender, EventArgs e)
        {

        }
        protected void lbtnLogMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Main.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PresentationLayer/Admin/AdminContentPages/AdminSetStudentPermission.aspx");
        }
        protected void btnSave0_Click(object sender, EventArgs e)
        {
            updateStudentPermissions();
            showStudentPermissions();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sendEmail5();
        }
    }
}