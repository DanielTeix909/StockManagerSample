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

        cmd.Parameters.AddWithValue("@Evento_Nome", txtnevento.Text);
        cmd.Parameters.AddWithValue("@Evento_Local", txtdataevento.Text);
        cmd.Parameters.AddWithValue("@Evento_Data", txtdataevento.Text);
        cmd.Parameters.AddWithValue("@Evento_IMG", txtlinkimg.Text);

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

        cmd.Parameters.AddWithValue("@Evento_Nome", txtnevento.Text);
        cmd.Parameters.AddWithValue("@Evento_Local", txtlocal.Text);
        cmd.Parameters.AddWithValue("@Evento_Data", txtdataevento.Text);
        cmd.Parameters.AddWithValue("@Evento_IMG", txtlinkimg.Text);

        cmd.Parameters.AddWithValue("@acao", "UPDATE");

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        grelhasock.DataBind();
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtnevento.Text = grelhasock.SelectedRow.Cells[1].Text;
        txtdataevento.Text = grelhasock.SelectedRow.Cells[2].Text;
        txtlocal.Text = grelhasock.SelectedRow.Cells[3].Text;
        txtlinkimg.Text = grelhasock.SelectedRow.Cells[4].Text;

    }
    protected void grelhasock_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int customerId = Convert.ToInt32(grelhasock.DataKeys[e.RowIndex].Values[0]);

        using (SqlConnection con = new SqlConnection(strcon))
        {
            using (SqlCommand cmd = new SqlCommand("Eventos"))
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