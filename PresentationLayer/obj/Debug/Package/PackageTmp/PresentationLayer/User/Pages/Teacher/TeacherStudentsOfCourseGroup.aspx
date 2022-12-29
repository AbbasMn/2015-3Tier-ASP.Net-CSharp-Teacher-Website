<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherStudentsOfCourseGroup.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherStudentsOfCourseGroup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>
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

<!--  ************************************************************************************************ -->
<script type="text/javascript" src="../../.../../../jsMy/yuiloader-dom-event.js"></script>
<script type="text/javascript" src="../../../jsMy/vbulletin-core.js"></script>

<link rel="stylesheet" type="text/css" href="../../../CssMy/main-rollup.css">	

<link rel="stylesheet" type="text/css" href="../../../CssMy/floatcontainer.css">	

<!--  ************************************************************************************************ -->





    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }

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
                    onclick="lbtnLogOut_Click">(LogOut) خروج</asp:LinkButton>
         
                    /           

                          <asp:LinkButton CssClass="LinkButtonMy" ID="btnLoginPage" runat="server" CausesValidation="false"
                    onclick="btnLoginPage_Click">(Control Pannel) کنترل پانل</asp:LinkButton>  
                            </td>



                            <td width="70%" valign="top" align="right" dir="ltr">



                            </td> 
                        </tr>
                     </table>
        


       <!-- Left Column -->         
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
                </table>
        
            
                
        </div>
       
        
                
        <!-- Left Column -->        
        
        
 
 
        <!-- Middle Column -->
               
        <div class="right_three">   
        
                  <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
             
