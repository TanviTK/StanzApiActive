using System;
using System.Collections.Generic;
using System.Text;

namespace Stanz.Processing.ExternalAPI.APICalls
{
    public class ExternAPILinkContainer
    {
        public static string FinhubApi = "https://finnhub.io/api/v1/";
        public static string GetStockLookupLink(string symbol)
        {
            return $"{FinhubApi}search?q={symbol}&token=c1kasqa37fkpcj5acef0";
        }
        public static string GetCompanyProfileLink(string tickr)
        {
            return $"{FinhubApi}stock/profile2?symbol={tickr}&token=c1kasqa37fkpcj5acef0";
        }
        public static string GetCompanyNewsLink(string tickr, string fromDate, string toDate)
        {
            return $"{FinhubApi}company-news?symbol={tickr}&from={fromDate}&to={toDate}&token=c1kasqa37fkpcj5acef0";
        }
        public static string GetCompanyFinancialsLink(string tickr, string frequency = null)
        {
            if (frequency == null)
            {
                return $"{FinhubApi}stock/financials-reported?symbol={tickr}&token=c1kasqa37fkpcj5acef0";
            }
            else
            {
                return $"{FinhubApi}stock/financials-reported?symbol={tickr}&freq={frequency}&token=c1kasqa37fkpcj5acef0";
            }
        }

        public static string GetCompanyBasicFinancialsLink(string tickr)
        {
            return $"{FinhubApi}stock/metric?symbol={tickr}&metric=all&token=c1kasqa37fkpcj5acef0";
        }
        public static string GetFinancialBalanceSheetLink(string tickr, string frequency)
        {
            return $"{FinhubApi}stock/financials?symbol={tickr}&statement=bs&freq={frequency}&token=c1kasqa37fkpcj5acef0";
        }
    }
}
