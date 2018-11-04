using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Login_Stock.Startup))]
namespace Login_Stock
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
