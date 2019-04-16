<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewRecord.aspx.cs" Inherits="DailyExpenseManagement.ViewRecord" %>

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
                    <asp:Button ID="Label1" Text="Profile" runat="server" Height="25px" Width="130px" OnClick="Label1_Click1" />
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
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="173px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="516px" DataKeyNames="Date">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="True" />
                <asp:BoundField DataField="House" HeaderText="House" SortExpression="House" />
                <asp:BoundField DataField="Meal" HeaderText="Meal" SortExpression="Meal" />
                <asp:BoundField DataField="Medical" HeaderText="Medical" SortExpression="Medical" />
                <asp:BoundField DataField="Transport" HeaderText="Transport" SortExpression="Transport" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DailyExpenseManagementConnectionString2 %>" SelectCommand="SELECT * FROM [account]"></asp:SqlDataSource>

    </form>
        </div>

       
</body>
</html>
