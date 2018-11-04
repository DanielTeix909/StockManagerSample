using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Account_SpotSell : System.Web.UI.Page
{
    private string strcon = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Locais_Venda";
        //cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));

        cmd.Parameters.AddWithValue("@Local_Venda", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Zona_Venda", TextBox2.Text);

        cmd.Parameters.AddWithValue("@acao", "INSERT");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = grelhasock.SelectedRow.Cells[1].Text;
        TextBox2.Text = grelhasock.SelectedRow.Cells[2].Text;
    }
    protected void txt_edit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Locais_Venda";
        //cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));

        cmd.Parameters.AddWithValue("@Local_Venda", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Zona_Venda", TextBox2.Text);

        cmd.Parameters.AddWithValue("@acao", "UPDATE");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }
    protected void txt_remov_Click(object sender, EventArgs e)
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
}