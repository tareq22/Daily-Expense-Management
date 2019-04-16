<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="DailyExpenseManagement.Update" %>

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
                    <asp:Button ID="Label1" Text="Profile" runat="server" Height="25px" Width="130px" OnClick="Label1_Click" />
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
                     <asp:Button ID="TextBox4" Text="Log Out" runat="server" style="margin-left: 76px; height: 26px;" OnClick="TextBox4_Click" />
                  </td>
              </tr>
          </table>



        </div>
    </form>
            </div>
</body>
</html>
