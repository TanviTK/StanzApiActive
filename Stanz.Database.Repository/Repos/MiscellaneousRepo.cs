using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Stanz.Database.Repository.Repos
{
    public class MiscellaneousRepo
    {
        public SQLKit SqlKit { get; set; }

        public MiscellaneousRepo()
        {
            SqlKit = new SQLKit();
        }

        #region DataLastUpdated
        public DateTime? GetDataLastUpdatedForTickrandTable(string TableName, string Tickr)
        {
            string ConnectionStr = SqlKit.GetConnectionString();

            SqlConnection connection = new SqlConnection(ConnectionStr);

            SqlCommand command = new SqlCommand("GetAllDataLastUpdatedForTableandTickr", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.Add("@Tablename", SqlDbType.VarChar).Value = TableName;
            command.Parameters.Add("@Tickr", SqlDbType.NVarChar).Value = Tickr;

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            DateTime? lastUpdatedDate = new DateTime();
            while (reader.Read())
            {
                lastUpdatedDate = (DateTime?)(reader["DateLastUpdated"] ?? new DateTime());
            }
            if (lastUpdatedDate != null)
            {
                var easternZone = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");
                lastUpdatedDate = TimeZoneInfo.ConvertTimeFromUtc(lastUpdatedDate.Value, easternZone);
            }

            return lastUpdatedDate;
        }

        public void InsertDataLastUpdatedTable(string tableName, string tickr)
        {
            var date = DateTime.Now.ToUniversalTime();
            try
            {
                string ConnectionStr = SqlKit.GetConnectionString();
                using (SqlConnection connection = new SqlConnection(ConnectionStr))
                {
                    using (SqlCommand command = new SqlCommand("UpdateDataLastUpdated", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@TableName", tableName);
                        command.Parameters.AddWithValue("@Tickr", tickr);
                        command.Parameters.AddWithValue("@DateTime", date);
                        connection.Open();
                        int result = command.ExecuteNonQuery();
                        connection.Close();
                    }
                }
            }
            catch (Exception ex)
            {
            }
        }
        #endregion DataLastUpdated
    }
}
