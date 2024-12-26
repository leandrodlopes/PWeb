using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using GestaoLoja.Entities;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace GestaoLoja.Data
{
    public class Inicializacao
    {
        public static async Task SeedAsync(IServiceProvider serviceProvider)
        {
            using (var scope = serviceProvider.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<ApplicationDbContext>();
                var userManager = scope.ServiceProvider.GetRequiredService<UserManager<ApplicationUser>>();
                var roleManager = scope.ServiceProvider.GetRequiredService<RoleManager<IdentityRole>>();

                // Garantir que o banco de dados está criado
                await context.Database.MigrateAsync();

                // Criar roles (perfis)
                await CriarRoles(roleManager);

                // Criar usuários padrões
                await CriarUsuariosPadrao(userManager);

                // Adicionar dados iniciais
                AdicionarDadosIniciais(context);

                // Salvar alterações no banco de dados
                await context.SaveChangesAsync();
            }
        }

        private static async Task CriarRoles(RoleManager<IdentityRole> roleManager)
        {
            var roles = new[] { "Administrador", "Funcionário", "Cliente" };

            foreach (var role in roles)
            {
                if (!await roleManager.RoleExistsAsync(role))
                {
                    await roleManager.CreateAsync(new IdentityRole(role));
                }
            }
        }

        private static async Task CriarUsuariosPadrao(UserManager<ApplicationUser> userManager)
        {
            var adminEmail = "admin@frutaria.com";
            var adminUser = await userManager.FindByEmailAsync(adminEmail);

            if (adminUser == null)
            {
                adminUser = new ApplicationUser
                {
                    UserName = adminEmail,
                    Email = adminEmail,
                    Nome = "Admin",
                    EmailConfirmed = true
                };

                await userManager.CreateAsync(adminUser, "Admin123!");
                await userManager.AddToRoleAsync(adminUser, "Administrador");
            }
        }

        private static void AdicionarDadosIniciais(ApplicationDbContext context)
        {
        }
    }
}

