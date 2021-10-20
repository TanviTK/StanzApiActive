using System;
using System.Collections.Generic;
using System.Text;

namespace Stanz.Standard.Models.ExternalAPI
{
    public class DataLastUpdated
    {
        public string TableName { get; set; }
        public DateTime DateLastUpdated { get; set; }
        public string Tickr { get; set; }
    }
}
