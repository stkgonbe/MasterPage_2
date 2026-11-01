
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace MasterPage_2
{
    public partial class ogrencirapor : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(
            ConfigurationManager.ConnectionStrings[
                "OgrencikayitConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("ID");
                dt.Columns.Add("AD");
                dt.Columns.Add("Bolum");

                dt.Rows.Add("1", "Ayşe Erkan", "Bilgisayar Mühendisliği");
                dt.Rows.Add("2", "Mahmut Demirok", "Elektronik Mühendisliği");
                dt.Rows.Add("3", "Sevgi Çime", "Makine Mühendisliği");

                ViewState["listele"] = dt;

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
            {
                DataTable dt = (DataTable)ViewState["listele"];

                DataRow yeniSatir = dt.NewRow();

                yeniSatir["ID"] = TextBox1.Text;
                yeniSatir["AD"] = TextBox2.Text;
                yeniSatir["Bolum"] = TextBox3.Text;


                dt.Rows.InsertAt(yeniSatir, 3);

                ViewState["listele"] = dt;

                GridView1.DataSource = dt;
                GridView1.DataBind();

                Label4.Text = "Ekleme işlemi Tamamlandı.";




            }
            else
            {
                Label4.Text = "Eksik veri";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }
    }
}
