<%@ Page Title="" Language="C#" MasterPageFile="~/allmaster.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="View Medicine.aspx.cs" Inherits="p_d.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            PostBackUrl="~/View Medicine.aspx" />
    </div>
    <div style="float:right; height:100%; width:74%" class="login_box_mid_only">
        <table cellpadding="2" cellspacing="0" style="width: 100%;">
          <tbody>
          <tr>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                  CellPadding="4" CellSpacing="2" EnableModelValidation="True" 
                  ForeColor="Black" Width="100%">
    <Columns>
        <asp:TemplateField HeaderText="Medicine Name">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Medicine_Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Medicine Company">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Medicine_Company") %>'></asp:Label>
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
        <asp:TemplateField HeaderText="Expiry date">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Expiry_Date") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    CommandArgument='<%# Eval("Medicine_ID") %>' Height="27px" 
                    ImageUrl="~/img/edit.png" onclick="ImageButton1_Click" Width="26px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    CommandArgument='<%# Eval("Medicine_ID") %>' Height="26px" 
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
		  </tr>
	</tbody></table>
    </div>
</asp:Content>

