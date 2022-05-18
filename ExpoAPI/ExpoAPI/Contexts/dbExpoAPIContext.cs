using ExpoAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace ExpoAPI.Contexts
{
    public class dbExpoAPIContext : DbContext
    {
        public dbExpoAPIContext()
        {
        }
        public dbExpoAPIContext(DbContextOptions<dbExpoAPIContext> options) : base(options)
        {
        }

        // vamos utilizar esse método para configurar o banco de dados
        protected override void
            OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                // cada provedor tem sua sintaxe para especificação
                optionsBuilder.UseSqlServer(("Data Source = PC-0000\\SQLEXPRESS; initial catalog = dbExpoAPI; User Id = sa; Password = Tleo1607"));
            }
        }
        // dbset representa as entidades que serão utilizadas nas operações de leitura, criação, atualização e deleção
        public DbSet<Projeto> Projetos { get; set; }

        public DbSet<Usuario> Usuarios { get; set; }
    }
}
