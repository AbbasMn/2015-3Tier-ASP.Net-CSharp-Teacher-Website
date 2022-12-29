<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="StudentMainMP.Master" CodeBehind="StudentControlPanelPage.aspx.cs" Inherits="PresentationLayer.User.Pages.Student.StudentControlPanelPage" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">


<!--  ************************************************************************************************ -->


<style>
    
    

 blink { -webkit-animation: blink 1s steps(5, start) infinite; 
         -moz-animation: blink 1s steps(5, start) infinite; 
         -o-animation: blink 1s steps(5, start) infinite; 
         animation: blink 1s steps(5, start) infinite; }

          @-webkit-keyframes  blink { to { visibility: hidden; } }
           @-moz-keyframes blink { to { visibility: hidden; } } 
           @-o-keyframes blink { to { visibility: hidden; } } 
           @keyframes blink { to { visibility: hidden; } }
           }




    </style>    
    
<!--  ************************************************************************************************ -->



<!--  ************************************************************************************************ -->
<script type="text/javascript" src="../../.../../../jsMy/yuiloader-dom-event.js"></script>
<script type="text/javascript" src="../../../jsMy/vbulletin-core.js"></script>

<link rel="stylesheet" type="text/css" href="../../../CssMy/main-rollup.css">	
<link rel="stylesheet" type="text/css" href="../../../CssMy/floatcontainer.css">	

<!--  ************************************************************************************************ -->

   

<%--<script type="text/javascript" src="../../../jsMy/tabs/Jquery-tabs.js"></script>--%>

    <!------------------------------CSS---------------------------------------------->
    
    <link rel="Stylesheet" type="text/css" href="../../../css/StyleMain.css" />
    <link href="../../../CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />  
     

<!------------------------------JQUERY---------------------------------------------->

<!------------------------------Game_slider---------------------------------------------->

<script type="text/javascript" src="../../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.reveal.js"></script>

<script type="text/javascript" src="../../../js/Game_slider.js"></script>






</asp:Content>


<asp:Content ID="Navigation" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
      
</asp:Content>

<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="left">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">



   
 
     
  <table width="100%" align="center" dir="rtl" 
             
        style="margin-top:0px;   font-weight: bold;" >
                              <tr>
                                <td align="center" valign="top" >
                                                                    <asp:ImageButton ID="ImageButton12" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/logout.png" 
                                        Width="38px" onclick="ImageButton12_Click" />
                                    <br />
                                    خروج<br />
                                </td>

                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton13" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/selectCourse.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/StudentTakeCourseGroup.aspx" 
                                        Width="38px" />
                                    <br />
                                    انتخاب واحد</td>
                          
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton14" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/marks.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/StudentsCoursesMarks.aspx" 
                                        Width="38px" />
                                    <br />
                                    نمرات
                                 </td>

                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton17" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/sendMessage.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/StudentShowTeachersForMessage.aspx" 
                                        Width="38px" />
                                    <br />
                                    پيام به استاد
                                    
                                  </td>
                          
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton19" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/teacherMessage.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/StudentShowTeachersForMessage.aspx" 
                                        Width="38px" />
                                    <br />
                                    پيامهاي استاد
                                 </td>
                               
                                <td align="center" valign="top">
                                 

                          
                                    <asp:ImageButton ID="ImageButton16" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/pictures.png" 
                                        PostBackUrl="~/PresentationLayer/AddPictureGallery.aspx" 
                                        Width="38px" />
                                    <br />
                                    آلبوم عکس
                                                                 
                                </td>
                              <tr>                          

                          
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton11" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/homeMain.png" 
                                        PostBackUrl="~/PresentationLayer/Main.aspx" Width="38px" />
                                    <br />
                                    صفحه اصلي</td>
                 
                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton21" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/exercise.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/SudentSendExerciseSolution.aspx" Width="38px" />
                                    <br />
                                    تمرين هاي استاد</td>

                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton15" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/protest.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/StudentsCoursesMarks.aspx" 
                                        Width="38px" />
                                    <br />
                                    اعتراض به نمره</td>
                          
                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton18" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/messageResponse.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/StudentShowTeachersForMessage.aspx" 
                                        Width="38px" />
                                    <br />
                                    پاسخ استاد</td>
                          
                                <td align="center" valign="top">

                                    <asp:ImageButton ID="ImageButton20" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/responseToTeacher.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/StudentShowTeachersForMessage.aspx" 
                                        Width="38px" />
                                    <br />
                                    پاسخ به پيامها</td>
                          
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton22" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/editprofile.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/StudentEditProfile.aspx" 
                                        Width="38px" />
                                    <br />
                                    ويرايش مشخصات</td>
                          

                          
                              </tr>
                              <tr>                          

                          
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton23" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/download.png" 
                                        PostBackUrl="~/PresentationLayer/DownloadFiles.aspx" Width="38px" />
                                    <br />
                                    آرشیو فایلها</td>
                 
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton24" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/download1.png" 
                                        PostBackUrl="~/PresentationLayer/DownloadFiles2.aspx" Width="38px" />
                                    <br />
                                    دانلود فایلها</td>

                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton25" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/softpermission.png" 
                                        PostBackUrl="~/PresentationLayer/User/Pages/InsertSoftwareForDownload.aspx" Width="38px" />
                                    <br />
                                    معرفی نرم افزار</td>
                          
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton26" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/softdownload.png" 
                                        
                                        PostBackUrl="~/PresentationLayer/DownloadSoftware2.aspx" 
                                        Width="38px" />
                                    <br />
                                    دانلودنرم افزار(توضیح)</td>
                          
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton27" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/softdownload2.png" 
                                        
                                        PostBackUrl="~/PresentationLayer/DownloadSoftware.aspx" 
                                        Width="38px" />
                                    <br />
                                    دانلود نرم افزار</td>
                          
                                <td align="center" valign="top">


                          
                                    <asp:ImageButton ID="ImageButton28" runat="server" Height="28px" 
                                        ImageUrl="~/PresentationLayer/images/Icons/adminmessage.png" 
                                        
                                        PostBackUrl="~/PresentationLayer/User/Pages/Student/StudentShowRecievedMessagesFromAdmin.aspx" 
                                        Width="38px" />
                                    <br />
                                    پیامهای مدیر سایت</td>
                          

                          
                              </tr>
                          </table>
    
  <hr size="3px" style="width: 100%; background-color: #0000FF; " />   
     
     
