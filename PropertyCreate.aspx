<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebPropertyProj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 154px;
        }
        .auto-style3 {
            width: 154px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 263px;
        }
        .auto-style6 {
            height: 26px;
            width: 263px;
        }
    </style>
</head>
<body>    
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Property Code :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="PropTextBox" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="CodeFailLabel" runat="server" Width="270px" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Property Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="NameTextBox" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Property Street:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="StreetTextBox" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Property City:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="CityTextBox" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Property State:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Property ZipCode:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="ZipCodeTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="SaveButton" runat="server" Text="Save" Width="74px" OnClick="SaveButton_Click" />
                    <asp:Label ID="FailLabel" runat="server" Width="185px" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
