<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="tx_protect_fields.index" %>

<%@ Register assembly="TXTextControl.Web, Version=22.0.200.500, Culture=neutral, PublicKeyToken=6b83fe9a75cfb638" namespace="TXTextControl.Web" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TX Text Control Demo: Protecting Documents</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <cc1:TextControl ID="TextControl1" runat="server" EditMode="ReadAndSelect" TextFieldsEditable="True" Dock="Window" />
    
        <script>

            TXTextControl.enableCommands();

            TXTextControl.addEventListener("textFieldEntered", function (e) {
                TXTextControl.sendCommand(TXTextControl.Command.SetEditMode, TXTextControl.EditMode.Edit);
            });

            TXTextControl.addEventListener("textFieldLeft", function (e) {
                TXTextControl.sendCommand(TXTextControl.Command.SetEditMode, TXTextControl.EditMode.ReadAndSelect);
            });

        </script>

    </div>
    </form>
</body>
</html>