<div id="welcomePanelMyStudent" >

                          <table width="100%" align="right" dir="rtl" >
                              <tr>
                                <td align="right" valign="top" style="width:80px;">
                                <asp:Image ID="Image1" runat="server" Height="80px" 
                                                                        style="margin-right: 0px" Width="80px" BorderColor="White" 
                                                                        BorderStyle="Outset" BorderWidth="1px" />
                                </td>

                                <td align="right" valign="top">
                                 <h1My align="right"  style="margin-right:10px;">کنترل پانل کاربر</h1My>
                                 
                                 <pMyWelCome>
                                 <asp:Label ID="lblMessage" CssClass="LableBigMy" runat="server"></asp:Label>
                                 </pMyWelCome>
                                 

                                 <pMyWelCome>

                                
                                 <a href="StudentShowRecievedMessagesFromAdmin.aspx">
                                 <blink><asp:Label ID="lblMessageAdmin"  runat="server" Font-Bold="True" 
                                         ForeColor="#FF3300"></asp:Label></blink>
                                 </a>
                                 </pMyWelCome>
                                 
                                 <pMyWelCome>
                                 <a href="StudentShowAllRecievedMessages.aspx">
                                 <blink><asp:Label ID="lblMessageTeacher"  runat="server" Font-Bold="True" 
                                         ForeColor="#FF3300"></asp:Label></blink>
                                 </a>
                                 </pMyWelCome>
                                </td>
                          
                              </tr>
                          </table>
                              
                              
                                
                                 


                               
 </div> 

       <hr size="3px" style="width: 100%; background-color: #0000FF; " />
       
            
         
  <br />     
         
         <!-- floatcontainer -->
	
    <div class="body_wrapper" dir="rtl" style="margin-top: -30px;">

	
	<div id="content_container" class="contentright" style="margin-left: 0px;">
		<div id="content" style="margin-left: 0px;width:745px;"">
	
        
	        <ol id="forums" class="floatcontainer">

 <!-- section 1 --> 
         		
		        <li class="forumbit_nopost L1" id="cat">
        		
        		
	                <div class="forumhead foruminfo L1 collapse">
                        <h2>
                            <span class="forumtitle">
                            <a>مشخصات کاربر</a></span>
                            <span class="forumlastpost"></span>
                            
                            <a class="collapse" id="collapse_category" href="">
                            <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                        </h2>
                    </div>
                           
                    
                                       
                    <ol id="category" class="childforum" style="display: none; width:745px;">
                            
                            
                                
                                
                                <!--first subsection-->
                                                
                                <li id="forum81" class="forumbit_post">
                                    <div class="forumrow">

                                         
                                         <table 
                                            align="right" dir="rtl" style="  width: 100%">
 
                                                        <tr>
                                                            <td align="right"  rowspan="12" valign="top">
                                            <asp:Image ID="imgStudentImage" runat="server" Height="104px" 
                                                                        style="margin-right: 0px" Width="102px" BorderColor="White" 
                                                                        BorderStyle="Outset" BorderWidth="1px" />
                                             
                                                             
                                                                <br />
                                           <asp:FileUpload ID="FileUpLd" runat="server" Width="100px" 
                                            ToolTip="عکس کاربري را انتخاب نماييد" EnableTheming="True" />
                                   
                                               
                                            
                                                            </td>
    
                                                        </tr>

                                                        <tr>
                                                            <td align="right" >
                                                                    نام:&nbsp;</td>
                                                            <td align="right" dir="rtl" >
                                                                    <asp:Label ID="lblUserStudentName" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    &nbsp;نام خانوادگي:&nbsp;</td>
                                                            <td align="right" dir="rtl">
                                                                    <asp:Label ID="lblStudentLastName" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" >
                                                                    نام کاربري:</td>
                                                            <td align="right"  dir="rtl">
                                                                    <asp:Label ID="lblUserStudentUserName" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    شماره دانشجويي:&nbsp;
                                                                            </td>
                                                            <td align="right"  dir="rtl">
                                                                    <asp:Label ID="lblUserStudentID" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" >
                                                                    رشته تحصيلي:&nbsp;</td>
                                                            <td align="right" dir="rtl" >
                                                                    <asp:Label ID="lblStudentBranch" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                            </td>
                                                            <td align="right" >
                                                                    مقطع:
                                                                            </td>
                                                            <td align="right" dir="rtl">
                                                                    <asp:Label ID="lblStudentLevel" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" >
                                                                    دانشگاه:</td>
                                                            <td align="right" dir="rtl" >
                                                                    <asp:Label ID="lblStudentUniversity" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                            <td align="right" >
                                                                    وب سايت:&nbsp;
                                                                                    </td>
                                                            <td align="right" dir="rtl">
                                                                    <asp:Label ID="lblUserStudentWebSite" runat="server" Text="Label" CssClass="LableMy"></asp:Label>
                                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td align="right" >
                                                                <asp:LinkButton CssClass="LinkButtonMy" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" 
                                                                CausesValidation="False"  
                                                                  >تغيير تصوير</asp:LinkButton>
                                                            </td>
                                                            <td align="right" >
                                                                    <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
                                                            <asp:Label ID="lblCurrentStudentImageName" runat="server" Visible="False"></asp:Label>
                                                                                    </td>
                                                            <td align="right" >
                                                                    ايميل:&nbsp; </td>
                                                            <td align="right" dir="rtl">
                                                                                <asp:Label ID="lblUserStudentEmail" runat="server" Text="Label" CssClass="LableMy"></asp:Label></td>
                                                        </tr>
                                                        
                                                    </table>
                                         

                                    </div>
                                </li>
                                

                                 
                               </ol>
                     
 
	        </ol>
	        
        

