using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace spare_parts_shopping.API.Models
{
    public class Card
    {
        public int Id { get; set; }
        public string CardNo { get; set; }
        public string CardName { get; set; }
        public string CardMonth { get; set; }
        public string CardYear { get; set; }
        public string CardCvv { get; set; }
        public string Price { get; set; }
    }
}