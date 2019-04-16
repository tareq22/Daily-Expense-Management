<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewRecord.aspx.cs" Inherits="DailyExpenseManagement.AddNewRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h1 {
            background-color: black;
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>

    <div>
        <h1>Daily Expense Management System </h1>
        <form id="form2" runat="server">
            <div>
                <table>
                    <tr>

                        <td>
                            <asp:Button ID="Label1" Text="Profile" runat="server" Height="25px" Width="130px" />
                        </td>

                        <td>

                            <asp:Button ID="TextBox1" Text="Add New Record" runat="server" Height="28px" Width="132px" Style="margin-left: 79px" OnClick="TextBox1_Click" />
                        </td>
                        <td>
                            <asp:Button ID="TextBox2" Text="View Record" runat="server" Height="25px" Width="133px" Style="margin-left: 93px" OnClick="TextBox2_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button1" Text="Update" runat="server" Height="26px" Width="115px" Style="margin-left: 67px" OnClick="Button1_Click" />
                        </td>

                        <td>
                            <asp:Button ID="TextBox3" Text="Delete" runat="server" Height="26px" Width="115px" Style="margin-left: 67px" OnClick="TextBox3_Click" />
                        </td>

                        <td>
                            <asp:Button ID="TextBox4" Text="Log Out" runat="server" Style="margin-left: 76px" OnClick="TextBox4_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <table style="height: 194px; width: 326px">
                <tr>
                    <td>
                        <asp:label  ID="ll1" runat="server" Text="Name  : " />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Amount  : " />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:label Text="House" ID="TextBox5" runat="server"></asp:label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:label Text="Meal" ID="TextBox7" runat="server"></asp:label>
                    </td>
                    <td>
                        &nbsp;</td>

                </tr>
                <tr>
                    <td>
                        <asp:label Text="Medical" ID="TextBox9" runat="server"></asp:label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Transport" ID="TextBox11" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>

                </tr>
                  <tr>
                    <td>
                        <asp:Label Text="Date" ID="Label3" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td></td>
                    <td>
                         <asp:Button ID="TextBox13" Text="Submit" runat="server" OnClick="TextBox13_Click" Height="26px"></asp:Button>

                    </td>
                </tr>


            </table>

        </form>
    </div>




    <p>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </p>




</body>
</html>