</div>
	
        </div>
					
    </div>
  
  
 <br />
 <br />
 <br />
 
        <!-- /floatcontainer -->

       
<div class="body_wrapper1" dir="rtl" >

                        	
	<div id="content_container1" class="contentright" style="margin-left: 0px;">
		<div id="content1" style="margin-left: 0px; width:745px;">
                        	
                               
	                                <ol id="forums1" class="floatcontainer">

                         <!-- section 1 --> 
                                 		
		                                <li class="forumbit_nopost L1" id="cat1">
                                		
                                		
	                                        <div class="forumhead foruminfo L1 collapse">
                                                <h2>
                                                    <span class="forumtitle">
                                                    <a>پیامهای مدیر سایت</a></span>
                                                    <span class="forumlastpost"></span>
                                                    
                                                    <a class="collapse" id="collapse_category_1" href="">
                                                    <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                                                </h2>
                                            </div>
                                                   
                                            
                                                               
                                            <ol id="category_1" class="childforum" style="display: none; width:745px;">
                                                    
                                                    
                                                        
                                                        
                                                        <!--first subsection-->
                                                                        
                                                        <li id="forum1" class="forumbit_post">
                                                            <div class="forumrow">
              <ul class="list1">

              
              
              <%            
                  for (int i = 0; i < pdt.Rows.Count; i++)
                            {

                                Response.Write("<li><a style='  color: #FF0066; font-weight: bold'>" + pdt.Rows[i]["messageTitle"].ToString() + "</a></li>");
                                Response.Write("<br/>");
                                Response.Write("<font style='  color: #660033; text-align: justify;'>"+pdt.Rows[i]["messagePassage"].ToString()+"</font>");
                                Response.Write("<p></p>");
                            }
                  
              %>
                        
                
             

                 
              </ul>

                                                      
                                                            </div>
                                                        </li>
                                                        

                                                         
                                                       </ol>
                                             
                         
	                                </ol>
                        	
                                </div>
                        					
                            </div>
                          
                          
                          
                          
                            
