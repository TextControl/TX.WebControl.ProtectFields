<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="tx_protect_fields.index" %>

<%@ Register assembly="TXTextControl.Web, Version=31.0.1100.500, Culture=neutral, PublicKeyToken=6b83fe9a75cfb638" namespace="TXTextControl.Web" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TX Text Control Demo: Protecting Documents</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <cc1:TextControl ID="TextControl1" runat="server" TextFieldsEditable="True" Dock="Window" />
    
        <script>
            TXTextControl.addEventListener("documentLoaded", function (e) {
                TXTextControl.setEditMode(TXTextControl.EditMode.ReadAndSelect);
            });

            TXTextControl.addEventListener("textFieldEntered", function (e) {
                TXTextControl.setEditMode(TXTextControl.EditMode.Edit);
            });

            TXTextControl.addEventListener("textFieldLeft", function (e) {
                TXTextControl.setEditMode(TXTextControl.EditMode.ReadAndSelect);
            });

        </script>

    </div>
    </form>
</body>
</html>
