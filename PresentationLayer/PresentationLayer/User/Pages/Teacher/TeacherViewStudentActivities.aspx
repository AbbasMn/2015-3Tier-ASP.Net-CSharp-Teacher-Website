<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherViewStudentActivities.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherViewStudentActivities" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">            

<head id="Head1" runat="server">

    <meta charset="utf-8">
    <title>وب سايت علمي - آموزشي مهندس منتصري</title>


<!--  ************************************************************************************************ -->

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





<link href="../../../CssMy/mystyles.css"rel="stylesheet" type="text/css" media="all" />
    

<script type="text/javascript" src="../../../jsMy/jquery-1.4.2.min.js"></script> 



    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-weight: bold;
            text-decoration: underline;
            font-size:8pt
        }
        .style3
        {
            height: 23px;
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
                   
        <div class="full_with">

                 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
             
</asp:ToolkitScriptManager>

          
                 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate> 

<table class="TableMy860Width" dir="rtl">
        <tr>
            <td align="right" valign="top" width="30%">
                                
                                
             
                                        <table dir="rtl" style="width: 190px">
                                                <tr>
                                                    <td align="right" valign="top">
                                                        &nbsp;</td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td align="right" valign="top">
                                                        انتخاب ترم:                                                         <asp:DropDownList ID="drliTermNumber" runat="server" 
                                                            Width="124px" CssClass="InputControl" DataTextField="SemisterNumber" Height="22px" 
                                                                    ontextchanged="drliTermNumber_TextChanged" AutoPostBack="True">
                                                        </asp:DropDownList>
                                                        <br />
&nbsp;
                                                    </td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td>
                                                        <hr size="3px" style="background-color: #0066FF" width="100%" />
                                                    </td>
                                                </tr>
                                                
                                                <tr>
                                                    <td>
                                                        <b>دروس ارائه شده در ترم انتخابي</b></td>
                                                </tr>
     
                                                <tr>
                                                    <td valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="9pt" EnableViewState="False" 
                                                            PageSize="3" style="margin-right: 0px; text-align: center;" 
                                                            TabIndex="1" DataKeyNames="CourseGroupRowID" 
                                    HorizontalAlign="Center" Height="87px" BackColor="White" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                    onrowcommand="GridView1_RowCommand" Width="100%">
 
                                <Columns>
                                    <asp:BoundField DataField="CourseGroupUniversityName" HeaderText="دانشگاه">
                                        <ItemStyle Wrap="True" HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField ConvertEmptyStringToNull="False" DataField="CourseGroupCourseName" 
                                        HeaderText="نام درس" ReadOnly="True">
                                        <ItemStyle Wrap="True" HorizontalAlign="Right" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="CourseGroupNumber" 
                                        HeaderText="گروه">
                                    </asp:BoundField>
                                    <asp:ButtonField CommandName="goToShow" Text="دانشجويان" >
                                        <ItemStyle Font-Underline="True" />
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
                                            </table>
                                
             
                                </td>
 <td align="right" valign="top" width="25%">
                                
                                                            <table class="style1">
                                                                <tr>
                                                                    <td valign="top">
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">
                                                                        براي مشاهده همه اطلاعات دانشجوي مورد نظر روي لينک <span class="style2">مشاهده
                                                                        </span>در ليست زير کليک نماييد.</td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">
                                                                        <hr size="3px" style="background-color: #0066FF" width="100%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <b>دانشجويان درس
                                                                        <asp:Label ID="lblCourseName" runat="server" CssClass="LableMy" Text="Label"></asp:Label>
                                                                        </b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" valign="top">
                                
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="9pt" PageSize="3" 
                                style="margin-right: 0px" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" Width="100%" onrowcommand="GridView2_RowCommand">
                   
                            <Columns>
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
                                <asp:ButtonField CommandName="goToPeresent" Text="نمايش">
                                    <ItemStyle Font-Underline="True" />
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
                                                            </table>
                                
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                
                                </td>
            <td align="right" valign="top" width="45%">
            
            
                                
                  
             
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblStudentID" runat="server" Text="Label" Visible="False"></asp:Label>
                            <asp:Label ID="lblStudentName" runat="server" Text="Label" Visible="False"></asp:Label>
                            <asp:Label ID="lblStudentLastName" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            در قسمتهاي زير همه اطلاعات مربوط به دانشجوي انتخابي (در درس انتخابي) نمايش داده 
                            شده است. براي پرداختن به جزئيات اين اطلاعات از     <span class="style2">کنترل 
                            پانل استاد</span> استفاده نماييد.</tr>
                    <tr>
                        <td>
                            <hr size="3px" style="background-color: #0066FF" width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <b>نمرات دانشجو در درس
                            <asp:Label ID="lblCourseName1" runat="server" CssClass="LableMy" Text="Label"></asp:Label>
                            <br />
                            (نمره اعشاری را به صورت 2.25 وارد 
                            کنید)<br />
                            </b></td>
                    </tr>
                    <tr>
                        <td>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" 
                                EnableViewState="False" PageSize="3" style="margin-right: 0px" 
                                        Width="100%" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px">

                            <Columns>
                                
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
                                <asp:BoundField DataField="TakeCourseTotalMark" 
                                    HeaderText="نمره کل" >
                                    <ItemStyle HorizontalAlign="Center" Wrap="False" VerticalAlign="Middle" />
                                </asp:BoundField>
                                
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
                        <td>
                            <hr size="3px" style="background-color: #0066FF" width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>اعتراض به نمره و نمره تجديد نظر</b></td>
                    </tr>
                    <tr>
                        <td>
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" 
                                EnableViewState="False" PageSize="3" style="margin-right: 0px" 
                                        Width="100%" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px">

                            <Columns>
                                <asp:TemplateField HeaderText="متن اعتراض">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtComplainText" runat="server" Height="40px" 
                                            TextMode="MultiLine" Text='<%# Eval("ComplainText") %>' Enabled="False" 
                                            Font-Names="Tahoma" Font-Size="8pt" ForeColor="#990000" Width="141px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="InputControlMultiLine" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="علت تغيير نمره">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtComplainResponse" runat="server" Font-Names="Tahoma" 
                                            Font-Size="8pt" ForeColor="#990000" Height="40px" 
                                            TextMode="MultiLine" Width="141px" Text='<%#Eval("ComplainResponse")%>' 
                                            Enabled="False"></asp:TextBox>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="InputControlMultiLine" />
                                    <ItemStyle Width="100px" />
                                </asp:TemplateField>
                                
                                <asp:BoundField DataField="TakeCourseUltimateMarkAfterReview" 
                                    HeaderText="نمره نهايي" >
                                    <ItemStyle HorizontalAlign="Center" Wrap="False" VerticalAlign="Middle" />
                                </asp:BoundField>
                                
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
                        <td>
                            <hr size="3px" style="background-color: #0066FF" width="100%" />
                        </td>
                                            </tr>
                    <tr>
                        <td>
                            <b>پروژه ها و تمرينات ارسالي دانشجو<td>
                            &nbsp;</td>
                                            </tr>
                    <tr>
                        <td>
                                
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" PageSize="3" 
                                style="margin-right: 0px" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" Width="100%" 
                                                                            
                                DataKeyNames="studentDeliveryID">

                            <Columns>
                                <asp:BoundField DataField="studentDeliveryDate" 
                                    HeaderText="تاريخ ارسال">
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="نمره">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtExercise" runat="server" BorderColor="#FF0066" 
                                            BorderStyle="Solid" BorderWidth="1px" MaxLength="5" 
                                            Text='<%# Eval("studentDeliveryMark") %>' Width="45px"></asp:TextBox>
                                            <!-- Eval("studentDeliveryMark","{0:F2}")-->
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:HyperLinkField DataNavigateUrlFields="studentDeliveryUploadedFileName" 
                                    DataNavigateUrlFormatString="~/PresentationLayer/User/Pages/Student/ExerciseSolutionFiles/{0}" 
                                    DataTextField="studentDeliveryUploadedFileName" HeaderText="دانلود" />
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
                                                                    <td>
                            &nbsp;</td>
                                            </tr>
                    <tr>
                        <td align="left">
                                
                            <b>
                            <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="جمع نمرات و ذخيره نمره" 
                        Width="130px" onclick="btnSave_Click" TabIndex="7" CssClass="Button" 
                                CausesValidation="False" />
                                                            </b>
                                                                    <td>
                                                                        &nbsp;</td>
                                            </tr>
                    <tr>
                        <td>
                            <hr size="3px" style="background-color: #0066FF" width="100%" />
                        <td>
                            &nbsp;</td>
                                            </tr>
                    <tr>
                        <td>
                            <b>پيامهاي ارسالي به دانشجو و پاسخ پيام</b></td>
                                            </tr>
                                            <tr>
                                                <td>
          
                 <asp:Repeater id="repeater1" runat="server">
                 
                 <HeaderTemplate>
                 
                 </HeaderTemplate>
                 
                 <ItemTemplate>
                 
                    <div class="internalDivMessageLowWithMy">
                            <a class="internalDivMessageLowWithMylogo" href=""></a><a class="internalDivMessageLowWithMylogoTittle" href="">
                               عنوان پيام:    <%#Eval("messageTitle")%></a>
                               <asp:Label ID="lblMessageID" Visible="false"  runat="server" Text=<%#Eval("messageID")%>></asp:Label>

                       </div>
                     
                    <div class="internalDivContainMessageLowWithMy">

                            <pMessageMy>
                            <label id="lbl4" class="LableMy">پيام شما:  <%#Eval("messageDate")%></label>
                            <br />
                               <%#Eval("messagePassage")%> 
                            </pMessageMy>
                            
                            <hr class="internalDivLineMessageLowWithMy" /> 
                            <pMessageMy>
                            <label id="lbl3" class="LableMy"> گيرنده:</label>
                            <%#Eval("messageRecieverName")%> <%#Eval("messageRecieverLastName")%>
                            </pMessageMy>

                            
                            <hr class="internalDivLineMessageLowWithMy" /> 
                            <pMessageMy>
                            <label id="lbl5" class="LableMy">پاسخ: <%#Eval("messageResponseDate")%></label>
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
                                                <td>
          
                                                    <hr size="3px" style="background-color: #0066FF" width="100%" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
          
                            <b>پيامهاي&nbsp; دريافتي از دانشجو و پاسخ&nbsp;شما</b></td>
                                            </tr>
                                            <tr>
                                                <td>
          
                 <asp:Repeater id="repeater2" runat="server">
                 
                 <HeaderTemplate>
                 
                 </HeaderTemplate>
                 
                 <ItemTemplate>
                 
                    <div class="internalDivMessageLowWithMy">
                            <a class="internalDivMessageLowWithMylogo" href=""></a><a class="internalDivMessageLowWithMylogoTittle" href="">
                               عنوان پيام:    <%#Eval("messageTitle")%></a>
                               <asp:Label ID="lblMessageID0" Visible="false"  runat="server" 
                                Text=<%#Eval("messageID")%>></asp:Label>

                       </div>
                     
                    <div class="internalDivContainMessageLowWithMy">

                            <pMessageMy>
                            <label id="lbl6" class="LableMy"> پيام:</label>
                            <br />
                               <%#Eval("messagePassage")%> 
                            </pMessageMy>
                            
                            <hr class="internalDivLineMessageLowWithMy" /> 
                            <pMessageMy>
                            <label id="lbl7" class="LableMy"> فرستنده:</label>
                            <%#Eval("messageSenderName")%> <%#Eval("messageSenderLastName")%> - <%#Eval("messageStudentID")%> - <%#Eval("messageDate")%>
                            </pMessageMy>


                            
                            <hr class="internalDivLineMessageLowWithMy" /> 
                            <pMessageMy>
                            <label id="lbl8" class="LableMy">پاسخ شما: <%#Eval("messageResponseDate")%></label>
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
                                                <td>
          
                                                    <hr size="3px" style="background-color: #0066FF" width="100%" />
          
                                                </td>
                                            </tr>
                                        </table>
            
            
                                
                  
             
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
