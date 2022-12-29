<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminShowRecievedMessages.aspx.cs" Inherits="PresentationLayer.Admin.AdminContentPages.AdminShowRecievedMessages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        


       <!-- Left Column -->         
        <div class="four_equals">
       
        <table style="width: 100%">
                <tr>
                    <td align="left" valign="top">
                         <ul id="topnavleftMyStudent">
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
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">

       
                    </td>
                </tr>

            </table>
                
        </div>
       
        
                
        <!-- Left Column -->        
        
        
 
 
        <!-- Middle Column -->
               
        <div class="right_three">      
          
    
            <table align="center" style="width: 90%">
                <tr>
                    <td align="center">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
           <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        </td>
                </tr>
                
                <tr>
                    <td align="center">
          
                 
          
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="0" 
                            CellSpacing="0" CssClass="LableMy" RepeatColumns="3" 
                            RepeatDirection="Horizontal" TextAlign="Left" Width="60%" 
                            AutoPostBack="True" 
                            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem>    همه پيامها</asp:ListItem>
                            <asp:ListItem>    پيامهاي پاسخ داده شده</asp:ListItem>
                            <asp:ListItem>    پيامهاي پاسخ داده نشده</asp:ListItem>
                        </asp:RadioButtonList>
            
           
                   
             
           
                        </td>
                </tr>
                
                <tr>
                    <td align="center">
          
                 <asp:Repeater id="repeater1" runat="server" >
                 
                 <HeaderTemplate>
                 
                 </HeaderTemplate>
                 
                 <ItemTemplate>
                 
                    <div class="internalDivMessageMy">
                            <a class="internalDivMessageMylogo" href=""></a><a class="internalDivMessageMylogoTittle" href="">
                               عنوان پيام:    <%#Eval("messageTitle")%></a>
                               <asp:Label ID="lblMessageID" Visible="false"  runat="server" Text=<%#Eval("messageID")%>></asp:Label>

                       </div>
                     
                    <div class="internalDivContainMessageMy">

                            <pMessageMy>
                            <label id="lbl1" class="LableMy"> :پيام</label>
                            <br />
                               <%#Eval("messagePassage")%> 
                            </pMessageMy>
                            
                            <hr class="internalDivLineMessageMy" /> 
                            
                            

                            <pMessageMy>
                            <label id="lbl3" class="LableMy"> گیرنده:</label>
                            <%#Eval("messageRecieverName")%> <%#Eval("messageRecieverLastName")%> - <%#Eval("messageDate")%>
                            </pMessageMy>
                            <hr class="internalDivLineMessageMy" /> 
                            <pMessageMy>
                            <label id="lbl2" class="LableMy">پاسخ دانشجو: <%#Eval("messageResponseDate")%></label>
                            <br />
                               <%#Eval("messageResponsePassage")%> 
                               
                            </pMessageMy>                            
                            

                                
                            
                        </div>
                     
                  </ItemTemplate>
                 
                 <FooterTemplate>
                 
                 </FooterTemplate>
                 
                 </asp:Repeater>
          
                    </td>
                </tr>
                
                              

                <tr>
                    <td align="center">
          
                 
          
                        
                        
          
                 
          
                        
                        
                                
          
                 
          
                        
                        
          
                 
          
                        
                        
                                </td>
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
