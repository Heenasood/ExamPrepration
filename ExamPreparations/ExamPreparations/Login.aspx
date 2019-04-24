<%@ Page Title="" Language="C#" MasterPageFile="~/ExamPreparations.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExamPreparations.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td style="height: 23px; width: 406px;">&nbsp;</td>
            <td colspan="2" style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 406px;">&nbsp;</td>
            <td colspan="2" style="height: 23px">
                <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                &nbsp;</td>
            <td style="width: 97px">
                <asp:Label ID="lblLoginUserID" runat="server" Text="User ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLoginUserID" CssClass="txt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLoginUserID" Text="*" ForeColor="Red" runat="server" ErrorMessage="Please Enter User-ID" ControlToValidate="txtLoginUserID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                &nbsp;</td>
            <td style="width: 97px">
                <asp:Label ID="lblLoginPassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLoginPassword" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLoginPassword" Text="*" ForeColor="Red" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtLoginPassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 24px; width: 406px;"></td>
            <td style="height: 24px; width: 97px;">
                <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
            <td style="height: 24px">
            </td>
        </tr>
        <tr>
            <td style="width: 406px">&nbsp;</td>
            <td colspan="2">
                <asp:ValidationSummary ID="vsLoginErrors"  Text="*" ForeColor="Red" runat="server" HeaderText="Please fix the following errors:" />
            </td>
        </tr>
    </table>

</asp:Content>
