<%@ Page Title="" Language="C#" MasterPageFile="~/ana_tasiyici.Master" AutoEventWireup="true" CodeBehind="YavruSayfa5.aspx.cs" Inherits="MasterPage_2.YavruSayfa5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .auto-style2 {
            height: 19px;
        }
        .auto-style3 {
            height: 10px;
        }
        .auto-style4 {
            height: 10px;
            width: 105px;
        }
        .auto-style6 {
            height: 19px;
            width: 105px;
        }
        .auto-style7 {
            width: 105px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;Şehirler</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FF6666" DataSourceID="sehirler" DataTextField="sehir_adi" DataValueField="sehir_id" Height="16px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sehirler" runat="server" ConnectionString="<%$ ConnectionStrings:KayitİslemleriConnectionString %>" ProviderName="<%$ ConnectionStrings:KayitİslemleriConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [sehirler]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
