<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherGroupCourse.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherGroupCourse" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

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
            
        
            
                
        </div>
       
        
                
        <!-- Left Column -->        
        
        
 
 
        <!-- Middle Column -->
               
        <div class="right_three">      
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
         </asp:ToolkitScriptManager>

          
                 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate> 
                            <table Class="TableMy">
                                <tr>
                                    <td class="style20" align="right" colspan="6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" class="style20" colspan="6">
                                        <b>ورود اطلاعات&nbsp;درس ارائه شده توسط استاد&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                                        &nbsp;<asp:Label ID="lblID" runat="server" CssClass="LableMy" Visible="False"></asp:Label>
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                            DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                                        </b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20" align="right" colspan="6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style20" align="right" rowspan="2" valign="top">
                                        سال و ترم ارائه درس:</td>
                                    <td class="style20" align="right" rowspan="2" valign="top">
                                        <asp:DropDownList ID="drliTermNumber" runat="server" AutoPostBack="True" 
                                            CssClass="InputControl" DataTextField="SemisterNumber" Height="20px" 
                                            Width="130px">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style20" align="right">
                                        درس انتخاب شده:</td>
                                    <td align="right" class="style19" colspan="3">
                                                <asp:Label ID="lblCourseName" runat="server" CssClass="LableMy" 
                                                    Font-Bold="True" Text="Label" Width="100%"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style20">
                                        &nbsp;</td>
                                    <td align="right" class="style19">
                                        &nbsp;</td>
                                    <td align="right" class="style18">
                                        &nbsp;</td>
                                    <td align="right">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" class="style20" valign="top">
                                        &nbsp;</td>
                                    <td align="right" class="style20" valign="top">
                                        &nbsp;</td>
                                    <td align="right" class="style20">
                                        نوع درس:</td>
                                    <td align="right" class="style19">
                                        <asp:Label ID="lblCourseType" runat="server" CssClass="LableMy" Text="Label" 
                                            Width="100%"></asp:Label>
                                    </td>
                                    <td align="right" class="style18">
                                        مقطع درس:</td>
                                    <td align="right">
                                        <asp:Label ID="lblCourseEducationLevel" runat="server" CssClass="LableMy" 
                                            Height="16px" Text="Label" Width="100%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td class="style19">
                                                &nbsp;</td>
                                    <td class="style18">
                                                &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style20" align="right">
                            دانشگاه ارائه دهنده درس:</td>
                                    <td class="style20" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="drliUniversity" ErrorMessage="دانشگاه ارائه دهنده را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="drliUniversity" runat="server" 
                        Width="130px" TabIndex="3" CssClass="InputControl" DataTextField="UniversityName" 
                                Height="20px">
                    </asp:DropDownList>
                                    </td>
                                    <td class="style20" align="right">
                                                دانشکده:</td>
                                    <td align="right" class="style19">
                                                <asp:Label ID="lblCourseFacultyName" runat="server" Text="Label" 
                                            Width="100%" CssClass="LableMy"></asp:Label>
                                            </td>
                                    <td align="right" class="style18">
                                                ارائه براي رشته:</td>
                                    <td align="right">
                                                <asp:Label ID="lblCourseEducationBranchName" runat="server" Text="Label" 
                                            Width="100%" CssClass="LableMy"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                                &nbsp;</td>
                                    <td class="style20">
                                                &nbsp;</td>
                                    <td class="style20">
                                                &nbsp;</td>
                                    <td class="style19">
                                                &nbsp;</td>
                                    <td class="style18">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style20" align="right">
                                        &nbsp;</td>
                                    <td class="style20" align="right">
                            <asp:LinkButton CssClass="LinkButtonMy" ID="LinkButton1" runat="server" CausesValidation="False" 
                                PostBackUrl="~/PresentationLayer/User/Pages/Teacher/TeacherAddCourse.aspx" 
                                TabIndex="5" Font-Underline="True">تعريف درس جديد</asp:LinkButton>
                                    </td>
                                    <td class="style20" align="right">
                                                تعداد واحد تئوري:</td>
                                    <td align="right" class="style19">
                                                <asp:Label ID="lblCourseTheoryUnit" runat="server" Text="Label" 
                                            CssClass="LableMy" Width="100%"></asp:Label>
                                            </td>
                                    <td align="right" class="style18">
                                                تعداد واحدعملي:
                                            </td>
                                    <td align="right">
                                                <asp:Label ID="lblCoursePracticalUnit" runat="server" Text="Label" 
                                                    CssClass="LableMy" Width="100%"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                                &nbsp;</td>
                                    <td class="style20">
                                                &nbsp;</td>
                                    <td class="style20">
                                                &nbsp;</td>
                                    <td class="style19">
                                                &nbsp;</td>
                                    <td class="style18">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style20" align="right">
                                        نام درس</td>
                                    <td class="style20" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="drliCourse" ErrorMessage="درس را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="drliCourse" runat="server" 
                        Width="130px" TabIndex="4" CssClass="InputControl" DataTextField="CourseName" 
                                        ontextchanged="drliCourse_TextChanged" AutoPostBack="True" 
                                Height="20px">
                    </asp:DropDownList>
                                    </td>
                                    <td class="style20" align="right">
                                        شماره درس:</td>
                                    <td align="right" class="style19">
                                                <asp:Label ID="lblCourseID" runat="server" Text="Label" 
                                            CssClass="LableMy" Width="100%"></asp:Label>
                                            </td>
                                    <td align="right" class="style18">
                                                ترم ارائه درس:</td>
                                    <td align="right">
                                                <asp:Label ID="lblCourseSemisterNumber" runat="server" Text="Label" 
                                                    CssClass="LableMy" Width="100%"></asp:Label>
                                            </td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td class="style20">
                                        &nbsp;</td>
                                    <td class="style20">
                                        <br />
                                    </td>
                                    <td class="style19">
                                                &nbsp;</td>
                                    <td class="style18">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style20">
                                        شماره گروه (مشخصه):</td>
                                    <td class="style20">
                                        <asp:TextBox ID="txtCourseGroupNumber" runat="server" CssClass="InputControl" 
                                            Height="20px" MaxLength="10" TabIndex="5" Width="50px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="txtCourseGroupNumber" Display="Dynamic" 
                                            ErrorMessage="شماره گروه درسي جديد را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="style20">
                                        شماره کلاس تدريس:</td>
                                    <td class="style19">
                                        <asp:TextBox ID="txtCourseGroupClassNumber" runat="server" 
                                            CssClass="InputControl" Height="20px" MaxLength="10" TabIndex="6" Width="50px"></asp:TextBox>
                                    </td>
                                    <td class="style18">
                                        ظرفيت کلاس:</td>
                                    <td>
                                        <asp:TextBox ID="txtCourseGroupCapicity" runat="server" CssClass="InputControl" 
                                            Height="20px" MaxLength="2" TabIndex="7" Width="50px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="txtCourseGroupCapicity" Display="Dynamic" 
                                            ErrorMessage="ظرفيت کلاس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                </table>
                        <br />
                            <table Class="TableMy">
                                <tr>
                                    <td class="style29" colspan="2">
                                                <strong>تاريخ و ساعت امتحان&nbsp;و&nbsp;تحويل تمرين</strong></td>
                                    <td class="style3">
                                                &nbsp;</td>
                                    <td class="style30">
                                                &nbsp;</td>
                                    <td class="style2">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style29" colspan="2">
                                                &nbsp;</td>
                                    <td class="style3">
                                                &nbsp;</td>
                                    <td class="style30">
                                                &nbsp;</td>
                                    <td class="style2">
                                                &nbsp;</td>
                                    <td>
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style29">
                                        <asp:RangeValidator ID="RangeValidatorFinalDate" runat="server" 
                                        ControlToValidate="PersianDatePickupFinalTerm" Display="Dynamic" 
                                        ErrorMessage=" تاريخ امتحان ميان ترم بايد بين" MaximumValue="1400/12/31" 
                                        MinimumValue="1389/01/01" SetFocusOnError="True" Type="Date">*</asp:RangeValidator>
                                                امتحان پايان ترم:</td>
                                    <td align="right" class="style1">
                                        <pcal:PersianDatePickup ID="PersianDatePickupFinalTerm" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="8" Width="65px" Height="20px"></pcal:PersianDatePickup></td>
                                    <td align="right" class="style3">
                                        <asp:RangeValidator ID="RangeValidatorFinalTime" runat="server" 
                                        ControlToValidate="txtCourseGroupFinalTime" Display="Dynamic" 
                                        ErrorMessage="ساعت امتحان" MaximumValue="24:00" MinimumValue="00:00" 
                                        SetFocusOnError="True">*</asp:RangeValidator>ساعت&nbsp;<asp:TextBox ID="txtCourseGroupFinalTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="9" Height="20px"></asp:TextBox></td>
                                    <td align="right" class="style30">
                                                <asp:RangeValidator ID="RangeValidatorMidTermDate" runat="server" 
                                        ControlToValidate="PersianDatePickupMidTerm" Display="Dynamic" 
                                        ErrorMessage=" تاريخ امتحان ميان ترم بايد بين" MaximumValue="1400/12/31" 
                                        MinimumValue="1389/01/01" SetFocusOnError="True" Type="Date">*</asp:RangeValidator>
                                                امتحان ميان ترم:</td>
                                    <td align="right" class="style2">
                                        <pcal:PersianDatePickup ID="PersianDatePickupMidTerm" runat="server" 
                                            CssClass="InputControl" ReadOnly="True" TabIndex="10" Width="65px" 
                                            Height="20px"></pcal:PersianDatePickup>
                                                </td>
                                    <td align="right">
                                                <asp:RangeValidator ID="RangeValidatorMidTermTime" runat="server" 
                                        ControlToValidate="txtCourseGroupMidTermTime" Display="Dynamic" 
                                        ErrorMessage="ساعت امتحان" MaximumValue="24:00" MinimumValue="00:00" 
                                        SetFocusOnError="True">*</asp:RangeValidator>&nbsp;ساعت
                    <asp:TextBox ID="txtCourseGroupMidTermTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="11" Height="20px"></asp:TextBox>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style29">
                                                &nbsp;</td>
                                    <td class="style1">
                                                &nbsp;</td>
                                    <td class="style3">
                                                &nbsp;</td>
                                    <td class="style30">
                                                &nbsp;</td>
                                    <td class="style2">
                                                &nbsp;</td>
                                    <td class="style22">
                                                &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style29">
                                        <asp:RangeValidator ID="RangeValidatorExercizeDate" runat="server" 
                                        ControlToValidate="PersianDatePickupExcercise" Display="Dynamic" 
                                        ErrorMessage=" تاريخ امتحان ميان ترم بايد بين" MaximumValue="1400/12/31" 
                                        MinimumValue="1389/01/01" SetFocusOnError="True" Type="Date">*</asp:RangeValidator>
                                        تحويل تمرين:</td>
                                    <td align="right" class="style1">
                                        <pcal:PersianDatePickup ID="PersianDatePickupExcercise" runat="server" 
                                            CssClass="InputControl" ReadOnly="True" TabIndex="12" Width="65px" 
                                            Height="20px"></pcal:PersianDatePickup>
                                        </td>
                                    <td align="right" class="style3">
                                        <asp:RangeValidator ID="RangeValidatorExercizeTime" runat="server" 
                                        ControlToValidate="txtCourseGroupExerciseTime" Display="Dynamic" 
                                        ErrorMessage="ساعت امتحان" MaximumValue="24:00" MinimumValue="00:00" 
                                        SetFocusOnError="True">*</asp:RangeValidator>ساعت&nbsp;<asp:TextBox 
                                                    ID="txtCourseGroupExerciseTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="13" Height="20px"></asp:TextBox></td>
                                    <td align="right" class="style30">
                                        <asp:RangeValidator ID="RangeValidatorPracticalDate" runat="server" 
                                        ControlToValidate="PersianDatePickupPractical" Display="Dynamic" 
                                        ErrorMessage=" تاريخ امتحان ميان ترم بايد بين" MaximumValue="1400/12/31" 
                                        MinimumValue="1389/01/01" SetFocusOnError="True" Type="Date">*</asp:RangeValidator>
                                                امتحان عملي:</td>
                                    <td align="right" class="style2">
                                        <pcal:PersianDatePickup ID="PersianDatePickupPractical" runat="server" 
                                            CssClass="InputControl" ReadOnly="True" TabIndex="14" Width="65px" 
                                            Height="20px"></pcal:PersianDatePickup>
                                                </td>
                                    <td align="right">
                                        <asp:RangeValidator ID="RangeValidatorPracticalTime" runat="server" 
                                        ControlToValidate="txtCourseGroupPracticalTime" Display="Dynamic" 
                                        ErrorMessage="ساعت امتحان" MaximumValue="24:00" MinimumValue="00:00" 
                                        SetFocusOnError="True">*</asp:RangeValidator>&nbsp;ساعت
                                        <asp:TextBox ID="txtCourseGroupPracticalTime" runat="server" Width="46px" 
                        CssClass="InputControl" TabIndex="15" Height="20px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="style29">
                                        &nbsp;</td>
                                    <td align="right" class="style1">
                                        &nbsp;</td>
                                    <td align="right" class="style3">
                                        &nbsp;</td>
                                    <td align="right" class="style30">
                                                &nbsp;</td>
                                    <td align="right" class="style2">
                                        &nbsp;</td>
                                    <td align="right">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style29">
                                        &nbsp;</td>
                                    <td align="right" class="style1">
                                        &nbsp;</td>
                                    <td align="right" class="style3">
                                        &nbsp;</td>
                                    <td align="right" class="style30">
                                                &nbsp;</td>
                                    <td align="right" class="style2">
                                        &nbsp;</td>
                                    <td>
                            <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ايجاد گروه" 
                        Width="87px" onclick="btnSave_Click" TabIndex="16" CssClass="Button" />
                                                </td>
                                </tr>
                            </table>
                
                  </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="drliTermNumber" />
                    </Triggers>
                </asp:UpdatePanel>        
                 
          
             
           
        </div>
        
        <div id="footer" >
                    
                    <ul>
                        <li><a href="../../../Main.aspx">صفحه اصليي                     <li>|</li>
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
