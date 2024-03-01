<%@ Page Title="" Language="C#" MasterPageFile="~/allmaster.Master" AutoEventWireup="true" CodeBehind="Update Company.aspx.cs" Inherits="p_d.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:26%; height:auto; float:left;">
        
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button1" align="center" runat="server" style="background: #bd135b;
    border-top: 3px solid #c7c7c7;
    border-bottom: 3px solid #c7c7c7;" Text="Add Company" 
            Width="145px" Height="40px" PostBackUrl="~/Update Company.aspx" />
        

         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;<br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        

         <asp:Button ID="Button2"  align="center"  runat="server" style="background: #bd135b;
    border-top: 3px solid #c7c7c7;
    border-bottom: 3px solid #c7c7c7;" Text="View" Width="145px" Height="40px" 
            PostBackUrl="~/View Company.aspx"  />
    </div>
    <div style="float:right; height:100%; width:74%" class="login_box_mid_only">
        <table cellpadding="2" cellspacing="0" style="width: 100%;">
                         <tbody><tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                                &nbsp;</td>
                        </tr>
                             <tr>
                            <td align="right" width="40%" >
                                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Company Name :"></asp:Label>
                                 </td>
                            <td align="left" width="60%">
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
           
                            &nbsp;</td>
                        </tr>
                             <tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Label ID="Label2" runat="server" Font-Size="Large" 
                                    Text="Email :" ToolTip="  "></asp:Label>
                            </td>
                            <td align="left">
                               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 
           
                            &nbsp;</td>
                        </tr>
                </tbody></table>
                         <table id="ctl00_ContentPlaceHolder1_tblSecPin" cellpadding="2" cellspacing="0" style="width: 100%;">
		<tbody>
            <tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                                &nbsp;</td>
                        </tr>
            <tr>
			<td align="right" width="40%">
                                    &nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Phone No :"></asp:Label>
                                </td>
			<td align="left">
                                 <asp:TextBox ID="TextBox3" runat="server" MaxLength="10"></asp:TextBox>
                                &nbsp;</td>
		</tr>
		    <tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                                &nbsp;</td>
                        </tr>
		<tr>
			<td align="right" width="40%" class="style1">
                                    <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Address :"></asp:Label>
            </td>
			<td align="left" class="style1">
                               <asp:TextBox ID="TextBox4" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox> 
           
                            &nbsp;</td>
		</tr>
		    <tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                                &nbsp;</td>
                        </tr>
		    <tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                                &nbsp;</td>
                        </tr>
		<tr>
			<td align="right" width="40%">
                                    &nbsp;</td>
			<td align="left">
                                    &nbsp;</td>
		</tr>
		<tr>
			<td align="right" width="40%">
                                    &nbsp;</td>
			<td align="left">
                                     <asp:Button ID="Button3" runat="server"  Text="Update" 
                                         onclick="Button3_Click" />&nbsp;</td>
		</tr>
		<tr>
			<td align="right" width="40%">
                                    &nbsp;</td>
			<td align="left">
                                     <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
            </td>
		</tr>
	</tbody></table>
    </div>
</asp:Content>