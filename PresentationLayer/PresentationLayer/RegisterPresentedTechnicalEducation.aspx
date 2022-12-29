<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="MP.Master"  CodeBehind="RegisterPresentedTechnicalEducation.aspx.cs" Inherits="PresentationLayer.RegisterPresentedTechnicalEducation" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

    <!------------------------------CSS---------------------------------------------->
    <link rel="Stylesheet" type="text/css" href="Css/StyleMain.css" />
    <link href="CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />   

    <style type="text/css">
        .style1
        {
            width: 76px;
        }
    </style>

</asp:Content>



<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="center">
<!--------------------------------------- COL-1 ----------------------------------------------------------->

                <table  width="99%">
                    <tr>
                        <td align="right" colspan="8">
                                                    <strong>مشخصات متقاضی</strong></td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="نام را وارد کنید">*</asp:RequiredFieldValidator>
                            نام:    
                                                </td>
                        <td align="right" class="style3">
                            <asp:TextBox ID="txtName" runat="server" Width="150px" MaxLength="20" 
                        CssClass="InputControl" Height="20px" TabIndex="1"></asp:TextBox>
                        </td>
                        <td align="right" class="style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtLastName" 
                                ErrorMessage="نام خانوادگی را وارد کنید">*</asp:RequiredFieldValidator>
                            نام خانوادگی:</td>
                        <td align="right">
                            <asp:TextBox ID="txtLastName" runat="server" Width="160px" MaxLength="30" 
                        CssClass="InputControl" Height="20px" TabIndex="2"></asp:TextBox>
                        </td>
                        <td align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtCodeMeli" 
                                ErrorMessage="کد ملی را وارد کنید">*</asp:RequiredFieldValidator>
                                                    کد ملی:</td>
                        <td align="right">
                            <asp:TextBox ID="txtCodeMeli" runat="server" Width="120px" MaxLength="9" 
                        CssClass="InputControl" Height="20px" TabIndex="2"></asp:TextBox>
                        </td>
                        <td align="right">
                                                    &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right" class="style3">
                            &nbsp;</td>
                        <td align="right" class="style1">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td align="right">
                                                    &nbsp;</td>
                        <td align="right">
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                                ShowMessageBox="True" ShowSummary="False" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="8">
                <strong>اطلاعات دوره تخصصی انتخابی&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </strong>
                <asp:Label ID="lblError" runat="server" CssClass="LableMyBold"></asp:Label>
                <asp:Label ID="lblMessage" runat="server" CssClass="LableBoldGreenMy"></asp:Label>
                                                </td>
                    </tr>
                    <tr>
                        <td align="right">
                                                    عنوان دوره: 
                                                </td>
                        <td align="right" class="style3">
                            <asp:Label ID="lblTechEducationTitle" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right" class="style1">
                                                    شماره استاد:</td>
                        <td align="right">
                            <asp:Label ID="lblpresentedTechEducationTeacherID" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right">
                                                    &nbsp;استاد:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEducationTeacherName" runat="server" CssClass="LableMyBold"></asp:Label>
                            <asp:Label ID="lblTechEducationTeacherLastName" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right">
                                                    کد دوره:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEducationCode" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                    سطح دوره:</td>
                        <td align="right" class="style3">
                            <asp:Label ID="lblTechEducationLevel" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right" class="style1">
                    ارائه براي رشته:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEductionTechnicalBranch" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right">
                                                    ارائه براي مقطع:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEductionTechnicalBranchLevel" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right">
                    تعداد ساعت تئوري:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEductionTheoryHours" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                    تعداد ساعت عملي:</td>
                        <td align="right" class="style3">
                            <asp:Label ID="lblTechEductionPracticalHours" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right" class="style1">
                    دوره های پیشنیاز:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEductionPrerequisits" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right">
                                                    &nbsp;</td>
                        <td align="right">
            
           
                   
             
           
                                                    &nbsp;</td>
                        <td align="right">
                    نرم افزارهای پیشنیاز:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEductionSoftwarePrerequisits" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                                                    ترم آموزشی:</td>
                        <td align="right" class="style3">
                            <asp:Label ID="lblTechEducationTermNumber" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right" class="style1">
                                                    محل برگزاری:</td>
                        <td align="right">
                            <asp:Label ID="lbTechEducationLocation" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right">
            
           
                   
             
           
                                                    گروه دوره:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEducationGroupNumber" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right">
            
           
                   
             
           
                                                    هزینه دوره:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEducationFee" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
            
           
                   
             
           
                                                    تاریخ شروع:</td>
                        <td align="right" class="style3">
                            <asp:Label ID="lblTechEducationStartDate" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right" class="style1">
            
           
                   
             
           
                                                    تاریخ پایان:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEducationEndDate" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right">
            
           
                   
             
           
                                                    تحويل تمرين:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEducationExcersiseDateTime" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right">
            
           
                   
             
           
                                                    امتحان عملي:</td>
                        <td align="right">
                            <asp:Label ID="lblTechEducationPracticalDateTime" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
                                                    امتحان ميان ترم:<br />
                        </td>
                        <td align="right" class="style3" valign="top">
                            <asp:Label ID="lblTechEducationMidtermDateTime" runat="server" CssClass="LableMyBold"></asp:Label>
                            <br />
                        </td>
                        <td align="right" valign="top" class="style1">
            
           
                   
             
           
                                                    امتحان پايانی:</td>
                        <td align="right" valign="top">
                            <asp:Label ID="lblTechEducationFinalDateTime" runat="server" CssClass="LableMyBold"></asp:Label>
                        </td>
                        <td align="right" valign="top">
            
           
                   
             
           
                                                    توضیحات:</td>
                        <td align="left" colspan="3" rowspan="2" valign="top">
                            <asp:TextBox ID="lblTechEducationComments" runat="server" 
                                                        CssClass="InputControlBigMultiLine" Height="49px" ReadOnly="True" 
                                                        TextMode="MultiLine" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtShomareFish" ErrorMessage="شماره فیش (رسید) یا تراکنش واریز را وارد نمایید" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    تلفن هماهنگی:</td>
                        <td align="right" class="style3" valign="top" colspan="2">
                            <asp:TextBox ID="txtShomareFish" runat="server" Width="140px" MaxLength="50" 
                        CssClass="InputControl" Height="20px" TabIndex="1"></asp:TextBox>
                        </td>
                        <td align="right" valign="top">
                            <asp:Button ID="btnSave" runat="server" style="margin-right: 0px" Text="ثبت نام" 
                        Width="58px" onclick="btnSave_Click" TabIndex="9" CssClass="Button" 
                                Height="25px" />
                        </td>
                        <td align="right" valign="top">
                            &nbsp;</td>
                    </tr>
                </table>



</div>
<div class="clear"></div>
      
</asp:Content>

