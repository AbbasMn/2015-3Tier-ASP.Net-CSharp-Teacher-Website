<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherControlPanelPage.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherControlPanelPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">            

<head>

    <meta charset="utf-8">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>


<!--  ************************************************************************************************ -->

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




 


<!--  ************************************************************************************************ -->
<script type="text/javascript" src="../../../jsMy/yuiloader-dom-event.js"></script>
<script type="text/javascript" src="../../../jsMy/vbulletin-core.js"></script>

<link rel="stylesheet" type="text/css" href="../../../css/main-rollup.css">	

<link rel="stylesheet" type="text/css" href="../../../css/floatcontainer.css">	

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

<script type="text/javascript" src="../../../jsMy/tabs/Jquery-tabs.js"></script>
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
 

 <style>
  blink { -webkit-animation: blink 1s steps(5, start) infinite; 
         -moz-animation: blink 1s steps(5, start) infinite; 
         -o-animation: blink 1s steps(5, start) infinite; 
         animation: blink 1s steps(5, start) infinite; }

          @-webkit-keyframes  blink { to { visibility: hidden; } }
           @-moz-keyframes blink { to { visibility: hidden; } } 
           @-o-keyframes blink { to { visibility: hidden; } } 
           @keyframes blink { to { visibility: hidden; } }
 </style>
 
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
                    onclick="lbtnLogOut_Click">(LogOut) خروج </asp:LinkButton>
                    
                    /&nbsp;<asp:LinkButton CssClass="LinkButtonMy" ID="lbtnLogMainPage" runat="server" CausesValidation="false" onclick="lbtnLogMainPage_Click"
                    >(Home) صفحه اصلي</asp:LinkButton>
                            </td>



                            <td width="70%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>      
    
        <div class="right_threeMy">  
        

  <table width="100%" align="center" dir="rtl" 
             style=" font-size: 9pt; margin-top:5px;" >
                              <tr>
                                <td align="center" valign="top" >
   
                                    <asp:ImageButton ID="ImageButton12" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/logout.png" 
                                        Width="45px" onclick="ImageButton12_Click" />
                                    <br />
                                    خروج</td>

                                <td align="center" valign="top">

                          
                                    <asp:ImageButton ID="ImageButton11" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/wefwe.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherCreateExercise.aspx" Width="45px" />
                                    <br />
                                    
                                    ايجاد تمرين درس
                                    
                                    </td>
                                    
                                    
                                    <td align="center" valign="top">


                                    <asp:ImageButton ID="ImageButton13" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/advertise.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherInserNews.aspx" 
                                        Width="45px" />
                                    <br />
                                    ارسال اطلاعيه</td>

                                <td align="center" valign="top">

                                    
                                    <asp:ImageButton ID="ImageButton17" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/selectCourse.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherAddCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                    درس جديد</td>
                          
                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton19" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/peresentedCourse.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherPeresentedGroupCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                    دروس ارائه شده</td>
                               
                                <td align="center" valign="top">

                                                                 
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/insertMsrks.jpg" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherPeresentedGroupCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                    وارد کردن نمرات</td>
                               
                                <td align="center" valign="top">

                                                                 
                                    <asp:ImageButton ID="ImageButton15" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/newWeb.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherInsertLink.aspx" 
                                        Width="45px" />
                                    <br />
                                   وب سايت جديد</td>
                               
                                <td align="center" valign="top">

                                                                 
                                    <asp:ImageButton ID="ImageButton21" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/sendMessage.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherPeresentedGroupCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                    ارسال پيام به دانشجو</td>
                               
                                <td align="center" valign="top">

                                                                 
                                    <asp:ImageButton ID="ImageButton23" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/messag.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherPeresentedGroupCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                    پيامهاي دانشجو</td>
                               
                                <td align="center" valign="top">

                                                                 
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/examDate.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherPeresentedGroupCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                   تاريخ امتحان</td>
                              <tr>                          

                          
                                <td align="center" valign="top">

                                       <asp:ImageButton ID="ImageButton25" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/ALL-CAPS-icon.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherViewStudentActivities.aspx" 
                                        Width="45px" />
                                    <br />
                                       فعاليت دانشجو</td>
                 
                                <td align="center" valign="top">

                                    
                                    <asp:ImageButton ID="ImageButton27" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/exercise.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherViewStudentExsercises.aspx" 
                                        Width="45px" />
                                    <br />
                                    تمرینهای ارسالي دانشجویان</td>

                                <td align="center" valign="top">

 
                                    <asp:ImageButton ID="ImageButton14" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/marks.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherEditNews.aspx" 
                                        Width="45px" />
                                    <br />
                                    ويرايش اطلاعيه</td>
                          
                                <td align="center" valign="top">

     
                                    <asp:ImageButton ID="ImageButton18" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/courseGroup.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherGroupCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                    گروه درسي جديد</td>
                          
                                <td align="center" valign="top">


                                    
                                    
                                    
                                    <asp:ImageButton ID="ImageButton20" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/marks.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherPeresentedGroupCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                     ويرايش گروه درس</td>
                          
                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/protest.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherStudetsProtests.aspx" 
                                        Width="45px" />
                                    <br />
                                    اعتراض به نمره</td>
                          

                          
                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton16" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/university.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherUniversity.aspx" 
                                        Width="45px" />
                                    <br />
                                   دانشگاه ها</td>
                          

                          
                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton22" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/studentResponse.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherPeresentedGroupCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                    پاسخ دانشجو به پيام</td>
                          

                          
                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton24" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/responseToMessage.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherPeresentedGroupCourse.aspx" 
                                        Width="45px" />
                                    <br />
                                     پاسخ به پيام دانشجو</td>
                          

                          
                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/pictures.png" 
                                        PostBackUrl="../../../AddPictureGallery.aspx" 
                                        Width="45px" />
                                    <br />
                                    آلبوم عکس</td>
                          

                          
                              </tr>
                              <tr>                          

                          
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton28" runat="server" Height="36px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/editprofile.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherEditProfile.aspx" 
                                        Width="45px" />
                                       <br />
                                    ويرايش مشخصات</td>
                 
                                <td align="center" valign="top">

                                    
                                    &nbsp;</td>

                                <td align="center" valign="top">

 
                                    &nbsp;</td>
                          
                                <td align="center" valign="top">

     
                                    &nbsp;</td>
                          
                                <td align="center" valign="top">


                                    
                                    
                                    
                                    &nbsp;</td>
                          
                                <td align="center" valign="top">

                                    &nbsp;</td>
                          

                          
                                <td align="center" valign="top">

                                    &nbsp;</td>
                          

                          
                                <td align="center" valign="top">

                                    &nbsp;</td>
                          

                          
                                <td align="center" valign="top">

                                    &nbsp;</td>
                          

                          
                                <td align="center" valign="top">

                                    &nbsp;</td>
                          

                          
                              </tr>
                          </table>
    
  <hr size="3px" style="width: 710px; background-color: #0000FF; " />         
            
          
         <div id="welcomePanelMyMaster">


                    <table width="100%" align="right" dir="rtl" >
                                                  <tr>

                                                    <td align="right" valign="top">
                                                            <h1My align="right">کنترل پانل استاد</h1My>
                    
                                                            <pMyWelCome>
                    
                                                            <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                                                            <br />

                                                            </pMyWelCome>

                                                             <pMyWelCome>
                                                                     <a href="TeacherShowAllRecievedMessages.aspx">
                                                                     <blink><asp:Label ID="lblMessageStudent"  runat="server" Font-Bold="True" 
                                                                             ForeColor="#FF3300"></asp:Label></blink>                                                            </a>
                                                            </pMyWelCome>
                                                    </td>
                                                    <td align="left" valign="top" style="width:80px;">
                                                    <asp:Image ID="Image1" runat="server" Height="80px" 
                                                                                            style="margin-left: -10px" Width="80px" BorderColor="White" 
                                                                                            BorderStyle="Outset" BorderWidth="1px" />
                                                    </td>


                          
                                                  </tr>
                                              </table>



                               

            </div>
            <p>
            </p>

            <p>
            </p>
            
   <hr size="3px" style="width: 710px; background-color: #0000FF; " /> 
        
         <!-- floatcontainer -->
	
    <div class="body_wrapper1" dir="rtl" with:"100%">

	
	<div id="content_container1" class="contentright" style="margin-left: 0px;">
		<div id="content1" style="margin-left: 0px;">
	
        
	        <ol id="forums1" class="floatcontainer">

 <!-- section 1 --> 
         		
		        <li class="forumbit_nopost L1" id="cat1">
        		
        		
	                <div class="forumhead foruminfo L1 collapse">
                        <h2>
                            <span class="forumtitle">
                            <a href="http://">مشخصات استاد</a></span>
                            <span class="forumlastpost"></span>
                            
                            <a class="collapse" id="collapse_category_1" href="">
                            <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                        </h2>
                    </div>
                           
                    
                                       
                    <ol id="category_1" class="childforum" style="display: none;">
                            
                            
                                
                                
                                <!--first subsection-->
                                                
                                <li id="forum1" class="forumbit_post">
                                    <div class="forumrow">

                                         <table Class="TableMy" 
                align="right" style="width: 100%">
                            <tr>
                                <td align="right" rowspan="11" valign="top">
          
           
                <asp:Image ID="imgTeacherImage" runat="server" Height="104px" 
                                            style="margin-right: 0px" Width="102px" BorderColor="White" 
                                            BorderStyle="Outset" BorderWidth="1px" />
                 
           
                   
             
           
                                    <br />
                                    <br />
               <asp:FileUpload ID="FileUpLd" runat="server" Width="100px" 
                ToolTip="عکس کاربري را انتخاب نماييد" EnableTheming="True" />
       
                                                <br />
                                   
                                    <br />
                                   
              
       
           
                   
             
           
                                </td>
                                <td align="center" colspan="4">
          
           
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                </td>
                            </tr>


                            <tr>
                                <td align="right">
                                        نام:&nbsp;
                                                </td>
                                <td align="right" dir="rtl">
                                        <asp:Label ID="lblUserTeacherName" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                </td>
                                <td align="right">
                                        نام خانوادگي:&nbsp;</td>
                                <td align="right" dir="rtl">
                                        <asp:Label ID="lblUserTeacherLastName" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
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
                            </tr>
                            <tr>
                                <td align="right">
                                        نام کاربري:</td>
                                <td align="right" dir="rtl">
                                        <asp:Label ID="lblUserTeacherUserName" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                </td>
                                <td align="right">
                                        شماره استاد:&nbsp;
                                                </td>
                                <td align="right" dir="rtl">
                                        <asp:Label ID="lblUserTeacherID" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
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
                            </tr>
                            <tr>
                                <td align="right" >
                                        رشته تحصيلي:&nbsp;</td>
                                <td align="right" dir="rtl">
                                        <asp:Label ID="lblUserTeacherBranch" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                </td>
                                <td align="right">
                                        آخرين مدرک تحصيلي:
                                                </td>
                                <td align="right" dir="rtl">
                                        <asp:Label ID="lblUserTeacherLevel" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                        &nbsp;</td>
                                <td align="right" dir="rtl">
                                                    &nbsp;</td>
                                <td align="right">
                                        &nbsp;</td>
                                <td align="right" dir="rtl">
                                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    ايميل:&nbsp;
                                </td>
                                <td align="right">
                                        <asp:Label ID="lblUserTeacherEmail" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                </td>
                                <td align="right">
                                    وب سايت:&nbsp;
                                </td>
                                <td align="right">
                                        <asp:Label ID="lblUserTeacherWebSite" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    
                                </td>
                                <td align="right">
                                        
                                </td>
                                <td align="right">
                                    
                                </td>
                                <td align="right">
                                      
                                </td>                            
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:LinkButton CssClass="LinkButtonMy" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" 
                                    CausesValidation="False" 
                                      >تغيير تصوير</asp:LinkButton>  
                </td>
                                <td align="right">
                                    &nbsp;</td>
                                <td align="right">
    
                                <asp:Label ID="lblCurrentTeacherImageName" runat="server" Visible="False"></asp:Label>
                
                                                        </td>
                                <td align="right" dir="rtl">
                                                    &nbsp;</td>
                            </tr>
                            </table>

                                    </div>
                                </li>
                                

                                 
                               </ol>
                     
 
	        </ol>
	
        </div>
					
    </div>
  
  
  
  
    