</asp:ToolkitScriptManager>

          
                 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>    
          
         <!-- floatcontainer -->
	
    <div class="body_wrapper" dir="rtl" with:"100%">

	
	<div id="content_container" class="contentright" style="margin-left: 0px;">
		<div id="content" style="margin-left: 0px;">
	
        
	        <ol id="forums" class="floatcontainer">

 <!-- section 1 --> 
         		
		        <li class="forumbit_nopost L1" id="cat">
        		
        		
	                <div class="forumhead foruminfo L1 collapse">
                        <h2>
                            <span class="forumtitle">
                            <a href="http://">درس انتخابي و ويرايش تاريح امتحانات </a></span>
                            <span class="forumlastpost"></span>
                            
                            <a class="collapse" id="collapse_category_1" href="">
                            <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                        </h2>
                    </div>
                           
                    
                                       
                    <ol id="category_1" class="childforum" style="display: none;">
                            
                            
                                
                                
                                <!--first subsection-->
                                                
                                <li id="forum81" class="forumbit_post">
                                    <div class="forumrow">

                                         
           <table Class="TableMy">
                                <tr>
                                    <td class="style1" align="right">
    
                            مشخصات درس</td>
                                    <td align="right" class="style10">
                                                &nbsp;</td>
                                    <td align="right" class="style9">
                                                &nbsp;</td>
                                    <td align="right">
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3" align="right">
                                        &nbsp;</td>
                                    <td align="right" class="style10">
                                                &nbsp;</td>
                                    <td align="right" class="style9">
                                                &nbsp;</td>
                                    <td align="right">
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3" align="right">
                                        دانشگاه:</td>
                                    <td align="right" class="style10">
                                                <asp:Label ID="lblCourseUniversity" runat="server" Text="Label" 
                                            Width="100%" CssClass="LableMy"></asp:Label>
                                            </td>
                                    <td align="right" class="style9">
                                                دانشکده:</td>
                                    <td align="right">
                                                <asp:Label ID="lblCourseFacultyName" runat="server" Text="Label" 
                                            Width="100%" CssClass="LableMy"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style10">
                                                &nbsp;</td>
                                    <td class="style9">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11" align="right">
                                        نام درس:</td>
                                    <td align="right" class="style12">
                                                <asp:Label ID="lblCourseName" runat="server" Text="Label" 
                                            Width="110%" CssClass="LableMy" Height="16px"></asp:Label>
                                            </td>
                                    <td align="right" class="style13">
                                                ارائه براي رشته:</td>
                                    <td align="right" class="style14">
                                                <asp:Label ID="lblCourseBranch" runat="server" Text="Label" CssClass="LableMy" 
                                                    Width="100%"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style10">
                                                &nbsp;</td>
                                    <td class="style9">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3" align="right">
                                        نوع درس:</td>
                                    <td align="right" class="style10">
                                                <asp:Label ID="lblCourseEducationBranchName" runat="server" Text="Label" 
                                            Width="100%" CssClass="LableMy"></asp:Label>
                                            </td>
                                    <td align="right" class="style9">
                                                ترم ارائه درس:</td>
                                    <td align="right">
                                                <asp:Label ID="lblCourseSemisterNumber" runat="server" Text="Label" 
                                                    CssClass="LableMy" Width="100%"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style10">
                                                &nbsp;</td>
                                    <td class="style9">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3" align="right">
                                        شماره درس:</td>
                                    <td align="right" class="style10">
                                                <asp:Label ID="lblCourseID" runat="server" Text="Label" CssClass="LableMy" 
                                                    Width="100%"></asp:Label>
                                            </td>
                                    <td align="right" class="style9">
                                                گروه درس:</td>
                                    <td align="right">
                                                <asp:Label ID="lblCourseGroupNumber" runat="server" Text="Label" 
                                                    CssClass="LableMy" Width="100%"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style10">
                                                &nbsp;</td>
                                    <td class="style9">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3" align="right">
                                        تعداد واحد تئوري :</td>
                                    <td align="right" class="style10">
                                                <asp:Label ID="lblCourseTheoryUnit" runat="server" Text="Label" 
                                                    CssClass="LableMy" Width="100%"></asp:Label>
                                            </td>
                                    <td align="right" class="style9">
                                                تعداد واحدعملي:</td>
                                    <td align="right">
                                                <asp:Label ID="lblCoursePracticalUnit" runat="server" Text="Label" 
                                                    CssClass="LableMy" Width="100%"></asp:Label>
                                            </td>
                                </tr>
                            </table>
                            
                            <p></p>
                            <table Class="TableMy">
                                <tr>
                                    <td class="style1">
                           تاريخ امتحانات درس</td>
                                    <td class="style6">
                                                &nbsp;</td>
                                    <td class="style8">
                                        &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        &nbsp;</td>
                                    <td class="style6">
                                                &nbsp;</td>
                                    <td class="style8">
                                        &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        تاريخ تحويل تمرين:</td>
                                    <td class="style6">
                                                <asp:Label ID="lblCourseExcersizeDateTime" runat="server" Text="Label" 
                                            Width="151px" CssClass="LableMy"></asp:Label>
                                            </td>
                                    <td class="style8">
                                    تاريخ امتحان پايان ترم:</td>
                                    <td>
                                                <asp:Label ID="lblCourseFinalDateTime" runat="server" Text="Label" 
                                            Width="151px" CssClass="LableMy"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        &nbsp;</td>
                                    <td class="style6">
                                                &nbsp;</td>
                                    <td class="style8">
                                        &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        تاريخ امتحان عملي:</td>
                                    <td class="style6">
                                                <asp:Label ID="lblCoursePracticalDateTime" runat="server" Text="Label" 
                                            Width="151px" CssClass="LableMy"></asp:Label>
                                            </td>
                                    <td class="style8">
                                                تاريخ امتحان ميان ترم:</td>
                                    <td>
                                                <asp:Label ID="lblCourseMidtermDateTime" runat="server" Text="Label" 
                                            Width="151px" CssClass="LableMy"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        &nbsp;</td>
                                    <td class="style6">
                                                &nbsp;</td>
                                    <td class="style8">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">

                                            </td>
                                    <td class="style6">
                                                &nbsp;</td>
                                    <td class="style8" align="left">
                                                &nbsp;</td>
                                    <td align="center">
                                 </td>
                                </tr>
                                </table>
                                   
                                   
