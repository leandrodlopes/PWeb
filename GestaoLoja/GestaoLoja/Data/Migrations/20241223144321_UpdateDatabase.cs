using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GestaoLoja.Migrations
{
    /// <inheritdoc />
    public partial class UpdateDatabase : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DataEncomenda",
                table: "Encomendas");

            migrationBuilder.DropColumn(
                name: "Estado",
                table: "Encomendas");

            migrationBuilder.AddColumn<string>(
                name: "Detalhe",
                table: "ModoEntrega",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<byte[]>(
                name: "Imagem",
                table: "Categorias",
                type: "varbinary(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Ordem",
                table: "Categorias",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "UrlImagem",
                table: "Categorias",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Detalhe",
                table: "ModoEntrega");

            migrationBuilder.DropColumn(
                name: "Imagem",
                table: "Categorias");

            migrationBuilder.DropColumn(
                name: "Ordem",
                table: "Categorias");

            migrationBuilder.DropColumn(
                name: "UrlImagem",
                table: "Categorias");

            migrationBuilder.AddColumn<DateTime>(
                name: "DataEncomenda",
                table: "Encomendas",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "Estado",
                table: "Encomendas",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }
    }
}
