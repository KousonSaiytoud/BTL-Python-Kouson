using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoxRateMoneyWeb
{
    public partial class api : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetForexRates();
            }
        }

        void GetForexRates()
        {
            List<ForexRate> forexRatesls = new List<ForexRate>();
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand("SP_Money", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@action", "GetRateMoney");

                        connection.Open();

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ForexRate rate = new ForexRate();
                                rate.Id = Convert.ToInt32(reader["id"]);
                                rate.BaseKipLao = reader["base_kip_lao"].ToString();
                                rate.RateKipToVn = Convert.ToDouble(reader["rate_kip_to_vn"]);
                                rate.UpdateAt = Convert.ToDateTime(reader["update_at"]);
                                forexRatesls.Add(rate);
                            }
                        }
                    }
                }

                string jsonResponse = JsonConvert.SerializeObject(forexRatesls);
                Response.Write(jsonResponse);
            }
            catch (Exception ex)
            {
                Response.StatusCode = 500; 
                Response.Write("An error occurred while fetching data."+ex);
            }
        }
    }
    public class ForexRate
    {
        public int Id { get; set; }
        public string BaseKipLao { get; set; }
        public double RateKipToVn { get; set; }
        public DateTime UpdateAt { get; set; }
    }
}