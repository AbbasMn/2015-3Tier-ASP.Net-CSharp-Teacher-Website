<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="StudentMainMP.Master" CodeBehind="StudentShowTeachersForMessage.aspx.cs" Inherits="PresentationLayer.User.Pages.Student.StudentShowTeachersForMessage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">
<!--  ************************************************************************************************ -->
<script type="text/javascript" src="../../.../../../jsMy/yuiloader-dom-event.js"></script>
<script type="text/javascript" src="../../../jsMy/vbulletin-core.js"></script>

<link rel="stylesheet" type="text/css" href="../../../CssMy/main-rollup.css">	

<link rel="stylesheet" type="text/css" href="../../../CssMy/floatcontainer.css">	

<!--  ************************************************************************************************ -->

    <!------------------------------CSS---------------------------------------------->
        
    <link rel="Stylesheet" type="text/css" href="../../../css/StyleMain.css" />
    <link href="../../../CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />   

    

<!------------------------------JQUERY---------------------------------------------->
<!------------------------------PopUp---------------------------------------------->
<script type="text/javascript" src="../../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.reveal.js"></script>

<!------------------------------Game_slider---------------------------------------------->
<script type="text/javascript" src="../../../js/Game_slider.js"></script>

<!------------------------------Top-Scroll---------------------------------------------->
<script type="text/javascript" src="../../../js/Top-Scroll.js"></script>





</asp:Content>


<asp:Content ID="Navigation" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
      
</asp:Content>

<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="left">
<!--------------------------------------- COL-1 ----------------------------------------------------------->
<div class="col1">
       <div id = "dvGrid" dir="rtl">

                     
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>  
                           
     <!-- floatcontainer -->
	
    <div class="body_wrapper2" dir="rtl" with:"100%" style="width: 100%">

	
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
                            
                            <a class="collapse" id="collapse_category_2" >
                            <img src="../../../images/Icons/collapse_40b_collapsed.png" alt="" title="باز کردن این قسمت"></a>
                        </h2>
                    </div>
                           
                    
                                       
                    <ol id="category_2" class="childforum" style="display: none;">
                            
                            
                                
                                
                                <!--first subsection-->
                                                
                                <li id="forum2" class="forumbit_post">
                                    <div class="forumrow">
                                    
              <ul class="list1">
                    <li><a>براي مشاهده پيامهاي ارسالي استاد (ثبت نمرات، پاسخ به اعتراض، تغيير تاريخ و ساعت امتحانات و ...)روي لينک     
                    <span class="style2">پيام هاي استاد
