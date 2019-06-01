<%@ Page Title="Weather Watcher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Weather Forecasts</h1>
    </div>

    <div class="row">
        <h2>Search:</h2>
        <div class="searchFilters">
            <div>
            <p>
                City:
                <asp:DropDownList ID="ddCities" runat="server">
                    <asp:ListItem>Find a City</asp:ListItem>
                    <asp:ListItem>Cape Town</asp:ListItem>
                    <asp:ListItem>Pretoria</asp:ListItem>
                    <asp:ListItem>Johannesburg</asp:ListItem>
                    <asp:ListItem>Durban</asp:ListItem>
                    <asp:ListItem>Port Elizabeth</asp:ListItem>
                </asp:DropDownList>
                 <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                </p>
            </div>
            <div>
                </div>
        </div>
        <div>
            <h2>Forecasts:</h2>
            <h3>
                <asp:Label ID="cityName" runat="server" Text="Cape Town"></asp:Label>
            </h3>
            <p>
                <asp:GridView ID="weatherData" runat="server" Width="1227px" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    <Columns>
                         <asp:BoundField DataField="date" HeaderText="Date"/>
                         <asp:BoundField DataField="condition" HeaderText="Condition"/>
                         <asp:BoundField DataField="min_temp" HeaderText="Min Temp"/>
                         <asp:BoundField DataField="max_temp" HeaderText="Max Temp"/>
                         <asp:BoundField DataField="precipitation" HeaderText="Precipitation"/>
                         <asp:BoundField DataField="windspeed" HeaderText="Windspeed" />
                         <asp:BoundField DataField="humidity" HeaderText="Humidity"/>
                         
                    </Columns>
                </asp:GridView>
            </p>
        </div>
    </div>

</asp:Content>
