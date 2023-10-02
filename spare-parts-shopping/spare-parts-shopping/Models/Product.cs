using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace spare_parts_shopping.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public int Stock { get; set; }
        public string Image { get; set; }
    }
}