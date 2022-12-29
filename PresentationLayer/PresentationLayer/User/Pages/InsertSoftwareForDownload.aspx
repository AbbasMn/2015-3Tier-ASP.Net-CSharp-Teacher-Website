<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertSoftwareForDownload.aspx.cs" Inherits="PresentationLayer.PresentationLayer.User.Pages.InsertSoftwareForDownload" %>
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>
    
<!--  ************************************************************************************************ -->
<script type="text/javascript" src="../../js/yuiloader-dom-event.js"></script>
<script type="text/javascript" src="../../js/vbulletin-core.js"></script>

<link rel="stylesheet" type="text/css" href="../../css/main-rollup.css">	

<link rel="stylesheet" type="text/css" href="../../css/floatcontainer.css">	

<!--  ************************************************************************************************ -->    
    
    <link href="../../CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />
    

<script type="text/javascript" src="../../js/jquery-1.4.2.min.js"></script>


<script type="text/javascript">
    $(document).ready(function () {

        $("#topnavrightMy li").prepend("<span></span>"); //Throws an empty span tag right before the a tag

        $("#topnavrightMy li").each(function () { //For each list item...
            var linkText = $(this).find("a").html(); //Find the text inside of the <a> tag
            $(this).find("span").show().html(linkText); //Add the text in the <span> tag
        });

        $("#topnavrightMy li").hover(function () {	//On hover...
            $(this).find("span").stop().animate({
                marginTop: "-40" //Find the <span> tag and move it up 40 pixels
            }, 250);
        }, function () { //On hover out...
            $(this).find("span").stop().animate({
                marginTop: "0"  //Move the <span> back to its original state (0px)
            }, 250);
        });

    });
</script>

<script type="text/javascript">
    $(document).ready(function () {

        $("#topnavleftMyStudent li").prepend("<span></span>"); //Throws an empty span tag right before the a tag

        $("#topnavleftMyStudent li").each(function () { //For each list item...
            var linkText = $(this).find("a").html(); //Find the text inside of the <a> tag
            $(this).find("span").show().html(linkText); //Add the text in the <span> tag
        });

        $("#topnavleftMyStudent li").hover(function () {	//On hover...
            $(this).find("span").stop().animate({
                marginTop: "-40" //Find the <span> tag and move it up 40 pixels
            }, 250);
        }, function () { //On hover out...
            $(this).find("span").stop().animate({
                marginTop: "0"  //Move the <span> back to its original state (0px)
            }, 250);
        });

    });
</script>


<script type="text/javascript">

    $(document).ready(function () {

        $('.leftMenu li').hover(
		function () {
		    //show its submenu
		    $('ul', this).show();

		},
		function () {
		    //hide its submenu
		    $('ul', this).hide();
		}
	);

    });
