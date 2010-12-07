<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopUpTestForm.aspx.cs" Inherits="PopUpTestForm" %>

<%@ Register Src="DataEntryForm.ascx" TagName="DataEntryForm" TagPrefix="uc1" %>
<%@ Register TagPrefix="ajaxToolkit" Assembly="AjaxControlToolKit" Namespace="AjaxControlToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">LinkButton</asp:LinkButton>
    <div>
    </div>
    <asp:Button runat="server" ID="hiddenTargetControlForModalPopup" Style="display: none" />
    <ajaxtoolkit:modalpopupextender id="webPayEntryPopupExtender" runat="server" targetcontrolid="hiddenTargetControlForModalPopup"
        popupcontrolid="pnlDetail" behaviorid="detailPopupBehavior" backgroundcssclass="modalBackground"
        dropshadow="true" popupdraghandlecontrolid="pnlDetailHandle" repositionmode="None" />
    <asp:Panel ID="pnlDetail" runat="server" Style="display: none;" CssClass="modalPopup">
        <asp:Panel ID="pnlDetailHandle" runat="server" CssClass="modalHandle">
            <asp:UpdatePanel ID="upDetail" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <input type="hidden" id="detailType" runat="server" />
                    <uc1:DataEntryForm id="DataEntryForm" runat="server"></uc1:DataEntryForm>
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
    </form>
</body>
</html>
