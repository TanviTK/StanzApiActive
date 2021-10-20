using System;
using System.Collections.Generic;
using System.Text;

namespace Stanz.Standard.Models.Constants
{
    public static class COMPANY
    {
        public static class FinancialsFrequency
        {
            public static readonly string ANNUALL = "annual";
            public static readonly string QUARTERLY = "quarterly";
        }

        public static class FinancialsReportType
        {
            public static readonly string BALANCESHEET = "bs";
            public static readonly string CASHFLOW = "cf";
            public static readonly string INCOMESTATEMENTS = "ic";
        }
    }
}
