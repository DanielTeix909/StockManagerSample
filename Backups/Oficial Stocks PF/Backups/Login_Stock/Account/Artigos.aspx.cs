using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlClient;


public partial class Artigos : System.Web.UI.Page
{
    private string strcon = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txt_remov_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "CRUD_Artigos";
        cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));
        cmd.Parameters.AddWithValue("@acao", "DELETE");

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
        cmd.CommandText = "CRUD_Artigos";
        cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));
        cmd.Parameters.AddWithValue("@acao", "EDIT");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "CRUD_Artigos";
        //cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));

        cmd.Parameters.AddWithValue("@Artigo_Nome", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Artigo_Preco", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Artigo_Referencia", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Artigo_PVP", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Artigo_PrecoSemiva", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Artigo_Quantidade", TextBox6.Text);
        cmd.Parameters.AddWithValue("@LocalID", DropDownList1.ToString());
        cmd.Parameters.AddWithValue("@acao", "INSERT");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(DropDownList1.SelectedValue))
        {
            //var dbPath = Server.MapPath(@"\App_Data\aspnet-Login_Stock-ec3af6c9-f9ed-4db7-8df3-f879cb7b3a64.mdf");
            //var scon = "Data Source=.\\SQLEXPRESS;AttachDbFilename='" + dbPath + "';Integrated Security=True;User Instance=True";
            var cmd = "SELECT * FROM Artigos WHERE Local_Nome= '"+ DropDownList1.SelectedValue +"'";

            var dt = new DataTable();
            var da = new SqlDataAdapter(cmd, strcon);
            da.Fill(dt);

            grelhasock.DataSource = dt;
            grelhasock.DataBind();
        }
    }
    protected void grelhasock_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}