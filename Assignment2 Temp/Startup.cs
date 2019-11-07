using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Assignment2_Temp.Startup))]
namespace Assignment2_Temp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
