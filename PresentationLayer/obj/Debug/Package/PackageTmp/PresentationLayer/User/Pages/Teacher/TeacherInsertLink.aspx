<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherInsertLink.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherInsertLink" %>

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
        
 
        <!-- Middle Column -->
               
        <div class="left_three">      
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
                                    <li><a>وب سايت هاي پيشنهادي، در کنترل پانل دانشجويان رشته تخصصي شما نمايش داده مي شوند. بدينوسيله مي توان مراجع علمي و غير علمي مفيدي را به همه دانشجويان معرفي و ارائه نمود.</a></li>

                                    <li><a>وب سايتهايي به مخاطبان نمايش داده مي شوند که گزينه نمايش براي آنها تيک خورده باشد. با کليک بر روي دکمه     <b>نمايش موارد انتخابي
                    </b> تنظيمات نمايش بر روي همه وب سايتهاي معرفي شده توسط شما اعمال مي گردد.</a></li>

                                    
                                   <li><a> براي حذف مشخصات وب سايت ابتدا آن را تيک زده سپس روي دکمه <b>حذف موارد انتخابي
                    </b> کليک کنيد. </a></li>
                                                    
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
                         
                <table border="0" cellpadding="1" cellspacing="0" Class="TableMy" align="center" 
                    Class="TableMy" dir="rtl">
                    <tr>
                        <td align="right" rowspan="11" valign="top" width="420px">
                            <br />
                            <br />
                            <br />
                            <b>
                            وب سايت هاي معرفي شده توسط&nbsp; شما<br />
                            </b>
          
                 
          
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><table align="center" width="100%">
                                <tr>
                                    <td align="right" width="50%">
                           
<asp:Button ID="btnDelete" runat="server" CausesValidation="False" 
                                            onclick="btnDelete_Click" Text="حذف موارد انتخابي" 
                                CssClass="Button" Width="110px" TabIndex="7" />
          
                 
          
                            
                                    </td>
                                    <td align="left" width="50%">
                            <b>
                                        <asp:Button ID="btnShow" runat="server" CssClass="Button" 
                                            onclick="Button1_Click" Text="نمايش موارد انتخابي" Width="110px" 
                                            CausesValidation="False" />
                            </b>
                                    </td>
                                </tr>
                            </table>
                            </b>
          
                 
          
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
                 
          
                            <br />
          
                 
          
                            <br />
          
                 
          
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" EnableViewState="False" 
                        PageSize="3" TabIndex="-1" BackColor="White" BorderColor="#CCCCCC" 
                        BorderStyle="None" BorderWidth="1px" Width="100%" 
          DataKeyNames="linkID" onrowcommand="GridView1_RowCommand">

                            <Columns>
                                <asp:TemplateField HeaderText="حذف">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="Choose" runat="server" />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Width="10px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="linkTitle" HeaderText="عنوان وب سايت" 
                                    ConvertEmptyStringToNull="False" ReadOnly="True" >
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Width="150px" Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="linkAddress" HeaderText="آدرس وب سايت" >
                                    <ItemStyle HorizontalAlign="Left" Width="275px" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="نمايش">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="Choose0" runat="server" Checked='<%# Eval("linkShowingPermision")%>'/>
                                    </ItemTemplate>
                                    <HeaderStyle Width="30px" Wrap="True" />
                                    <ItemStyle Width="30px" />
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
                            <br />
                 

                            <br />
                            <br />
                            <br />
                            <br />
                 

                        </td>
                        <td class="style2" align="center">
          
                 
          
                            &nbsp;</td>
                        <td class="style2" align="center" colspan="2">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                <asp:Label ID="lblNewsFileName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
                                <asp:Label ID="lblNewsPicName" runat="server" Visible="False"></asp:Label>
                
           
                   
             
           
           <asp:Label ID="lblRowId" runat="server" CssClass="LableMy" Visible="False"></asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" align="center">
          
                 
          
                            &nbsp;</td>
                        <td class="style2" align="center" colspan="2">
          
                 
          
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" align="center">
                            &nbsp;</td>
                        <td class="style2" align="center" colspan="2">
                            </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3" align="center" colspan="2">
                            <b>مشخصات وب سايت جديد</b></td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;&nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="TableBannerBottom" align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtLinkTitle" ErrorMessage="عنوان وب سايت را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            عنوان وب سايت:</td>
                        <td class="TableBannerBottom" align="left">
                    <asp:TextBox ID="txtLinkTitle" runat="server" Width="170px" 
                        CssClass="InputControl" MaxLength="100" TabIndex="1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td align="left" class="TableBannerBottom">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" valign="top">
                            </td>
                        <td class="style4" valign="top">
                            </td>
                        <td class="style4" valign="top" align="left">
                    <asp:DropDownList ID="drlisLlinkType" runat="server" 
                        Width="170px" TabIndex="2" CssClass="InputControl" Visible="False">
                        <asp:ListItem>دانشگاههاي ايران</asp:ListItem>
                        <asp:ListItem>دانشگاههاي خارجي</asp:ListItem>
                        <asp:ListItem>موتورهاي جستجوگر</asp:ListItem>
                        <asp:ListItem>بقيه موارد علمي</asp:ListItem>
                        <asp:ListItem>مباحث تخصصي نرم افزاري</asp:ListItem>
                        <asp:ListItem>برنامه نويسي</asp:ListItem>
                        <asp:ListItem>دانلود نرم افزار</asp:ListItem>
                        <asp:ListItem>طراحي وب</asp:ListItem>
                        <asp:ListItem>شبکه هاي کامپيوتري</asp:ListItem>
                        <asp:ListItem>قطعات سخت افزاري</asp:ListItem>
                        <asp:ListItem>بازار خودرو</asp:ListItem>
                        <asp:ListItem>بازار  طلا و جواهر</asp:ListItem>
                        <asp:ListItem>ارزهاي خارجي</asp:ListItem>
                        <asp:ListItem>بازار بورس</asp:ListItem>
                        <asp:ListItem>روزنامه هاي پرتيراژ داخلي</asp:ListItem>
                        <asp:ListItem>روزنامه ورزشي</asp:ListItem>
                        <asp:ListItem>روزنامه اقتصادي</asp:ListItem>
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="drlisLlinkType" ErrorMessage="نوع وب سايت را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3" valign="top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtLinkAddress" ErrorMessage="آدرس وب سايت را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            آدرس وب&nbsp; سايت:</td>
                        <td class="" align="left" valign="top">
                    
                                <asp:TextBox ID="txtLinkAddress" runat="server" 
                        Width="170px" TabIndex="7" CssClass="InputControl" MaxLength="200" Height="67px" 
                                    TextMode="MultiLine"></asp:TextBox>
                    
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3" valign="top">
                            &nbsp;</td>
                        <td align="left" class="">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                        </td>
                        <td class="" align="left">
                    
                            
                    
                            <asp:Button ID="btnSave" runat="server" CssClass="Button" 
                                onclick="btnSave_Click" style="margin-right: 0px" TabIndex="11" Text="ذخيره" 
                                Width="57px" />
                                </td>
                    </tr>
                    </table>

                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="GridView1" />
                    </Triggers>
                </asp:UpdatePanel>
            

            
           
                   
             
           
        </div>
        
         <!-- Middle Column -->   
         
        <div class="four_equals">
            
            
            <table style="width: 100%">
                <tr>
                    <td align="left" valign="top">
                 <ul id="topnavrightMy">
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
