using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Stanz.Database.Repository;
using Stanz.Processing.Business.GeneralStock;
using Stanz.Standard.Models.Constants;
using Stanz.Standard.Models.ExternalAPI;
using Stanz.Standard.Models.Other.SQL.BasicFinancials;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace StanzApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TestController : ControllerBase
    {
        private readonly GeneralStockDetails gsDetails;

        public TestController()
        {
            gsDetails = new GeneralStockDetails();
        }

        [HttpGet("{procname}")]
        [Route("{procname}")]
        public string Get(string procname)
        {
            //var symbol = "AAPL";
            //var data = gsDetails.GetBasicStockInfo(symbol);
            //return data;
            if(procname == "testproc")
            {

            }
            string data = "{\"root\":[{\"Tickr\":\"aapl\"},{\"Tickr\":\"tsla\"},{\"Tickr\":\"nio\"},{\"Tickr\":\"baba\"},{\"Tickr\":\"pltr\"}]}";

            string dataBS = "{\"root\":[{\"Tickr\":\"aapl\", \"IncludeQuarterly\":\"false\", \"IncludeAnnual\":\"true\"}]}";

            SQLKit SqlKit = new SQLKit();
            DataTable dtTickrsBasicFinancialInfo = new DataTable();

            var procedureName = "finhub.[SPGetBasicFinancialInfo]";

            var procedureNameBS = "finhub.[SPGetFinancials_BalanceSheet]";

            string ConnectionStr = SqlKit.GetConnectionString();
            SqlConnection connection = new SqlConnection(ConnectionStr);
            SqlCommand command = new SqlCommand(procedureNameBS, connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add(new SqlParameter("@UIData", dataBS));
            connection.Open();
            using (SqlDataAdapter da = new SqlDataAdapter(command))
            {
               
                da.Fill(dtTickrsBasicFinancialInfo);
            }
            connection.Close();

            //var dataToSend = from dtbs in dtTickrsBasicFinancialInfo.AsEnumerable()
            //                 select new
            //                 {
            //                     Symbol = dtbs.Field<string>("Symbol"),
            //                     _52WeekHigh = dtbs.Field<double?>("_52WeekHigh"),
            //                     _52WeekLow = dtbs.Field<double?>("_52WeekLow"),
            //                     _52WeekPriceReturnDaily = dtbs.Field<double?>("_52WeekPriceReturnDaily"),
            //                     BookValuePerShareAnnual = dtbs.Field<double?>("BookValuePerShareAnnual"),
            //                     BookValuePerShareQuarterly = dtbs.Field<double?>("BookValuePerShareQuarterly"),
            //                     EpsGrowth5Y = dtbs.Field<double?>("EpsGrowth5Y"),
            //                     FreeCashFlowAnnual = dtbs.Field<double?>("FreeCashFlowAnnual"),
            //                     GrossMargin5Y = dtbs.Field<double?>("GrossMargin5Y"),
            //                 };

            return JsonConvert.SerializeObject(dtTickrsBasicFinancialInfo);
        }

        //[HttpGet("{tickr}")]
        //[Route("GetCompanyNews/{tickr:string}")]
        //public List<CompanyNews> Get(string tickr)
        //{
        //    //var fromDate = DateTime.Now.AddDays(-1);
        //    //var data = gsDetails.GetCompanyNews(tickr, fromDate, DateTime.Now);

        //    //----insert basic financials
        //    var reportType = COMPANY.FinancialsFrequency.QUARTERLY;
        //    var financials = gsDetails.GetCompanyBasicFinancials(tickr);

        //    //var bsfinancial = gsDetails.GetCompanysFinancialBalanceSheet(tickr);


        //    return null;
        
        //}
    }
}
