<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherCreateExercise.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherCreateExercise" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>


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

        .style2
        {
            font-style: italic;
            text-decoration: underline;
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

              <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
    </asp:ToolkitScriptManager>

         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
        <table class="TableMy860Width" dir="rtl">
        <tr>
            <td align="right" valign="top" width="30%">
                                
                                
             
                                        <table dir="rtl" >
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
                                CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" EnableViewState="False" 
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
                                    <asp:ButtonField CommandName="goToShow" Text="تمارين" >
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
                                
                                                            <table>
                                                                <tr>
                                                                    <td valign="top" align="center">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">
                                                                        براي حذف تمرينهاي مورد نظر، گزينه <b>حذف</b> را انتخاب نماييد. توجه داشته باشيد 
                                                                        که اگر براي تمرين جوابي ارسال شده باشد، آن تمرين غير قابل حذف است.</td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">
                                                                        <hr size="3px" style="background-color: #0066FF" width="100%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <b>تمرين هاي تعريف شده درس</b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" valign="top">
                                
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" PageSize="3" 
                                style="margin-right: 0px" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" Width="100%" 
                                                                            DataKeyNames="teacherExerciseID">

                            <Columns>
                                <asp:BoundField DataField="teacherExerciseNumber" HeaderText="شماره تمرين">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="True" HorizontalAlign="Right" />
                                </asp:BoundField>
<asp:BoundField DataField="teacherExerciseTitle" HeaderText="عنوان تمرين">
    <HeaderStyle HorizontalAlign="Center" />
    <ItemStyle Wrap="True" HorizontalAlign="Right" />
</asp:BoundField>
                                <asp:HyperLinkField DataNavigateUrlFields="teacherExerciseFileName" 
                                    DataNavigateUrlFormatString="~/PresentationLayer/User/Pages/Teacher/ExerciseFiles/{0}" 
                                    DataTextField="teacherExerciseFileName" HeaderText="نام فايل" />
                                <asp:BoundField DataField="teacherExerciseDeliveryDeadLine" 
                                    HeaderText="مهلت تمرين">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="False" HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="teacherExerciseMark" HeaderText="نمره تمرين" />
                                <asp:TemplateField HeaderText="حذف">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="choose" runat="server" />
                                    </ItemTemplate>
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
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" valign="top">
                                
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" valign="top">
                                
                            <asp:Button ID="btnDelete" runat="server" style="margin-right: 0px" Text="حذف تمرين" 
                        Width="60px" onclick="btnDelete_Click" TabIndex="16" CssClass="Button" CausesValidation="False" />
          
                                                                    </td>
                                                                </tr>
                                                            </table>
                                
                                </td>
            <td align="right" valign="top" width="45%">
            
            
                                
                  
             
                <table>
                    <tr>
                        <td align="center">
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                    </tr>
                    <tr>
                        <td>
                            مشخصات تمرين را در قسمت زير وارد کنيد. توجه داشته باشيد که سه تايي (<span 
                                class="style2">درس انتخابي و شماره تمرين و نام فايل تمرين)</span> جديد با تمرينهاي تعريف شده قبلي يکسان نباشد.<br />
                                                </tr>
                    <tr>
                        <td>
                            <hr size="3px" style="background-color: #0066FF" width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>تمرين جديد براي درس             
           
                   
             
           
                    <asp:Label ID="lblExerciseCourseName" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                                                    </b></td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style1">
                                <tr>
                                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtExerciseTitle" ErrorMessage="عنوان تمرين را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        عنوان تمرين:</td>
                                    <td>
                    <asp:TextBox ID="txtExerciseTitle" runat="server" Width="130px" 
                        CssClass="InputControl" MaxLength="30" TabIndex="1"></asp:TextBox>
                                    </td>
                                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="drlistExerciseNumber" ErrorMessage="شماره تمرين را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        شماره تمرين:</td>
                                    <td>
                    <asp:DropDownList ID="drlistExerciseNumber" runat="server" TabIndex="2" 
                        Width="70px" CssClass="InputControl">
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
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                    </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="PersianDatePickup1" ErrorMessage="مهلت ارسال را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                                مهلت تحويل:</td>
                                                            <td>
                                                        <pcal:PersianDatePickup ID="PersianDatePickup1" runat="server" 
                                CssClass="InputControl" ReadOnly="True" TabIndex="3" Width="130px"></pcal:PersianDatePickup>
                                                            </td>
                                                            <td valign="top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtExerciseMark" ErrorMessage="نمره تمرين را وارد نماييد" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                                نمره تمرين:</td>
                                                            <td valign="top">
                    <asp:TextBox ID="txtExerciseMark" runat="server" Width="70px" 
                        CssClass="InputControl" MaxLength="5" TabIndex="4"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
            
           
                   
             
           
                    <asp:Label ID="lblExerciseCourseGroupID" runat="server" CssClass="LableMy" Visible="False"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                فايل تمرين:<br />
                                                            </td>
                                    <td>
                    <asp:FileUpload ID="FileUpLExerciseFile" runat="server" Width="130px" 
                ToolTip="فايل ضميمه را انتخاب نماييد" EnableTheming="True" TabIndex="5" 
                                CssClass="InputControl" Height="22px"/>
       
                                        <br />
       
                                    </td>
                                    <td>
                                        نوع فايل جواب :</td>
                                    <td valign="top">
                    <asp:DropDownList ID="drlistExerciseResponseType" runat="server" TabIndex="6" 
                        Width="70px" CssClass="InputControl">
                        <asp:ListItem>PDF</asp:ListItem>
                        <asp:ListItem>DOC</asp:ListItem>
                        <asp:ListItem>DOCX</asp:ListItem>
                        <asp:ListItem>RAR</asp:ListItem>
                        <asp:ListItem>TXT</asp:ListItem>
                        <asp:ListItem>PPT</asp:ListItem>
                        <asp:ListItem>PPTX</asp:ListItem>
                    </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
            
           
                   
             
           
                    <asp:Label ID="lblExerciseFileName" runat="server" CssClass="LableMy" Visible="False"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                                                            <td>
                    
                            
                    
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td valign="top">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
            
           
                   
             
           
                    <asp:Label ID="lblExerciseFileType" runat="server" CssClass="LableMy" Visible="False"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td align="right" valign="top">
                            <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ذخيره" 
                        Width="70px" onclick="btnSave_Click" TabIndex="7" CssClass="Button" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="4">
                                                                <b>انتخاب از تمرینهای موجود (فقط یک تمرین را انتخاب کنید)</b></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" colspan="4">
                                
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" PageSize="3" 
                                style="margin-right: 0px" TabIndex="1" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" Width="100%" 
                                                                            DataKeyNames="teacherExerciseTitle">

                            <Columns>
<asp:BoundField DataField="teacherExerciseTitle" HeaderText="عنوان تمرين">
    <HeaderStyle HorizontalAlign="Center" />
    <ItemStyle Wrap="True" HorizontalAlign="Right" />
</asp:BoundField>
                                <asp:TemplateField HeaderText="انتخاب">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="choose0" runat="server" />
                                    </ItemTemplate>
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
                                                                <asp:Button ID="btnSelect" runat="server" CausesValidation="False" 
                                                                    CssClass="Button" Height="21px" onclick="btnSelect_Click" Text="انتخاب تمرین" 
                                                                    Width="74px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                    </tr>
                                            </table>
            
            
                                
                  
             
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" width="30%">
                                
                                
             
                                        &nbsp;</td>
 <td align="right" valign="top" width="25%">
                                
                                                            &nbsp;</td>
            <td align="right" valign="top" width="45%">
            
            
                                
                  
             
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
