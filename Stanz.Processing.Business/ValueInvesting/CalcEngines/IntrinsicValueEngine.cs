using Stanz.Processing.Business.GeneralStock;
using Stanz.Standard.Models.Constants;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Stanz.Processing.Business.ValueInvesting.CalcEngines
{
    public class IntrinsicValueEngine
    {
        private readonly GeneralStockDetails gsDetails;

        public IntrinsicValueEngine()
        {
            gsDetails = new GeneralStockDetails();
        }

        //public IntrinsicValueOfCompanyResults GetIntrinsicValueResultsOfACompanyForInputs(string symbol)
        //{
        //    //var yearsInRange = Helper.General.GetYearsInRange(DateTime.Now.Year, DateTime.Now.Year +10 );
        //    //foreach(var year in yearsInRange)
        //    //{

        //    //}
        //    var reportType = COMPANY.FinancialsFrequency.QUARTERLY;
        //    var financials = gsDetails.GetCompanyFinancials(symbol, reportType);

        //    //var lastCycleData = financials.OrderByDescending(x => x.AcceptedDate).First();
        //    //Net Cash
        //    var bs = lastCycleData.FinancialReports.Where(rep => rep.ReportType == COMPANY.FinancialsReportType.BALANCESHEET);
        //    var cashAndCashEqu = bs.Single(r => r.Concept == "CashAndCashEquivalentsAtCarryingValue").Value;
        //    var currentMarketableSecurities = bs.Single(r => r.Concept == "MarketableSecuritiesCurrent").Value;
        //    var nonCurrentMarketableSecurities = bs.Single(r => r.Concept == "MarketableSecuritiesNoncurrent").Value;
        //    // Total Cash
        //    var totalCash = cashAndCashEqu + currentMarketableSecurities + nonCurrentMarketableSecurities;

        //    var currentLiabiities = bs.Single(r => r.Concept == "LiabilitiesCurrent").Value;

        //    //Net Cash = Cash Balance – Current Liabilities
        //    var netCash = totalCash - currentLiabiities;
        //    return null;
        //}


    }
}
