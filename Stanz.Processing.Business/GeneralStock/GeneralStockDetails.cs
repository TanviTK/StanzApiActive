using Stanz.Database.Repository.Repos;
using Stanz.Processing.ExternalAPI.APICalls;
using Stanz.Standard.Models.ExternalAPI;
using Stanz.Standard.Models.ExternalAPI.CompanyFinancials;
using System;
using System.Collections.Generic;
using System.Text;
using static Stanz.Standard.Models.ExternalAPI.CompanyFinancials.FinancialBalanceSheet;

namespace Stanz.Processing.Business.GeneralStock
{
    public class GeneralStockDetails
    {
        public CallsToAPI callsToAPI { get; set; }
        public MiscellaneousRepo miscRepo { get; set; }
        public CompanyRepo compRepo { get; set; }

        public GeneralStockDetails()
        {
            callsToAPI = new CallsToAPI();
            miscRepo = new MiscellaneousRepo();
            compRepo = new CompanyRepo();
        }

        public SymbolLookup GetBasicStockInfo(string symbol)
        {
            var data = callsToAPI.GetSymbolLookupDataFromAPI(symbol);
            return data;
        }
        public CompanyProfile GetCompanyProfile(string symbol)
        {
            var data = callsToAPI.GetBasicCompanyProfileFromAPI(symbol);
            return data;
        }
        public List<CompanyNews> GetCompanyNews(string symbol, DateTime fromdate, DateTime toDate, bool updateData = false)
        {
            List<CompanyNews> data = new List<CompanyNews>();
            var lastUpdatedDate = miscRepo.GetDataLastUpdatedForTickrandTable("CompanyNews", symbol);
            if (lastUpdatedDate == DateTime.MinValue || DateTime.Now.AddHours(-1) <= lastUpdatedDate)
            {
                data = callsToAPI.GetCompanyNewsFromAPI(symbol, fromdate, toDate);
                // insert data
                miscRepo.InsertDataLastUpdatedTable("CompanyNews", symbol);
            }
            else
            {
                data = compRepo.GetCompanyNewsDataForTickr(fromdate, symbol);
            }

            return data;
        }

        public string GetCompanyBasicFinancials(string symbol)
        {
            var basicFinancialsFromAPI = callsToAPI.GetCompanyBasicFinancialsFromAPI(symbol);
            compRepo.InsertBasicFinancialsToDB(basicFinancialsFromAPI);

            return null;
        }


        public string GetCompanysFinancialBalanceSheet(string symbol, string freq = "annual")
        {
            BSFinancialRoot bsFinancialRoot = callsToAPI.GetFinancialBalanceSheetFromAPI(symbol, freq);
            compRepo.InsertFinancialBalanceSheetToDB(bsFinancialRoot, freq);
            return null;
        }
    }
}
