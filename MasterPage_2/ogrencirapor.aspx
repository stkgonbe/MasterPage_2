
<%@ Page Title="Öğrenci Kayıt Paneli"
    Language="C#"
    MasterPageFile="~/ana_tasiyici.Master"
    AutoEventWireup="true"
    CodeBehind="ogrencirapor.aspx.cs"
    Inherits="MasterPage_2.ogrencirapor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 282px;
        }
        .auto-style2 {
            width: 282px;
            height: 236px;
        }
        .auto-style3 {
            height: 236px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Ad"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Bölüm"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Listeye Ekle" Width="114px" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Temizle" Width="96px" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" Height="79px" Width="262px">
                </asp:GridView>
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
