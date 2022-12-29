<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="MP.Master" CodeBehind="PresentedTechnicalEducation.aspx.cs" Inherits="PresentationLayer.PresentedTechnicalEducation" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

    <!------------------------------CSS---------------------------------------------->
    <link rel="Stylesheet" type="text/css" href="Css/StyleMain.css" />
    <link href="CssMy/mystylesNew.css"rel="stylesheet" type="text/css" media="all" />   




</asp:Content>



<asp:Content ID="Main" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <div id="main-content" class="container" align="center">
<!--------------------------------------- COL-1 ----------------------------------------------------------->


<table  dir="rtl" class="TableMy" align="right" >
        <tr>
            <td align="right">
                <strong>
                لیست دوره های ارایه شده:</strong>&nbsp;<br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" Font-Bold="False"   
                            EnableViewState="False" PageSize="3" 
                                        Width="100%" TabIndex="1" BackColor="White" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1px" 
                                            onrowcommand="GridView1_RowCommand" 
                    ForeColor="Black" DataKeyNames="presentedTechEducationID">
                    <RowStyle HorizontalAlign="Right" Wrap="True" 
                                 VerticalAlign="Top" />
                    <AlternatingRowStyle/>
                    <Columns>
                        <asp:BoundField DataField="presentedTechEducationTermNumber" HeaderText="ترم" >
                        <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField ConvertEmptyStringToNull="False" DataField="presentedTechEducationTitle" 
                                    HeaderText="عنوان دوره" ReadOnly="True">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle Wrap="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="presentedTechEducationTotalCapacity" 
                            HeaderText="ظرفیت">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="presentedTechEducationFee" HeaderText="هزینه">
                        <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="presentedTechEducationCode" HeaderText="کد دوره" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle Wrap="True" />
                        </asp:BoundField>
                        <asp:BoundField DataField="presentedTechEducationGroupNumber" 
                                    HeaderText="گروه" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="presentedTechEducationTeacherName" 
                                    HeaderText="مدرس" />
                        <asp:BoundField DataField="presentedTechEducationTeacherLastName" />
                        <asp:BoundField DataField="presentedTechEducationComments" 
                                    HeaderText="توضیحات" />
                        <asp:ButtonField CommandName="goRegister" Text="ثبت نام">
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
                <br />
            </td>
        </tr>
    </table>


<div class="clear"></div>	

</asp:Content>