</div>


 <br />
 <br />
 <br />

                <!-- floatcontainer -->
	
    <div class="body_wrapper3" dir="rtl" >

	
	<div id="content_container3" class="contentright" style="margin-left: 0px;">
		<div id="content3" style="margin-left: 0px; width:745px;"">
	
        
	        <ol id="forums3" class="floatcontainer">

 <!-- section 1 --> 
         		
		        <li class="forumbit_nopost L1" id="cat3">
        		
        		
	                <div class="forumhead foruminfo L1 collapse">
                        <h2>
                            <span class="forumtitle">
                            <a>اطلاعيه ها و اعلان ها</a></span>
                            <span class="forumlastpost"></span>
                            
                            <a class="collapse" id="collapse_category_3" href="">
                            <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                        </h2>
                    </div>
                           
                    
                                     
                    <ol id="category_3" class="childforum" style="display: none; width:745px;">
                            
                            
                                
                                
                                <!--first subsection-->
                                                
                                <li id="forum3" class="forumbit_post">


                                    
<div class="forumrow">
                                    
  <div class="tabListMain">
    
<%--          <ul class="tabs innertab">
          
            <li><a href="#comp"> اعلانهای مربوط به رشته دانشجو </a></li>
                <%#Eval("newsTitle")%>
            
            
          </ul>--%>
          
          <div class="tab_container">
          
           <div id="comp" class="tab_content"> 
            
  <table  dir="rtl" id="Table1" style="  width: 100%">
                    <tr>
                        <td align="right" width="25%">
                            <b>پروژه و کارآموزي</b></td>
                        <td align="right" width="25%">
                            <b>نرم افزارهاي تخصصي</b></td>
                        <td align="right" width="25%">
                            <b>دانلود فايل، اسلايد و جزوه </b></td>
                        <td align="right" width="25%">
                            <b>تاريخ و ساعت کلاس</b></td>
                    </tr>
                    <tr>
                        <td align="right" width="25%" valign="top">
                              <asp:GridView ID="GridViewPeorojeKarAmooziComp" runat="server" AutoGenerateColumns="False" 
                                Font-Bold="False"   GridLines="None"
                                EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                        Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                ForeColor="Black" onrowcommand="GridViewPeorojeKarAmooziComp_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue"  />
                            <Columns>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                    <ItemStyle Font-Underline="False" Width="10%" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                    <ItemStyle Font-Underline="True" Width="90%" />
                                </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                
                            </EmptyDataTemplate>
                            <SelectedRowStyle 
                                Wrap="False" />
                            <HeaderStyle 
                                Font-Size="10pt"  
                                HorizontalAlign="Right" />
                            <AlternatingRowStyle Wrap="True" />
                        </asp:GridView>
                            
                            
                            </td>
                        <td align="right" width="25%" valign="top">
                              <asp:GridView ID="GridViewSoftwareComp" runat="server" AutoGenerateColumns="False" 
                                Font-Bold="False"   GridLines="None" 
                                EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                        Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                ForeColor="Black" onrowcommand="GridViewSoftwareComp_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue"  />
                            <Columns>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                    <ItemStyle Font-Underline="False" Width="10%" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                    <ItemStyle Font-Underline="True" Width="90%" />
                                </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                
                            </EmptyDataTemplate>
                            <SelectedRowStyle 
                                Wrap="False" />
                            <HeaderStyle 
                                Font-Size="10pt"  
                                HorizontalAlign="Right" />
                            <AlternatingRowStyle Wrap="True" />
                        </asp:GridView>
                            
                            
                            </td>
                        <td align="right" width="25%" valign="top">
                              <asp:GridView ID="GridViewDownLoadFileComp" runat="server" AutoGenerateColumns="False" 
                                Font-Bold="False"   GridLines="None" 
                                EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                        Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                ForeColor="Black" onrowcommand="GridViewDownLoadFileComp_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue"  />
                            <Columns>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                    <ItemStyle Font-Underline="False" Width="10%" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                    <ItemStyle Font-Underline="True" Width="90%" />
                                </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                
                            </EmptyDataTemplate>
                            <SelectedRowStyle 
                                Wrap="False" />
                            <HeaderStyle 
                                Font-Size="7pt"  
                                HorizontalAlign="Right" />
                            <AlternatingRowStyle Wrap="True" />
                        </asp:GridView>
                            
                            
                            </td>
                        <td align="right" width="25%" valign="top">
                              <asp:GridView ID="GridViewClassComp" runat="server" AutoGenerateColumns="False" 
                                Font-Bold="False"   GridLines="None" 
                                EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                        Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                ForeColor="Black" onrowcommand="GridViewClassComp_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue"  />
                            <Columns>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                    <ItemStyle Font-Underline="False" Width="10%" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                    <ItemStyle Font-Underline="True" Width="90%" />
                                </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                
                            </EmptyDataTemplate>
                            <SelectedRowStyle 
                                Wrap="False" />
                            <HeaderStyle 
                                Font-Size="10pt"  
                                HorizontalAlign="Right" />
                            <AlternatingRowStyle Wrap="True" />
                        </asp:GridView>
                            
                            
                         </td>
                    </tr>
                    <tr>
                        <td align="right" width="25%">
                            &nbsp;</td>
                        <td align="right" width="25%">
                            &nbsp;</td>
                        <td align="right" width="25%">
                            &nbsp;</td>
                        <td align="right" width="25%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" width="25%">
                            <b>اخبار</b></td>
                        <td align="right" width="25%">
                            <b>پيوندهاي مفيد</b></td>
                        <td align="right" width="25%">
                            <b>تحويل پروژه</b></td>
                        <td align="right" width="25%">
                            <b>تاريخ و ساعت امتحان</b></td>
                    </tr>
                    <tr>
                        <td width="25%" valign="top">

                              <asp:GridView ID="GridViewNewsComp" runat="server" AutoGenerateColumns="False" 
                                Font-Bold="False"   GridLines="None" 
                                EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                        Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                ForeColor="Black" onrowcommand="GridViewNewsComp_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue"  />
                            <Columns>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                    <ItemStyle Font-Underline="False" Width="10%" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                    <ItemStyle Font-Underline="True" Width="90%" />
                                </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                
                            </EmptyDataTemplate>
                            <SelectedRowStyle 
                                Wrap="False" />
                            <HeaderStyle 
                                Font-Size="10pt"  
                                HorizontalAlign="Right" />
                            <AlternatingRowStyle Wrap="True" />
                        </asp:GridView>
                            
                            
                            <br />

                         </td>
                        <td width="25%" valign="top">
                              <asp:GridView ID="GridViewLinkComp" runat="server" AutoGenerateColumns="False" 
                                Font-Bold="False"   GridLines="None" 
                                EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                        Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                ForeColor="Black" onrowcommand="GridViewLinkComp_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue"  />
                            <Columns>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                    <ItemStyle Font-Underline="False" Width="10%" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                    <ItemStyle Font-Underline="True" Width="90%" />
                                </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                
                            </EmptyDataTemplate>
                            <SelectedRowStyle 
                                Wrap="False" />
                            <HeaderStyle 
                                Font-Size="10pt"  
                                HorizontalAlign="Right" />
                            <AlternatingRowStyle Wrap="True" />
                        </asp:GridView>
                            
                            
                         </td>
                        <td valign="top" width="25%">
                              <asp:GridView ID="GridViewThavileProjeComp" runat="server" AutoGenerateColumns="False" 
                                Font-Bold="False"   GridLines="None" 
                                EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                        Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                ForeColor="Black" onrowcommand="GridViewThavileProjeComp_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue"  />
                            <Columns>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                    <ItemStyle Font-Underline="False" Width="10%" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                    <ItemStyle Font-Underline="True" Width="90%" />
                                </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                
                            </EmptyDataTemplate>
                            <SelectedRowStyle 
                                Wrap="False" />
                            <HeaderStyle 
                                Font-Size="10pt"  
                                HorizontalAlign="Right" />
                            <AlternatingRowStyle Wrap="True" />
                        </asp:GridView>
                            
                            
                         </td>
                        <td valign="top" width="25%">

                              <asp:GridView ID="GridViewExaminationComp" runat="server" AutoGenerateColumns="False" 
                                Font-Bold="False"   GridLines="None" 
                                EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                        Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                ForeColor="Black" onrowcommand="GridViewExaminationComp_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue"  />
                            <Columns>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsDate" Text="Button">
                                    <ItemStyle Font-Underline="False" Width="10%" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle" Text="Button">
                                    <ItemStyle Font-Underline="True" Width="90%" />
                                </asp:ButtonField>
                            </Columns>
                            <EmptyDataTemplate>
                                
                            </EmptyDataTemplate>
                            <SelectedRowStyle 
                                Wrap="False" />
                            <HeaderStyle 
                                Font-Size="10pt"  
                                HorizontalAlign="Right" />
                            <AlternatingRowStyle Wrap="True" />
                        </asp:GridView>
                            
                            
                         </td>
                    </tr>
                    <tr>
                        <td width="25%" valign="top">

                              &nbsp;</td>
                        <td width="25%" valign="top">
                              &nbsp;</td>
                        <td valign="top" width="25%">
                              &nbsp;</td>
                        <td valign="top" width="25%" align="right">

                              <b>برنامه نويسي</b></td>
                    </tr>
                    <tr>
                        <td width="25%" valign="top">

                              &nbsp;</td>
                        <td width="25%" valign="top">
                              &nbsp;</td>
                        <td valign="top" width="25%">
                              &nbsp;</td>
                        <td valign="top" width="25%">

