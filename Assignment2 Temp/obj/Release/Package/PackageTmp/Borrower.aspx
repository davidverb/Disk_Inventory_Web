<%-- *************************************************************************** --%>
<%-- Date	    Name	   Description                                           --%>
<%-- --------------------------------------------------------------------------- --%>
<%-- 11-7-09    David Verbeck   initial borrower page for disk inventory website --%>
<%--                            not connected to database.                       --%>
<%-- *************************************************************************** --%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrower.aspx.cs" Inherits="Assignment2_Temp.Borrower" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <p>
        &nbsp;</p>
    <p>
        Name:
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name"
            CssClass ="text-danger">* Please fill in</asp:RequiredFieldValidator>
    </p>
    <p>
        Email:
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email"
            CssClass ="text-danger">* Please fill in</asp:RequiredFieldValidator>
    </p>
    <p>
        Phone:
        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone"
            CssClass ="text-danger"> * Please fill in</asp:RequiredFieldValidator>
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
