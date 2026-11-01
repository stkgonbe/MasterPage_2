
<%@ Page Title="Öğrenci Kayıt" Language="C#"
    MasterPageFile="~/ana_tasiyici.Master"
    AutoEventWireup="true"
    CodeBehind="ogrencikayit.aspx.cs"
    Inherits="MasterPage_2.ogrencikayit" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <style>
        .ogrenci-form {
            width: 450px;
            margin: 30px auto;
            padding: 25px;
            border: 1px solid #ddd;
            border-radius: 10px;
        }

        .form-satir {
            margin-bottom: 18px;
        }

        .form-satir label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        .form-kontrol {
            width: 100%;
            padding: 9px;
            box-sizing: border-box;
        }

        .kaydet-buton {
            padding: 10px 22px;
            cursor: pointer;
        }

        .mesaj {
            display: block;
            margin-top: 15px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="ogrenci-form">

        <h2>Öğrenci Kayıt Formu</h2>

        <div class="form-satir">
            <asp:Label ID="lblAdSoyad"
                runat="server"
                AssociatedControlID="TextBox1"
                Text="Ad Soyad" />

            <asp:TextBox ID="TextBox1"
                runat="server"
                CssClass="form-kontrol"
                MaxLength="100" />
        </div>

        <div class="form-satir">
            <asp:Label ID="lblOgrenciNo"
                runat="server"
                AssociatedControlID="TextBox2"
                Text="Öğrenci Numarası" />

            <asp:TextBox ID="TextBox2"
                runat="server"
                CssClass="form-kontrol"
                MaxLength="20" />
        </div>

        <div class="form-satir">
            <asp:Label ID="lblDogumYeri"
                runat="server"
                AssociatedControlID="DropDownList1"
                Text="Doğum Yeri" />

            <asp:DropDownList ID="DropDownList1"
                runat="server"
                CssClass="form-kontrol">

                <asp:ListItem Text="Seçiniz" Value="" />
                <asp:ListItem Text="Afyon" Value="Afyon" />
                <asp:ListItem Text="Ankara" Value="Ankara" />
                <asp:ListItem Text="Bartın" Value="Bartın" />

            </asp:DropDownList>
        </div>

        <asp:Button ID="Button1"
            runat="server"
            Text="Öğrenci Kaydet"
            CssClass="kaydet-buton"
            OnClick="Button1_Click" />

        <asp:Label ID="Label1"
            runat="server"
            CssClass="mesaj"
            EnableViewState="false" />

    </div>

</asp:Content>