<table border="0" cellpadding="1" cellspacing="0" Class="TableMy" 
                    align="center" dir="rtl">
                    <tr>
                        <td class="style1" align="right" colspan="7">
                            ويرايش تاريح امتحانات درس</td>
                    </tr>
                    <tr>
                        <td class="style19" align="center" colspan="7">
                    <asp:Label ID="Label1" runat="server" CssClass="LableMy"></asp:Label>
                        &nbsp;<asp:Label ID="Label2" runat="server" CssClass="LableMy"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="style2" dir="rtl" valign="top">
                                    تاريخ و ساعت تحويل تمرين:</td>
                        <td class="style4" dir="rtl" align="right" valign="top">
                            <pcal:PersianDatePickup ID="PersianDatePickup3" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="1" Width="90px"></pcal:PersianDatePickup>
                            </td>
                        <td class="style24" dir="rtl" align="right" valign="top">
                            &nbsp;ساعت&nbsp;
                    <asp:TextBox ID="txtEditCourseGroupExerciseTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="2" Height="22px"></asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidatorExercizeTime" runat="server" 
                                        ControlToValidate="txtEditCourseGroupExerciseTime" Display="Dynamic" 
                                        ErrorMessage="ساعت امتحان" MaximumValue="24:00" MinimumValue="00:00" 
                                        SetFocusOnError="True">*</asp:RangeValidator>
                            </td>
                        <td class="style5" dir="rtl" valign="top">
                                  تاريخ و ساعت امتحان پايان ترم:</td>
                        <td valign="top" align="right">
                            <pcal:PersianDatePickup ID="PersianDatePickup1" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="3" Width="90px"></pcal:PersianDatePickup>
                            </td>
                        <td valign="top" align="right">
                            &nbsp;ساعت&nbsp;
                    <asp:TextBox ID="txtEditCourseGroupFinalTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="4" Height="22px"></asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidatorFinalTime" runat="server" 
                                        ControlToValidate="txtEditCourseGroupFinalTime" Display="Dynamic" 
                                        ErrorMessage="ساعت امتحان" MaximumValue="24:00" MinimumValue="00:00" 
                                        SetFocusOnError="True">*</asp:RangeValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style2">
                                  &nbsp;</td>
                        <td class="style4">
                                  &nbsp;</td>
                        <td class="style24">
                                  &nbsp;</td>
                        <td class="style1" colspan="2">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" 
                                Width="120px" />
                        </td>
                        <td class="style1">
                            &nbsp;</td>
                        <td valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2" valign="top">
                                    تاريخ و ساعت امتحان عملي:</td>
                        <td class="style4" align="right" valign="top">
                            <pcal:PersianDatePickup ID="PersianDatePickup4" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="5" Width="90px"></pcal:PersianDatePickup>
                            </td>
                        <td class="style24" align="right" valign="top">
                            ساعت&nbsp;                   
                            <asp:TextBox ID="txtEditCourseGroupPracticalTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="6" Height="22px"></asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidatorPracticalTime" runat="server" 
                                        ControlToValidate="txtEditCourseGroupPracticalTime" Display="Dynamic" 
                                        ErrorMessage="ساعت امتحان" MaximumValue="24:00" MinimumValue="00:00" 
                                        SetFocusOnError="True">*</asp:RangeValidator>
                            </td>
                        <td class="style5" valign="top">
                                    تاريخ و ساعت امتحان ميان ترم:</td>
                        <td valign="top" align="right">
                            <pcal:PersianDatePickup ID="PersianDatePickup2" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="7" Width="90px"></pcal:PersianDatePickup>
                            </td>
                        <td valign="top" align="right">
                            ساعت&nbsp;
                    <asp:TextBox ID="txtEditCourseGroupMidTermTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="8" Height="22px"></asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidatorMidTermTime" runat="server" 
                                        ControlToValidate="txtEditCourseGroupMidTermTime" Display="Dynamic" 
                                        ErrorMessage="ساعت امتحان" MaximumValue="24:00" MinimumValue="00:00" 
                                        SetFocusOnError="True">*</asp:RangeValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style2" valign="top">
                                    &nbsp;</td>
                        <td class="style4" align="right" valign="top">
                            &nbsp;</td>
                        <td class="style24" align="right" valign="top">
                            &nbsp;</td>
                        <td class="style5" valign="top">
                                    &nbsp;</td>
                        <td valign="top" align="right">
                            &nbsp;</td>
                        <td valign="top" align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2" valign="top">
                                    &nbsp;</td>
                        <td class="style4" align="right" valign="top">
                            &nbsp;</td>
                        <td class="style24" align="right" valign="top">
                            &nbsp;</td>
                        <td class="style5" valign="top">
                                    &nbsp;</td>
                        <td valign="top" align="right">
                            &nbsp;</td>
                        <td valign="top" align="left">
                            <asp:Button ID="btnSaveExam" runat="server" style="margin-right: 0px" Text="ذخيره" 
                        Width="49px" onclick="btnSaveExam_Click" TabIndex="9" CssClass="Button" />
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
           
                <table border="0" cellpadding="1" cellspacing="0" 
                     align="center" Class="TableMy">
                    <tr>
                        <td class="TableBackGroundOfContext" align="center" valign="top">
    
                        &nbsp;
                                      
                 
          
                        
           
                        </td>
                    </tr>
                    <tr>
                        <td class="style15" align="right" valign="top">
                                                  <strong>ليست دانشجويان درس&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                  <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                                                  <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                                                  </strong></td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" align="right" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" valign="top" align="right">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" 
                                EnableViewState="False" PageSize="3" style="margin-right: 0px" 
                                        Width="100%" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px">

                            <Columns>
                                <asp:BoundField DataField="UserStudentID" HeaderText="شماره دانشجويي">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="True" HorizontalAlign="Right" />
                                </asp:BoundField>
