<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="DailyExpenseManagement.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        h1 {
            background-color:black;
            color:white;
            text-align:center;
        }
        </style>
</head>
<body>
  
        <div>
                <h1>Daily Expense Management System </h1>
    <form id="form2" runat="server">
        <div>
              <table >
          <tr>
              
               <td>
                    <asp:Button ID="Label1" Text="Profile" runat="server" Height="25px" Width="130px" />
                  </td>
        
              <td>
             
                    <asp:Button ID="TextBox1" Text="Add New Record" runat="server" Height="28px" Width="132px" style="margin-left: 79px" OnClick="TextBox1_Click" />
                  </td>
               <td>
                    <asp:Button ID="TextBox2" Text="View Record" runat="server" Height="25px" Width="133px" style="margin-left: 93px" OnClick="TextBox2_Click" />
                  </td>
              <td>
                    <asp:Button ID="Button1" Text="Update" runat="server" Height="26px" Width="115px" style="margin-left: 67px" OnClick="Button1_Click" />
                  </td>
         
               <td>
                    <asp:Button ID="TextBox3" Text="Delete" runat="server" Height="26px" Width="115px" style="margin-left: 67px" OnClick="TextBox3_Click" />
                  </td>
         
              <td>
                     <asp:Button ID="TextBox4" Text="Log Out" runat="server" style="margin-left: 76px" OnClick="TextBox4_Click" />
                  </td>
              </tr>
          </table>
        </div>
  <table>
      <tr>
          <td>
              <asp:label text="Date:" ID="d1" runat="server" />
              </td>
      <td>
               <asp:Textbox  ID="Label2" runat="server" Height="17px" style="margin-left: 14px" Width="150px" />
          </td>
          </tr>
      <tr>
          <td>
              </td>
          <td>
               <asp:Button text="Submit" ID="Label3" runat="server" style="margin-left: 18px" OnClick="Label3_Click" />
              </td>
      </tr>
      <tr>
           <asp:label ID="Label4" runat="server" />
          </tr>
      </table>

          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Date" DataSourceID="SqlDataSource1" Width="454px">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                <asp:BoundField DataField="House" HeaderText="House" SortExpression="House" />
                <asp:BoundField DataField="Meal" HeaderText="Meal" SortExpression="Meal" />
                <asp:BoundField DataField="Medical" HeaderText="Medical" SortExpression="Medical" />
                <asp:BoundField DataField="Transport" HeaderText="Transport" SortExpression="Transport" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DailyExpenseManagementConnectionString2 %>" SelectCommand="SELECT * FROM [account]"></asp:SqlDataSource>

    </form>
             </div>
      </body>
</html>
