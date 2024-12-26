using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GestaoLoja.Entities
{
    public class Categoria
    {
        public int Id { get; set; }
		public string Nome { get; set; }
		public int Ordem { get; set; }
		public string? UrlImagem { get; set; }
		public byte[]? Imagem { get; set; }
		[NotMapped] // Não será persistido no banco de dados
		public IFormFile? ImageFile { get; set; }

		// Relacionamento
		public ICollection<Produto> Produtos { get; set; }
    }
}
