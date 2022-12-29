<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherViewStudentExsercises.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherViewStudentExsercises" %>
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
            width: 37%;
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
            <td align="right" valign="top" class="style1">
                                
                                
             
                                        <table dir="rtl" width="100%">
                                                                                                
                                                
                                                <tr>
                                                    <td align="right" valign="top">
                                                        &nbsp;</td>
                                                </tr>
                                                
                                                
                                                <tr>
                                                    <td align="right" valign="top">
                                                        انتخاب ترم:
                                                        <asp:DropDownList ID="drliTermNumber" runat="server" AutoPostBack="True" 
                                                            CssClass="InputControl" DataTextField="SemisterNumber" Height="22px" 
                                                            ontextchanged="drliTermNumber_TextChanged" Width="124px">
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
                                CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" EnableViewState="False" 
                                                            PageSize="3" style="margin-right: 0px; text-align: center;" 
                                                            TabIndex="1" DataKeyNames="CourseGroupRowID" 
                                    HorizontalAlign="Center" Height="87px" BackColor="White" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                    onrowcommand="GridView1_RowCommand" Width="100%">
                                <RowStyle HorizontalAlign="Right" Wrap="true" ForeColor="#000066" 
                                    Font-Size="8pt" />
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
            <td align="right" valign="top" width="100%">
            
            
                                
                  
             
                <table width="100%">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <b>پروژه ها و تمرينات ارسالي دانشجویان (نمره اعشاری را به صورت 2.25 وارد کنید)</b></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" DataKeyNames="studentDeliveryID" Font-Bold="False" 
                                Font-Names="Tahoma" Font-Size="8pt" PageSize="3" style="margin-right: 0px" 
                                TabIndex="1" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="studentDeliveryStudentLastName" 
                                        HeaderText="نام خانوادگی" />
                                    <asp:BoundField DataField="studentDeliveryStudentName" HeaderText="نام" />
                                    <asp:BoundField DataField="studentDeliveryStudentID" 
                                        HeaderText="شماره دانشجویی" />
                                    <asp:BoundField DataField="studentDeliveryDate" HeaderText="تاريخ ارسال" />
                                    <asp:TemplateField HeaderText="نمره">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtExercise" runat="server" BorderColor="#FF0066" 
                                                BorderStyle="Solid" BorderWidth="1px" MaxLength="5" 
                                                Text='<%# Eval("studentDeliveryMark") %>' Width="45px"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:HyperLinkField DataNavigateUrlFields="studentDeliveryUploadedFileName" 
                                        DataNavigateUrlFormatString="~/PresentationLayer/User/Pages/Student/ExerciseSolutionFiles/{0}" 
                                        DataTextField="studentDeliveryUploadedFileName" HeaderText="دانلود" />
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
                            <b>
                            <asp:Button ID="btnSave" runat="server" CausesValidation="False" 
                                CssClass="Button" onclick="btnSave_Click" style="margin-right: 0px" 
                                TabIndex="7" Text="ذخيره نمره" Width="70px" />
                            </b>
                        </td>
                    </tr>
                </table>
            
            
                                
                  
             
            </td>
        </tr>
        </table>  
        
                        </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="GridView1" />
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
