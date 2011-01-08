<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TestPopup.ascx.cs" Inherits="TestPopup" %>

<%@ Register TagPrefix="ajaxToolkit" Assembly="AjaxControlToolKit" Namespace="AjaxControlToolkit" %>
    <asp:Button runat="server" ID="hiddenTargetControlForSpinnerModalPopup" Style="display: none" />
    <ajaxToolkit:ModalPopupExtender ID="SpinnerPopupExtender" runat="server" TargetControlID="hiddenTargetControlForSpinnerModalPopup"
        PopupControlID="pnlSpinner" BehaviorID="spinnerPopupBehavior" BackgroundCssClass="modalBackground"
        DropShadow="false" PopupDragHandleControlID="pnlSpinnerHandle" RepositionMode="None" />
    <asp:Panel ID="pnlSpinner" runat="server" Style="display: none;" CssClass="modalPopup">
        <asp:Panel ID="pnlSpinnerHandle" runat="server" CssClass="modalHandle">
            <asp:UpdatePanel ID="upSpinner" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div style="width:500px ">

                    <input type="hidden" id="spinnerType" runat="server" />
                    <div style="position: relative; filter: alpha(opacity = 70); background-image: url('<%=ResolveUrl("~/images/busy.gif")%>');
                        background-repeat: no-repeat; background-position: center; background-color: #FFFFFF;
                        z-index: 99999; height: 32px; width: 100%;">
                    </div>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
    </asp:Panel>
