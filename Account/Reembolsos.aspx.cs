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
    private string strcon = WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

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

        cmd.Parameters.AddWithValue("@Stock_Referencia", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Stock_Nome", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Stock_tamanho", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Stock_pvp", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Stock_precosemiva", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Stock_quantidade", TextBox6.Text);
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

        cmd.Parameters.AddWithValue("@Stock_Referencia", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Stock_Nome", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Stock_tamanho", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Stock_pvp", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Stock_precosemiva", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Stock_quantidade", TextBox6.Text);
        cmd.Parameters.AddWithValue("@LocalID", DropDownList1.ToString());

        cmd.Parameters.AddWithValue("@acao", "UPDATE");

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
    protected void grelhasock_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = grelhasock.SelectedRow.Cells[1].Text;
        TextBox2.Text = grelhasock.SelectedRow.Cells[2].Text;
        TextBox3.Text = grelhasock.SelectedRow.Cells[3].Text;
        TextBox4.Text = grelhasock.SelectedRow.Cells[4].Text;
        TextBox3.Text = grelhasock.SelectedRow.Cells[5].Text;
        TextBox4.Text = grelhasock.SelectedRow.Cells[6].Text;
        TextBox3.Text = grelhasock.SelectedRow.Cells[7].Text;

    }
    protected void grelhasock_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int customerId = Convert.ToInt32(grelhasock.DataKeys[e.RowIndex].Values[0]);

        using (SqlConnection con = new SqlConnection(strcon))
        {
            using (SqlCommand cmd = new SqlCommand("reembolsos"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@acao", "DELETE");
                cmd.Parameters.AddWithValue("@Id", customerId);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}