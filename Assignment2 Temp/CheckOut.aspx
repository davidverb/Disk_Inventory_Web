<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Assignment2_Temp.WebForm1" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p> &nbsp;</p>
    <p> 

     <asp:Label ID="Label1" runat="server"></asp:Label>

     </p>
    <p> &nbsp;</p>
    <p> Select a CD</p>
    <p> 
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="CD_name" DataValueField="CD_ID">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryDVConnectionString %>" SelectCommand="SELECT * FROM [CD_inventory]"></asp:SqlDataSource>
    </p>

     <br>
    <br />
    <p> Select a Borrower</p>
    <p> 
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="borrower_name" DataValueField="borrowerID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryDVConnectionString %>" SelectCommand="SELECT borrowerID, borrower_name FROM Borrower_Info"></asp:SqlDataSource>
    </p>
    <p> &nbsp;</p>
    <p> Select a Chectout date</p>
    <p> 
        <asp:TextBox ID="TextBox1" runat="server" placeholder="(mm/dd/yyyy)"></asp:TextBox>
    &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="text-danger" ErrorMessage="Required"></asp:RequiredFieldValidator>
    <p> &nbsp;</p>
    <p> 
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
    </p>


</asp:Content>