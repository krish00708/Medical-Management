<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="p_d2.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="index-style.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server">
    <div id="head">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/P and D Medicals1.jpg" 
            Height="147px" Width="182px" />
    
    </div>
    <div id="main">
        <div class="login_box_only">
            <div class="login_box_top">                
                <h3 class="login_candidate">
                    Login</h3>
            </div>
            <div class="login_box_mid_only">
                <br>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                <br>
                <table cellpadding="2" cellspacing="0" style="width: 100%;">
                         <tbody><tr>
                            <td align="right" width="40%">
                                User Name :
                            </td>
                            <td align="left" width="60%">
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
           
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
           
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                &nbsp;</td>
                            <td align="left">
                                &nbsp;</td>
                        </tr>
                </tbody></table>
                         <table id="ctl00_ContentPlaceHolder1_tblSecPin" cellpadding="2" cellspacing="0" style="width: 100%;">
		<tbody><tr>
			<td align="right" width="40%">
                                    Password <span class="green_txt">(case sensitive) </span>:
                                </td>
			<td align="left">
                                 <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                     ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
		</tr>
		<tr>
			<td align="right" width="40%">
                                    &nbsp;</td>
			<td align="left">
                                    &nbsp;</td>
		</tr>
	</tbody></table>
	
                  
                <table cellpadding="2" cellspacing="0" style="width: 100%;">
                    <tbody><tr>
                        <td width="40%">
                        </td>
                        <td align="left">
                             <asp:Button ID="Button1" runat="server"  onclick="Button1_Click1" Text="Login" />
                         </td>
                    </tr>
                </tbody></table>
            </div>           
        </div>
    
    </div>
    </form>
</body>
</html>
