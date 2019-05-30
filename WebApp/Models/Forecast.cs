using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp.Models
{
    public class Forecast
    {
        public int forecast_id { get; set; }
        public DateTime date { get; set; }
        public string city { get; set; }
        public string condition { get; set; }
        public int precipitation { get; set; }
        public int max_temp { get; set; }
        public int min_temp { get; set; }
        public int windspeed { get; set; }
        public int humidity { get; set; }
        public DateTime endDate { get; set; }
    }
}