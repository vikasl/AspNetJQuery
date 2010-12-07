<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DataEntryForm.ascx.cs"
    Inherits="WebUserControl" %>


<div style="width: 500px">
    <div id="header" style="">
        Data Entry Form
    </div>
    <div>
        <div style="float: left; width: 200px">
            <asp:Label ID="Label1" runat="server">UserName</asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        </div>
    </div>
    <div>
        <div style="float: left; width: 200px">
            <asp:Label runat="server">Age</asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </div>
    </div>
    <div >
        <div align="center">
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </div>
</div>
