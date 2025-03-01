﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_Operation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    
    <div style="font-size:x-large" align="center"   ><h1>Student Data Management</h1>
        <br />
        <table class="nav-justified">
            <tr>
                <td style="width: 60px; height: 44px;"></td>
                <td style="width: 454px; height: 44px;">Student ID</td>
                <td style="width: 533px; text-align: left; height: 44px;">
                    <asp:TextBox ID="txt1" runat="server" AutoPostBack="true" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 60px; height: 44px"></td>
                <td style="height: 44px; width: 454px">Student Name</td>
                <td style="height: 44px; width: 533px; text-align: left">
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 60px; height: 44px">&nbsp;</td>
                <td style="height: 44px; width: 454px">Department</td>
                <td style="height: 44px; width: 533px; text-align: left">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Department_name" DataValueField="Department_name" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConn %>" SelectCommand="SELECT [Department_name] FROM [department]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 60px">&nbsp;</td>
                <td style="width: 454px">Mail</td>
                <td style="width: 533px; text-align: left">
                    <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 60px">&nbsp;</td>
                <td style="width: 454px">Mobile Number</td>
                <td style="width: 533px; text-align: left">
                    <asp:TextBox ID="txt4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 60px">&nbsp;</td>
                <td style="width: 454px">Address</td>
                <td style="width: 533px; text-align: left">
                    <asp:TextBox ID="txt5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 60px">&nbsp;</td>
                <td style="width: 454px">&nbsp;</td>
                <td style="width: 533px; text-align: left">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  Font-Bold="True" BackColor="#3333CC"  ForeColor="White"/>
                &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click"  Font-Bold="True" BackColor="#3333CC" ForeColor="White" />
               
                </td>
            </tr>
        </table>
        <br />
   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="student_id" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting ="GridView1_RowDeleting"  OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:BoundField DataField="student_id" HeaderText="Student id" ReadOnly="True" />
               
                <asp:BoundField DataField="student_name" HeaderText="Student Name" />
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="Department">    
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Department_name" DataValueField="Department_name" SelectedValue='<%# Eval("Department_name") %>'>
                        </asp:DropDownList>
                        <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Department_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Mail" HeaderText="Mail" />
                <asp:BoundField DataField="Mobile_number" HeaderText="Mobile Number" />
                <asp:BoundField DataField="S_address" HeaderText="Address" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                <ControlStyle BackColor="#009933" ForeColor="White" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle BackColor="#CC0000" ForeColor="White" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
   
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConn %>" SelectCommand="SELECT [Department_name] FROM [department]"></asp:SqlDataSource>
   
        <br />
    <br/>
    </div>

</asp:Content>
