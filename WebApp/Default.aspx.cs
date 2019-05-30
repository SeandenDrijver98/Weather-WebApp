using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class _Default : Page
    {

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String searchCity = ddCities.SelectedItem.Value;
            sqlLite.SelectCommand = "SELECT * FROM [forecast] WHERE [city] IS @searchCity"; //AND [date] IS @searchDate";

            sqlLite.Select(DataSourceSelectArguments.Empty);
        }
    }
}