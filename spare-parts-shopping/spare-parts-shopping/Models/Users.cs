﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace spare_parts_shopping.Models
{
    public class Users
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Mail { get; set; }
        public string Username { get; set; }
        public string Password{ get; set; }
        public List<Orders> BasketItems { get; set; }
        public DateTime? CreateDate{ get; set; }
    }
}