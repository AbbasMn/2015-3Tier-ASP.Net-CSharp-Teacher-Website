<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTermNumber.aspx.cs" Inherits="PresentationLayer.Admin.AdminContentPages.AddTermNumber" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<title>وب سايت علمي - آموزشي مهندس منتصري</title>

            <!-- JQuery Ajax -->
<script type = "text/javascript" src = "../../AJAXScripts/jquery-1.3.2.min.js"></script>
<script type = "text/javascript" src = "../../AJAXScripts/jquery.blockUI.js"></script>


<script type = "text/javascript">
    function BlockUI(elementID) {
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_beginRequest(function () {
            $("#" + elementID).block({ message: '<table  align = "center" style="height:100%"><tr><td align="left">' +
     '<img src="../../AJAXScripts/loadingAnim.gif"/></td></tr></table>',
                css: {},
                overlayCSS: { backgroundColor: '#1f2327', opacity: 0.0, border: '2px solid black'
                }
            });
        });
        prm.add_endRequest(function () {
            $("#" + elementID).unblock();
        });
    }
    $(document).ready(function () {

        BlockUI("dvGrid");
        $.blockUI.defaults.css = {};
    });
</script>

<!-- JQuery Ajax -->
	
    <link href="../../CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />
    

<%--<script type="text/javascript" src="../../jsMy/jquery-1.4.2.min.js"></script>--%>


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
            width: 97px;
        }
        .style3
        {
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
        



 
        <!-- Middle Column -->
               
        <div class="left_three" dir="rtl">      
          
                 
          
             
           
                <br />
    
        <table align="center" dir="rtl" style="width: 100%;  font-size: 9pt;">
            <tr>
                <td valign="top">
                    <b>ورود اطلاعات ترم تحصيلي</b></td>
                <td valign="top">
                    &nbsp;</td>
                <td valign="top">
                    &nbsp;</td>
                <td valign="top">
                    &nbsp;</td>
                <td class="style1" valign="top">
                    </td>
            </tr>
            <tr>
                <td valign="top">
                    &nbsp;</td>
                <td valign="top" align="left">
                    سال:&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="drliyear" runat="server" 
                        Width="100px" CssClass="InputControl" DataTextField="YearName" 
                        Height="22px">
                    </asp:DropDownList>
                    </td>
                <td valign="top" align="left">
                    &nbsp;</td>
                <td valign="top">
                    ترم:</td>
                <td class="style1" valign="top">
                    <asp:DropDownList ID="drliTerm" runat="server" TabIndex="2" 
                        Width="100px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>مهر</asp:ListItem>
                        <asp:ListItem>بهمن</asp:ListItem>
                        <asp:ListItem>تابستان</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td class="style3" valign="top" colspan="5">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <div id="dvGrid" dir="rtl">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <table dir="rtl" width="100%">
                                    <tr>
                                        <td>
                                            <div align="right">
                                                <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                                                <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                                            </div>
                                        </td>
                                        <td>
                                            <div align="left">
                                                <asp:Button ID="btnAdd" runat="server" CssClass="Button" Height="25px" 
                                                    OnClick="insertTermNumber" Text="ذخیره" Width="47px" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:GridView ID="GridView1" runat="server" 
                                                AlternatingRowStyle-BackColor="#C2D69B" AutoGenerateColumns="False" 
                                                Font-Names="Tahoma" Font-Size="9pt" HeaderStyle-BackColor="green" Height="100%" 
                                                Width="100%">
                                                <RowStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right" 
                                                    Wrap="False" />
                                                <AlternatingRowStyle BackColor="#FFFFFF" />
                                                <Columns>
                                                    <asp:BoundField ConvertEmptyStringToNull="False" DataField="SemisterNumber" 
                                                        HeaderText="ترم تحصيلي" ReadOnly="True">
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                    </asp:BoundField>
                                                    <asp:TemplateField HeaderText="ترم فعال">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="select" runat="server" 
                                                                Checked='<%# Eval("SemisterNumberActive")%>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkActivate" runat="server" 
                                                                CommandArgument='<%# Eval("SemisterNumber")%>' OnClick="activateTermNumber" 
                                                                Text="فعال"></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <HeaderTemplate>
                                                        </HeaderTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkDeActivate" runat="server" 
                                                                CommandArgument='<%# Eval("SemisterNumber")%>' OnClick="deActivateTermNumber" 
                                                                Text="غیرفعال"></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <HeaderTemplate>
                                                        </HeaderTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkRemove" runat="server" 
                                                                CommandArgument='<%# Eval("SemisterNumber")%>' OnClick="deleteTermNumber" 
                                                                OnClientClick="return confirm('حذف ترم تحصیلی را تایید می نمایید؟')" Text="حذف"></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <HeaderTemplate>
                                                        </HeaderTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="white" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#1777b1" Font-Bold="True" Font-Names="Tahoma" 
                                                    Font-Size="8pt" ForeColor="White" HorizontalAlign="Center" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>


          
                                    <br />
          
                 
          
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="GridView1" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </td>
            </tr>
            </table>
    
           
                   
             
           
            <br />
            
           
                   
             
           
        </div>
        
         <!-- Middle Column -->      
        
        
        
        
        
        
        
        
        <!-- Right Column -->        
        
        <div class="four_equals" align="right">
           
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
      
       <!-- Right Column -->   
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
