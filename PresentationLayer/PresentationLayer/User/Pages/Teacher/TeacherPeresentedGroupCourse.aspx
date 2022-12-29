<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherPeresentedGroupCourse.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherPeresentedGroupCourse" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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


        <script language="javascript" type ="text/javascript">
            function openwindow() {
                addr = "TeacherStudentsOfCourseGroup.aspx?QueryString=" + QueryString;
                open(addr, "a", "titlebar=no,toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=517,height = 600");
            }
    </script>
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
                    <li><a>براي ارسال پيام به دانشجويان درس، بر روي لينک     
                    <b style="text-decoration: underline">پيام به دانشجويان</b> کليک نماييد ابتدا دانشجويان مورد نظر را انتخاب نموده سپس عنوان و متن پيام را ارسال نماييد.  </a></li>   
                    
                    <li><a><b>تذکر مهم</b>: با ثبت نمرات، پاسخ به اعتراض و تغيير تاريخ و ساعت امتحانات، به صورت اتوماتيک پيامي به دانشجويان درس ارسال مي گردد.  </a></li>
                    
                    <li><a>براي مشاهده پاسخ دانشجويان به پيامهاي ارسالي شما بر روي لينک     
                    <b style="text-decoration: underline">پاسخ دانشجويان</b> کليک نماييد. </a></li>
                    
                    
                     <li><a>براي مشاهده پيام هاي ارسالي دانشجويان و نيز پاسخ به پيام ها، روي لينک     
                    <b style="text-decoration: underline">پيامهاي دانشجويان</b>  کليک نماييد. و در پنجره نمايش پيام، براي پاسخ دادن به پيام روي 
                        
                        <img alt="" src="../../../images/Icons/widget-comment.png" /><img alt="" src="../../../images/Icons/widget-comment.png" /> کليک کنيد. </a></li>

                    <li><a>براي ويرايش اطلاعات درس ارائه شده، بر روي لينک     
                    <b style="text-decoration: underline">ويرايش</b> کليک نماييد. 
                    </a></li> 
                    
                    <li><a>براي وارد کردن نمره دانشجويان و نيز تغيير تاريخ امتحانات درس ارائه شده، بر روي لينک     
                    <b style="text-decoration: underline">دانشجويان/تاريخ امتحان</b> کليک نماييد. 
                    </a></li>                     
                   
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
          
                <table border="0" cellpadding="1" cellspacing="0" Class="TableMy" 
                     align="right">
                    <tr>
                        <td class="style1" align="right" valign="top">
                            &nbsp;</td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style1" valign="top">
                            دروس ارائه داده شده ترم&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                            <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                            &nbsp;
                        </td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" align="right" valign="top">
                            &nbsp;</td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" align="right" valign="top">
                            &nbsp;</td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" align="right" valign="top">
                            انتخاب ترم :&nbsp;
                    <asp:DropDownList ID="drliTermNumber" runat="server" 
                        Width="124px" CssClass="InputControl" DataTextField="SemisterNumber" Height="22px" 
                                ontextchanged="drliTermNumber_TextChanged" AutoPostBack="True">
                    </asp:DropDownList>
                                </td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" align="right" valign="top">
                            &nbsp;</td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" DataKeyNames="CourseGroupRowID" EnableViewState="False" 
                                Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" Height="87px" 
                                HorizontalAlign="Center" onrowcommand="GridView1_RowCommand" PageSize="3" 
                                style="margin-right: 0px; text-align: center;" TabIndex="1" Width="100%">

                                <Columns>
                                    <asp:BoundField DataField="CourseGroupUniversityName" HeaderText="دانشگاه">
                                    <ItemStyle HorizontalAlign="Right" Wrap="True" />
                                    </asp:BoundField>
                                    <asp:BoundField ConvertEmptyStringToNull="False" 
                                        DataField="CourseGroupCourseName" HeaderText="نام درس" ReadOnly="True">
                                    <ItemStyle HorizontalAlign="Right" Wrap="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CourseGroupNumber" HeaderText="گروه">
                                    <ItemStyle Width="40px" />
                                    </asp:BoundField>
                                    <asp:ButtonField CommandName="goToSendMessage" Text="پيام به دانشجو">
                                    <ItemStyle Font-Underline="True" Wrap="False" />
                                    </asp:ButtonField>
                                    <asp:ButtonField CommandName="goToStudentResponse" Text="پاسخ دانشجو">
                                    <ItemStyle Font-Underline="True" Wrap="False" />
                                    </asp:ButtonField>
                                    <asp:ButtonField CommandName="goToResponse" Text="پيامهاي دانشجو">
                                    <ItemStyle Font-Underline="True" Wrap="False" />
                                    </asp:ButtonField>
                                    <asp:ButtonField CommandName="goToEdit" Text="ويرايش">
                                    <ControlStyle Font-Underline="True" />
                                    <ItemStyle HorizontalAlign="Center" Wrap="False" />
                                    </asp:ButtonField>
                                    <asp:ButtonField CommandName="goToShow" Text="دانشجو/تاريخ امتحان">
                                    <ControlStyle Font-Underline="True" />
                                    <ItemStyle Wrap="False" />
                                    </asp:ButtonField>
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
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
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
