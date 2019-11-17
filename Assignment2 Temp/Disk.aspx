<%-- *************************************************************************** --%>
<%-- Date	    Name	   Description                                           --%>
<%-- --------------------------------------------------------------------------- --%>
<%-- 11-7-09    David Verbeck   initial Disk page for disk inventory website     --%>
<%--                            Still under construction per instruction         --%>
<%-- *************************************************************************** --%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Disk.aspx.cs" Inherits="Assignment2_Temp.Disk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h1>Welcome to the disk page</h1>
        <h2>The grid below displays all current CDs in our inventory, along with their current availability.</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-condensed">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="CD Name" HeaderText="CD Name" SortExpression="CD Name" />
                <asp:BoundField DataField="Artist Name" HeaderText="Artist Name" SortExpression="Artist Name" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Current Availability" HeaderText="Current Availability" SortExpression="Current Availability" />
                <asp:BoundField DataField="Date of Release" HeaderText="Date of Release" SortExpression="Date of Release" />
            </Columns>
            <HeaderStyle BackColor="Black" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryDVConnectionString %>" SelectCommand="SELECT CD_inventory.CD_ID as 'ID', CD_inventory.CD_name as 'CD Name', Artist_info.artist_name as 'Artist Name', CD_inventory.genre as 'Genre', CD_inventory.status_type as 'Current Availability', CD_inventory.release_date as 'Date of Release' 
FROM CD_inventory INNER JOIN Artist_info ON CD_inventory.artist_id = Artist_info.artistID
ORDER BY  CD_inventory.CD_ID asc"></asp:SqlDataSource>

</asp:Content>
