<%-- *************************************************************************** --%>
<%-- Date	    Name	   Description                                           --%>
<%-- --------------------------------------------------------------------------- --%>
<%-- 11-16-09    David Verbeck   Implemented addition validation to Email and    --%> 
<%--                            phone elements                                   --%>
<%--                            not connected to database.                       --%>
<%-- *************************************************************************** --%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrower.aspx.cs" Inherits="Assignment2_Temp.Borrower" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <h1>
        Welcome to the borrower page.</h1>
    <h2>
        Please fill in the form below if you wish to become to able to borrow CDs from us.</h2>
    <p>
        &nbsp;</p>
    <p>
        Name:
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name"
            CssClass ="text-danger">* Required</asp:RequiredFieldValidator>
    </p>
    <p>
        Email:
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email"
            CssClass ="text-danger">* Required</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Please enter a valid email address</asp:RegularExpressionValidator>
    </p>
    <p>
        Phone:
        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone"
            CssClass ="text-danger"> * Required</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" CssClass="text-danger" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">Please use this format xxx-xxx-xxxx</asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Submit" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>

    
</asp:Content>
