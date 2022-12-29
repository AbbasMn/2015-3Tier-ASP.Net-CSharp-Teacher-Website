<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherAddCourse.aspx.cs" Inherits="PresentationLayer.User.Pages.Teacher.TeacherAddCourse" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">            

<head>

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
        .right_three
        {
            height: 467px;
        }
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

        
            
                
        </div>
       
        
                
        <!-- Left Column -->        
        
        
 
 
        <!-- Middle Column -->
               
  <div class="right_three">      

          
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate> 

        <table align="left" Class="TableMy">
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td align="left" rowspan="22" valign="top">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td align="left" rowspan="27" valign="top">
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        EnableViewState="False" HeaderText="توجه !" ShowMessageBox="True" 
                        ShowSummary="False" Height="16px" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="10pt" 
                        EnableViewState="False" PageSize="3" 
                                Width="100%" Height="39px" BackColor="White" BorderColor="#CCCCCC" 
                            BorderStyle="None" BorderWidth="1px">

                            <Columns>
                                <asp:BoundField ConvertEmptyStringToNull="False" DataField="CourseName" 
                                    HeaderText="نام درس" ReadOnly="True">
                                    <ItemStyle Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseEducationLevel" HeaderText="مقطع" >
                                    <ItemStyle Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseID" HeaderText="شماره درس">
                                    <ItemStyle Wrap="False" />
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
                <td class="style2" colspan="2" align="center">
                    <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    ورود اطلاعات درس جديد</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtCourseName" Display="Dynamic" 
                        ErrorMessage="نام درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    نام درس:</td>
                <td class="style3" align="left">
                    <asp:TextBox ID="txtCourseName" runat="server" Width="132px" MaxLength="40" 
                        CssClass="InputControl" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtCourseID" Display="Dynamic" 
                        ErrorMessage="شماره درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    شماره درس:</td>
                <td class="style3" align="left">
                    <asp:TextBox ID="txtCourseID" runat="server" Width="132px" MaxLength="5" 
                        TabIndex="1" CssClass="InputControl" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DrLiCourseEducationLevel" Display="Dynamic" 
                        ErrorMessage="مقطع درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    ارائه براي مقطع:</td>
                <td class="style3" align="left">
                    <asp:DropDownList ID="DrLiCourseEducationLevel" runat="server" TabIndex="2" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>دکتري</asp:ListItem>
                        <asp:ListItem>کارشناسي ارشد</asp:ListItem>
                        <asp:ListItem>کارشناسي</asp:ListItem>
                        <asp:ListItem>کارداني</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" valign="top">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DrLiCourseFacultyName" Display="Dynamic" 
                        ErrorMessage="دانشکده ارائه کننده را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    دانشکده ارائه دهنده:</td>
                <td class="style3" align="left">
                    <asp:DropDownList ID="DrLiCourseFacultyName" runat="server" TabIndex="3" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>مهندسي</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" valign="top">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" valign="top">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="drliBranch" Display="Dynamic" 
                        ErrorMessage="رشته ي تخصصي درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    ارائه براي رشته:</td>
                <td class="style3" align="left">
                    <asp:DropDownList ID="drliBranch" runat="server" 
                        Width="132px" TabIndex="4" CssClass="InputControl" 
                        DataTextField="EducationBranchName">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" valign="top">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DrLiCourseEducationType" Display="Dynamic" 
                        ErrorMessage="نوع درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    نوع درس:</td>
                <td class="style3" align="left">
                    <asp:DropDownList ID="DrLiCourseEducationType" runat="server" TabIndex="5" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>تخصصي</asp:ListItem>
                        <asp:ListItem>اصلي</asp:ListItem>
                        <asp:ListItem>پايه</asp:ListItem>
                        <asp:ListItem>عمومي</asp:ListItem>
                        <asp:ListItem>اختیاری</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DrLiCourseTheoryUnit" Display="Dynamic" 
                        ErrorMessage="تعداد واحد تئوري درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    تعداد واحد&nbsp; تئوري درس:</td>
                <td class="style3" align="left">
                    <asp:DropDownList ID="DrLiCourseTheoryUnit" runat="server" TabIndex="6" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="DrLiCoursePracticalUnit" Display="Dynamic" 
                        ErrorMessage="تعداد واحد عملي درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    تعداد واحد&nbsp; عملي درس:</td>
                <td class="style3" align="left">
                    <asp:DropDownList ID="DrLiCoursePracticalUnit" runat="server" TabIndex="7" 
                        Width="132px" CssClass="InputControl" Height="22px">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="DrLiCourseSemisterNumber" Display="Dynamic" 
                        ErrorMessage="تر ارائه درس را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    ارائه براي ترم:</td>
                <td class="style3" align="left">
                    <asp:DropDownList ID="DrLiCourseSemisterNumber" runat="server" TabIndex="8" 
                        Width="132px" CssClass="InputControl" Height="22px">
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
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    &nbsp;</td>
                <td class="style3" align="left">
                    <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ذخيره" 
                        Width="60px" onclick="btnSave_Click" TabIndex="9" CssClass="Button" />
                </td>
                <td class="style4" align="left">
                    &nbsp;</td>
            </tr>



            <tr>
                <td align="right" class="style2">
                    &nbsp;</td>
                <td align="left" class="style3">
                    &nbsp;</td>
                <td align="left" class="style4">
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
