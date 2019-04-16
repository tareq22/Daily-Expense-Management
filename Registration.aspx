<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DailyExpenseManagement.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: center;
            height: 209px;
            width: 351px;
            margin-left: 300px;
        }
    </style>
</head>
<body style="width: 85px">
    <form id="form1" runat="server">
      <table >
          <tr>
              <td>
                  <asp:label ID="lw" Text="Name" runat="server" />
                  </td>
               <td>
                    <asp:TextBox ID="Label1" runat="server" Height="25px" Width="130px" />
                  </td>
          </tr>
           <tr>
              <td>
                  <asp:label ID="Label2" Text="Email" runat="server" />
                  </td>
               <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="132px" />
                  </td>
          </tr>
           <tr>
              <td>
                  <asp:label ID="Label3" Text="Password" runat="server" />
                  </td>
               <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="133px" />
                  </td>
          </tr>
           <tr>
              <td>
                  <asp:label ID="Label4" Text="Phone Number" runat="server" />
                  </td>
               <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="128px" />
                  </td>
          </tr>
          <tr>
              <td>
                  </td>
              <td>
                     <asp:Button ID="TextBox4" Text="Submit" runat="server" OnClick="TextBox4_Click" />
                  </td>
              </tr>
          </table>
        </form>
</body>
</html>
