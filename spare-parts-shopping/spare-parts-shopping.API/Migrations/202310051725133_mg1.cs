namespace spare_parts_shopping.API.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class mg1 : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.Pays", newName: "Pay");
        }
        
        public override void Down()
        {
            RenameTable(name: "dbo.Pay", newName: "Pays");
        }
    }
}
