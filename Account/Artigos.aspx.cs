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
   private int a;

    protected void Page_Load(object sender, EventArgs e)
    {
    }
 

    protected void txt_edit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "CRUD_Artigos";
        //cmd.Parameters.AddWithValue("@id", Convert.ToInt16(grelhasock.SelectedRow.Cells[1].Text));

        cmd.Parameters.AddWithValue("@Artigo_Nome", txtnartigo.Text);
        cmd.Parameters.AddWithValue("@Artigo_Preco", txtpreco.Text);
        cmd.Parameters.AddWithValue("@Artigo_Referencia", txtreferencia.Text);
        cmd.Parameters.AddWithValue("@Artigo_PVP", txtpvp.Text);
        cmd.Parameters.AddWithValue("@Artigo_PrecoSemiva", txtsemiva.Text);
        cmd.Parameters.AddWithValue("@Artigo_Quantidade", txtstock.Text);
        cmd.Parameters.AddWithValue("@Local_Nome", DropDownList1.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@acao", "UPDATE");

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

        cmd.Parameters.AddWithValue("@Artigo_Nome", txtnartigo.Text);
        cmd.Parameters.AddWithValue("@Artigo_Preco", txtpreco.Text);
        cmd.Parameters.AddWithValue("@Artigo_Referencia", txtreferencia.Text);
        cmd.Parameters.AddWithValue("@Artigo_PVP", txtpvp.Text);
        cmd.Parameters.AddWithValue("@Artigo_PrecoSemiva", txtsemiva.Text);
        cmd.Parameters.AddWithValue("@Artigo_Quantidade", txtstock.Text);
        cmd.Parameters.AddWithValue("@Local_Nome", DropDownList1.SelectedValue.ToString());
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
            grelhasock.DataSourceID = "";

            grelhasock.DataSource = dt;
            grelhasock.DataBind();

        }
    }
    protected void grelhasock_SelectedIndexChanged(object sender, EventArgs e)
    {

        //txtnartigo.Text = grelhasock.SelectedRow.Cells[1].Text;
        //txtpreco.Text = grelhasock.SelectedRow.Cells[2].Text;
        //txtreferencia.Text = grelhasock.SelectedRow.Cells[3].Text;
        //txtpvp.Text = grelhasock.SelectedRow.Cells[4].Text;
        //txtsemiva.Text = grelhasock.SelectedRow.Cells[5].Text;
        //txtstock.Text = grelhasock.SelectedRow.Cells[6].Text;
        //string Artigo_Nome = (row.FindControl("Artigo_Nome") as TextBox).Text;
        //string Artigo_Preco = (row.FindControl("Artigo_Preco") as TextBox).Text;
        //string Artigo_Referencia = (row.FindControl("Artigo_Referencia") as TextBox).Text;
        //string Artigo_PVP = (row.FindControl("Artigo_PVP") as TextBox).Text;
        //string Artigo_PrecoSemiva = (row.FindControl("Artigo_PrecoSemiva") as TextBox).Text;
        //string Artigo_Quantidade = (row.FindControl("Artigo_Quantidade") as TextBox).Text;
        //string LocalID = (row.FindControl("LocalID") as TextBox).Text;


        GridViewRow row = grelhasock.SelectedRow;

        //now get the labels
        Label Artigo_Nome = row.FindControl("Artigo_Nome") as Label;
        Label Artigo_Preco = row.FindControl("Artigo_Preco") as Label;
        Label Artigo_Referencia = row.FindControl("Artigo_Referencia") as Label;
        Label Artigo_PVP = row.FindControl("Artigo_PVP") as Label;
        Label Artigo_PrecoSemiva = row.FindControl("Artigo_PrecoSemiva") as Label;
        Label Artigo_Quantidade = row.FindControl("Artigo_Quantidade") as Label;

        //get the values from labels and assign them to textboxes
        txtnartigo.Text = Artigo_Nome.ToString();
        txtpreco.Text = Artigo_Preco.ToString();
        txtreferencia.Text = Artigo_Referencia.ToString();
        txtpvp.Text = Artigo_PVP.ToString();
        txtsemiva.Text = Artigo_PrecoSemiva.ToString();
        txtstock.Text = Artigo_Quantidade.ToString();
       
    }

    protected void grelhasock_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        a++;
        txtstock.Text = a.ToString();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        a--;
        txtstock.Text = a.ToString();
    }
    protected void grelhasock_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grelhasock.EditIndex = e.NewEditIndex;
    }
    protected void grelhasock_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
    
        GridViewRow row = grelhasock.Rows[e.RowIndex];
        int Id_Artigo = Convert.ToInt32(grelhasock.DataKeys[e.RowIndex].Values[0]);
        string Artigo_Nome = (row.FindControl("Artigo_Nome") as TextBox).Text;
        string Artigo_Preco = (row.FindControl("Artigo_Preco") as TextBox).Text;
        string Artigo_Referencia = (row.FindControl("Artigo_Referencia") as TextBox).Text;
        string Artigo_PVP = (row.FindControl("Artigo_PVP") as TextBox).Text;
        string Artigo_PrecoSemiva = (row.FindControl("Artigo_PrecoSemiva") as TextBox).Text;
        string Artigo_Quantidade = (row.FindControl("Artigo_Quantidade") as TextBox).Text;
        string LocalID = (row.FindControl("LocalID") as TextBox).Text;

        using (SqlConnection con = new SqlConnection(strcon))
        {
            using (SqlCommand cmd = new SqlCommand("CRUD_Artigos"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@acao", "UPDATE");
                cmd.Parameters.AddWithValue("@Id_Artigo", Id_Artigo);
                cmd.Parameters.AddWithValue("@Artigo_Nome", Artigo_Nome);
                cmd.Parameters.AddWithValue("@Artigo_Preco", Artigo_Preco);
                cmd.Parameters.AddWithValue("@Artigo_Referencia", Artigo_Referencia);
                cmd.Parameters.AddWithValue("@Artigo_PVP", Artigo_PVP);
                cmd.Parameters.AddWithValue("@Artigo_PrecoSemiva", Artigo_PrecoSemiva);
                cmd.Parameters.AddWithValue("@Artigo_Quantidade", Artigo_Quantidade);
                cmd.Parameters.AddWithValue("@LocalID", LocalID);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        grelhasock.EditIndex = -1;
    }
    protected void grelhasock_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int customerId = Convert.ToInt32(grelhasock.DataKeys[e.RowIndex].Values[0]);

        using (SqlConnection con = new SqlConnection(strcon))
        {
            using (SqlCommand cmd = new SqlCommand("CRUD_Artigos"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@acao", "DELETE");
                cmd.Parameters.AddWithValue("@Id_Artigo", customerId);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
 
    }
    protected void grelhasock_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != grelhasock.EditIndex)
        //{
        //    (e.Row.Cells[2].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
        //}
    }
    protected void grelhasock_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }
    protected void grelhasock_DataBound(object sender, EventArgs e)
    {

    }
    protected void grelhasock_PageIndexChanged(object sender, EventArgs e)
    {

    }
}