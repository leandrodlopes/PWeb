namespace GestaoLoja
{
    public class AppConfig
    {// Nome da Aplicação
        public const string ApplicationName = "PediTiscos";

        public static string tituloHomePage { get; set; } = "";
		public static string enderecoHome { get; set; } = "";
		public static string mail { get; set; } = "";
		public static string telefone { get; set; } = "";

		// Configurações da API
		public static class Api
        {
            public const string BaseUrl = "https://localhost:7057/api"; // Alterar conforme necessário
        }

        // Configurações de Autenticação
        public static class Authentication
        {
            public const int PasswordMinLength = 6;
            public const bool RequireNonAlphanumeric = false;
            public const bool RequireUppercase = true;
            public const bool RequireLowercase = true;
            public const bool RequireDigit = true;
        }

        // Perfis de Utilizador
        public static class UserRoles
        {
            public const string Administrator = "Administrador";
            public const string Employee = "Funcionário";
            public const string Client = "Cliente";
            public const string Anonymous = "Anónimo";
        }

        // Configurações de Anti-Forgery
        public static class AntiForgery
        {
            public const string TokenHeaderName = "X-CSRF-TOKEN";
            public const string TokenCookieName = "CSRF-TOKEN";
        }

        // Outros Parâmetros de Configuração
        public static class Database
        {
            public const string ConnectionStringName = "DefaultConnection";
        }

        public static class UI
        {
            public const string DateFormat = "dd/MM/yyyy";
            public const string CurrencySymbol = "€";
        }
    }
}
