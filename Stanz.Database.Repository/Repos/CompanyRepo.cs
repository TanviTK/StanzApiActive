using Newtonsoft.Json;
using Stanz.Standard.Models.ExternalAPI;
using Stanz.Standard.Models.ExternalAPI.BasicFinancials;
using Stanz.Standard.Models.Other.SQL.BasicFinancials;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using static Stanz.Standard.Models.Constants.COMPANY;
using static Stanz.Standard.Models.ExternalAPI.CompanyFinancials.FinancialBalanceSheet;

namespace Stanz.Database.Repository.Repos
{
    public class CompanyRepo
    {
        public SQLKit SqlKit { get; set; }

        public CompanyRepo()
        {
            SqlKit = new SQLKit();
        }
        #region CompanyNews
        public List<CompanyNews> GetAllCompanyNews(DateTime dateTime)
        {
            return this.GetCompanyNewsDataForTickr(dateTime, null, "GetCompanyNewsFromDate");
        }

        public List<CompanyNews> GetCompanyNewsDataForTickr(DateTime fromDate, string Tickr = null, string procedureName = "GetCompanyNewsFromDateForTickr")
        {
            string ConnectionStr = SqlKit.GetConnectionString();

            SqlConnection connection = new SqlConnection(ConnectionStr);

            SqlCommand command = new SqlCommand(procedureName, connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.Add("@FromDateNewsWasPublished", SqlDbType.Int).Value = fromDate.Ticks;
            if (!String.IsNullOrEmpty(Tickr))
            {
                command.Parameters.Add("@Tickr", SqlDbType.VarChar).Value = Tickr;
            }
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<CompanyNews> cnTableList = new List<CompanyNews>();
            CompanyNews cnTableInfo = null;
            while (reader.Read())
            {
                cnTableInfo = new CompanyNews();
                cnTableInfo.category = reader["Category"].ToString();
                cnTableInfo.datetime = Convert.ToInt32(reader["DateNewsWasPublished"]);
                cnTableInfo.headline = reader["HeadLine"].ToString();
                cnTableInfo.id = Convert.ToInt32(reader["NewsOnlineId"]);
                cnTableInfo.image = reader["ImageURL"].ToString();
                cnTableInfo.related = reader["Related"].ToString();
                cnTableInfo.source = reader["Source"].ToString();
                cnTableInfo.summary = reader["Summary"].ToString();
                cnTableInfo.url = reader["URL"].ToString();
                cnTableList.Add(cnTableInfo);
            }
            connection.Close();
            return cnTableList;
        }
        #endregion CompanyNews

        
        public void InsertBasicFinancialsToDB(BasicFinancialsRoot basicFinancialsRootData)
        {
            Metric metric = basicFinancialsRootData.Metric;
            List<Metric> metrics = new List<Metric>() { metric };
           
            DataTable dtMetric = JsonConvert.DeserializeObject<DataTable>(JsonConvert.SerializeObject(metrics));
            dtMetric = AddColumnToExistingDataTable(dtMetric, "Symbol", typeof(String), basicFinancialsRootData.Symbol);
            
            foreach (DataColumn dc in dtMetric.Columns)
            {
                dc.ColumnName = char.IsNumber(dc.ColumnName[0]) ? $"_{dc.ColumnName}" : dc.ColumnName;
            }

            SqlKit.InsertDataToSqlUsingStoreProc("finhub.[SPInsertBasicFinancialInfo]", new SqlParameter("@TypBasicFinancials", dtMetric));


        }

      

        public void InsertFinancialBalanceSheetToDB(BSFinancialRoot bsFinancialRoot, string freq)
        {
            List<BSFinancial> bsFinancials = bsFinancialRoot.BSFinancials;
            DataTable dtBSFinancials = JsonConvert.DeserializeObject<DataTable>(JsonConvert.SerializeObject(bsFinancials));
            dtBSFinancials = AddColumnToExistingDataTable(dtBSFinancials, "Symbol", typeof(String), bsFinancialRoot.Symbol);
            string frequency = freq.ToLower() == "annual" ? "A" : "Q"; 
            dtBSFinancials = AddColumnToExistingDataTable(dtBSFinancials, "Frequency", typeof(String), frequency, -1);
            SqlKit.InsertDataToSqlUsingStoreProc("finhub.[SPInsertFinancials_BalanceSheet]", new SqlParameter("@TypBSFinancials", dtBSFinancials));
        }

        private DataTable AddColumnToExistingDataTable(DataTable dt, string colName, Type colType, string defaultvalue = "" , int ordinalPosition= 0)
        {
            DataColumn symbolColumn = new DataColumn(colName, colType);
            symbolColumn.DefaultValue = defaultvalue;
            dt.Columns.Add(symbolColumn);
            if (ordinalPosition != -1)
            {
                symbolColumn.SetOrdinal(ordinalPosition);
            }
            return dt;
        }


       


        




    }
}
