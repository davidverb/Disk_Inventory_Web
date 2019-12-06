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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryDVConnectionString %>" 
            SelectCommand="SELECT CD_inventory.CD_ID as 'ID', CD_inventory.CD_name as 'CD Name', Artist_info.artist_name as 'Artist Name', CD_inventory.genre as 'Genre', CD_inventory.status_type as 'Current Availability', CD_inventory.release_date as 'Date of Release' 
FROM CD_inventory INNER JOIN Artist_info ON CD_inventory.artist_id = Artist_info.artistID
ORDER BY  CD_inventory.CD_ID asc" 
            InsertCommand="INSERT INTO CD_inventory(CD_ID, artist_id, release_date, CD_name, status_type, genre) 
            VALUES (@CD_ID, @Artist_ID, @Release_Date, @CD_Name, @Status, @Genre)">
            <InsertParameters>
                <asp:Parameter Name="CD_ID" />
                <asp:Parameter Name="Artist_ID" />
                <asp:Parameter Name="Release_Date" />
                <asp:Parameter Name="CD_Name" />
                <asp:Parameter Name="Status" />
                <asp:Parameter Name="Genre" />
            </InsertParameters>
</asp:SqlDataSource>

    <br />
    <p>
        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
</p>
<p>
        &nbsp;</p>
    <p>
        To add a new disk, fill in the fields below.</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;To add an artist please refer to the artist page.</p>
    <p>
        &nbsp;</p>
<p>
        <asp:Label ID="Label2" runat="server" Text="ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="CD Name:"></asp:Label>
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;</p>
    <p>
        &nbsp;</p>
<p>
        Artist&nbsp; ID:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p>
        &nbsp;</p>
<p>
        Genre:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</p>
<p>
        &nbsp;</p>
<p>
        Avalibility:&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="Availiable">Availiable</asp:ListItem>
            <asp:ListItem Value="Borrowed">Borrowed</asp:ListItem>
        </asp:DropDownList>
</p>
<p>
        &nbsp;</p>
<p>
        Release Date:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</p>
<p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Btn_add" runat="server" OnClick="Button1_Click" Text="Add" />
    </p>
</asp:Content>