<asp:GridView ID="GridViewProgrammingComp" runat="server" AutoGenerateColumns="False" 
                                Font-Bold="False"   GridLines="None" 
                                EnableViewState="False" PageSize="100000" style="margin-right: 0px; text-align: center;" 
                                        Width="100%" TabIndex="1" DataKeyNames="newsID" 
                                HorizontalAlign="Center" Height="16px" ShowHeader="False" 
                                ForeColor="Black" 
                   onrowcommand="GridViewProgrammingComp_RowCommand">
                            <RowStyle HorizontalAlign="Right" Wrap="True" ForeColor="Blue"  />
                            <Columns>
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsDate">
                                    <ItemStyle Font-Underline="False" Width="3%" />
                                </asp:ButtonField>                            
                                <asp:ButtonField CommandName="goToShow" DataTextField="newsTitle">
                                    <ItemStyle Font-Underline="True" Width="97%" />
                                </asp:ButtonField>

                            </Columns>
                            <EmptyDataTemplate>
                                
                            </EmptyDataTemplate>
                            <SelectedRowStyle 
                                Wrap="False" />
                            <HeaderStyle 
                                Font-Size="10pt"  
                                HorizontalAlign="Right" />
                            <AlternatingRowStyle Wrap="True" />
                        </asp:GridView> 
  
                            
                         </td>
                    </tr>
              </table>            
                
            </div>


 
 
                                                                                            
          
    </div>   
    
                
    </div>

 </div>



                                </li>
                                

                                 
                               </ol>
                     
                  
	        </ol>
	
        </div>
					
    </div>
  
  
  
  
    
