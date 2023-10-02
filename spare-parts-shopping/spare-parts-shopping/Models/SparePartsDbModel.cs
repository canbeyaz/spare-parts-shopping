using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Reflection.Emit;
using System.Web;
using System.Web.Services.Description;

namespace spare_parts_shopping.Models
{
    public partial class SparePartsDbModel : DbContext
    {
        public SparePartsDbModel()
        {

        }

        public virtual DbSet<Users> Users { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {

            //modelBuilder.Entity<Orders>().has.Property(e => e.Id);
            

        }
    }
}