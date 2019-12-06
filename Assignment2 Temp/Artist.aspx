<%-- *************************************************************************** --%>
<%-- Date	    Name	   Description                                           --%>
<%-- --------------------------------------------------------------------------- --%>
<%-- 11-16-09    David Verbeck   Created gridview to display artists in database  --%>
<%--                            Still under construction                         --%>
<%-- *************************************************************************** --%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Artist.aspx.cs" Inherits="Assignment2_Temp.Artist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h1>Welcome to the artist display page. </h1>
    <br />
    <h2>The list below displays currently available artist and groups currently on record.</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-condensed" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated">
            <Columns>
                <asp:BoundField DataField="Artist ID" HeaderText="Artist ID" SortExpression="Artist ID" ReadOnly="True" />
                <asp:BoundField DataField="Artist Name" HeaderText="Artist Name" SortExpression="Artist Name" />
                <asp:BoundField DataField="Group Name" HeaderText="Group Name" SortExpression="Group Name" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <HeaderStyle BackColor="Black" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource 
            ID="SqlDataSource1"
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:disk_inventoryDVConnectionString %>"
            ConflictDetection="CompareAllValues" 
            OldValuesParameterFormatString="original_{0}"
            SelectCommand="SELECT Artist_info.artistID AS 'Artist ID', Artist_info.artist_name AS 'Artist Name', Group_info.group_name AS 'Group Name' 
            FROM Artist_info FULL OUTER JOIN Group_info ON Artist_info.artistID = Group_info.artistID 
            ORDER BY 'Artist ID'"
            InsertCommand="INSERT INTO Artist_info(artistID, artist_name)
                           VALUES (@ID, @ArtistName)"
            UpdateCommand="UPDATE Artist_info 
            SET artist_name = @ArtistName 
            WHERE (artistID = @original_ID) 
            AND (artist_name = @original_name)" 
            DeleteCommand="DELETE FROM Artist_info
            WHERE (artistID = @original_ID) 
            AND (artist_name = @original_name)">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" type="String" />
                <asp:Parameter Name="original_name" type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" type="String"/>
                <asp:Parameter Name="ArtistName" type="String"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ArtistName" type="String"/>
                <asp:Parameter Name="original_ID" type="String"/>
                <asp:Parameter Name="original_name" type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" HeaderText="Please correct the following errors:" />
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        To add a new artist, fill in the fields below</p>
    <p>
        &nbsp;</p>
<p>
        <asp:Label ID="Label2" runat="server" Text="ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Artist Name:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Btn_add" runat="server" OnClick="Button1_Click" Text="Add" />
    </p>
</asp:Content>
