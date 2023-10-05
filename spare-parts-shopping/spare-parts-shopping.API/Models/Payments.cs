using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace spare_parts_shopping.API.Models
{
    [Table("Payments")]
    public class Payments
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