<%@ Page Title="" Language="C#" MasterPageFile="~/ExamPreparations.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ExamPreparations.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <table class="auto-style1">
        <tr>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUserID" runat="server" Text="User ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserID" CssClass="txt" runat="server" ValidationGroup="vgSave"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUserID" runat="server" Text="*" ForeColor="Red" ErrorMessage="Please Enter User ID" ControlToValidate="txtUserID" ValidationGroup="vgSave"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" CssClass="txt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" Text="*" ForeColor="Red" ErrorMessage="Please Enter Your Name" ControlToValidate="txtName" ValidationGroup="vgSave"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" CssClass="txt" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" Text="*" ForeColor="Red" ErrorMessage="Please Enter Your Password" ControlToValidate="txtPassword" ValidationGroup="vgSave"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 30px">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="txtConfirmPassword" CssClass="txt" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" Text="*" ForeColor="Red" ErrorMessage="Please Enter Confirm Password" ControlToValidate="txtConfirmPassword" ValidationGroup="vgSave"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvConfirmPassword" ControlToValidate="txtConfirmPassword" Text="*" ForeColor="Red" runat="server" ErrorMessage="Password & Confirm Password Does Not Match" ControlToCompare="txtPassword" ValidationGroup="vgSave"></asp:CompareValidator>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCountry" runat="server" Text="Select Your Country"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCountry" CssClass="txt"  InitialValue="Select Value" runat="server" Width="145px" >
                    <asp:ListItem Value="Select Value" >Select Value</asp:ListItem>
                    <asp:ListItem Value="Australia">Australia</asp:ListItem>
                    <asp:ListItem Value="China">China</asp:ListItem>
                    <asp:ListItem Value="India">India</asp:ListItem>
                    <asp:ListItem Value="Select Value">New Zealand</asp:ListItem>
                    <asp:ListItem Value="United State">United State</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCountry" runat="server" Text="*" ForeColor="Red" ErrorMessage="Select Your Country" ControlToValidate="ddlCountry" ValidationGroup="vgSave"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmailID" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmaiID" CssClass="txt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmailID" runat="server" Text="*" ForeColor="Red" ErrorMessage="Enter Your Email" ControlToValidate="txtEmaiID" ValidationGroup="vgSave"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmailID" runat="server" Text="*" ForeColor="Red" ErrorMessage="Email-ID Is Invalid" ControlToValidate="txtEmaiID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgSave"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnReset" CssClass="btn" runat="server" Text="Reset" OnClick="btnReset_Click" />&nbsp;&nbsp;
                <asp:Button ID="btnSave" CssClass="btn" runat="server" Text="Save" OnClick="btnSave_Click" ValidationGroup="vgSave" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="vsErrors" ForeColor="Red" runat="server" ValidationGroup="vgSave" HeaderText="Please fix the following errors:" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
