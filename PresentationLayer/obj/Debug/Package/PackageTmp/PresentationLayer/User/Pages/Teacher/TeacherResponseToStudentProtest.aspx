<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherResponseToStudentProtest.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherResponseToStudentProtest" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
       
        
                
        <!-- Left Column -->        
        
        
 
 
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
                                    <li><a>در صورت تغيير نمره دانشجو، نمره جديد و علت تغيير نمره را وارد نماييد.</a></li>

                                    <li><a>با ثبت نمرات جديد، پيام به دانشجويان ارسال مي گردد.</a></li>
       
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
           
                <table border="0" cellpadding="1" cellspacing="0" 
                   Class="TableMy" align="left" 
                    >
                    <tr>
                        <td class="TableBannerBottom">
                            &nbsp;</td>
                        <td class="TableBannerBottom">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="2" align="center" valign="top">
    
        <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
    
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        &nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" align="right" valign="top">
                            <b>اعتراضات</b><br />
                            <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="10pt" 
                                EnableViewState="False" PageSize="3" style="margin-right: 0px" 
                                        Width="100%" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px">

                            <Columns>
                                <asp:BoundField DataField="UserStudentID" 
                                    HeaderText="شماره دانشجويي">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />                                     
                                </asp:BoundField>
                                <asp:BoundField DataField="UserStudentLastName" 
                                    HeaderText="نام خانوادگي" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />                                     
                                </asp:BoundField>
                                <asp:BoundField DataField="UserStudentName" HeaderText="نام" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />                                
                                </asp:BoundField>
                                
                                <asp:BoundField DataField="TakeCourseMidTermMark" HeaderText="ميان ترم" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCourseFinalMark" HeaderText="پايان ترم" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCoursePracticalMark" HeaderText="نمره عملي" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCourseExerciseMark" HeaderText="نمره تمرين" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCourseUltimateMarkAfterReview" 
                                    HeaderText="نمره نهايي" >
                                    <ItemStyle HorizontalAlign="Center" Wrap="False" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="متن اعتراض">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtComplainText" runat="server" Height="40px" 
                                            TextMode="MultiLine" Text='<%# Eval("ComplainText") %>' Enabled="False" 
                                            Font-Names="Tahoma" Font-Size="8pt" ForeColor="#990000" Width="141px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="InputControlMultiLine" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="نمره جديد">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtFinalMark" runat="server" MaxLength="5" 
                                            Text='<%# Eval("TakeCourseUltimateMarkAfterReview","{0:F2}") %>' 
                                            Width="45px" BorderColor="#FF0066" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="علت تغيير نمره">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtComplainResponse" runat="server" Font-Names="Tahoma" 
                                            Font-Size="8pt" ForeColor="#990000" Height="40px" 
                                            TextMode="MultiLine" Width="141px" Text='<%#Eval("ComplainResponse")%>'></asp:TextBox>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="InputControlMultiLine" />
                                    <ItemStyle Width="100px" />
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" align="left">
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" CssClass="Button" 
                                        onclick="Button1_Click" Text="ثبت نمرات جديد" UseSubmitBehavior="False" 
                                        Width="93px" />
                        </td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBannerBottom">
                            &nbsp;</td>
                        <td class="TableBannerBottom">
                            &nbsp;</td>
                    </tr>
                    </table>

                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="GridView1" />
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
