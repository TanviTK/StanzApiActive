using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Stanz.Database.Repository
{
    public class SQLKit
    {
        public string Server { get; set; }
        public string DataBase { get; set; }
        public SQLKit()
        {
            Server = ".";
            DataBase = "Stanz";
        }
        public string GetConnectionString()
        {
            string ConnString = "";
            try
            {
                SqlConnectionStringBuilder csBuilder = new SqlConnectionStringBuilder();
                if (!String.IsNullOrWhiteSpace(DataBase))
                {
                    csBuilder.InitialCatalog = DataBase;
                }
                csBuilder.DataSource = Server;
                csBuilder.PersistSecurityInfo = false;
                csBuilder.IntegratedSecurity = true;
                ConnString = csBuilder.ConnectionString;
            }
            catch (Exception ex)
            {
                ConnString = "";
            }
            return ConnString;
        }

        public void InsertDataToSqlUsingStoreProc(string procedureName, SqlParameter sqlParameter)
        {
            string ConnectionStr = this.GetConnectionString();
            using (SqlConnection connection = new SqlConnection(ConnectionStr))
            {
                using (SqlCommand command = new SqlCommand(procedureName.Trim(), connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add(sqlParameter);
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }

        }

        public DataTable GetDataFromSQLUsingStoreProc(string procedureName, SqlParameter sqlParameter = null)
        {
            DataTable dt = new DataTable();
            string ConnectionStr = this.GetConnectionString();
            using (SqlConnection connection = new SqlConnection(ConnectionStr))
            {
                using (SqlCommand command = new SqlCommand(procedureName.Trim(), connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    if (sqlParameter != null)
                    {
                        command.Parameters.Add(sqlParameter);
                    }
                    connection.Open();
                    using (SqlDataAdapter da = new SqlDataAdapter(command))
                    {

                        da.Fill(dt);
                    }
                    connection.Close();
                }
            }

            return dt;

         

        }
    }
}
