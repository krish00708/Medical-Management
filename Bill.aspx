<%@ Page Title="" Language="C#" MasterPageFile="~/allmaster.Master" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="p_d.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 28px;
        }
        .style2
        {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:100%; class="login_box_mid_only">
        <table cellpadding="2" cellspacing="0" style="width: 100%;">
                         <tbody><tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                                &nbsp;</td>
                        </tr>
                             <tr>
                            <td align="justify" width="40%" >
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Bill No:"></asp:Label>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:TextBox ID="TextBox1" runat="server" Width="115px" TabIndex="1"></asp:TextBox> 
           
                                 &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
           
                                 </td>
                            <td align="left" width="60%">
           
                                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Date :"></asp:Label>
                                 &nbsp;&nbsp;&nbsp;
                               <asp:TextBox ID="TextBox4" runat="server" Width="143px" ReadOnly="True"></asp:TextBox> 
           
                                 </td>
                        </tr>
                             <tr>
                            <td align="right" width="40%" class="style2" >
                                 </td>
                            <td align="left" width="60%" class="style2">
                                 </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server" Font-Size="Large" 
                                    Text="Custmer Name:"></asp:Label>
                               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 
           
                            &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
           
                            </td>
                            <td align="right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Medicine Name :"></asp:Label>
                                <asp:DropDownList ID="DropDownList1"  runat="server" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                    AutoPostBack="True" >
                                </asp:DropDownList>
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
			<td align="char" width="40%">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Font-Size="Large" 
                                    Text="Address :"></asp:Label>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> 
           
                            &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
           
                            </td>
			<td align="right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;
                                    <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Quantity :"></asp:Label>
                               <asp:TextBox ID="TextBox6" runat="server" ontextchanged="TextBox6_TextChanged" 
                                        AutoPostBack="True"></asp:TextBox> 
           
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
            </td>
			<td align="right" class="style1">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="TextBox7" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="Price :"></asp:Label>
                               <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox> 
           
                            </td>
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
                            <td align="right" width="60%">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="TextBox9" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                                    <asp:Label ID="Label9" runat="server" Font-Size="Large" Text="Discount % :"></asp:Label>
                               <asp:TextBox ID="TextBox9" runat="server" AutoPostBack="True" 
                                    ontextchanged="TextBox9_TextChanged"></asp:TextBox> 
           
                            </td>
                        </tr>
		    <tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="left" width="60%">
                               &nbsp;
                                          
                            </td>
                        </tr>
		    <tr>
                            <td align="right" width="40%" >
                                &nbsp;</td>
                            <td align="right" width="60%">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ControlToValidate="TextBox10" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" Font-Size="Large" 
                                    Text="Discount Price :"></asp:Label>
                               <asp:TextBox ID="TextBox10" runat="server" AutoPostBack="True"></asp:TextBox> 
           
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
			<td align="right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                        ControlToValidate="TextBox8" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server" Font-Size="Large" 
                                   Text="Total Amount :"></asp:Label>
                               <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True"></asp:TextBox> 
           
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
			<td align="right">
                                     <asp:Button ID="Button1" runat="server"  Text="Insert" onclick="Button1_Click" 
                                          /></td>
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
                                     &nbsp;</td>
		</tr>
             
	</tbody></table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                  CellPadding="4" CellSpacing="2" EnableModelValidation="True" ForeColor="Black" Width="100%">
    <Columns>
        <asp:TemplateField HeaderText="Medicine Name">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Discount">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Discount") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Total">
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Total_Price") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    CommandArgument='<%# Eval("Name") %>' Height="26px" 
                    ImageUrl="~/img/delete.png" onclick="ImageButton2_Click" Width="26px" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
</asp:GridView>
        <br />
        <br />
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:Button ID="Button2" runat="server" 
            Text="Print" onclick="Button2_Click" CausesValidation="False" 
                                          />
    </div>
</asp:Content>