</div>

        <!-- /floatcontainer -->
        
     
     
     
           
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
                <li><a>   
                            از قسمت <b>همه فعاليت هاي درسي دانشجو</b>، مي توانيد فعاليت هاي مهم درسي دانشجو از قبيل تحويل پروژه ها و تمرينهاي دانشجو، پيامهاي ارسالي دانشجو، پيامهاي ارسالي شما به دانشجو و نيز نمرات دانشجو در دروس اخذ شده با شما و همچنين اعتراض به نمره را     
                              مشاهده نماييد.</a></li>              
                <li><a>   
                            از قسمت <b>تمرينها و پروژه هاي ارسالي دانشجو</b>، مي توانيد فايلهاي ارسالي پاسخ تمرين و پروژه را دريافت (دانلود) نموده سپس نمره تمرين مربوطه را وارد نماييد. پس از وارد نمره هاي تمرين، نمره تمرين دانشجو محاسبه گرديده و در ليست نمره وارد شده و آنگاه پيامي به دانشجو ارسال مي شود.    
                             </a></li>                
                <li><a>
    
                              اعلان ها و اطلاعيه هايي که توسط شما ارسال شده است را از قسمت <b>اطلاعيه ها و اعلان هاي 
                    ارسالي شما</b> 
                              مشاهده نماييد.</a></li>
                
                    <li><a>
                    براي ارسال اطلاعيه به کاربران مختلف وب سايت، از قسمت <b>ارسال اطلاعيه</b>، و 
                    براي ويرايش اطلاعيه هاي ارسالي از قسمت <b>ويرايش اطلاعيه</b> استفاده 
                    نماييد.</a></li>
                    
                    <li><a>
                    براي معرفي و پيشنهاد انواع وب سايتهاي مفيد از قسمت <b>وب سايت جديد</b>، و براي 
                    تعيين دانشگاههايي که در آنها تدريس داريد از قسمت <b>دانشگاه ها</b> استفاده 
                    نماييد.</a></li>
                    
                    
                    <li><a>
                    براي تعريف درس دانشگاهي (که تدريس مي کنيد)&nbsp; ولي در ليست دروس تعريف شده توسط 
                    مديريت سايت وجود ندارد از قسمت <b>درس جديد</b>، براي&nbsp; ارائه&nbsp;گروه درسي 
                    (انتخاب توسط دانشجو) از قسمت <b>گروه درسي جديد</b> استفاده نماييد.</a></li>
                   
                   
                   <li><a>
                    براي ويرايش گروه درسي ارائه شده، ارسال پيام به 
                    دانشجوياني که گروه درسي را انتخاب کرده اند و نيز تغيير تاريخ امتحانات از قسمت <b>دروس ارائه شده</b> استفاده 
                    نماييد.</a></li>
                    
                    
                    <li><a>
                    براي وارد کردن نمرات (ليست دانشجويان)، از قسمت <b>وارد کردن نمرات</b> استفاده 
                    نماييد.</a></li>
                    
                    <li><a>
                    براي تغيير تاريخ امتحانات (ميان ترم، پايان ترم، تحويل پروژه و ...) از قسمت <b>
                    تاريخ امتحان</b> استفاده 
                    نماييد.</a></li>
                    
                    <li><a>
                              براي مشاهده اعتراضات دانشجويان به نمرات، از قسمت <b>اعتراض به نمره</b>&nbsp; 
                    استفاده 
                    نماييد.</a></li>
                    
                    <li><a>
                              براي مشاهده آلبوم ها و عکسهايي که ارسال نموده ايد از قسمت <b>آلبوم عکس </b>
                              استفاده نماييد. براي مشاهده آلبوم و عکسهاي آن توسط ديگران گزينه مشاهده توسط اعضا 
                              را انتخاب و تاييد نماييد.</a></li>
            </ul>

                                    </div>
                                </li>
                                

                                 
                               </ol>
                     
 
	        </ol>
	
        </div>
					
    </div>
  
  
  
  
    
