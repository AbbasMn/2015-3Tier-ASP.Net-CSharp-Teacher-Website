<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherSelectStudentsForRecieveMessage.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherSelectStudentsForRecieveMessage" %>
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





    <style type="text/css">
        .style15
        {
            font-weight: bold;
        }
        .style16
        {
            width: 189px;
        }
        .style17
        {
            width: 104px;
        }
        .InputControlBigMultiLine
        {
            margin-right: 0px;
        }
        .InputControlMultiLine
        {
            margin-right: 0px;
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
             
           
                <table border="0" cellpadding="1" cellspacing="0" 
                     align="center" Class="TableMy">
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="3" align="center" valign="top">
                            &nbsp; </td>
                    </tr>
                    <tr>
                        <td class="style15" colspan="2" align="right" valign="top">
                            <asp:RadioButtonList ID="rdioSelectMessageRecievers" runat="server" 
                                AutoPostBack="True" ontextchanged="rdioSelectMessageRecievers_TextChanged" 
                                RepeatDirection="Horizontal" Width="500px">
                                <asp:ListItem> ارسال به همه دانشجويان درس</asp:ListItem>
                                <asp:ListItem Value=" انتخاب دانشجويان دريافت کننده پيام"> انتخاب دانشجويان دريافت کننده پيام</asp:ListItem>
                            </asp:RadioButtonList>
                            </td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="2" align="right" valign="top">
                            &nbsp;</td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="2" align="center" valign="top">
                            <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                            <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                        </td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="2" align="right" valign="top">
          
                 
          
                <table border="0" cellpadding="1" cellspacing="0" Class="TableMy" align="center" 
                    Class="TableMy" dir="rtl" width="100%">
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16" valign="top">
                    
                            
                    
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                                </td>
                        <td class="style5" valign="top">
                            &nbsp;</td>
                        <td class="" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17" valign="top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtmessageTitle" ErrorMessage="عنوان پيام را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            عنوان پيام:<td class="style16" valign="top" align="left">
                    <asp:TextBox ID="txtmessageTitle" runat="server" Width="170px" 
                        CssClass="InputControl" MaxLength="100" TabIndex="1"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="btnSave" runat="server" CssClass="Button" 
                                onclick="btnSave_Click" Text="ارسال پيام" Width="68px" />
                        </td>
                        <td class="style5" valign="top" align="center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtmessagePassage" ErrorMessage="متن پيام را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            متن پيام:</td>
                        <td class="" valign="top" align="left">
                            
                    <asp:TextBox ID="txtmessagePassage" runat="server" Width="100%" TabIndex="10" 
                        CssClass="InputControlBigMultiLine" Height="66px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                    </tr>
                    </table>
            
           
                   
             
           
                                </td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="2" align="left" valign="top">
                            &nbsp;</td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="2" align="right" valign="top">
                            <asp:Label ID="lblListeStudents" runat="server" Font-Bold="True" 
                                Text="ليست دانشجويان درس"></asp:Label>
                        </td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext" colspan="2" align="right" valign="top">
                            &nbsp;</td>
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext">
                            &nbsp;</td>
                        <td class="TableBackGroundOfContext" valign="top" align="right">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" 
                                EnableViewState="False" PageSize="3" style="margin-right: 0px" 
                                        Width="100%" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px">

                            <Columns>
                                <asp:TemplateField HeaderText="دريافت پيام">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="choose" runat="server" />
                                    </ItemTemplate>
                                    <ItemStyle Width="60px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="UserStudentID" HeaderText="شماره دانشجويي">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="False" HorizontalAlign="Right" />
                                </asp:BoundField>
<asp:BoundField DataField="UserStudentLastName" HeaderText="نام خانوادگي">
    <HeaderStyle HorizontalAlign="Center" />
    <ItemStyle Wrap="False" HorizontalAlign="Right" />
</asp:BoundField>
                                <asp:BoundField DataField="UserStudentName" 
                                    HeaderText="نام">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="False" HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="ميان ترم">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtMidTerm" runat="server" MaxLength="5" 
                                            Text='<%# Eval("MidTermMark","{0:F2}") %>' Width="45px" 
                                            BorderColor="#FF0066" BorderStyle="Solid" BorderWidth="1px" 
                                            ReadOnly="True"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="پايان ترم">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtFinal" runat="server" MaxLength="5" Width="45px" 
                                            Text='<%# Eval("FinalMark","{0:F2}") %>' BorderColor="#FF0066" 
                                            BorderStyle="Solid" BorderWidth="1px" ReadOnly="True"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="نمره عملي">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtPractical" runat="server" MaxLength="5" Width="45px" 
                                            Text='<%# Eval("PracticalMark","{0:F2}") %>' BorderColor="#FF0066" 
                                            BorderStyle="Solid" BorderWidth="1px" ReadOnly="True"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="نمره تمرين">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtExercise" runat="server" MaxLength="5" Width="45px" 
                                            Text='<%# Eval("ExerciseMark","{0:F2}") %>' BorderColor="#FF0066" 
                                            BorderStyle="Solid" BorderWidth="1px" ReadOnly="True"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="نمره نهايي">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtMark" runat="server" MaxLength="5" 
                                            Width="45px" Text='<%# Eval("TotalMark","{0:F2}") %>' 
                                            BorderColor="#FF0066" BorderStyle="Solid" BorderWidth="1px" 
                                            ReadOnly="True"></asp:TextBox>
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
                        <td class="TableBackGroundOfContext" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext">
                            &nbsp;</td>
                        <td class="TableBackGroundOfContext" align="left" valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="TableBackGroundOfContext">
                            &nbsp;</td>
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
</form>
</body>
</html>

