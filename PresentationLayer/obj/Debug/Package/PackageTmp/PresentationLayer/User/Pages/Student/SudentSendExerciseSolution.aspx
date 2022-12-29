<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="StudentMainMP.Master" CodeBehind="SudentSendExerciseSolution.aspx.cs" Inherits="PresentationLayer.User.Pages.Student.SudentSendExerciseSolution" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register assembly="PersianDatePickup" namespace="PersianDatePickup" tagprefix="pcal" %>


<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

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
<div >


    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>


<div id = "dvGrid" dir="rtl">
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
<ContentTemplate> 

            <table dir="rtl" width="100%">
        <tr>
            <td align="right" valign="top" >
                                
                                
             
                                        <table dir="rtl">
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
                                                        <b>دروس اخذ شده در ترم انتخابي</b></td>
                                                </tr>
     
                                                <tr>
                                                    <td valign="top">
          
                 
          
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" EnableViewState="False" PageSize="3" style="margin-right: 0px" 
                                        Width="250px" TabIndex="3" BackColor="White" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1px" DataKeyNames="CourseGroupRowID" 
                            onrowcommand="GridView1_RowCommand" ForeColor="Black" GridLines="Both">
                            <RowStyle HorizontalAlign="Right" Wrap="True" Font-Names="Tahoma" 
                                Font-Size="8pt" />
                            
                            
                            <AlternatingRowStyle BackColor="#FFFFFF" />
                            
                            
                            <Columns>
                                <asp:BoundField DataField="TakeCourseCourseName" 
                                    ConvertEmptyStringToNull="False" HeaderText="نام درس" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupNumber" 
                                    HeaderText="گروه">
                                    <ItemStyle HorizontalAlign="Right" Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupTeacherName" 
                                    HeaderText="استاد" >
                                    <ItemStyle HorizontalAlign="Right" Wrap="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CourseGroupTeacherLastName" >
                                    <ItemStyle Wrap="True" HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:ButtonField Text="تمرينها" 
                                    CommandName="goToShowExercise">
                                    <ItemStyle Font-Underline="True" />
                                </asp:ButtonField>
                            </Columns>
                            
                            <FooterStyle BackColor="#CCCCCC" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" 
                                Wrap="False" />
                            <HeaderStyle BackColor="#1777b1" Font-Bold="True" 
                                Font-Size="7pt" ForeColor="White" Font-Names="Tahoma" 
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
 <td align="right" valign="top" >
                                
                                                            <table width="350px" >
                                                                <tr>
                                                                    <td valign="top" align="center">
          
                 
          
           <asp:Label ID="lblError" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">
                                                                        براي&nbsp; دريافت فايل تمرين برروي لينک <b>دانلود تمرين</b> کليک نماييد. پاسخ 
                                                                        تمرينهايي که استاد به آنها <b>نمره بيشتر از صفر</b> داده است <b>غير قابل حذف </b>
                                                                        هستند.</td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">
                                                                        <hr size="3px" style="background-color: #0066FF" width="100%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <b>تمرين هاي درس             
           
                   
             
           
                    <asp:Label ID="lblExerciseCourseName0" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                                                        </b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" valign="top">
                                
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" PageSize="3" 
                                style="margin-right: 0px" TabIndex="1" BackColor="White" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1px" Width="350px" 
                                                                            DataKeyNames="teacherExerciseID" onrowcommand="GridView2_RowCommand" 
                                                                            ForeColor="Black" GridLines="Both">
                            <RowStyle HorizontalAlign="Right" Wrap="true" />
                            <AlternatingRowStyle BackColor="#FFFFFF" />
                            <Columns>
                                <asp:BoundField DataField="teacherExerciseNumber" HeaderText="شماره ">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="True" HorizontalAlign="Right" />
                                </asp:BoundField>
<asp:BoundField DataField="teacherExerciseTitle" HeaderText="عنوان ">
    <HeaderStyle HorizontalAlign="Center" />
    <ItemStyle Wrap="True" HorizontalAlign="Right" />
</asp:BoundField>
                                <asp:BoundField DataField="teacherExerciseDeliveryDeadLine" 
                                    HeaderText="مهلت ">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Wrap="False" HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="teacherExerciseMark" HeaderText="نمره " />
                                <asp:HyperLinkField DataNavigateUrlFields="teacherExerciseFileName" 
                                    DataNavigateUrlFormatString="~/PresentationLayer/User/Pages/Teacher/ExerciseFiles/{0}" 
                                    Text="دانلود" HeaderText="فايل " />
                                <asp:ButtonField CommandName="goFotShowExerciseSoulution" Text="فايل" 
                                    HeaderText="پاسخ" >
                                    <ItemStyle Font-Underline="True" HorizontalAlign="Center" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="goForSendResponse" Text="ارسال فايل" 
                                    HeaderText="" >
                                    <ItemStyle Font-Underline="True" />
                                </asp:ButtonField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" 
                                Wrap="False" />
                            <HeaderStyle BackColor="#1777b1" Font-Bold="True" 
                                Font-Size="7pt" ForeColor="White" Font-Names="Tahoma" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" valign="top">
                                
                                                                        <b>پاسخهای ارسالي شما</b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" valign="top">
                                
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False" Font-Names="Tahoma" Font-Size="8pt" PageSize="3" 
                                style="margin-right: 0px" TabIndex="1" BackColor="White" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1px" Width="350px" 
                                                                            DataKeyNames="studentDeliveryID" onrowcommand="GridView2_RowCommand" 
                                                                            ForeColor="Black" GridLines="Both">
                            <RowStyle HorizontalAlign="Right" Wrap="true" />
                            <AlternatingRowStyle BackColor="#FFFFFF" />
                            <Columns>
                                <asp:BoundField DataField="studentDeliveryDate" 
                                    HeaderText="تاريخ ارسال">
                                </asp:BoundField>
