using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;
using System.Data;
using System.Data.SQLite;
using WebApp.Models;

namespace WebApp
{
    public class DataAccess
    {
        public static Boolean UserExists(User login)
        {
            Boolean exists = false;

            using (IDbConnection con = new SQLiteConnection(getConnectionString()))
            {
            var users= con.Query<User>("SELECT * FROM user WHERE email IS @email AND password IS @password", login);
                System.Diagnostics.Debug.WriteLine("query: " + users.ToList<User>().Count());
                if (users.Count() != 0)
                {
                    exists = true;
                }
            }
            return exists;
        }

        public static List<Forecast> getForecasts(String City)
        {
            using (IDbConnection con = new SQLiteConnection(getConnectionString()))
            {
                var forecasts = con.Query<Forecast>("SELECT * FROM Forecast");
                return forecasts.ToList<Forecast>();
            }

        }
      public static String getConnectionString()
        {
            var path = " Data Source = " + System.IO.Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, @"bin\App_Data\WeatherWatcherDb.db");
                return path;
        }
    }
}