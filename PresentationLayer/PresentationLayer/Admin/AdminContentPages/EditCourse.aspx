<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCourse.aspx.cs" Inherits="PresentationLayer.Admin.AdminContentPages.EditCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<title>وب سايت علمي - آموزشي مهندس منتصري</title>
	
    <link href="../../CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />
    

<script type="text/javascript" src="../../jsMy/jquery-1.4.2.min.js"></script>


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



 
    <style type="text/css">
        .style1
        {
            width: 295px;
        }
    </style>



 
</head>
<body>
<form id="form1" runat="server">

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
        

      
        
                
        <!-- Left Column -->        
        
        
 
 
        <!-- Middle Column -->
               
        <div class="left_three">      
          
                 
          
             
           
            <br />
    
        <table align="center" Class="TableMy">
            <tr>
                <td class="style3" align="center" colspan="2">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        EnableViewState="False" HeaderText="توجه !" ShowMessageBox="True" 
                        ShowSummary="False" />
            
           
                   
             
           
                </td>
                <td class="style3" align="center">
          
                 
          
                    &nbsp;</td>
                <td class="style3" align="center">
          
                 
          
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td   align="right"  >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtCourseName" Display="Dynamic" 
                        ErrorMessage="نام درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    نام درس:<asp:Label ID="LblCourseName" runat="server" Text="Label" 
                        Visible="False"></asp:Label></td>
                <td align="right">
                    <asp:TextBox ID="txtCourseName" runat="server" Width="132px" MaxLength="30" 
                        CssClass="InputControl" Height="22px" TabIndex="1"></asp:TextBox>
                </td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtCourseID" Display="Dynamic" 
                        ErrorMessage="شماره درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    شماره درس:<asp:Label ID="lblCourseID" runat="server" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
                <td align="right">
                    <asp:TextBox ID="txtCourseID" runat="server" Width="132px" MaxLength="30" 
                        TabIndex="2" CssClass="InputControl" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td    >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td    >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td   align="right"  >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DrLiCourseEducationLevel" Display="Dynamic" 
                        ErrorMessage="مقطع درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    ارائه براي مقطع:<asp:Label ID="LblCourseEducationLevel" runat="server" 
                        CssClass="LableMy" Text="Label"></asp:Label></td>
                <td align="right">
                    <asp:DropDownList ID="DrLiCourseEducationLevel" runat="server" TabIndex="3" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>دکتري</asp:ListItem>
                        <asp:ListItem>کارشناسي ارشد</asp:ListItem>
                        <asp:ListItem>کارشناسي</asp:ListItem>
                        <asp:ListItem>کارداني</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DrLiCourseFacultyName" Display="Dynamic" 
                        ErrorMessage="دانشکده ارائه کننده را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    دانشکده ارائه دهنده:<asp:Label ID="LblCourseFacultyName" runat="server" CssClass="LableMy" 
                        Text="Label"></asp:Label>
                    </td>
                <td align="right">
                    <asp:DropDownList ID="DrLiCourseFacultyName" runat="server" TabIndex="10" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>مهندسي</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td    >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td    >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td   align="right"  >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="drliBranch" Display="Dynamic" 
                        ErrorMessage="دانشکده ارائه کننده را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    ارائه براي رشته:<asp:Label ID="LblCourseBranchName" runat="server" CssClass="LableMy" 
                        Text="Label"></asp:Label></td>
                <td align="right">
                    <asp:DropDownList ID="drliBranch" runat="server" 
                        Width="132px" TabIndex="4" CssClass="InputControl" 
                        DataTextField="EducationBranchName" Height="22px">
                    </asp:DropDownList>
                </td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DrLiCourseType" Display="Dynamic" 
                        ErrorMessage="نوع درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    نوع درس:<asp:Label ID="LblCourseType" runat="server" CssClass="LableMy" 
                        Text="Label"></asp:Label>
                </td>
                <td align="right">
                    <asp:DropDownList ID="DrLiCourseType" runat="server" TabIndex="4" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>تخصصي</asp:ListItem>
                        <asp:ListItem>اصلي</asp:ListItem>
                        <asp:ListItem>پايه</asp:ListItem>
                        <asp:ListItem>عمومي</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td    >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td    >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td   align="right"  >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DrLiCourseTheoryUnit" Display="Dynamic" 
                        ErrorMessage="تعداد واحد تئوري درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    &nbsp;تعداد واحد&nbsp; تئوري درس:
                    <asp:Label ID="LblCourseTheoryUnit" runat="server" CssClass="LableMy" 
                        Text="Label"></asp:Label>
                </td>
                <td align="right">
                    <asp:DropDownList ID="DrLiCourseTheoryUnit" runat="server" TabIndex="5" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="DrLiCoursePracticalUnit" Display="Dynamic" 
                        ErrorMessage="تعداد واحد عملي درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    تعداد واحد عملي درس:&nbsp;
                    <asp:Label ID="LblCoursePracticalUnit" runat="server" CssClass="LableMy" 
                        Text="Label"></asp:Label>
                </td>
                <td align="right">
                    <asp:DropDownList ID="DrLiCoursePracticalUnit" runat="server" TabIndex="6" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td    >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td    >
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td   align="right"  >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="DrLiCourseSemisterNumber" Display="Dynamic" 
                        ErrorMessage="تر ارائه درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    ارائه براي ترم:&nbsp;
                    <asp:Label ID="LblCourseSemisterNumber" runat="server" CssClass="LableMy" 
                        Text="Label"></asp:Label>
                </td>
                <td align="right">
                    <asp:DropDownList ID="DrLiCourseSemisterNumber" runat="server" TabIndex="7" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td align="right">
                    &nbsp;</td>
                <td align="center">
                    <asp:Button ID="btnEdite" runat="server" onclick="btnEdite_Click" 
                        Text="ويرايش درس" style="text-align: left" CssClass="Button" 
                        Width="70px" />
                </td>
            </tr>
            </table>
    
           
                   

            
           
                   
             
           
        </div>
        
         <!-- Middle Column -->      
        
        
        
        
        
        
        
        
        <!-- Right Column -->        
        
        <div class="four_equals r-align" align="right">
           
          <ul id="topnavrightMy">
             <li><a href="AdminSetStudentPermission.aspx"> سطح دسترس دانشجو</a></li>
            <li><a href="AdminAddechnicalEducation.aspx">تعریف دوره تخصصی</a></li> 
            <li><a href="AdminPresentTechnicalEducation.aspx">ارایه دوره تخصصی</a></li> 
            <li><a href="AdminInserNews.aspx">ارسال اطلاعيه</a></li>  
            <li><a href="AdminEditNews.aspx">ويرايش اطلاعيه</a></li> 
            <li><a href="AdminSelectStudentsForRecieveMessage.aspx">ارسال پیام</a></li> 
            <li><a href="AdminShowRecievedMessages.aspx">پیامهای رسیده</a></li> 
            <li><a href="AdminInsertLink.aspx">وب سايت جديد</a></li> 
            <li><a href="TeacherRegistration.aspx">استاد جديد</a></li>          
            <li><a href="AddDeleteUniversity.aspx">دانشگاه</a></li>
            <li><a href="AddDeleteBranch.aspx">رشته تحصيلي</a></li>
            <li><a href="AddDeleteCourse.aspx">درس</a></li>
            <li><a href="AddTermNumber.aspx">ترم تحصيلي</a></li>           
            <li><a href="../../AddPictureGallery.aspx">آلبوم عکس</a></li>
                              
          </ul>  
          
 
                                   
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
