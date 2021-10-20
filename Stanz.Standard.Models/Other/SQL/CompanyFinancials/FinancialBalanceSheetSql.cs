using System;
using System.Collections.Generic;
using System.Text;

namespace Stanz.Standard.Models.Other.SQL.CompanyFinancials
{
    public class FinancialBalanceSheetSql
    {
        public string Symbol { get; set;  }
        public double? AccountsPayable { get; set; }
        public double? AccountsReceivables { get; set; }
        public double? AccruedLiability { get; set; }
        public double? AccumulatedDepreciation { get; set; }
        public double? AdditionalPaidInCapital { get; set; }
        public double? Cash { get; set; }
        public double? CashEquivalents { get; set; }
        public double? CashShortTermInvestments { get; set; }
        public double? CommonStock { get; set; }
        public double? CurrentAssets { get; set; }
        public double? CurrentLiabilities { get; set; }
        public double? CurrentPortionLongTermDebt { get; set; }
        public double? DeferredIncomeTax { get; set; }
        public double? IntangiblesAssets { get; set; }
        public double? Inventory { get; set; }
        public double? LiabilitiesShareholdersEquity { get; set; }
        public double? LongTermDebt { get; set; }
        public double? LongTermInvestments { get; set; }
        public double? MinorityInterest { get; set; }
        public double? NoteReceivableLongTerm { get; set; }
        public double? OtherAssets { get; set; }
        public double? OtherCurrentAssets { get; set; }
        public double? OtherCurrentliabilities { get; set; }
        public double? OtherEquity { get; set; }
        public double? OtherLiabilities { get; set; }
        public double? OtherLongTermAssets { get; set; }
        public double? OtherReceivables { get; set; }
        public string Period { get; set; }
        public double? PropertyPlantEquipment { get; set; }
        public double? RetainedEarnings { get; set; }
        public double? SharesOutstanding { get; set; }
        public double? ShortTermDebt { get; set; }
        public double? ShortTermInvestments { get; set; }
        public double? TangibleBookValueperShare { get; set; }
        public double? TotalAssets { get; set; }
        public double? TotalDebt { get; set; }
        public double? TotalEquity { get; set; }
        public double? TotalLiabilities { get; set; }
        public double? TotalReceivables { get; set; }
        public double? TreasuryStock { get; set; }
        public double? UnrealizedProfitLossSecurity { get; set; }
        public double? Year { get; set; }
        public string Frequency { get; set; }
    }
}