</div>

        <!-- /floatcontainer --> 
 
 <br />
 <br />
 <br />
   <!-- floatcontainer --> 
     
        
     <div class="body_wrapper5" dir="rtl">

                        	
	<div id="content_container5" class="contentright" style="margin-left: 0px;">
		<div id="content5" style="margin-left: 0px; width:745px;"">
                        	
                                
	                                <ol id="forums5" class="floatcontainer">

                         <!-- section 1 --> 
                                 		
		                                <li class="forumbit_nopost L1" id="cat5">
                                		
                                		
	                                        <div class="forumhead foruminfo L1 collapse">
                                                <h2>
                                                    <span class="forumtitle">
                                                    <a>وب سايتهاي پيشنهادي اساتيد و مدير سايت</a></span>
                                                    <span class="forumlastpost"></span>
                                                    
                                                    <a class="collapse" id="collapse_category_5" href="">
                                                    <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                                                </h2>
                                            </div>
                                                   
                                            
                                                               
                                            <ol id="category_5" class="childforum" style="display: none; width:745px;">
                                                    
                                                    
                                                        
                                                        
                                                        <!--first subsection-->
                                                                        
                                                        <li id="forum5" class="forumbit_post">
                                                            <div class="forumrow">

<asp:GridView ID="GridViewLink" runat="server" AutoGenerateColumns="False"  Font-Bold="False"                                                                                                  
               GridLines="None"
    EnableViewState="False" PageSize="100000" 
     TabIndex="1" 
    DataKeyNames="linkID" Width="100%"
                                                                                                                                                
             HorizontalAlign="Center" Height="16px" 
    onrowcommand="GridViewLink_RowCommand" BackColor="White" BorderColor="#999999" 
    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black">  
                                                                                                                                     
            <RowStyle HorizontalAlign="Right" Wrap="True" />
                  <Columns>

                    <asp:BoundField DataField="linkAouthorName" HeaderText="معرفي توسط ">
                        <ItemStyle Width="11%" HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="linkAouthorLastName" HeaderText="استاد" >
                          <ItemStyle Width="19%" HorizontalAlign="Right" />
                      </asp:BoundField>                                                                                                                                                                            
                      <asp:ButtonField CommandName="goToShow" DataTextField="linkTitle" 
                          HeaderText="عنوان وب سايت">
                          <ItemStyle Font-Underline="False" Width="30%" HorizontalAlign="Right" />
                      </asp:ButtonField>
                      
                    
                      <asp:ButtonField CommandName="goToShow" DataTextField="linkAddress" 
                          HeaderText="آدرس وب سايت">
                          <ItemStyle HorizontalAlign="Left" Width="40%" />
                      </asp:ButtonField>
                      
                    
                  </Columns>
                  <FooterStyle BackColor="#CCCCCC" />
                  <PagerStyle BackColor="#999999" ForeColor="Black" 
                HorizontalAlign="Center" />
                  <EmptyDataTemplate>
                  </EmptyDataTemplate>
                  <SelectedRowStyle Wrap="False" BackColor="#000099" Font-Bold="True" 
                      ForeColor="White" />
                  <HeaderStyle Font-Size="7pt"  HorizontalAlign="center" 
                      BackColor="#1777b1" Font-Bold="True" ForeColor="White" />
                  <AlternatingRowStyle Wrap="True" BackColor="#F88017" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
              </asp:GridView>                                                       
                                                            </div>
                                                        </li>
                                                        

                                                         
                                                       </ol>
                                             
                         
	                                </ol>
                        	
                                </div>
                        					
                            </div>
                          
                          
                          
                          
                            
                        </div>        
        
              
