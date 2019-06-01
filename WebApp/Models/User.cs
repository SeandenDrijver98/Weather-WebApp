using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp.Models
{
    public class User
    {
        public String email { get; set; }
        public String password { get; set; }
        public String permissions { get; set; }
        public String favourite_city { get; set; }
    }
}