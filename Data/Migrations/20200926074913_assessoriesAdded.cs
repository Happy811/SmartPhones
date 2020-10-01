using Microsoft.EntityFrameworkCore.Migrations;

namespace SmartPhones.Data.Migrations
{
    public partial class assessoriesAdded : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "tblAssessories",
                columns: table => new
                {
                    AssID = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: true),
                    Company = table.Column<string>(nullable: true),
                    Price = table.Column<double>(nullable: false),
                    Genuine = table.Column<bool>(nullable: false),
                    Copy = table.Column<bool>(nullable: false),
                    Stock = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tblAssessories", x => x.AssID);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "tblAssessories");
        }
    }
}
