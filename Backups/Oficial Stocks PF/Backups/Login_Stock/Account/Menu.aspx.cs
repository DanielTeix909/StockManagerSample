using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Label4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void lb_stocks_Click(object sender, EventArgs e)
    {
        Response.Redirect("Stocks_Armazem.aspx");
    }
    protected void lb_artigos_Click(object sender, EventArgs e)
    {
        Response.Redirect("Artigos.aspx");
    }
    protected void lb_reembolsos_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reembolsos.aspx");
    }
    protected void lb_configuser_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage.aspx");
    }
    protected void lb_admins_Click(object sender, EventArgs e)
    {
        Response.Redirect("Manage.aspx");

    }
    protected void lb_users_Click(object sender, EventArgs e)
    {
        Response.Redirect("Users.aspx");

    }
    protected void lb_parceiros_Click(object sender, EventArgs e)
    {
        Response.Redirect("Parceiros.aspx");

    }

    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Response.Redirect("Eventos.aspx");

    }
}