</span> کليک نماييد و در پنجره نمايش پيام، براي پاسخ دادن به پيام روي 
                        <img alt="" src="../../../images/Icons/widget-comment.png" /><img alt="" src="../../../images/Icons/widget-comment.png" /> کليک کنيد. </a></li>

                     <li><a>براي ارسال پيام به استاد روي لينک     
                    <span class="style2">پيام به استاد</span> کليک نماييد.
                    </a></li>
                    
                     <li><a>براي مشاهده پيام هاي ارسالي به استاد و نيز پاسخ استاد، روي لينک     
                    <span class="style2">پاسخ استاد</span> کليک نماييد.
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

    
          
 
                     <table  Class="TableMy" align="center">
                <tr>
                    <td align="right">
          
                 
          
                        &nbsp;</td>
                    <td align="center" colspan="3">
                        <asp:Label ID="lblError" runat="server" CssClass="LableMyBold" Font-Bold="True" 
                            ></asp:Label>
                        <asp:Label ID="lblMessage" runat="server" CssClass="LableMyBold"></asp:Label>
                    </td>
                </tr>
                         <tr>
                             <td align="right" valign="middle">
                                 انتخاب ترم :&nbsp;
                                 <asp:DropDownList ID="drliTermNumber" runat="server" AutoPostBack="True" 
                                     CssClass="InputControl" DataTextField="SemisterNumber" Height="22px" 
                                     ontextchanged="drliTermNumber_TextChanged" Width="124px">
                                 </asp:DropDownList>
                             </td>
                             <td align="right">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                     ControlToValidate="txtmessageTitle" Display="Dynamic" 
                                     ErrorMessage="عنوان پيام را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                 <asp:Label ID="lblTitle" runat="server" CssClass="LableMyBold" Font-Bold="False" 
                                     Font-Italic="False"  ForeColor="Black">عنوان پيام:</asp:Label>
                             </td>
                             <td align="right">
                                 <asp:TextBox ID="txtmessageTitle" runat="server" CssClass="InputControl" 
                                     MaxLength="100" TabIndex="1" Width="170px"></asp:TextBox>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             </td>
                             <td align="left">
                                 <asp:Button ID="btnSave" runat="server" CssClass="Button" 
                                     onclick="btnSave_Click" Text="ارسال پيام" Width="68px" />
                             </td>
                         </tr>
                         <tr>
                             <td align="right" rowspan="2" valign="top">
                                 &nbsp;</td>
                             <td align="right">
                                 &nbsp;</td>
                             <td align="right">
                                 &nbsp;</td>
                             <td align="left">
                                 &nbsp;</td>
                         </tr>
                <tr>
                    <td align="right" valign="top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtmessagePassage" Display="Dynamic" 
                            ErrorMessage="متن پيام را وارد نماييد" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:Label ID="lblMatn" runat="server" CssClass="LableMyBold" Font-Bold="False" 
                            Font-Italic="False"  ForeColor="Black">متن پيام:</asp:Label>
                    </td>
                    <td align="right" colspan="2">
                        <asp:TextBox ID="txtmessagePassage" runat="server" 
                            CssClass="InputControlBigMultiLine" Height="66px" TabIndex="10" 
                            TextMode="MultiLine" Width="56%"></asp:TextBox>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                            DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                    </td>
                </tr>
                
                         <tr>
                             <td align="right" valign="top">
                                 &nbsp;</td>
                             <td align="right" colspan="2">
                                 &nbsp;</td>
                         </tr>
                
                              

                <tr>
                    <td align="right" colspan="4">
          
                 
          
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False"   
                            EnableViewState="False" PageSize="3" style="margin-right: 0px" 
                                        Width="100%" TabIndex="3" BackColor="White" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1px" DataKeyNames="CourseGroupRowID,CourseGroupTeacherName,CourseGroupTeacherLastName,TakeCourseCourseName" 
                            onrowcommand="GridView1_RowCommand" ForeColor="Black" GridLines="Both">
                            <RowStyle HorizontalAlign="Right" Wrap="False"  
                                 />
                            
                            
                            <AlternatingRowStyle BackColor="#FFFFFF" />
                            
                            
                            <Columns>
                                <asp:BoundField DataField="TakeCourseCourseName" 
                                    ConvertEmptyStringToNull="False" HeaderText="نام درس" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TakeCourseUniversityNameCourseNameYearTermGroupNumber" 
                                    HeaderText="ترم تحصيلي" >
                                    <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupNumber" 
                                    HeaderText="گروه">
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseEducationBranchName" HeaderText="رشته" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupTeacherName" 
                                    HeaderText="استاد" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="False" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupTeacherLastName" >
                                    <ItemStyle Wrap="False" HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:ButtonField Text="پيامهاي استاد" 
                                    CommandName="goToRecievedMessageFromTeacher">
                                    <ItemStyle Font-Underline="True" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToSendMessage" Text="پيام به استاد" >
                                    <ItemStyle Font-Underline="True" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goToTeacherResponseMessage" Text="پاسخ استاد">
                                    <ItemStyle Font-Underline="True" />
                                </asp:ButtonField>
                            </Columns>
                            
                            <FooterStyle BackColor="#CCCCCC" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" 
                                Wrap="False" />
                            <HeaderStyle BackColor="#1777b1" Font-Bold="True" 
                                 ForeColor="White"  
                                HorizontalAlign="Center" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                                        </td>
                </tr>  
                
                              

            </table>


