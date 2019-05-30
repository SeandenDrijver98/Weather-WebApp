<%@ Page Title="Weather Watcher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

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
            <p>
                <asp:GridView ID="GridView1" runat="server" Width="1227px" DataSourceID="sqlLite" AutoGenerateColumns="False" DataKeyNames="forecast_id" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition" />
                        <asp:BoundField DataField="precipitation" HeaderText="precipitation" SortExpression="precipitation" />
                        <asp:BoundField DataField="max_temp" HeaderText="max_temp" SortExpression="max_temp" />
                        <asp:BoundField DataField="min_temp" HeaderText="min_temp" SortExpression="min_temp" />
                        <asp:BoundField DataField="windspeed" HeaderText="windspeed" SortExpression="windspeed" />
                        <asp:BoundField DataField="humidity" HeaderText="humidity" SortExpression="humidity" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="sqlLite" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Forecast]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddCities" DefaultValue="Cape Town" Name="searchCity" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </div>

</asp:Content>
