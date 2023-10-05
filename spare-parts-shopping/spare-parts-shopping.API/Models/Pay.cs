using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace spare_parts_shopping.API.Models
{
    [Table("Pay")]
    public class Pay
    {
        public int Id { get; set; }
        public string CardNo { get; set; }
    }
}