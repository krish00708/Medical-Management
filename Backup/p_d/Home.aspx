<%@ Page Title="" Language="C#" MasterPageFile="~/allmaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="p_d.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        margin-top: 50px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
    
    <tr>
        <td style="text-align: right;  padding-right:50px;">
                   <asp:Image ID="Image1" runat="server"  ImageUrl="~/img/P and D Medicals1.jpg" 
            Height="371px" Width="367px" />
        </td>
    </tr>
</table>
</asp:Content>
