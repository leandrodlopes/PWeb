using GestaoLoja.Entities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace GestaoLoja.Data
{
    public class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : IdentityDbContext<ApplicationUser>(options)
    {
    
public DbSet<Categoria> Categorias { get; set; }
public DbSet<ModoEntrega> ModoEntrega { get; set; }
public DbSet<Produto> Produtos { get; set; }
public DbSet<Encomenda> Encomendas { get; set; }
public DbSet<ItensEncomenda> ItensEncomenda { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Relacionamento Produtos -> Categorias
            modelBuilder.Entity<Produto>()
                .HasOne(p => p.Categoria)
                .WithMany(c => c.Produtos)
                .HasForeignKey(p => p.CategoriaId);


            // Relacionamento Produtos -> ModoEntrega
            modelBuilder.Entity<Produto>()
                .HasOne(p => p.ModoEntrega)
                .WithMany()
                .HasForeignKey(p => p.ModoEntregaId);
        }

    }
}