</script>









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
                            <td width="30%" valign="top" align="left">
                       
                <asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogOut" runat="server" CausesValidation="false"
                    onclick="lbtnLogOut_Click">(LogOut) خروج</asp:LinkButton>
         
                    /           

                          <asp:LinkButton CssClass="LinkButtonMy" ID="btnLoginPage" runat="server" CausesValidation="false"
                    onclick="btnLoginPage_Click">(Control Pannel) کنترل پانل</asp:LinkButton>  
                            </td>



                            <td width="70%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>
        

        
        
 
 
        <!-- Middle Column -->
               
        <div class="full_width">      
                    
                <table border="0" cellpadding="1" cellspacing="0" Class="TableMy860Width" align="left" 
                    Class="TableMy" dir="rtl">
                    <tr>
                        <td colspan="4" align="center">
          
                 
          
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                <asp:Label ID="lblNewsFileName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                                <asp:Label ID="lblNewsPicName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
          
                 
          
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" align="right">
                            <b>معرفی نرم افزار و لینک صفحه دانلود نرم افزار</b></td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="TableBannerBottom">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style4" valign="top">
                            &nbsp;</td>
                        <td class="style5" valign="top">
                            &nbsp;</td>
                        <td class="" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtnewsTitle" ErrorMessage="عنوان اطلاعيه را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            نام نرم افزار:<td class="style4" valign="top">
                    <asp:TextBox ID="txtnewsTitle" runat="server" Width="220px" 
                        CssClass="InputControl" MaxLength="100" TabIndex="1"></asp:TextBox>
                        </td>
                        <td class="style5" valign="top">
                            نوع نرم افزار:</td>
                        <td class="" valign="top" align="left">
                    <asp:DropDownList ID="drlistnewsType" runat="server" 
                        Width="220px" TabIndex="2" CssClass="InputControl">
                        <asp:ListItem>نرم افزار - مالتی مدیا</asp:ListItem>
                        <asp:ListItem>نرم افزار - امنیتی</asp:ListItem>
                        <asp:ListItem>نرم افزار - گرافیکی</asp:ListItem>
                        <asp:ListItem>نرم افزار - دیسک</asp:ListItem>
                        <asp:ListItem>نرم افزار - اینترنت</asp:ListItem>
                        <asp:ListItem>نرم افزار - ارتباطات</asp:ListItem>
                        <asp:ListItem>نرم افزار - اداری</asp:ListItem>
                        <asp:ListItem>نرم افزار - دسکتاپ</asp:ListItem>
                        <asp:ListItem>نرم افزار - کاربردی</asp:ListItem>
                        <asp:ListItem>نرم افزار - سیستم عامل</asp:ListItem>
                        <asp:ListItem>نرم افزار - آموزشی</asp:ListItem>
                        <asp:ListItem>نرم افزار - خانگی</asp:ListItem>
                        <asp:ListItem>نرم افزار - توسعه</asp:ListItem>
                        <asp:ListItem>نرم افزار - توسعه وب</asp:ListItem>
                        <asp:ListItem>آموزش - گرافیک و طراحی</asp:ListItem>
                        <asp:ListItem>آموزش - سه بعدی و انیمیشن</asp:ListItem>
                        <asp:ListItem>آموزش - برنامه نویسی و طراحی وب</asp:ListItem>
                        <asp:ListItem>آموزش - مالتی مدیا</asp:ListItem>
                        <asp:ListItem>آموزش - اداری</asp:ListItem>
                        <asp:ListItem>آموزش - سیستم عامل</asp:ListItem>
                        <asp:ListItem>آموزش - شبکه</asp:ListItem>
                        <asp:ListItem>کتاب - کامپیوتر</asp:ListItem>
                        <asp:ListItem>کتاب - علمی</asp:ListItem>
                        <asp:ListItem>کتاب - تاریخی</asp:ListItem>
                        <asp:ListItem>کتاب - ادبیات</asp:ListItem>
                        <asp:ListItem>کتاب - مذهبی</asp:ListItem>
                        <asp:ListItem>موبایل - نرم افزار</asp:ListItem>
                        <asp:ListItem>موبایل - بازی</asp:ListItem>
                        <asp:ListItem>موبایل - مارک گوشی</asp:ListItem>
                        <asp:ListItem>موبایل - سیستم عامل</asp:ListItem>
                        <asp:ListItem>موبایل - شرکت سازنده</asp:ListItem>
                        <asp:ListItem>موبایل - فریم ور</asp:ListItem>
                        <asp:ListItem>موبایل - خرید کارت شارژ</asp:ListItem>
                        <asp:ListItem>گرافیک - فونت</asp:ListItem>
                        <asp:ListItem>گرافیک - تصویر</asp:ListItem>
                        <asp:ListItem>گرافیک - فتوشاپ</asp:ListItem>
                        <asp:ListItem>گرافیک - قالب آماده</asp:ListItem>
                        <asp:ListItem>فیلم - مستند</asp:ListItem>
                        <asp:ListItem>فیلم - انیمیشن</asp:ListItem>
                        <asp:ListItem>فیلم - آموزشی</asp:ListItem>
                        <asp:ListItem>بازی - اکشن</asp:ListItem>
                        <asp:ListItem>بازی - تیراندازی</asp:ListItem>
                        <asp:ListItem>بازی - مسابقه ای</asp:ListItem>
                        <asp:ListItem>بازی - ورزشی</asp:ListItem>
                        <asp:ListItem>بازی - سرگرم کننده</asp:ListItem>
                        <asp:ListItem>بازی - معمایی</asp:ListItem>
                        <asp:ListItem>بازی - استراتژی</asp:ListItem>
                        <asp:ListItem>بازی - ماجرایی</asp:ListItem>
                        <asp:ListItem>بازی - پلاتفرم</asp:ListItem>
                        <asp:ListItem>بازی - نقش آفرینی</asp:ListItem>
                        <asp:ListItem>بازی - شبیه سازی</asp:ListItem>
                        <asp:ListItem>بازی - کودکان</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style4" valign="top">
                            &nbsp;</td>
                        <td class="style5" valign="top">
                            &nbsp;</td>
                        <td class="" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="PersianDatePickup1" ErrorMessage="تاريخ اطلاعيه را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            تاريخ:</td>
                        <td class="style4" valign="top">
                                                        <pcal:PersianDatePickup ID="PersianDatePickup1" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="3" Width="220px"></pcal:PersianDatePickup>
                            </td>
                        <td class="style5" valign="top">
                            اولويت نمايش:</td>
                        <td class="" valign="top" align="left">
                    <asp:DropDownList ID="drlistnewsPriority" runat="server" 
                        Width="220px" TabIndex="4" CssClass="InputControl">
                        <asp:ListItem>بالا</asp:ListItem>
                        <asp:ListItem Selected="True">بالاترين</asp:ListItem>
                        <asp:ListItem>متوسط</asp:ListItem>
                        <asp:ListItem>پايين</asp:ListItem>
                        <asp:ListItem>پايين ترين</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            دانلود نرم افزار برای:</td>
                        <td class="style4">
                    <asp:DropDownList ID="drlistnewsShoingwToWhatMemberType" runat="server" TabIndex="5" 
                        Width="220px" CssClass="InputControl">
                        <asp:ListItem>همه اعضا</asp:ListItem>
                        <asp:ListItem>اساتيد</asp:ListItem>
                        <asp:ListItem>دانشجويان</asp:ListItem>
                        <asp:ListItem>مديران</asp:ListItem>
                        <asp:ListItem>کاربران مهمان</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td class="style5">
                            عکس مربوطه:</td>
                        <td class="" align="left">
                    <asp:FileUpload ID="FileUpLdPic" runat="server" Width="220px" 
                ToolTip="عکس اطلاعيهي را انتخاب نماييد" EnableTheming="True" TabIndex="6" 
                                CssClass="InputControl"/>
       
                                </td>
                    </tr>
                    <tr>
                        <td class="style1" dir="rtl">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" dir="rtl">
                            آدرس صفحه دانلود:</td>
                        <td class="style4">
                    
                                <asp:TextBox ID="txtnewsRelatedLink" runat="server" 
                        Width="220px" TabIndex="7" CssClass="InputControl" MaxLength="500"></asp:TextBox>
                    
                        </td>
                        <td class="style5">
                            فايل ضميمه:</td>
                        <td class="" align="left">
                    <asp:FileUpload ID="FileUpLAttachFile" runat="server" Width="220px" 
                ToolTip="فايل ضميمه را انتخاب نماييد" EnableTheming="True" TabIndex="8" 
                                CssClass="InputControl"/>
       
                                </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td align="center" colspan="0">
                    
                                &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="" align="left">
                    
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            دانلود فايل ضميمه براي:</td>
                        <td class="style4">
                    <asp:DropDownList ID="drlistnewsDownloadingFileByWhatMemberType" runat="server" TabIndex="9" 
                        Width="220px" CssClass="InputControl">
                        <asp:ListItem>همه اعضا</asp:ListItem>
                        <asp:ListItem>اساتيد</asp:ListItem>
                        <asp:ListItem>دانشجويان</asp:ListItem>
                        <asp:ListItem>مديران</asp:ListItem>
                        <asp:ListItem>کاربران مهمان</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="" align="left">
                    
                            
                    
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ارسال" 
                        Width="57px" onclick="btnSave_Click" TabIndex="11" CssClass="Button" />
                                </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="" align="left">
                    
                            
                    
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                                </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="" align="left">
                    
                            
                    
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" valign="top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtnewsPassage" ErrorMessage="متن اطلاعيه را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            متن معرفی نرم افزار:</td>
                        <td class="style3" colspan="3" align="center">
                            
                    <asp:TextBox ID="txtnewsPassage" runat="server" Width="100%" TabIndex="10" 
                        CssClass="InputControlBigMultiLine" Height="200px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="style1" valign="top">
                            &nbsp;</td>
                        <td class="style3" colspan="3" align="center">
                            
                            &nbsp;</td>
                    </tr>
                    </table>
            
           
                   

            
           
                   
             
           
        </div>
        
         <!-- Middle Column -->      
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

