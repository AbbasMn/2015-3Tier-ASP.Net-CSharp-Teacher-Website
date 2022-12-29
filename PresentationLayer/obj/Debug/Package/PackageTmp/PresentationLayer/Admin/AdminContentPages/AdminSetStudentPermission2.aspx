<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminSetStudentPermission2.aspx.cs" Inherits="PresentationLayer.Admin.AdminContentPages.AdminSetStudentPermission2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>

    
<link href="../../CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />    




</head>
<body>
    <form id="form1" runat="server">
<div id="contact"></div>
<div id="contentArea">
  <div class="contentBg">
  
    <div class="main_wrap headPos">
                <div class="head headPos">

                </div>
            </div>
    
    <div class="main_wrap">
    
      <div class="main_wrap_support">
      

   <table align="left" width="100%" style="margin-top: -200px" >
                        <tr>
                            <td align="left">
                                <a class="leftlogo"></a>
                                
                             </td>
                            
                            
                            <td align="center" valign="top">
                               <ul class="rightMenuMy">
                  
                         <li><a href="../../Main.aspx">
                            <img src="../../images/Icons/home.png" alt="" /><span>صفحه اصلي</span></a></li>
                        
                        <li><a href="../../PublicPictureGalleries.aspx">
                        
                            <img src="../../images/Icons/banleftup3.png" alt="" /><span>تصاوير</span></a></li>


                        <li><a href="../../DownloadSoftware.aspx">
                        
                            <img src="../../images/Icons/sitemap.png" alt="" /><span>دانلود نرم افزار</span></a></li>


                        <li><a href="">
                            <img src="../../images/Icons/banleftup4.png" alt="" /><span>ارتباط با ما</span></a></li>
                            
 
                                                                                
                    </ul>  
                            </td>
                            
                            
                            <td align="right">
                                <a class="rightlogo"></a>
                            </td>
                        </tr>
                        
                        
                        
                        <tr>
                            <td align="left" colspan="3">
                            <ul class="leftMenu">
                               <li><a>کارشناس و مشاور نظام مهندسي کامپيوتر </a>

                               </li>

                            </ul>
                            </td>
 
                        </tr>
                    </table>                 
                     
  <table class="breadcrumb  align="right"  style="margin-top: -18px">
                        <tr>
                            <td width="50%" valign="top" align="left">
                       
                                <asp:LinkButton CssClass="LinkButtonMy" ID="lbtLogOut" runat="server" CausesValidation="false"
                    onclick="lbtnLogOut_Click">(LogOut) خروج</asp:LinkButton>

                        <asp:Label ID="lbl2" runat="server" Text="/"></asp:Label><asp:LinkButton CssClass="LinkButtonMy" ID="btnControlPanel" runat="server" CausesValidation="false"
                    onclick="btnControlPanel_Click">(Control Pannel) کنترل پانل</asp:LinkButton>
                            </td>



                            <td width="50%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>    
     
      <div align="center" style="width: 98.5%">
      

                    
          <br />
      

                    
       <table  align="center" dir="rtl" style=" font-size: 9pt; width: 100%">
                                                      <tr>
                                                          <td align="right" ><strong>مشخصات دانشجو</strong></td>
                                                          <td align="right" ><strong></strong></td>
                                                          <td align="right" ><strong></strong>
                                                             <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                                            
                                                                            </td>
                                                          <td align="right" ><strong></strong></td>
                                                          <td align="left" >
                            <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="برگشت" 
                        Width="70px" onclick="btnSave_Click" TabIndex="7" CssClass="Button" CausesValidation="False" />
                                                            </td>
                                                      </tr>

                                                        <tr>
                                                            <td align="right"  rowspan="10" valign="top">
                                            <asp:Image ID="imgStudentImage" runat="server" Height="104px" 
                                                                        style="margin-right: 0px" Width="102px" BorderColor="White" 
                                                                        BorderStyle="Outset" BorderWidth="1px" />
                                             
                                                                <br />
                                                                <br />
                                   
                                               
                                            
                                                            </td>
    
                                                        </tr>

                                                        <tr>
                                                            <td align="right" >
                                                                    نام:&nbsp;</td>
                                                            <td align="right" dir="rtl" >
                                                                    <asp:Label ID="lblUserStudentName" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    &nbsp;نام خانوادگي:&nbsp;</td>
                                                            <td align="right" dir="rtl">
                                                                    <asp:Label ID="lblStudentLastName" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" >
                                                                    رشته تحصيلي:&nbsp;</td>
                                                            <td align="right"  dir="rtl">
                                                                    <asp:Label ID="lblStudentBranch" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    شماره دانشجويي:&nbsp;
                                                                            </td>
                                                            <td align="right"  dir="rtl">
                                                                    <asp:Label ID="lblUserStudentID" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right">
                                                                &nbsp;</td>
                                                            <td align="right">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" >
                                                                    دانشگاه:</td>
                                                            <td align="right" dir="rtl" >
                                                                    <asp:Label ID="lblStudentUniversity" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                            </td>
                                                            <td align="right" >
                                                                    مقطع:
                                                                            </td>
                                                            <td align="right" dir="rtl">
                                                                    <asp:Label ID="lblStudentLevel" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" >
                                                            </td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                            </td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" >
                                                                    ايميل:&nbsp;</td>
                                                            <td align="right" dir="rtl" >
                                                                    
                                                                                <asp:Label ID="lblUserStudentEmail" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                    
                                                                            </td>
                                                            <td align="right" >
                                                                    وب سايت:&nbsp;
                                                                                    </td>
                                                            <td align="right" dir="rtl">
                                                                    <asp:Label ID="lblUserStudentWebSite" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right" >
                                                                &nbsp;</td>
                                                            <td align="right">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" >
                                                                    &nbsp;نام کاربري:</td>
                                                            <td align="right" >
                                                                    
                                                                    <asp:Label ID="lblUserStudentUserName" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                    
                                                                                    </td>
                                                            <td align="right" >
                                                                کلمه عبور:</td>
                                                            <td align="right" dir="rtl">
                                                                    
                                                                                <asp:Label ID="lblUserStudentPassword" runat="server" Text="Label" 
                                                                                    CssClass="LableMy"></asp:Label>
                                                                    
                                                                                    </td>
                                                        </tr>
                                                        
                                                       
                                                       
                                                       </table>  

                                                       <hr size="3px" style="background-color: #0066FF" width="100%" />

        
       

          <table align="center" dir="rtl" style=" font-size: 9pt; width: 100%"">
              <tr>
                  <td colspan="6" align="right">
               <strong>تعيين وضعيت و سطوح دسترسي دانشجو</strong></td>
              </tr>
              <tr>
                  <td colspan="6">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right">
                                                        <asp:CheckBox ID="chbOnline" 
                          runat="server" Text="  آنلاين" />
                                                    </td>
                  <td align="right">
                                                        <asp:CheckBox ID="chbBlocked" 
                          runat="server" Text="  بلاک شده" />
                                                    </td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="left">
                                                        <asp:Button ID="Button1" runat="server" CssClass="Button" 
                                                            onclick="Button1_Click" Text="ارسال مشخصات به Email" Width="130px" />
                  </td>
              </tr>
              <tr>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
              </tr>
              <tr>
                  <td align="right">
                                                        <asp:CheckBox ID="chbSendMessageToMaster" 
                          runat="server" Text="  ارسال پيام به استاد" />
                                                    </td>
                  <td align="right">
                                                        <asp:CheckBox ID="chbSendMessageToAdmin" 
                          runat="server" Text="  ارسال پيام به مدير سايت" />
                                                    </td>
                  <td align="right">
                                                        <asp:CheckBox ID="chbSendMessageToStudent" 
                          runat="server" Text="  ارسال پيام به دانشجو" />
                                                    </td>
                  <td align="right">
                                                        <asp:CheckBox ID="chbUploadPic" 
                          runat="server" Text="  آپلود عکس" />
                                                    </td>
                  <td align="right">
                                                        <asp:CheckBox ID="chbSendNews" 
                          runat="server" Text="  ارسال خبر (اطلاعيه)" />
                                                    </td>
                  <td align="right">
                                                        <asp:CheckBox ID="chbNewWebSite" runat="server" Text="  معرفي وب سايت" />
                                                    </td>
              </tr>
              <tr>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="left">
                                                        &nbsp;</td>
              </tr>
              <tr>
                  <td align="right">
                                                        <asp:CheckBox ID="chbSendSoftLink" 
                          runat="server" Text="  ارسال لینک دانلود نرم افزار" />
                                                    </td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="left">
                            <asp:Button ID="btnSave0" runat="server" style="margin-right: 0px" Text="ذخيره" 
                        Width="130px" onclick="btnSave0_Click" TabIndex="7" CssClass="Button" 
                                CausesValidation="False" />
                                                            </td>
              </tr>
              <tr>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="right">
                                                        &nbsp;</td>
                  <td align="left">
                            &nbsp;</td>
              </tr>
          </table>
 
           


            
                              
           
    </div>
    
    
    
        <div id="footer" >
                    
                    <ul>
                        <li><a href="../../Main.aspx">صفحه اصلي</a></li>
                        <li>|</li>
                        <li><a href="">تصاوير</a></li>
                        <li>|</li>
                        <li><a href="">ارتباط با ما</a></li>
                        <li>|</li>
                        <li><a href="">سازه هاي نرم افزاري</a></li>
                        <li>|</li>
                        <li><a href="">معماري نرم افزار</a></li>
                        <li>|</li>
                        <li><a href="">آموزش و تدريس خصوصي</a></li>
                        
                        
                    </ul>
                    <p>
                        Copyright © Software & Web Application Design By Abbas Montaseri - 2013
                </div>    
        
      </div>
     
      <div id="footerBelow" >
                   
       </div> 
    
    </div>
  </div>
  
</div>



    </form>
</body>
</html>
