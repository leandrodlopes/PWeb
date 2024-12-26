using GestaoLoja.Data;

namespace GestaoLoja.Entities
{
    public class Encomenda
    {
        public int Id { get; set; }
        public string ClienteId { get; set; } // Chave estrangeira
        public int ModoEntregaId { get; set; } // Chave estrangeira

        // Relacionamentos
        public ApplicationUser Cliente { get; set; }
        public ModoEntrega ModoEntrega { get; set; }
        public ICollection<ItensEncomenda> Itens { get; set; }
    }
}
