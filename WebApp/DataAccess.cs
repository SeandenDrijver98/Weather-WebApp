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
        //Login a user
        public static Boolean UserExists(User login)
        {
            Boolean exists = false;

            using (IDbConnection con = new SQLiteConnection(getConnectionString()))
            {
            var users= con.Query<User>("SELECT * FROM user WHERE email IS @email AND password IS @password", login);
                if (users.Count() != 0)
                {
                    exists = true;
                }
            }
            return exists;
        }
        //Create a new user
        public static void createUser(User newUser)
        {
            using (IDbConnection con = new SQLiteConnection(getConnectionString()))
            {
                con.Execute("INSERT INTO User (email, password, permissions) Values (@email, @password, @permissions)", newUser);
            }
        }
        //Fetch forecast for selected city
        public static List<Forecast> getForecasts(String searchCity)
        {
            Forecast searchParams = new Forecast { city = searchCity };

            using (IDbConnection con = new SQLiteConnection(getConnectionString()))
            {
                var forecasts = con.Query<Forecast>("SELECT * FROM Forecast WHERE city IS @city ORDER BY date ASC", searchParams);
                return forecasts.ToList<Forecast>();
            }

        }
        //Store the connection string
      public static String getConnectionString()
        {
            var path = " Data Source = " + System.IO.Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, @"bin\App_Data\WeatherWatcherDb.db");
                return path;
        }
    }
}