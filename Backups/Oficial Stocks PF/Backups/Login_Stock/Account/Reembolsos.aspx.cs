using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Account_Reembolsos : System.Web.UI.Page
{
    private string strcon = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Adicionar_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Stock_Armazems";
        //cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));

        cmd.Parameters.AddWithValue("@Stock_Referencia", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Stock_Nome", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Stock_tamanho", TextBox7.Text);
        cmd.Parameters.AddWithValue("@Stock_pvp", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Stock_precosemiva", TextBox10.Text);
        cmd.Parameters.AddWithValue("@Stock_quantidade", TextBox11.Text);
        cmd.Parameters.AddWithValue("@LocalID", DropDownList1.ToString());

        cmd.Parameters.AddWithValue("@acao", "INSERT");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }
    protected void editar_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Stock_Armazems";
        //cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));

        cmd.Parameters.AddWithValue("@Stock_Referencia", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Stock_Nome", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Stock_tamanho", TextBox7.Text);
        cmd.Parameters.AddWithValue("@Stock_pvp", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Stock_precosemiva", TextBox10.Text);
        cmd.Parameters.AddWithValue("@Stock_quantidade", TextBox11.Text);
        cmd.Parameters.AddWithValue("@LocalID", DropDownList1.ToString());

        cmd.Parameters.AddWithValue("@acao", "UPDATE");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }
    protected void remover_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "produtos_CRUD";
        cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));
        cmd.Parameters.AddWithValue("@acao", "DELETE");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(DropDownList1.SelectedValue))
        {
            //var dbPath = Server.MapPath(@"\App_Data\aspnet-Login_Stock-ec3af6c9-f9ed-4db7-8df3-f879cb7b3a64.mdf");
            //var scon = "Data Source=.\\SQLEXPRESS;AttachDbFilename='" + dbPath + "';Integrated Security=True;User Instance=True";
            var cmd = "SELECT * FROM Artigos WHERE Local_Nome= '" + DropDownList1.SelectedValue + "'";

            var dt = new DataTable();
            var da = new SqlDataAdapter(cmd, strcon);
            da.Fill(dt);

            grelhasock.DataSource = dt;
            grelhasock.DataBind();
        }
    }
}