<asp:BoundField DataField="studentDeliveryMark" HeaderText="نمره">
    <HeaderStyle HorizontalAlign="Center" />
    <ItemStyle Wrap="False" HorizontalAlign="Center" />
</asp:BoundField>
                                <asp:HyperLinkField DataNavigateUrlFields="studentDeliveryUploadedFileName" 
                                    DataNavigateUrlFormatString="~/PresentationLayer/User/Pages/Student/ExerciseSolutionFiles/{0}" 
                                    DataTextField="studentDeliveryUploadedFileName" HeaderText="فايل" />
                                <asp:TemplateField HeaderText="حذف">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="choose" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" 
                                Wrap="False" />
                            <HeaderStyle BackColor="#1777b1" Font-Bold="True" 
                                Font-Size="7pt" ForeColor="White" Font-Names="Tahoma" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" valign="top">
                                
                            <asp:Button ID="btnDelete" runat="server" style="margin-right: 0px" Text="حذف پاسخ" 
                        Width="63px" onclick="btnDelete_Click" TabIndex="16" CssClass="Button" CausesValidation="False" />
          
                                                                    </td>
                                                                </tr>
                                                                </table>
                                
                                </td>
            <td align="right" valign="top" >
            
            
                                
                  
             
                <table align="right" width="300px" >
                    <tr>
                        <td align="center">
            
           
                   
             
           
                    <asp:Label ID="lblMessage" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                    </tr>
                    <tr>
                        <td>
                            فايل پاسخ تمرين&nbsp; و توضيحات مربوطه را در قسمت زير وارد کنيد. توجه داشته باشيد 
                            که براي هر تمرين مي توان <b>چندين فايل پاسخ تمرين</b> با <b>نامهاي مختلف</b> ارسال نمود.<br />
                                                </tr>
                    <tr>
                        <td>
                            <hr size="3px" style="background-color: #0066FF" width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>ارسال پاسخ تمرين درس             
           
                   
             
           
                    <asp:Label ID="lblExerciseCourseName" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                    <asp:Label ID="lblExercise" runat="server" CssClass="LableMy"></asp:Label>
            
           
                   
             
           
                                                                    </b></td>
                    </tr>
                    <tr>
                        <td>
                            <table width="200px" align="left" >
                                                        <tr>
                                                            <td>
            
           
                   
             
           
                    <asp:Label ID="lblExerciseCourseGroupID" runat="server" CssClass="LableMy" Visible="False"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                                                            <td width="200px">
            
           
                   
             
           
                    <asp:Label ID="lblExerciseID" runat="server" CssClass="LableMy" Visible="False"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td align="left" width="200px">
                                                                <asp:Button ID="btnSave" runat="server" CausesValidation="False" 
                                                                    CssClass="Button" onclick="btnSave_Click" style="margin-right: 0px" 
                                                                    TabIndex="7" Text="ارسال پاسخ" Width="70px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                    <td align="left" width="200px">
                    <asp:FileUpload ID="FileUpLExerciseFile" runat="server"  
                ToolTip="فايل ضميمه را انتخاب نماييد" EnableTheming="True" TabIndex="5" 
                                CssClass="InputControl" Height="22px" Visible="False"/>

                                




       
                                    </td>
                                </tr>
                                                        <tr>
                                                            <td colspan="2" width="200px">
                                                                <asp:AjaxFileUpload ID="AjaxFileUpload1" runat="server"
                                                                    onuploadcomplete="AjaxFileUpload1_UploadComplete" Width="100%" />
                                                                <br />
                                                            </td>
                                </tr>
                                                        <tr>
                                                            <td>
                                                                توضيحات:</td>
                                    <td width="200px">
                                        &nbsp;</td>
                                </tr>
                                                        <tr>
                                                            <td colspan="2" width="200px">
                            
                    <asp:TextBox ID="txtExerciseComments" runat="server" TabIndex="10" 
                        CssClass="InputControlBigMultiLine" Height="58px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                                            </td>
                                </tr>
                                <tr>
                                    <td>
            
           
                   
             
           
                    <asp:Label ID="lblExerciseFileName" runat="server" CssClass="LableMy" Visible="False"></asp:Label>
            
           
                   
             
           
                                                                    </td>
                                                            <td width="200px">
                    
                            
                    
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                DisplayMode="List" Height="16px" ShowMessageBox="True" ShowSummary="False" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                    </tr>
                                            </table>
            
            
                                
                  
             
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


<div class="clear"></div>	
<!--------------------------------------- www.montaseri.ir ----------------------------------------------------------->

</div><!--main-container-->
<div class="clear"></div>
      
</asp:Content>

