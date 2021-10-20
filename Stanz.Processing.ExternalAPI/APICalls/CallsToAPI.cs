using Newtonsoft.Json;
using Stanz.Standard.Models.ExternalAPI;
using Stanz.Standard.Models.ExternalAPI.BasicFinancials;
using System;
using System.Collections.Generic;
using System.Net;
using System.Text;
using static Stanz.Standard.Models.ExternalAPI.CompanyFinancials.FinancialBalanceSheet;

namespace Stanz.Processing.ExternalAPI.APICalls
{
    public class CallsToAPI
    {
        public SymbolLookup GetSymbolLookupDataFromAPI(string symbol)
        {
            using (WebClient wc = new WebClient())
            {
                string connUrl = ExternAPILinkContainer.GetStockLookupLink(symbol);
                var symbolLookupJson = wc.DownloadString(connUrl);
                var symbolLookupRoot = JsonConvert.DeserializeObject<SymbolLookup>(symbolLookupJson);
                return symbolLookupRoot;
            }
        }

        // Company Profile
        public CompanyProfile GetBasicCompanyProfileFromAPI(string tickr)
        {
            using (WebClient wc = new WebClient())
            {
                string connUrl = ExternAPILinkContainer.GetCompanyProfileLink(tickr);
                var compProfileJson = wc.DownloadString(connUrl);
                var compProfileRoot = JsonConvert.DeserializeObject<CompanyProfile>(compProfileJson);
                return compProfileRoot;
            }
        }

        // Company News
        public List<CompanyNews> GetCompanyNewsFromAPI(string tickr, DateTime fromDate, DateTime toDate)
        {
            using (WebClient wc = new WebClient())
            {
                var toDateString = toDate.ToString("yyyy-MM-dd");
                var fromDateString = fromDate.ToString("yyyy-MM-dd");
                string connUrl = ExternAPILinkContainer.GetCompanyNewsLink(tickr, fromDateString, toDateString);
                var compnewsJson = wc.DownloadString(connUrl);
                var compnewsRoot = JsonConvert.DeserializeObject<List<CompanyNews>>(compnewsJson);
                return compnewsRoot;
            }
        }

        

        // Company Basic Financials
        public BasicFinancialsRoot GetCompanyBasicFinancialsFromAPI(string tickr)
        {
            using (WebClient wc = new WebClient())
            {
                string connUrl = ExternAPILinkContainer.GetCompanyBasicFinancialsLink(tickr);
                var compbfnsJson = wc.DownloadString(connUrl);
                var compbfnsRoot = JsonConvert.DeserializeObject<BasicFinancialsRoot>(compbfnsJson);
                return compbfnsRoot;
            }
        }

        public BSFinancialRoot GetFinancialBalanceSheetFromAPI(string tickr, string frequency)
        {
            using (WebClient wc = new WebClient())
            {
                string connUrl = ExternAPILinkContainer.GetFinancialBalanceSheetLink(tickr, frequency);
                var bsfnsJson = wc.DownloadString(connUrl);
                var bsfnsRoot = JsonConvert.DeserializeObject<BSFinancialRoot>(bsfnsJson);
                return bsfnsRoot;
            }
        }
    }
}
