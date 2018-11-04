using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Account_Eventos : System.Web.UI.Page
{
    private string strcon = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "CRUD_Eventos";
        //cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));

        cmd.Parameters.AddWithValue("@Evento_Nome", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Evento_Local", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Evento_Data", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Evento_IMG", TextBox4.Text);

        cmd.Parameters.AddWithValue("@acao", "INSERT");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }

    protected void txt_edit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "CRUD_Eventos";
        //cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));

        cmd.Parameters.AddWithValue("@Evento_Nome", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Evento_Local", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Evento_Data", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Evento_IMG", TextBox4.Text);

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
        cmd.CommandText = "Stock_Armazems";
        cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));
        cmd.Parameters.AddWithValue("@acao", "DELETE");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        TextBox1.Text = grelhasock.SelectedRow.Cells[1].Text;
        TextBox2.Text = grelhasock.SelectedRow.Cells[2].Text;
        TextBox3.Text = grelhasock.SelectedRow.Cells[3].Text;
        TextBox4.Text = grelhasock.SelectedRow.Cells[4].Text;

    }
}