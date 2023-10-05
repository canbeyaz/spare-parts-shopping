namespace spare_parts_shopping.API.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<spare_parts_shopping.API.Models.SparePartsPaymentDb>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            ContextKey = "spare_parts_shopping.API.Models.SparePartsPaymentDb";
        }

        protected override void Seed(spare_parts_shopping.API.Models.SparePartsPaymentDb context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method
            //  to avoid creating duplicate seed data.
        }
    }
}
