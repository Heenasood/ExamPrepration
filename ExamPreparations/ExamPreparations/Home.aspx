<%@ Page Title="" Language="C#" MasterPageFile="~/SiteYellowMotor.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="YellowMotors.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td style="width: 751px">
                <asp:Label ID="lblWelcome" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 751px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
