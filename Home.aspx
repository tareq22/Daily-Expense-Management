﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DailyExpenseManagement.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style type="text/css">
        h1 {
            background-color:black;
            color:white;
            text-align:center;
        }
        .auto-style2 {
            text-align: center;
        }
        #form1 {
            width: 638px;
            height: 357px;
            margin-left: 434px;
        }
        form{
            background-color:white;
        }
    </style>
</head>
<body style="height: 530px; width: 1365px; margin-left: 0px">
     <h1>Daily Expense Management System </h1>
    <form id="form1" runat="server" >

 
     
        <div>
        <asp:label ID="L1" Text=" " runat="server" />
</div>
        <p class="auto-style2">
        
          &nbsp;&nbsp;&nbsp;&nbsp; Email: <asp:TextBox ID="TextBox1" runat="server" Height="24px" OnTextChanged="TextBox1_TextChanged" style="margin-left: 96px; margin-top: 34px; text-align: left;" Width="155px"></asp:TextBox>
        </p>
            <p class="auto-style2">
          &nbsp;
          PassWord: <asp:TextBox type="Password" ID="TextBox2" runat="server" Height="31px" style="margin-left: 71px" Width="151px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </p>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  style="margin-left: 339px; " Text="Submit" Width="82px" Height="26px" />
        <p style="text-align:end">                    <a href="Forget.aspx">  Forget Password!!! </a> </p>
        
        <p>
            <asp:button ID="btn" runat="server" Text="Registration" Height="30px" style="margin-left: 468px" Width="114px" OnClick="btn_Click" />
        </p>
    </form>


    <div style="text-align:center">
    CopyRight @shumia Authority <%= DateTime.Now.Year %> 
        </div>
</body>
</html>
