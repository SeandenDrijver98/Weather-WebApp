<%@ Page Title="Weather Watcher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Weather Forecasts</h1>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Search:</h2>
            <p>
                City:
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Cape Town</asp:ListItem>
                    <asp:ListItem>Pretoria</asp:ListItem>
                    <asp:ListItem>Johannesburg</asp:ListItem>
                    <asp:ListItem>Durban</asp:ListItem>
                    <asp:ListItem>Port Elizabeth</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                Date:<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </p>
            <p>
                <asp:Button ID="btnSearch" runat="server" Text="Search" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Forecasts:</h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" Width="1227px">
                </asp:GridView>
            </p>
        </div>
    </div>

</asp:Content>