</div>

        <!-- /floatcontainer -->  
        
        
        
        
        <!-- floatcontainer --> 
        

<div class="body_wrapper5" dir="rtl" style="width: 100%" align="right">

                        	
	<div id="content_container5" class="contentright" style="margin-left: 0px;">
		<div id="content5" style="margin-left: 0px;">
                        	
                                
	                                <ol id="forums5" class="floatcontainer">

                         <!-- section 1 --> 
                                 		
		                                <li class="forumbit_nopost L1" id="cat5">
                                		
                                		
	                                        <div class="forumhead foruminfo L1 collapse">
                                                <h2>
                                                    <span class="forumtitle">
                                                    <a href="http://">وب سايتهاي پيشنهادي شما به دانشجويان</a></span><a class="collapse" id="collapse_category_5" href=""><img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                                                </h2>
                                            </div>
                                                   
                                            
                                                               
                                            <ol id="category_5" class="childforum" style="display: none;">
                                                    
                                                    
                                                        
                                                        
                                                        <!--first subsection-->
                                                                        
                                                        <li id="forum5" class="forumbit_post">
                                                            <div class="forumrow">

<asp:GridView ID="GridViewLink" 
             runat="server" 
                                                                                                                                     
             AutoGenerateColumns="False" 
             Font-Bold="False"
                                                                                                                                                                        
                                                                                                                
              
              
                                                                                                                                     
             GridLines="Both" 
             EnableViewState="False"
                                                                                                                                                                        
             PageSize="100000" 
                                                                                                                                     
             Style="margin-right: 0px; text-align: center;" 
             Width="100%"
                                                                                                                                                                        
             TabIndex="1" 
             DataKeyNames="linkID" 
                                                                                                                                     
             HorizontalAlign="Center" Height="16px" 
                                                                                                                                     
             onrowcommand="GridViewLink_RowCommand" BackColor="White" 
             BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                                                                                                                                                        <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="#000066" />
                                                                                                                                                                        <Columns>
                                                                                                                                                                          <asp:BoundField DataField="linkAouthorName" HeaderText="معرفي توسط ">
                                                                                                                                                                              <ItemStyle Width="11%" HorizontalAlign="Right" />
                                                                                                                                                                            </asp:BoundField>
                                                                                                                                                                            <asp:BoundField DataField="linkAouthorLastName" HeaderText="استاد" >
                                                                                                                                                                                <ItemStyle Width="19%" HorizontalAlign="Right" />
                                                                                                                                                                            </asp:BoundField>
                                                                                                                                                                            <asp:ButtonField CommandName="goToShow" DataTextField="linkTitle" 
                                                                                                                                                                                HeaderText="عنوان وب سايت">
                                                                                                                                                                                <ItemStyle Font-Underline="False" Width="30%" HorizontalAlign="Right" />
                                                                                                                                                                            </asp:ButtonField>
                                                                                                                                                                            
                                                                                                                                                                          
                                                                                                                                                                            <asp:ButtonField CommandName="goToShow" DataTextField="linkAddress" 
                                                                                                                                                                                HeaderText="آدرس وب سايت">
                                                                                                                                                                                <ItemStyle HorizontalAlign="Left" Width="40%" />
                                                                                                                                                                            </asp:ButtonField>
                                                                                                                                                                            
                                                                                                                                                                          
                                                                                                                                                                        </Columns>
                                                                                                                                                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                                                                                                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                                                                                                                                        <EmptyDataTemplate>
                                                                                                                                                                        </EmptyDataTemplate>
                                                                                                                                                                        <SelectedRowStyle Wrap="False" BackColor="#669999" Font-Bold="True" 
                                                                                                                                                                            ForeColor="White" />
                                                                                                                                                                        <HeaderStyle   HorizontalAlign="Right" 
                                                                                                                                                                            BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                        <AlternatingRowStyle Wrap="True" />
                                                                                                                                                                    </asp:GridView>                                                            
                                                            </div>
                                                        </li>
                                                        

                                                         
                                                       </ol>
                                             
                         
	                                </ol>
                        	
                                </div>
                        					
                            </div>
                          
                          
                          
                          
                            
                        </div>        
        

        <!-- /floatcontainer -->        
        
        
        
        
        
                  
                                  
     <!-- floatcontainer -->
	
    <div class="body_wrapper3" dir="rtl" with:"100%">

	
	<div id="content_container3" class="contentright" style="margin-left: 0px;">
		<div id="content3" style="margin-left: 0px;">
	
        
	        <ol id="forums3" class="floatcontainer">

 <!-- section 1 --> 
         		
		        <li class="forumbit_nopost L1" id="cat3">
        		
        		
	                <div class="forumhead foruminfo L1 collapse">
                        <h2>
                            <span class="forumtitle">
                            <a href="http://">اطلاعيه ها و اعلان هاي ارسالي شما</a></span>
                            <span class="forumlastpost"></span>
                            
                            <a class="collapse" id="collapse_category_3" href="">
                            <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                        </h2>
                    </div>
                           
                    
                                       
                    <ol id="category_3" class="childforum" style="display: none;">
                            
                            
                                
                                
                                <!--first subsection-->
                                                
                                <li id="forum3" class="forumbit_post">
                                    <div class="forumrow">
                                    
                                    
                                    
