<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherUniversity.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherUniversity" %>
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



    <style type="text/css">
        .style1
        {
            width: 102px;
        }
        .style2
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
                                    <li><a>دانشگاه هايي را که در آنها تدريس مي کنيد از ليست دانشگاه ها انتخاب نماييد.</a></li>

                                    <li><a>در صورتي مي توان دانشگاه را از انتخاب خارج کرد که درسي در آن دانشگاه ارائه نکرده باشيد.</a></li>
       
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
                
                        
                <table border="0" cellspacing="0" Class="TableMy" 
                    align="right">
                    <tr>
                        <td class="style2" colspan="4" align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style2" colspan="4">
                            انتخاب دانشگاههاي محل تدريس&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                            <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                            &nbsp;&nbsp;
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="4" align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="4" align="right">
                            <asp:RadioButtonList ID="rdioSelectUniversity" runat="server" 
                                AutoPostBack="True" ontextchanged="rdioSelectUniversity_TextChanged" 
                                RepeatDirection="Horizontal" Width="500px">
                                <asp:ListItem>  انتخاب از ليست</asp:ListItem>
                                <asp:ListItem Value="وارد کردن نام دانشگاه"> وارد کردن نام دانشگاه</asp:ListItem>
                            </asp:RadioButtonList>
                            </td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="4" align="right">
                            <br />
                            </td>
                    </tr>
                    <tr>
                        <td valign="top" align="right" rowspan="2">
                                    <div>
                                        <asp:Panel ID="pnlSelectUniversity" runat="server" Direction="RightToLeft" 
                                            Height="253px" HorizontalAlign="Right" Width="350px">
                                            <strong>دانشگاهها:<br /> </strong>
                                            <br />
                                            <table width="100%">
                                                <tr>
                                                    <td align="right">
                                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                                            CellPadding="3" DataKeyNames="RowID" EnableViewState="False" Font-Bold="False" 
                                                            Font-Names="Tahoma" Font-Size="10pt" Height="78px" PageSize="3" 
                                                            style="margin-right: 0px" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <asp:CheckBox ID="Choose" runat="server" />
                                                                    </ItemTemplate>
                                                                    <HeaderStyle HorizontalAlign="Right" />
                                                                    <ItemStyle HorizontalAlign="Right" Width="15px" Wrap="True" />
                                                                </asp:TemplateField>
                                                                <asp:BoundField ConvertEmptyStringToNull="False" DataField="UniversityName" 
                                                                    HeaderText="نام دانشگاه" ReadOnly="True">
                                                                <ItemStyle HorizontalAlign="Right" Wrap="True" />
                                                                </asp:BoundField>
                                                            </Columns>
                                                            <RowStyle Font-Names="Tahoma" Font-Size="8pt" HorizontalAlign="Right" 
                                                                VerticalAlign="Middle" Wrap="True" />
                                                            <AlternatingRowStyle BackColor="#FFFFFF" />
                                                            <FooterStyle BackColor="#CCCCCC" Font-Size="8pt" />
                                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" 
                                                                Wrap="False" />
                                                            <HeaderStyle BackColor="#1777b1" Font-Bold="True" Font-Names="Tahoma" 
                                                                Font-Size="8pt" ForeColor="White" HorizontalAlign="Center" />
                                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="left">
                                                        <asp:Button ID="btnSelect" runat="server" CausesValidation="False" 
                                                            CssClass="Button" onclick="btnSelect_Click" style="margin-right: 0px" 
                                                            TabIndex="12" Text="انتخاب" Width="57px" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            <br />
                                        </asp:Panel>
                                        <asp:Panel ID="pnlInsertUniversity" runat="server" Width="50%">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td class="style1">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ControlToValidate="txtUniversityName" Display="Dynamic" 
                                                            ErrorMessage="نام دانشگاه را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        نام دانشگاه:&nbsp;
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtUniversityName" runat="server" CssClass="InputControl" 
                                                            Height="22px" MaxLength="30" Width="150px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style1">
                                                        &nbsp;</td>
                                                    <td align="left">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style1">
                                                        &nbsp;</td>
                                                    <td align="left">
                                                        <asp:Button ID="btnSave" runat="server" CssClass="Button" 
                                                            onclick="btnSave_Click" Text="ذخيره" Width="57px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </div>
                                    <td>
                                        &nbsp;<td valign="top" align="right" 
                                rowspan="2" class="TableBackGroundOfContext" width="30%">
                                            <asp:Panel ID="pnlVeiwSelected" runat="server" Height="243px" Width="350px">
                                                <strong>دانشگاههاي انتخاب شده:<br /> </strong>
                                                <br />
                                                <table width="100%">
                                                    <tr>
                                                        <td align="left">
                                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                                                CellPadding="3" EnableViewState="False" Font-Bold="False" Font-Names="Tahoma" 
                                                                Font-Size="8pt" Height="88px" PageSize="3" style="margin-right: 0px" 
                                                                Width="100%">
                                                                <Columns>
                                                                    <asp:TemplateField>
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox ID="Choose0" runat="server" />
                                                                        </ItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                        <ItemStyle Width="15px" Wrap="True" />
                                                                    </asp:TemplateField>
                                                                    <asp:BoundField ConvertEmptyStringToNull="False" DataField="UniversityName" 
                                                                        HeaderText="نام دانشگاه" ReadOnly="True">
                                                                    <ItemStyle Wrap="True" />
                                                                    </asp:BoundField>
                                                                </Columns>
                                                                <RowStyle Font-Names="Tahoma" Font-Size="8pt" HorizontalAlign="Right" 
                                                                    VerticalAlign="Middle" Wrap="True" />
                                                                <AlternatingRowStyle BackColor="#FFFFFF" />
                                                                <FooterStyle BackColor="#CCCCCC" />
                                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" 
                                                                    Wrap="False" />
                                                                <HeaderStyle BackColor="#1777b1" Font-Bold="True" Font-Names="Tahoma" 
                                                                    Font-Size="8pt" ForeColor="White" HorizontalAlign="Center" />
                                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <asp:Button ID="btnDelete" runat="server" CausesValidation="False" 
                                                                CssClass="Button" onclick="btnDelete_Click" style="margin-right: 0px" 
                                                                TabIndex="12" Text="حذف" Width="57px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </asp:Panel>
                                        <td class="TableBackGroundOfContext" valign="top">
                                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            &nbsp;<td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</tr>
                    </table>
            
           
                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="rdioSelectUniversity" />
                    </Triggers>
                </asp:UpdatePanel>                   
             
           
        </div>
        
         <!-- Middle Column -->      
        
        <div id="footer" >
                    
                    <ul>
                        <li><a href="../../../Main.aspx">صفحه اصلي            TabIndex="12" Text="حذف" Width="57px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                </asp:Panel>
                                            <td class="TableBackGroundOfContext" valign="top">
                                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" valign="top" align="left">
                            &nbsp;<td valign="top">
                            &nbsp;<td valign="top" class="TableBackGroundOfContext">
                            &nbsp;</tr>
                    </table>
            
           
                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="rdioSelectUniversity" />
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

