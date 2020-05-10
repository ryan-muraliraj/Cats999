<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Cats.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        html{
            background-image:url('https://i.ytimg.com/vi/H9LcxL70muc/maxresdefault.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
        body {
            margin:10%
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" vertical-align="center">
            
            
            <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>
            
            <asp:UpdatePanel ID="updatepanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <label id="output" runat="server"></label>
                </ContentTemplate>
            </asp:UpdatePanel>
            
            
            <asp:Timer ID="timer" runat="server" Enabled="False" Interval="25" OnTick="timer_Tick"></asp:Timer>
            <asp:Timer ID="timer2" runat="server" Enabled="False" Interval="10000" OnTick="timer_Tick2"></asp:Timer>
            <asp:UpdatePanel ID="updatepanel1" runat="server" UpdateMode="Conditional">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="timer" EventName="Tick"/>
                    <asp:AsyncPostBackTrigger ControlID="timer2" EventName="Tick"/>
                </Triggers>
                <ContentTemplate>
                    &nbsp;<img id="image" runat="server" width="100" src="https://cdn2.thecatapi.com/images/241.jpg" display="block" margin-left="auto" margin-right="auto" />
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </div>
    </form>
</body>
</html>