<!-- /floatcontainer --> 

    
    <br />
 <br />
 <br />
     <!-- floatcontainer -->
	
    <div class="body_wrapper2" dir="rtl">

	
	<div id="content_container2" class="contentright" style="margin-left: 0px;">
		<div id="content2" style="margin-left: 0px;width:745px;"">
	
        
	        <ol id="forums2" class="floatcontainer">

 <!-- section 1 --> 
         		
		        <li class="forumbit_nopost L1" id="cat2">
        		
        		
	                <div class="forumhead foruminfo L1 collapse">
                        <h2>
                            <span class="forumtitle">
                            <a>نکات مهم</a></span>
                            <span class="forumlastpost"></span>
                            
                            <a class="collapse" id="collapse_category_2" href="">
                            <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                        </h2>
                    </div>
                           
                    
                                       
                    <ol id="category_2" class="childforum" style="display: none; width:745px;">
                            
                            
                                
                                
                                <!--first subsection-->
                                                
                                <li id="forum2" class="forumbit_post">
                                    <div class="forumrow">
                                    
              
              <ul class="list1">
              
                <li><a>
براي مشاهده و دريافت فايل تمرين و پرووژه هاي درسي، و ارسال فايل (هاي) پاسخ تمرين و پروژه (گزارشات، فايلهاي نرم افزاري و ...) از قسمت <b>تمرين ها و پروژه هاي استاد</b> 
                             استفاده نماييد.
                              </a></li> 
                              
                <li><a>
وب سايتهاي مفيد و کاربردي که اساتيد و مديريت سايت با توجه به رشته تخصصي و علمي خود معرفي نموده اند را از قسمت <b>وب سايتهاي پيشنهادي اساتيد و مديريت سايت</b> 
                              (قسمت زير) مشاهده نماييد.
                              </a></li>
                                                                         
                <li><a>
اعلان ها و اطلاعيه هاي تخصصي اساتيد رشته تخصصي و مديريت سايت را از قسمت <b>اطلاعيه ها و اعلان ها</b> 
                              (قسمت زير) مشاهده نماييد.
                              </a></li>
                              
                <li><a>       براي انتخاب دروس ترم جاري از قسمت <b>انتخاب واحد</b> استفاده نماييد. توچه 
                              داشته باشيد که فقط ميتوانيد با توجه به دانشگاه محل تحصيل و رشته، دروس ترم جاري 
                              (تعيين توسط مديريت سايت) را انتخاب نماييد. دروسي که براي آنها نمره اي توسط استاد 
                              وارد شده است غير قابل حذف مي باشند</a></li>
                              
                <li><a>براي مشاهده نمرات دروس و ثبت اعتراض از قسمت <b>نمرات</b> استفاده نماييد</a></li>
 
                 <li><a>
                            براي مشاهده پيامهاي ارسالي استاد (ثبت نمرات، پاسخ به اعتراض، تغيير تاريخ و ساعت امتحانات و ...) از قسمت <b>پيامهاي ارسالي استاد </b>
                              ، براي پاسخ به پيامهاي ارسال شده توسط استاد از قسمت <b>پاسخ به پيامهاي ارسالي استاد </b> و براي ارسال پيام به استاد و مشاهده پاسخ استاد به ترتيب از قسمت هاي <b>پاسخ به پيامهاي ارسالي استاد </b> و <b>پاسخ به پيامهاي ارسالي استاد </b> استفاده نماييد  
                             </a></li>               
                
                <li><a>
                            براي مشاهده آلبوم ها و عکسهايي که ارسال نموده ايد از قسمت <b>آلبوم عکس </b>
                              استفاده نماييد. براي مشاهده آلبوم و عکسهاي آن توسط ديگران گزينه مشاهده توسط اعضا 
                              را انتخاب و تاييد نماييد</a></li>
              </ul>


    
                             


                                    </div>
                                </li>
                                

                                 
                               </ol>
                     
 
	        </ol>
	
        </div>
					
    </div>
  
  
  
  
    
</div>

        <!-- /floatcontainer --> 
        

<%--<hr size="3px" style="width: 90%; background-color: #0000FF; margin:30px 0 0 35px;" /> 



