using System;
using System.Collections.Generic;
using System.Text;

namespace Stanz.Standard.Models.ExternalAPI
{
    public class SymbolLookupDetails
    {
        public string description { get; set; }
        public string displaySymbol { get; set; }
        public string symbol { get; set; }
        public string type { get; set; }
    }

    public class SymbolLookup
    {
        public int count { get; set; }
        public List<SymbolLookupDetails> result { get; set; }
    }
}
