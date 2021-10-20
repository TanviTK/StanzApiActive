using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace Stanz.Standard.Models.ExternalAPI.CompanyFinancials
{
    public class FinancialBalanceSheet
    {
        public class BSFinancial
        {
            [JsonProperty("accountsPayable")]
            public object AccountsPayable { get; set; }

            [JsonProperty("accountsReceivables")]
            public object AccountsReceivables { get; set; }

            [JsonProperty("accruedLiability")]
            public object AccruedLiability { get; set; }

            [JsonProperty("accumulatedDepreciation")]
            public object AccumulatedDepreciation { get; set; }

            [JsonProperty("additionalPaidInCapital")]
            public object AdditionalPaidInCapital { get; set; }

            [JsonProperty("cash")]
            public object Cash { get; set; }

            [JsonProperty("cashEquivalents")]
            public object CashEquivalents { get; set; }

            [JsonProperty("cashShortTermInvestments")]
            public object CashShortTermInvestments { get; set; }

            [JsonProperty("commonStock")]
            public object CommonStock { get; set; }

            [JsonProperty("currentAssets")]
            public object CurrentAssets { get; set; }

            [JsonProperty("currentLiabilities")]
            public object CurrentLiabilities { get; set; }

            [JsonProperty("currentPortionLongTermDebt")]
            public object CurrentPortionLongTermDebt { get; set; }

            [JsonProperty("deferredIncomeTax")]
            public object DeferredIncomeTax { get; set; }

            [JsonProperty("intangiblesAssets")]
            public object IntangiblesAssets { get; set; }

            [JsonProperty("inventory")]
            public object Inventory { get; set; }

            [JsonProperty("liabilitiesShareholdersEquity")]
            public object LiabilitiesShareholdersEquity { get; set; }

            [JsonProperty("longTermDebt")]
            public object LongTermDebt { get; set; }

            [JsonProperty("longTermInvestments")]
            public object LongTermInvestments { get; set; }

            [JsonProperty("minorityInterest")]
            public object MinorityInterest { get; set; }

            [JsonProperty("noteReceivableLongTerm")]
            public object NoteReceivableLongTerm { get; set; }

            [JsonProperty("otherAssets")]
            public object OtherAssets { get; set; }

            [JsonProperty("otherCurrentAssets")]
            public object OtherCurrentAssets { get; set; }

            [JsonProperty("otherCurrentliabilities")]
            public object OtherCurrentliabilities { get; set; }

            [JsonProperty("otherEquity")]
            public object OtherEquity { get; set; }

            [JsonProperty("otherLiabilities")]
            public object OtherLiabilities { get; set; }

            [JsonProperty("otherLongTermAssets")]
            public object OtherLongTermAssets { get; set; }

            [JsonProperty("otherReceivables")]
            public object OtherReceivables { get; set; }

            [JsonProperty("period")]
            public string Period { get; set; }

            [JsonProperty("propertyPlantEquipment")]
            public object PropertyPlantEquipment { get; set; }

            [JsonProperty("retainedEarnings")]
            public object RetainedEarnings { get; set; }

            [JsonProperty("sharesOutstanding")]
            public object SharesOutstanding { get; set; }

            [JsonProperty("shortTermDebt")]
            public object ShortTermDebt { get; set; }

            [JsonProperty("shortTermInvestments")]
            public object ShortTermInvestments { get; set; }

            [JsonProperty("tangibleBookValueperShare")]
            public double TangibleBookValueperShare { get; set; }

            [JsonProperty("totalAssets")]
            public object TotalAssets { get; set; }

            [JsonProperty("totalDebt")]
            public object TotalDebt { get; set; }

            [JsonProperty("totalEquity")]
            public object TotalEquity { get; set; }

            [JsonProperty("totalLiabilities")]
            public object TotalLiabilities { get; set; }

            [JsonProperty("totalReceivables")]
            public object TotalReceivables { get; set; }

            [JsonProperty("treasuryStock")]
            public object TreasuryStock { get; set; }

            [JsonProperty("unrealizedProfitLossSecurity")]
            public object UnrealizedProfitLossSecurity { get; set; }

            [JsonProperty("year")]
            public object Year { get; set; }


         

        }

        public class BSFinancialRoot
        {
            [JsonProperty("financials")]
            public List<BSFinancial> BSFinancials { get; set; }

            [JsonProperty("symbol")]
            public string Symbol { get; set; }
        }

    }
}
