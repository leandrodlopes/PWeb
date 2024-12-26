using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace GestaoLoja.Migrations
{
    /// <inheritdoc />
    public partial class UpdateDatabaseFields : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Stock",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "CustoAdicional",
                table: "ModoEntrega");

            migrationBuilder.DropColumn(
                name: "PrecoUnitario",
                table: "ItensEncomenda");

            migrationBuilder.DropColumn(
                name: "Descricao",
                table: "Categorias");

            migrationBuilder.DropColumn(
                name: "PrimeiroNome",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "UltimoNome",
                table: "AspNetUsers");

            migrationBuilder.RenameColumn(
                name: "Descricao",
                table: "Produtos",
                newName: "Detalhe");

            migrationBuilder.RenameColumn(
                name: "Descricao",
                table: "ModoEntrega",
                newName: "Nome");

            migrationBuilder.AddColumn<bool>(
                name: "Disponivel",
                table: "Produtos",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<decimal>(
                name: "EmStock",
                table: "Produtos",
                type: "decimal(18,2)",
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.AddColumn<byte[]>(
                name: "Imagem",
                table: "Produtos",
                type: "varbinary(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "MaisVendido",
                table: "Produtos",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<int>(
                name: "ModoEntregaId",
                table: "Produtos",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Origem",
                table: "Produtos",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "Promocao",
                table: "Produtos",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "Titulo",
                table: "Produtos",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UrlImagem",
                table: "Produtos",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Apelido",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DataNascimento",
                table: "AspNetUsers",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<byte[]>(
                name: "Fotografia",
                table: "AspNetUsers",
                type: "varbinary(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Localidade1",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Localidade2",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "NIF",
                table: "AspNetUsers",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Nome",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Pais",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Rua",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Produtos_ModoEntregaId",
                table: "Produtos",
                column: "ModoEntregaId");

            migrationBuilder.AddForeignKey(
                name: "FK_Produtos_ModoEntrega_ModoEntregaId",
                table: "Produtos",
                column: "ModoEntregaId",
                principalTable: "ModoEntrega",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Produtos_ModoEntrega_ModoEntregaId",
                table: "Produtos");

            migrationBuilder.DropIndex(
                name: "IX_Produtos_ModoEntregaId",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "Disponivel",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "EmStock",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "Imagem",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "MaisVendido",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "ModoEntregaId",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "Origem",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "Promocao",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "Titulo",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "UrlImagem",
                table: "Produtos");

            migrationBuilder.DropColumn(
                name: "Apelido",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "DataNascimento",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Fotografia",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Localidade1",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Localidade2",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "NIF",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Nome",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Pais",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Rua",
                table: "AspNetUsers");

            migrationBuilder.RenameColumn(
                name: "Detalhe",
                table: "Produtos",
                newName: "Descricao");

            migrationBuilder.RenameColumn(
                name: "Nome",
                table: "ModoEntrega",
                newName: "Descricao");

            migrationBuilder.AddColumn<int>(
                name: "Stock",
                table: "Produtos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<decimal>(
                name: "CustoAdicional",
                table: "ModoEntrega",
                type: "decimal(18,2)",
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.AddColumn<decimal>(
                name: "PrecoUnitario",
                table: "ItensEncomenda",
                type: "decimal(18,2)",
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.AddColumn<string>(
                name: "Descricao",
                table: "Categorias",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

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
    }
}
