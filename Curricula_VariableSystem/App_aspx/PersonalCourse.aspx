﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalCourse.aspx.cs" Inherits="Curricula_VariableSystem.App_aspx.PersonalCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <title>安徽大学选课系统</title>
    <style type="text/css">
        .style1 
        {
        height:75px; background:url(../images/Login-bg.gif) left top repeat-x #fff; font-family:Tahoma, Geneva, sans-serif; font-size:100%; line-height:1.125em; color:#1c2328;
        }
 
        .style2 {
            margin:0px;padding:0px;
            border-bottom:1px solid #ccc;border-top:1px solid #ccc;
            background-image:url(../images/Login-bg.gif);
        }
            .style2 li {
              display:inline-block;  
            padding:15px 30px 15px 30px;
            border-right:1px solid #ddd;
            }
            .style2 a {
            color:#666;
            text-decoration:none;
            }
             .style2 a:hover 
                {
                    color: cadetblue;
                }
        </style>
</head>
<body>
    <form id="form1" runat="server">
          <div class=" style1">
       <div style="float:right;">
           <asp:LinkButton ID="LinkButton1" runat="server"  Font-Names="黑体" Font-Size="Small" style="text-decoration:none" PostBackUrl="~/Login.aspx">退出登录</asp:LinkButton><asp:Label  ID="Label1" runat="server" Font-Names="黑体" Font-Size="Small" ></asp:Label></div>
         <br/><div style="font-family: '微软雅黑 Light'; font-size: 45px; color: #0066CC;">      
             <asp:Image ID="Image1" runat="server" ImageUrl="~/images/AHULogo2.png" Height="57px" Width="250px" ImageAlign="TextTop" />
             选课系统</div><br/> 
     </div>       
        <br/>
        <br/>
<asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink"  CssClass="style2" Height="45px" Width="100%" BorderStyle="NotSet">
            <asp:ListItem Value="SysStudent.aspx">公告</asp:ListItem>
            <asp:ListItem Value="SelectCourse.aspx"> 选课</asp:ListItem>    
            <asp:ListItem Value="StudentCourse.aspx">查看已选课程</asp:ListItem>
            <asp:ListItem Value="PersonalCourse.aspx">查看个人课表</asp:ListItem>
            <asp:ListItem Value="StudentScore.aspx">查看成绩</asp:ListItem>
        </asp:BulletedList>
        <br/>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
                <asp:BoundField DataField="上课时间" HeaderText="上课时间" SortExpression="上课时间" />
                <asp:BoundField DataField="上课地点" HeaderText="上课地点" SortExpression="上课地点" />
            </Columns>
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CVSDBConnectionString %>" SelectCommand="SELECT [课程名称], [上课时间], [上课地点] FROM [View_STPC] WHERE ([学号] = @学号)">
            <SelectParameters>
                <asp:SessionParameter Name="学号" SessionField="Unum" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
