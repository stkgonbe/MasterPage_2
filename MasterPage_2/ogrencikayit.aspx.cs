
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace MasterPage_2
{
    public partial class ogrencikayit : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string adSoyad = TextBox1.Text.Trim();
            string ogrenciNo = TextBox2.Text.Trim();
            string dogumYeri = DropDownList1.SelectedValue;

            if (string.IsNullOrWhiteSpace(adSoyad) ||
                string.IsNullOrWhiteSpace(ogrenciNo) ||
                string.IsNullOrWhiteSpace(dogumYeri))
            {
                Label1.Text = "Lütfen bütün alanları doldurun.";
                return;
            }

            string baglantiCumlesi =
                ConfigurationManager
                .ConnectionStrings["Ogrencikayit"]
                .ConnectionString;

            try
            {
                using (SqlConnection baglanti =
                       new SqlConnection(baglantiCumlesi))
                {
                    string sorgu = @"
                        INSERT INTO Ogrenciler
                            (AdSoyad, OgrenciNo, DogumYeri)
                        VALUES
                            (@AdSoyad, @OgrenciNo, @DogumYeri)";

                    using (SqlCommand komut =
                           new SqlCommand(sorgu, baglanti))
                    {
                        komut.Parameters.Add(
                            "@AdSoyad", SqlDbType.NVarChar, 100
                        ).Value = adSoyad;

                        komut.Parameters.Add(
                            "@OgrenciNo", SqlDbType.NVarChar, 20
                        ).Value = ogrenciNo;

                        komut.Parameters.Add(
                            "@DogumYeri", SqlDbType.NVarChar, 50
                        ).Value = dogumYeri;

                        baglanti.Open();
                        komut.ExecuteNonQuery();
                    }
                }

                Label1.Text = "Öğrenci başarıyla kaydedildi!";

                TextBox1.Text = "";
                TextBox2.Text = "";
                DropDownList1.SelectedIndex = 0;
            }
            catch (SqlException ex)
            {
                if (ex.Number == 2601 || ex.Number == 2627)
                {
                    Label1.Text =
                        "Bu öğrenci numarası daha önce kaydedilmiş.";
                }
                else
                {
                    Label1.Text =
                        "Veritabanına kayıt sırasında hata oluştu.";
                }
            }
            catch (Exception)
            {
                Label1.Text = "Beklenmeyen bir hata oluştu.";
            }
        }
    }
}
