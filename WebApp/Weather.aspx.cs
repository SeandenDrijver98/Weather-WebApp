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
            String city = ddCities.SelectedItem.Value;
            weatherData.DataSource = DataAccess.getForecasts(city).Where(forecast => forecast.city.Equals(city));
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            String city = ddCities.SelectedItem.Value;
            weatherData.DataSource = DataAccess.getForecasts(city);//.Where(forecast => forecast.city.Equals(city));

        }
    }
}