<asp:BoundField DataField="UserStudentLastName" HeaderText="نام خانوادگي">
    <HeaderStyle HorizontalAlign="Center" />
    <ItemStyle Wrap="True" HorizontalAlign="Right" />
</asp:BoundField>
                                <asp:BoundField DataField="UserStudentName" 
                                    HeaderText="نام">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="True" HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="ميان ترم">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtMidTerm" runat="server" MaxLength="5" 
                                            Text='<%# Eval("MidTermMark","{0:F2}") %>' Width="45px" 
                                            BorderColor="#FF0066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="پايان ترم">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtFinal" runat="server" MaxLength="5" Width="45px" 
                                            Text='<%# Eval("FinalMark","{0:F2}") %>' BorderColor="#FF0066" 
                                            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="نمره عملي">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtPractical" runat="server" MaxLength="5" Width="45px" 
                                            Text='<%# Eval("PracticalMark","{0:F2}") %>' BorderColor="#FF0066" 
                                            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="نمره تمرين">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtExercise" runat="server" MaxLength="5" Width="45px" 
                                            Text='<%# Eval("ExerciseMark","{0:F2}") %>' BorderColor="#FF0066" 
                                            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="نمره نهايي">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtMark" runat="server" MaxLength="5" 
                                            Width="45px" Text='<%# Eval("TotalMark","{0:F2}") %>' 
                                            BorderColor="#FF0066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                                <RowStyle HorizontalAlign="Right" Wrap="True" Font-Names="Tahoma" 
                                        Font-Size="8pt" VerticalAlign="Middle" />
                                    <AlternatingRowStyle BackColor="#FFFFFF" />
                              <FooterStyle BackColor="#CCCCCC" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" 
                                Wrap="False" />
                            <HeaderStyle BackColor="#1777b1" Font-Bold="True" 
                                Font-Size="8pt" ForeColor="White" Font-Names="Tahoma" 
                                HorizontalAlign="Center" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                                    <br />
                                    </td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" align="left" valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnSave" runat="server" CssClass="Button" 
                                onclick="btnSave_Click" Text="ثبت نمرات" Width="55px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    </table>
            
                  </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="GridView1" />
                    </Triggers>
                </asp:UpdatePanel>         
                  
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

