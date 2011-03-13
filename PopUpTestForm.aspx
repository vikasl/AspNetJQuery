<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopUpTestForm.aspx.cs" Inherits="PopUpTestForm" %>

<%@ Register Src="DataEntryForm.ascx" TagName="DataEntryForm" TagPrefix="uc1" %>
<%@ Register TagPrefix="ajaxToolkit" Assembly="AjaxControlToolKit" Namespace="AjaxControlToolkit" %>
<%@ Register TagPrefix="ppc" TagName = "testPopUp" src= "~/TestPopup.ascx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
    <script src="javascript/jQuery/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="javascript/jQuery/jquery-ui-1.8.2.custom.min.js" type="text/javascript"></script>
<script src="javascript/jQuery/jquery.json.js" type="text/javascript"></script>
    <script src="javascript/TestScript.js" type="text/javascript"></script>
    <script src="javascript/jQuery/jquery.tmpl.js" type="text/javascript"></script>

            <script id="productTemplate" type="text/x-jquery-tmpl">
            <div>
                <div style="font-weight: bold">
                    ProductId: ${ProductId}
                </div>

            </div>
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="Scriptmanager1" runat="server">
    </asp:ScriptManager>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
    <div>
    </div>
    <div id="productContainer" runat="server">
    </div>
  
    <ppc:testPopUp ID="myTestPopUp" runat="server" />

    </form>
</body>
</html>
