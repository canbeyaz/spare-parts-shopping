using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace spare_parts_shopping.Models
{
    public class Orders
    {
        public int Id { get; set; }
        
        public int UserId { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        [NotMapped]
        public bool StockError { get; set; }
        public bool IsPayment { get; set; }
        [ForeignKey("UserId")]
        public virtual Users User { get; set; }
        [ForeignKey("ProductId")]
        public virtual Product Products { get; set; }
    }
}