using System.ComponentModel.DataAnnotations;

namespace ExpoAPI.ViewModels
{
    public class LoginViewModels
    {
        [Required(ErrorMessage = "E-mail Requerido")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Senha Requirida")]
        public string Senha { get; set; }
    }
}