<div id="slider"  style="width:83%;margin:30px 0 0 30px;" runat="server">
<div class="hamyar_slider">
      <ul>

                   <asp:DataList ID="DataList2" runat="server" DataKeyField="newsID" 
                         Width="100%" 
                        RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                             
                    <ItemTemplate>
                        <a href="../../../NewsFiles/<%#Eval("newsUploadedFileName")%>" target="_blank">
                            <li><img src="../../../NewsFiles/downloadicon/<%#Eval("newsUploadedFileType")%>.jpg">
                            
                            <%#Eval("newsTitle")%></li>
                        </a> 

                                                               

                    </ItemTemplate>
                </asp:DataList>


              
        
      </ul>
    </div>
<div class="icon-arrow-left" style="margin-top: -80px;margin-left: -8px;float: left;"></div>
<div class="icon-arrow-right" style="margin-top: -80px;margin-right: -76px;float: right;"></div>
</div>
<script type="text/javascript">
    $('.hamyar_slider').hamyar_slider({
        show: 8,
        btnprev: '.icon-arrow-right',
        btnext: '.icon-arrow-left',
        speed: 4000,
        disable_class: 'disable',
        auto: true,
        auto_time: 8000,
        slide: 4
    });
</script> 

     <hr size="3px" style="width: 90%; background-color: #0000FF; margin:-20px 0 0 35px; " /> 
--%>
                    </div><!--Col1-->




<!--------------------------------------- COL-2 ----------------------------------------------------------->
 <div class="col2">                 

<!--------------------------- Links -------------------------------------->
<div class="Game_slider" style="margin-right:-2px;">
<h5>اخبار</h5>
<div style="clear:None"></div> 
<marquee dir="rtl"  behavior="alternate" direction="up" height="150" width="100%" scrollamount="1" scrolldelay="50"
onmouseover='this.stop()' onmouseout='this.start()'>
<div align="center">
<p align="right">
 <asp:DataList ID="DataList1" runat="server" DataKeyField="newsID" 
                                                             onitemcommand="DataList1_ItemCommand" Width="100%" 
                                                             RepeatDirection="Horizontal" RepeatLayout="Flow">

    <ItemTemplate>

    
           <img src="../../../pic/Icon/s-flash5.gif">
            <asp:LinkButton ID="Label2" runat="server"  Text=<%#Eval("newsDate")%> ForeColor="#000000" ViewStateMode="Disabled"  ></asp:LinkButton>
            <asp:LinkButton ID="Label1"  runat="server" Text=<%#Eval("newsTitle")%> ForeColor="#000000"  ></asp:LinkButton>
            <br />

    </ItemTemplate>
</asp:DataList>
</p>
    	
</div></marquee>
</div>  


<!-------------------- Game`s-Slider --------------------------->
 <div class="Game_slider" style="height:350px; margin-right:-2px;">
<h5>دانلود فایل درس</h5>

<asp:Repeater id="repeater1" runat="server">
                 
                 <HeaderTemplate>
                     <ul class="spy">                
                 </HeaderTemplate>
                 
                 <ItemTemplate>                 
                              <li>
                                    <a href="../../../NewsFiles/<%#Eval("newsUploadedFileName")%>" target="_blank">
                                    <img src="../../../NewsFiles/downloadicon/<%#Eval("newsUploadedFileType")%>.jpg" width="60px" height="60px"></a>                                  
                                     <p class="info" style="text-align:justify; width:110px; font-weight:bold;"><%#Eval("newsTitle")%></p>
                                     
                              </li>                                                                    
                     
                  </ItemTemplate>
                 
                 <FooterTemplate>
                     </ul>                
                 </FooterTemplate>
                 
                 </asp:Repeater>
 </div>



 <!-------------------- Game`s-Slider --------------------------->
 <div class="Game_slider" style="height:460px; margin-right:-2px;">
<h5>معرفی ۱۰ نرم افزار </h5>

<asp:Repeater id="repeater2" runat="server">
                 
                 <HeaderTemplate>
                     <ul class="spy">                
                 </HeaderTemplate>
                 
                 <ItemTemplate>                 
                              <li>
                                    <a href="<%#Eval("newsRelatedLink")%>">
                                    <img src="../../../NewsImages/<%#Eval("newsPictureName")%>" width="80px" height="85px"></a>                                  
                                     <p class="info" style="text-align:justify; width:100px; font-weight:bold;"><%#Eval("newsTitle")%></p>
                              </li>                                                                    
                     
                  </ItemTemplate>
                 
                 <FooterTemplate>
                     </ul>                
                 </FooterTemplate>
                 
                 </asp:Repeater>
 </div>
 <div class="clear"></div>             

	

	

</div><!--Col2-->



<div class="clear"></div>	
<!--------------------------------------- www.montaseri.ir ----------------------------------------------------------->

</div><!--main-container-->
<div class="clear"></div>
      
</asp:Content>

