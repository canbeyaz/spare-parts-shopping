using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace spare_parts_shopping.API.Models
{
    public partial class SparePartsPaymentDb : DbContext
    {
        public SparePartsPaymentDb()
        {

        }

        public virtual DbSet<Payments> Payments { get; set; }
        public virtual DbSet<Pay> Pay { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            
        }
    }
}