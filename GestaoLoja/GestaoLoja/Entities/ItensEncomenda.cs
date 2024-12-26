namespace GestaoLoja.Entities
{
    public class ItensEncomenda
    {
        public int Id { get; set; }
        public int EncomendaId { get; set; } // Chave estrangeira
        public int ProdutoId { get; set; } // Chave estrangeira
        public int Quantidade { get; set; }

        // Relacionamentos
        public Encomenda Encomenda { get; set; }
        public Produto Produto { get; set; }
    }
}