<table Class="TableMy" align="center">
                <tr>
                    <td align="center">
          
                 
          
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td align="center">
                        <asp:Label ID="lblType" runat="server" CssClass="LableMyBold" Font-Bold="True" 
                            ></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td align="center">
          
                 
          
                        <asp:RadioButtonList ID="RadioButtonListTeacher" runat="server" CellPadding="0" 
                            CellSpacing="0" CssClass="LableMyBold" RepeatColumns="3" 
                            RepeatDirection="Horizontal" TextAlign="Left" Width="60%" 
                            AutoPostBack="True" 
                            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem>    همه پيامها</asp:ListItem>
                            <asp:ListItem>    پيامهاي پاسخ داده شده</asp:ListItem>
                            <asp:ListItem>    پيامهاي پاسخ داده نشده</asp:ListItem>
                        </asp:RadioButtonList>
            
           
                   
             
           
                        </td>
                </tr>
                
                <tr>
                    <td align="center">
          
                 <asp:Repeater id="repeaterTeacher" runat="server" onitemcommand="repeater1_ItemCommand">
                 
                 <HeaderTemplate>
                 
                 </HeaderTemplate>
                 
                 <ItemTemplate>
                                  <div class="internalDivMessageMy">
                            <a class="internalDivMessageMylogo" ></a><a class="internalDivMessageMylogoTittle" >
                               عنوان پيام:    <%#Eval("messageTitle")%></a>
                               <asp:Label ID="lblMessageID" Visible="false"  runat="server" Text=<%#Eval("messageID")%>></asp:Label>

                       </div>
                     
                    <div class="internalDivContainMessageMy">

                            <pMessageMy>
                                <label id="lbl1" class="LableMyBold"> پيام:</label>
                                
                                   <%#Eval("messagePassage")%> 
                            </pMessageMy>
                            
                             
                    <a class="internalDivMessageMyfooterlogoLeft">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="goToResponse" 
                                ImageUrl="~/PresentationLayer/images/Icons/widget-comment.png" 
                                ToolTip="پاسخ دادن به پيام" />
                   </a>

                                 <hr class="internalDivLineMessageMy" />
                                                           
                            <pMessageMy>
                            <label id="lbl3" class="LableMyBold"> فرستنده:</label>
                            <%#Eval("messageSenderName")%> <%#Eval("messageSenderLastName")%> - <%#Eval("messageDate")%>
                            </pMessageMy>

                              
                            <hr class="internalDivLineMessageMy" /> 
                            <pMessageMy>
                            <label id="lbl2" class="LableMyBold">پاسخ شما: <%#Eval("messageResponseDate")%></label>
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
                    <td align="center">
          
                
          
                        
                        
                                </td>
                </tr>  
                
                              

                <tr>
                    <td align="center">

                    <asp:Repeater id="repeaterPasokhTeacher" runat="server" >
                 
                 <HeaderTemplate>
                 
                 </HeaderTemplate>
                 
                 <ItemTemplate>
                 
                    <div class="internalDivMessageMy">
                            <a class="internalDivMessageMylogoTittle" >
                               عنوان پيام:    <%#Eval("messageTitle")%></a>
                               <asp:Label ID="lblMessageID" Visible="false"  runat="server" Text=<%#Eval("messageID")%>></asp:Label>

                       </div>
                     
                    <div class="internalDivContainMessageMy">

                            <pMessageMy>
                            <label id="lbl1" class="LableMyBold"> پيام:<%#Eval("messagePassage")%></label></pMessageMy>
                            
                            <hr class="internalDivLineMessageMy" /> 
                            <pMessageMy>
                            <label id="lbl3" class="LableMyBold"> گيرنده:</label>
                            <%#Eval("messageRecieverName")%> <%#Eval("messageRecieverLastName")%>

                            <%#Eval("messageDate")%>
                            </pMessageMy>

                            
                            <hr class="internalDivLineMessageMy" /> 
                            <pMessageMy>
                            <label id="lbl2" class="LableMyBold">پاسخ استاد: <%#Eval("messageResponseDate")%></label>
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
                
                              

            </table>




                </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="drliTermNumber" />
                    </Triggers>
                </asp:UpdatePanel>
            
           
        </div>

&nbsp;<!-------------------- Product ---------------------------><!--mobile-content--><div class="clear"></div>
<!-------------------- Product --------------------------->
    <!--mobile-content-->
                          <div class="clear"></div>
                    </div><!--Col1-->
<!--------------------------------------- COL-2 ----------------------------------------------------------->
 <div class="col2">                 

<!--------------------------- Links -------------------------------------->
<div class="Links">
<h5>اخبار</h5>
<div style="clear:both"></div> 
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

 <div class="clear"></div>             

	

	

</div><!--Col2-->



<div class="clear"></div>	
<!--------------------------------------- www.montaseri.ir ----------------------------------------------------------->

</div><!--main-container-->
<div class="clear"></div>
      
</asp:Content>

