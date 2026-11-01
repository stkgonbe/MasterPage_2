<%@ Page Title="" Language="C#" MasterPageFile="~/ana_tasiyici.Master" AutoEventWireup="true" CodeBehind="YavruSayfa6.aspx.cs" Inherits="MasterPage_2.YavruSayfa6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 203;
            margin-bottom: 0;
        }
        .auto-style2 {
            height: 18px;
        }
        .auto-style3 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1" Width="162px"></asp:TextBox>
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="sehir_id" DataSourceID="SqlDataSource1_gridview" Width="350px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="sehir_id" HeaderText="sehir_id" InsertVisible="False" ReadOnly="True" SortExpression="sehir_id" Visible="False" />
                        <asp:BoundField DataField="sehir_adi" HeaderText="Şehir" SortExpression="sehir_adi" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1_gridview" runat="server" ConnectionString="<%$ ConnectionStrings:KayitİslemleriConnectionString2 %>" DeleteCommand="DELETE FROM [sehirler] WHERE [sehir_id] = @sehir_id" InsertCommand="INSERT INTO [sehirler] ([sehir_adi]) VALUES (@sehir_adi)" ProviderName="<%$ ConnectionStrings:KayitİslemleriConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [sehirler]" UpdateCommand="UPDATE [sehirler] SET [sehir_adi] = @sehir_adi WHERE [sehir_id] = @sehir_id">
                    <DeleteParameters>
                        <asp:Parameter Name="sehir_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="sehir_adi" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sehir_adi" Type="String" />
                        <asp:Parameter Name="sehir_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
