<%@ Page Title="" Language="C#" MasterPageFile="~/allmaster.Master" AutoEventWireup="true" CodeBehind="Sell Report.aspx.cs" Inherits="p_d.WebForm9" %>
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
    border-bottom: 3px solid #c7c7c7;" Text="Sell Report" 
            Width="145px" Height="40px" PostBackUrl="~/Sell Report.aspx" 
            onclick="Button1_Click" />
        

         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;<br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        

 <!--        <asp:Button ID="Button2"  align="center"  runat="server" style="background: #bd135b;
    border-top: 3px solid #c7c7c7;
    border-bottom: 3px solid #c7c7c7;" Text="BUY Report" Width="145px" Height="40px" 
            PostBackUrl="~/Purchase Report.aspx" />-->
    </div>
    <div style="float:right; height:100%; width:74%" class="login_box_mid_only">
        <table cellpadding="2" cellspacing="0" style="width:100%;">
          <tbody>
          <tr>
           <!-- <td >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Start Date :"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:DropDownList ID="Date" runat="server" >
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
            <td >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="End Date :"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:DropDownList ID="Date1" runat="server" >
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
                               <asp:DropDownList ID="Month1" runat="server">
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
                               <asp:DropDownList ID="Year1" runat="server">
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
            <td>
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="SEARCH" onclick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="ALL" />
                
            </td> -->
          </tr>
          <tr>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                  CellPadding="4" CellSpacing="2" EnableModelValidation="True" ForeColor="Black" Width="100%">
    <Columns>
        <asp:TemplateField HeaderText="Bill No">
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Bill_No") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Date">
            <ItemTemplate>
                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
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