<table class="TableMy" dir="ltr" id="Table2">
                    <tr>
                        <td align="right" width="25%">
                            <b>پروژه و کارآموزي</b></td>
                        <td align="right" width="25%">
                            <b>نرم افزارهاي تخصصي</b></td>
                        <td align="right" width="25%">
                            <b>دانلود فايل، اسلايد و جزوه </b></td>
                        <td align="right" width="25%">
                            <b>تاريخ و ساعت کلاس</b></td>
                    </tr>
                    <tr>
                        <td align="right" width="25%" valign="top">
                                                   
                                                                      <asp:GridView ID="GridViewProject" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" onrowcommand="GridViewProject_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate">
                                                                            <ItemStyle Font-Underline="False" Width="3%" />
                                                                        </asp:ButtonField>                            
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle">
                                                                            <ItemStyle Font-Underline="True" Width="97%" />
                                                                        </asp:ButtonField>
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                 </td>
                        <td align="right" width="25%" valign="top">

                                                                      <asp:GridView ID="GridViewSoftwareDownLoad" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" 
                                                           onrowcommand="GridViewSoftwareDownLoad_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate">
                                                                            <ItemStyle Font-Underline="False" Width="3%" />
                                                                        </asp:ButtonField>                            
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle">
                                                                            <ItemStyle Font-Underline="True" Width="97%" />
                                                                        </asp:ButtonField>
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                 </td>
                        <td align="right" width="25%" valign="top">
                                                                      <asp:GridView ID="GridViewDownLoadFile" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" onrowcommand="GridViewDownLoadFile_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                                                            <ItemStyle Font-Underline="False" Width="10%" />
                                                                        </asp:ButtonField>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                                                            <ItemStyle Font-Underline="True" Width="90%" />
                                                                        </asp:ButtonField>
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                    </td>
                        <td align="right" width="25%" valign="top">
                                                                      <asp:GridView ID="GridViewClass" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" onrowcommand="GridViewClass_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                                                            <ItemStyle Font-Underline="False" Width="10%" />
                                                                        </asp:ButtonField>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                                                            <ItemStyle Font-Underline="True" Width="90%" />
                                                                        </asp:ButtonField>
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                 </td>
                    </tr>
                    <tr>
                        <td align="right" width="25%">
                            &nbsp;</td>
                        <td align="right" width="25%">
                            &nbsp;</td>
                        <td align="right" width="25%">
                            &nbsp;</td>
                        <td align="right" width="25%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" width="25%">
                            <b>اخبار</b></td>
                        <td align="right" width="25%">
                            <b>پيوندهاي مفيد</b></td>
                        <td align="right" width="25%">
                            <b>تحويل پروژه</b></td>
                        <td align="right" width="25%">
                            <b>تاريخ و ساعت امتحان</b></td>
                    </tr>
                    <tr>
                        <td width="25%" valign="top">

                            
                                                                      <asp:GridView ID="GridViewNews" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                          onrowcommand="GridViewNews_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate">
                                                                            <ItemStyle Font-Underline="False" Width="3%" />
                                                                        </asp:ButtonField>                            
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle">
                                                                            <ItemStyle Font-Underline="True" Width="97%" />
                                                                        </asp:ButtonField>
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                            <br />

                         </td>
                        <td width="25%" valign="top">
                                                   
                                                                      <asp:GridView ID="GridViewGoodLinks" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" 
                                                           onrowcommand="GridViewGoodLinks_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate">
                                                                            <ItemStyle Font-Underline="False" Width="3%" />
                                                                        </asp:ButtonField>                            
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle">
                                                                            <ItemStyle Font-Underline="True" Width="97%" />
                                                                        </asp:ButtonField>

                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                 </td>
                        <td valign="top" width="25%">
                                                                      <asp:GridView ID="GridViewThavileProje" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" onrowcommand="GridViewThavileProje_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                                                            <ItemStyle Font-Underline="False" Width="10%" />
                                                                        </asp:ButtonField>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                                                            <ItemStyle Font-Underline="True" Width="90%" />
                                                                        </asp:ButtonField>
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                 </td>
                        <td valign="top" width="25%">

                                                                      <asp:GridView ID="GridViewExamination" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" onrowcommand="GridViewExamination_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                                                            <ItemStyle Font-Underline="False" Width="10%" />
                                                                        </asp:ButtonField>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                                                            <ItemStyle Font-Underline="True" Width="90%" />
                                                                        </asp:ButtonField>
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                 </td>
                    </tr>
                    <tr>
                        <td width="25%" valign="top">

                              &nbsp;</td>
                        <td width="25%" valign="top" align="right">
                              <b>تدريس خصوصي</b></td>
                        <td valign="top" width="25%" align="right">
                              <b>اخبار مديريت سايت</b></td>
                        <td valign="top" width="25%" align="right">

                              <b>برنامه نويسي</b></td>
                    </tr>
                    <tr>
                        <td width="25%" valign="top">

                              &nbsp;</td>
                        <td width="25%" valign="top">

                                                                      <asp:GridView ID="GridViewPrivateTeaching" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" 
                                                           onrowcommand="GridViewPrivateTeaching_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate">
                                                                            <ItemStyle Font-Underline="False" Width="3%" />
                                                                        </asp:ButtonField>                            
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle">
                                                                            <ItemStyle Font-Underline="True" Width="97%" />
                                                                        </asp:ButtonField>
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                 </td>
                        <td valign="top" width="25%">
                                                   
                                                                      <asp:GridView ID="GridViewAdminNews" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" 
                                                           onrowcommand="GridViewAdminNews_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate">
                                                                            <ItemStyle Font-Underline="False" Width="3%" />
                                                                        </asp:ButtonField>                                                                                                
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle">
                                                                            <ItemStyle Font-Underline="True" Width="97%" />
                                                                        </asp:ButtonField>                            
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                 </td>
                        <td valign="top" width="25%">

                                                                      <asp:GridView ID="GridViewProgramming" runat="server" AutoGenerateColumns="False" 
                                                                        Font-Bold="False"   GridLines="Both" 
                                                                        EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                                                                Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                                                        HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                                                        ForeColor="Black" 
                                                           onrowcommand="GridViewProgramming_RowCommand">
                                                                    <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue" />
                                                                    <Columns>
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsDate">
                                                                            <ItemStyle Font-Underline="False" Width="3%" />
                                                                        </asp:ButtonField>                            
                                                                        <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle">
                                                                            <ItemStyle Font-Underline="True" Width="97%" />
                                                                        </asp:ButtonField>
                                                                    </Columns>
                                                                    <EmptyDataTemplate>
                                                                        
                                                                    </EmptyDataTemplate>
                                                                    <SelectedRowStyle 
                                                                        Wrap="False" />
                                                                    <HeaderStyle 
                                                                          
                                                                        HorizontalAlign="Right" />
                                                                    <AlternatingRowStyle Wrap="True" />
                                                                </asp:GridView>
                                                                    
                                                                    
                                                                 </td>
                    </tr>
              </table>                                              
    
    
    
    
    
                                    </div>
                                </li>
                                

                                 
                               </ol>
                     
 
	        </ol>
	
        </div>
					
    </div>
  
  
  
  
    
</div>

        <!-- /floatcontainer --> 

                 
 </div>
        
        <div class="four_equalsMy">
            
            

        
            
                
        </div> 

                

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
