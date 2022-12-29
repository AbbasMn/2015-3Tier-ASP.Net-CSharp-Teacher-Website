<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherInserNews.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherInserNews" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>
    
<!--  ************************************************************************************************ -->
<script type="text/javascript" src="../../.../../../jsMy/yuiloader-dom-event.js"></script>
<script type="text/javascript" src="../../../jsMy/vbulletin-core.js"></script>

<link rel="stylesheet" type="text/css" href="../../../CssMy/main-rollup.css">	

<link rel="stylesheet" type="text/css" href="../../../CssMy/floatcontainer.css">	

<!--  ************************************************************************************************ -->    
    
    <link href="../../../CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />
    

<script type="text/javascript" src="../../../jsMy/jquery-1.4.2.min.js"></script>


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
                  
                                     <li><a href="../../../Main.aspx">
                                        <img src="../../../images/Icons/home.png" alt="" /><span>صفحه اصلي</span></a></li>
                        
                                    <li><a href="../../../PublicPictureGalleries.aspx">
                        
                                        <img src="../../../images/Icons/banleftup3.png" alt="" /><span>تصاوير</span></a></li>

                                    <li><a href="../../../DownloadSoftware.aspx">
                        
                                        <img src="../../../images/Icons/sitemap.png" alt="" /><span>دانلود نرم افزار</span></a></li>
                        
                                    <li><a href="">
                                        <img src="../../../images/Icons/banleftup4.png" alt="" /><span>ارتباط با ما</span></a></li>
                            
                              
                                                                                
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
        

        
        
        
        <div class="four_equals">
            
            
            <table style="width: 100%">
                <tr>
                    <td align="left" valign="top">
                 <ul id="topnavleftMyStudent">
                     <li><a href="TeacherInserNews.aspx">ارسال اطلاعيه</a></li>  
                     <li><a href="TeacherEditNews.aspx">ويرايش اطلاعيه</a></li> 
                     <li><a href="TeacherInsertLink.aspx">وب سايت جديد</a></li>                      
                     <li><a href="TeacherUniversity.aspx">دانشگاه ها</a></li> 
                     <li><a href="TeacherAddCourse.aspx">درس جديد</a></li>             
                     <li><a href="TeacherGroupCourse.aspx">گروه درسي جديد</a></li>           
                     <li><a href="TeacherPeresentedGroupCourse.aspx"> دروس ارائه شده</a></li>
                     <li><a href="TeacherPeresentedGroupCourse.aspx"> ويرايش گروه درس</a></li>                      
                     <li><a href="TeacherPeresentedGroupCourse.aspx">وارد کردن نمرات</a></li>                                  
                     <li><a href="TeacherPeresentedGroupCourse.aspx">تاريخ امتحان</a></li> 
                     <li><a href="TeacherStudetsProtests.aspx">اعتراض به نمره</a></li> 
                     <li><a href="../../../AddPictureGallery.aspx">آلبوم عکس</a></li>
                                         
                  </ul>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">

       
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
      
                    </td>
                </tr>
            </table>
        
            
                
        </div> 
 
        <!-- Middle Column -->
               
        <div class="right_three">      
          
         <!-- floatcontainer -->
	
    <div class="body_wrapper2" dir="rtl" with:"100%">

	
	<div id="content_container2" class="contentright" style="margin-left: 0px;">
		<div id="content2" style="margin-left: 0px;">
	
        
	        <ol id="forums2" class="floatcontainer">

 <!-- section 1 --> 
         		
		        <li class="forumbit_nopost L1" id="cat2">
        		
        		
	                <div class="forumhead foruminfo L1 collapse">
                        <h2>
                            <span class="forumtitle">
                            <a href="http://">نکات مهم</a></span>
                            <span class="forumlastpost"></span>
                            
                            <a class="collapse" id="collapse_category_2" href="">
                            <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                        </h2>
                    </div>
                           
                    
                                       
                    <ol id="category_2" class="childforum" style="display: none;">
                            
                            
                                
                                
                                <!--first subsection-->
                                                
                                <li id="forum2" class="forumbit_post">
                                    <div class="forumrow">
                                    
              <ul class="list1">
                <li><a> اطلاعيه ها، با توجه به اينکه براي نمايش به چه کساني (مديران، اساتيد، کاربران مهمان و همه اعضا) نوشته مي شوند، در صفحه اصلي سايت و نيز در کنترل پانل شما و هر کاربر نمايش داده مي شوند.</a></li>
                
                <li><a>پس از ارسال اطلاعيه براي نمايش داده شدن آن به قسمت ويرايش اطلاعيه مراجعه کنيد. اطلاعيه هايي به مخاطبان نمايش داده مي شوند که گزينه نمايش براي آنها تيک خورده باشد.</a></li>
                
                <li><a>با مشخص نمودن نوع اطلاعيه مي توان اخبار و رويدادهاي مختلف آموزشي را به اطلاع دانشجويان رساند. و با ضميمه کردن فايل ميتوان به دانشجويان و بقيه کاربران اين امکان را داد که فايل مورد نظر را دريافت (DownLoad) نمايند.</a></li>
                
                <li><a> عکس اطلاعيه براي مشاهده توسط مخاطبان قابل انتخاب است. در صورت عدم تعيين عکس، عکس پيش فرض نمايش داده خواهد شد.</a></li>
              </ul>

                                    </div>
                                </li>
                                

                                 
                               </ol>
                     
 
	        </ol>
	
        </div>
					
    </div>
  
  
  
  
    
