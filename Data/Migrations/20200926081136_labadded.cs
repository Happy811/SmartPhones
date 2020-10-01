using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace SmartPhones.Data.Migrations
{
    public partial class labadded : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "tblLabs",
                columns: table => new
                {
                    LabId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MobileModel = table.Column<string>(nullable: false),
                    Fault = table.Column<string>(nullable: false),
                    ExpectedRepairDate = table.Column<DateTime>(nullable: false),
                    IsRepairable = table.Column<bool>(nullable: false),
                    IsDeadCondition = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tblLabs", x => x.LabId);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "tblLabs");
        }
    }
}
