using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace GestaoLoja.Entities


{
    public class Produto
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Detalhe { get; set; }
        public string? Origem { get; set; }
        public string? Titulo { get; set; }
        public string? UrlImagem { get; set; }
        public byte[]? Imagem { get; set; }
        public decimal Preco { get; set; }
        public bool Promocao { get; set; }
        public bool MaisVendido { get; set; }
        public decimal EmStock { get; set; }
        public bool Disponivel { get; set; }
        public int? ModoEntregaId { get; set; }
        public int CategoriaId { get; set; }

		[NotMapped] // Não será persistido no banco de dados
		public IFormFile ImageFile { get; set; }
		// Relacionamentos
		public Categoria Categoria { get; set; }
        public ModoEntrega ModoEntrega { get; set; }
    }
}
