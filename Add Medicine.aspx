<%@ Page Title="" Language="C#" MasterPageFile="~/allmaster.Master" AutoEventWireup="true" CodeBehind="Add Medicine.aspx.cs" Inherits="p_d.WebForm3" %>
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
    border-bottom: 3px solid #c7c7c7;" Text="Add Medicine" 
            Width="145px" Height="40px" PostBackUrl="~/Add Medicine.aspx" />
        

         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;<br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        

         <asp:Button ID="Button2"  align="center"  runat="server" style="background: #bd135b;
    border-top: 3px solid #c7c7c7;
    border-bottom: 3px solid #c7c7c7;" Text="View" Width="145px" Height="40px" 
            PostBackUrl="~/View Medicine.aspx" CausesValidation="False"   />
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
                                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Medicine Name :"></asp:Label>
                                 </td>
                            <td align="left" width="60%">
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
           
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                 </td>
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
                                    Text="Medicine Company :"></asp:Label>
                            </td>
                            <td align="left">
                               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 
           
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
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
                                    &nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Quantity :"></asp:Label>
                                </td>
			<td align="left">
                                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                     ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
		</tr>
		    <tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                                &nbsp;</td>
                        </tr>
		<tr>
			<td align="right" width="40%" class="style1">
                                    <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Price :"></asp:Label>
            </td>
			<td align="left" class="style1">
                               <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> 
           
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
		</tr>
		    <tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                                &nbsp;</td>
                        </tr>
		<tr>
			<td align="right" width="40%">
                                    <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Expiry Date :"></asp:Label>
            </td>
			<td align="left">
                               <asp:DropDownList ID="Date" runat="server">
                                   <asp:ListItem>--Date--</asp:ListItem>
                                   <asp:ListItem>01</asp:ListItem>
                                   <asp:ListItem>02</asp:ListItem>
                                   <asp:ListItem>03</asp:ListItem>
                                   <asp:ListItem>04</asp:ListItem>
                                   <asp:ListItem>05</asp:ListItem>
                                   <asp:ListItem>06</asp:ListItem>
                                   <asp:ListItem>07</asp:ListItem>
                                   <asp:ListItem>08</asp:ListItem>
                                   <asp:ListItem>09</asp:ListItem>
                                   <asp:ListItem>10</asp:ListItem>
                                   <asp:ListItem>11</asp:ListItem>
                                   <asp:ListItem>12</asp:ListItem>
                                   <asp:ListItem>13</asp:ListItem>
                                   <asp:ListItem>14</asp:ListItem>
                                   <asp:ListItem>15</asp:ListItem>
                                   <asp:ListItem>16</asp:ListItem>
                                   <asp:ListItem>17</asp:ListItem>
                                   <asp:ListItem>18</asp:ListItem>
                                   <asp:ListItem>19</asp:ListItem>
                                   <asp:ListItem>20</asp:ListItem>
                                   <asp:ListItem>21</asp:ListItem>
                                   <asp:ListItem>22</asp:ListItem>
                                   <asp:ListItem>23</asp:ListItem>
                                   <asp:ListItem>24</asp:ListItem>
                                   <asp:ListItem>25</asp:ListItem>
                                   <asp:ListItem>26</asp:ListItem>
                                   <asp:ListItem>27</asp:ListItem>
                                   <asp:ListItem>28</asp:ListItem>
                                   <asp:ListItem>29</asp:ListItem>
                                   <asp:ListItem>30</asp:ListItem>
                                   <asp:ListItem>31</asp:ListItem>
                               </asp:DropDownList>
                               <asp:DropDownList ID="Month" runat="server">
                                   <asp:ListItem>--Month--</asp:ListItem>
                                   <asp:ListItem>01</asp:ListItem>
                                   <asp:ListItem>02</asp:ListItem>
                                   <asp:ListItem>03</asp:ListItem>
                                   <asp:ListItem>04</asp:ListItem>
                                   <asp:ListItem>05</asp:ListItem>
                                   <asp:ListItem>06</asp:ListItem>
                                   <asp:ListItem>07</asp:ListItem>
                                   <asp:ListItem>08</asp:ListItem>
                                   <asp:ListItem>09</asp:ListItem>
                                   <asp:ListItem>10</asp:ListItem>
                                   <asp:ListItem>11</asp:ListItem>
                                   <asp:ListItem>12</asp:ListItem>
                               </asp:DropDownList>
                               <asp:DropDownList ID="Year" runat="server">
                                   <asp:ListItem>--Year--</asp:ListItem>
                                   <asp:ListItem>2020</asp:ListItem>
                                   <asp:ListItem>2021</asp:ListItem>
                                   <asp:ListItem>2022</asp:ListItem>
                                   <asp:ListItem>2023</asp:ListItem>
                                   <asp:ListItem>2024</asp:ListItem>
                                   <asp:ListItem>2025</asp:ListItem>
                                   <asp:ListItem>2026</asp:ListItem>
                                   <asp:ListItem>2027</asp:ListItem>
                                   <asp:ListItem>2028</asp:ListItem>
                                   <asp:ListItem>2029</asp:ListItem>
                                   <asp:ListItem>2030</asp:ListItem>
                                   <asp:ListItem>2031</asp:ListItem>
                                   <asp:ListItem>2032</asp:ListItem>
                                   <asp:ListItem>2033</asp:ListItem>
                                   <asp:ListItem>2034</asp:ListItem>
                                   <asp:ListItem>2035</asp:ListItem>
                                   <asp:ListItem>2036</asp:ListItem>
                                   <asp:ListItem>2037</asp:ListItem>
                                   <asp:ListItem>2038</asp:ListItem>
                                   <asp:ListItem>2039</asp:ListItem>
                                   <asp:ListItem>2040</asp:ListItem>
                                   <asp:ListItem>2041</asp:ListItem>
                                   <asp:ListItem>2042</asp:ListItem>
                                   <asp:ListItem>2043</asp:ListItem>
                                   <asp:ListItem>2044</asp:ListItem>
                                   <asp:ListItem>2045</asp:ListItem>
                                   <asp:ListItem>2046</asp:ListItem>
                                   <asp:ListItem>2047</asp:ListItem>
                                   <asp:ListItem>2048</asp:ListItem>
                                   <asp:ListItem>2049</asp:ListItem>
                                   <asp:ListItem>2050</asp:ListItem>
                               </asp:DropDownList>
            </td>
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
                                     <asp:Button ID="Button3" runat="server"  Text="Insert" 
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
