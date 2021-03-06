using System;
using System.Collections.Generic;
using System.Text;

namespace Stanz.Standard.Models.ExternalAPI
{
    public class CompanyProfile
    {
        public string country { get; set; }
        public string currency { get; set; }
        public string exchange { get; set; }
        public string finnhubIndustry { get; set; }
        public string ipo { get; set; }
        public string logo { get; set; }
        public int marketCapitalization { get; set; }
        public string name { get; set; }
        public string phone { get; set; }
        public double shareOutstanding { get; set; }
        public string ticker { get; set; }
        public string weburl { get; set; }
    }
}
