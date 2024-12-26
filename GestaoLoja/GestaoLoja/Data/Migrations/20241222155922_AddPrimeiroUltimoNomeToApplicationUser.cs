using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GestaoLoja.Migrations
{
    /// <inheritdoc />
    public partial class AddPrimeiroUltimoNomeToApplicationUser : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Stock",
                table: "Produtos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "PrimeiroNome",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "UltimoNome",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Stock",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "PrimeiroNome",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "UltimoNome",
                table: "AspNetUsers");
        }
    }
}