</div>

        <!-- /floatcontainer --> 
        
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
         </asp:ToolkitScriptManager>

          
                 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>           
                <table border="0" cellpadding="1" cellspacing="0" Class="TableMy" align="left" 
                    Class="TableMy" dir="rtl">
                    <tr>
                        <td colspan="4" align="center">
          
                 
          
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4" align="right">
                            <b>ارسال اطلاعيه (اعلان) عمومي&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                            <asp:Label ID="lblNewsFileName" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblNewsPicName" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                            &nbsp;&nbsp; </b></td>
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
                            عنوان اطلاعيه:<td class="style4" valign="top">
                    <asp:TextBox ID="txtnewsTitle" runat="server" Width="170px" 
                        CssClass="InputControl" MaxLength="100" TabIndex="1"></asp:TextBox>
                        </td>
                        <td class="style5" valign="top">
                            نوع اطلاعيه:</td>
                        <td class="" valign="top" align="left">
                    <asp:DropDownList ID="drlistnewsType" runat="server" 
                        Width="170px" TabIndex="2" CssClass="InputControl">
                        <asp:ListItem>اسلايد درس</asp:ListItem>
                        <asp:ListItem>تاريخ امتحان</asp:ListItem>
                        <asp:ListItem>تحويل پروژه - تمرين</asp:ListItem>
                        <asp:ListItem>تغيير تاريخ کلاس</asp:ListItem>
                        <asp:ListItem>تغيير ساعت کلاس</asp:ListItem>
                        <asp:ListItem>دانلود نرم افزار</asp:ListItem>
                        <asp:ListItem>فايل درس</asp:ListItem>
                        <asp:ListItem>جزوه درس</asp:ListItem>
                        <asp:ListItem>کلاس جبراني</asp:ListItem>
                        <asp:ListItem>نمونه سوال</asp:ListItem>
                        <asp:ListItem>تدريس خصوصي</asp:ListItem>
                        <asp:ListItem>تغيير تاريخ امتحان</asp:ListItem>
                        <asp:ListItem>آموزش برنامه نويسي</asp:ListItem>
                        <asp:ListItem>اخبار</asp:ListItem>
                        <asp:ListItem>پروژه و کارآموزي</asp:ListItem>
                        <asp:ListItem>پيوندهاي مفيد</asp:ListItem>
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
                            تاريخ ايجاد اطلاعيه:</td>
                        <td class="style4" valign="top">
                                                        <pcal:PersianDatePickup ID="PersianDatePickup1" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="3" Width="170px"></pcal:PersianDatePickup>
                            </td>
                        <td class="style5" valign="top">
                            اولويت نمايش:</td>
                        <td class="" valign="top" align="left">
                    <asp:DropDownList ID="drlistnewsPriority" runat="server" 
                        Width="170px" TabIndex="4" CssClass="InputControl">
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
                            نمايش اطلاعيه براي:</td>
                        <td class="style4">
                    <asp:DropDownList ID="drlistnewsShoingwToWhatMemberType" runat="server" TabIndex="5" 
                        Width="170px" CssClass="InputControl">
                        <asp:ListItem>همه اعضا</asp:ListItem>
                        <asp:ListItem>اساتيد</asp:ListItem>
                        <asp:ListItem>دانشجويان</asp:ListItem>
                        <asp:ListItem>مديران</asp:ListItem>
                        <asp:ListItem>کاربران مهمان</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td class="style5">
                            عکس اطلاعيه:</td>
                        <td class="" align="left">
                    <asp:FileUpload ID="FileUpLdPic" runat="server" Width="170px" 
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
                            آدرس وب مربوطه:</td>
                        <td class="style4">
                    
                                <asp:TextBox ID="txtnewsRelatedLink" runat="server" 
                        Width="170px" TabIndex="7" CssClass="InputControl" MaxLength="500"></asp:TextBox>
                    
                        </td>
                        <td class="style5">
                            فايل ضميمه:</td>
                        <td class="" align="left">
                    <asp:FileUpload ID="FileUpLAttachFile" runat="server" Width="170px" 
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
                        Width="170px" CssClass="InputControl">
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
                            متن اطلاعيه:</td>
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
            
           
                 </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnSave" />
                    </Triggers>
                </asp:UpdatePanel>                  

            
           
                   
             
           
        </div>
        
         <!-- Middle Column -->      
        <div id="footer" >
                    
                    <ul>
                        <li><a href="../../../Main.aspx">صفحه اصلي</a></li>
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
